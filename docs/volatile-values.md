# Volatile values

Some values change on every run although nothing meaningful changed: a
generated id, a timestamp, a `Date` header, a correlation id, a port the test
picked. Volatile-value rules name where such values sit and what shape they
have. One rule set serves recording, playback and drift detection:

- **Recording** writes each value as a token, `{{uuid-1}}`, so re-recording
  an unchanged conversation gives a byte-identical tape.
- **Playback** lets a token in the tape's request match any live value of its
  shape, remembers that value, and puts it back wherever the token appears
  in a later response or request.
- **Drift detection** (`stop_and_flush_fail_if_changed`, `_or_check`)
  compares tokenized tapes, so volatile values never count as drift, and
  anything else (a renamed element, a new field, `"42"` becoming `42`, an id
  that stops being a UUID) always does.

Rules are parsed and evaluated in the core (`core/volatile.ae`, wired into
`core/vcr.ae`); every binding passes rule text through unchanged, so all
languages behave identically. They replace `normalize_whole_tape`: its
`normalize_whole_tape(pattern, name)` is now the rule
``anywhere, regex `pattern`: name``. `redact_whole_tape(pattern, constant)`
stays, as what it always was: a redaction by regex to a constant, for values
nobody correlates and a client must still parse (it runs with the other
redactions, before volatile values).

Its lineage is Servirtium 1's `withReplacementsInPlayback(regex, replacement)`
(Java `MarkdownReplayer`), which rewrote the live request's body and headers
but the tape's URL. Here both sides go through the same rules.

## Three users

**A SOAP client that mints ids (WCF, WS-Addressing 1.0).** Every request
carries a fresh `<a:MessageID>urn:uuid:…</a:MessageID>`, a `SubmissionDate` of
"now" added by a library the test does not own, and `<a:To>` with the port the
test picked. The response echoes the MessageID in `<a:RelatesTo>`. With
`ws-addressing` and one rule for `SubmissionDate` the tape needs no proxy:

```xml
<a:MessageID>urn:uuid:{{uuid-1}}</a:MessageID>
…
<a:RelatesTo>urn:uuid:{{uuid-1}}</a:RelatesTo>
```

`{{uuid-1}}` in the response is the value the request carried, on playback
too: the client gets its own MessageID back.

**Tapes reviewed by people.** A normalised tape reads like documentation: no
regexes, no raw GUIDs, no timestamps from the day someone recorded it, and
the same token wherever the same value recurs.

**A TCK across companies, where "the tape didn't change" is the signal.** A
vendor redeploys a QA environment nightly; a client re-records its
conversations against it with `fail_if_changed`. Nightly noise (ids,
timestamps, `Date`, ETags, request ids) must never change a tape, and a real
API change always must, readably. The vendor publishes its rules once, as a
profile file, and clients in every language apply the same file.

## Rules

A rule is one line: **where** (field), **which value** (selector), and **what
it is** (token class).

```text
request body, XML `{http://www.w3.org/2005/08/addressing}MessageID`: uuid
response headers, `Date`: date
request path, regex `/cases/([0-9]+)`: case-id
anywhere, regex `[0-9a-f]{40}`: sha
```

The same text goes into the API (`volatile(…)` in every binding), into a
tape's `## Volatile values` block and into a profile file.

### Fields

| Field | What it covers |
|---|---|
| `request path` | the request target, path and query |
| `request headers` | the request header block |
| `request body` | the request body |
| `response headers` | the response header block |
| `response body` | the response body |
| `anywhere` | all five (regex selectors only) |

### Selectors

Every selector names its value inside a code span (one or more backticks,
CommonMark style: a value holding a backtick uses a longer run, and a value
starting or ending with a backtick is padded with one space).

| Selector | Fields | Selects |
|---|---|---|
| `` `Name` `` | header fields | every value of that header (case-insensitive name) |
| ``query `name` `` | `request path` | every value of that query parameter (name compared percent-decoded) |
| ``JSON `key` `` | bodies | every value of that object key, at any depth |
| ``JSON `/a/*/b` `` | bodies | the value at that JSON pointer (`*` matches any one segment) |
| ``XML `{uri}local` `` | bodies | the text of every such element (namespace URI and local name, never the prefix; `{}local` is no namespace; `*` is any element) |
| ``XML `{uri}local/@name` `` | bodies | that attribute of such elements (`@{uri}name` for a namespaced attribute) |
| ``regex `pattern` `` | any | each match; capture group 1 if the pattern has one, else the whole match |

Any selector except a regex may be followed by ``regex `pattern` ``, which
narrows the selected value to the matches inside it:

```text
request body, XML `{http://www.w3.org/2005/08/addressing}To` regex `:([0-9]+)/`: port
```

A JSON value is a string's characters (between the quotes) or a number,
`true`, `false` or `null`; objects and arrays are never selected. An XML
element is selected only when it holds text and no child elements; leading
and trailing whitespace is not part of the value.

### Token classes

| Class | Shape | Token covers | Numbered | Replayed when unbound |
|---|---|---|---|---|
| `uuid` | 8-4-4-4-12 hex, optionally after `urn:uuid:` | the UUID (a `urn:uuid:` prefix stays literal) | per value | `00000000-0000-4000-8000-00000000000N` |
| `timestamp` | RFC 3339 / ISO 8601 date-time: `2026-11-13T09:41:07`, optional fraction and zone | the whole value | per occurrence | `2000-01-01T00:00:0NZ` (N seconds) |
| `date` | RFC 1123: `Fri, 13 Nov 2026 09:41:07 GMT` | the whole value | per occurrence | `Sat, 01 Jan 2000 00:00:0N GMT` |
| `epoch` | 10 digits (seconds) or 13 (milliseconds) | the whole value | per occurrence | 1000000000 + N |
| `int` | `-?[0-9]+` | the whole value | per value | `N` |
| `hex` | `[0-9a-fA-F]+` | the whole value | per value | N in hex, 16 digits |
| `etag` | `"…"` or `W/"…"` | between the quotes | per value | the token text |
| any other name | one line, not empty | the whole value | per value | the token text |

A named class (`case-id`, `port`) is lower-case letters and digits in
hyphen-separated words, each word starting with a letter, so the number
after the last hyphen is unambiguous: `{{case-id-1}}`.

**The shape is checked.** A value a selector finds that does not have its
class's shape is left as it is and reported (a *shape warning*): a `uuid` rule
meeting `42` writes `42` to the tape, so "the id format changed" shows up as
drift instead of disappearing into a token.

**Numbering.** Tokens are numbered by first appearance within their class:
interactions in tape order, and within one, path, request headers, request
body, response headers, response body. `per value` classes give a recurring
value the same token everywhere (correlation). The time classes are numbered
**per occurrence**: every timestamp is its own token even when two happen to
be equal, because whether two `Date` headers fall in the same second differs
from run to run, and per-value numbering would make the tape differ with it.
A time value echoed back by a service therefore gets a token of its own;
give it a named class to correlate it. Numbering per class keeps renumbering
local: an extra UUID never shifts a `timestamp` token.

## Tokens

A token is `{{class-N}}`, N counting from 1. Literal text that would read as a
token is escaped when a tape is written: `{{{{}}` stands for a literal `{{`,
so a body holding the text `{{uuid-1}}` is written `{{{{}}uuid-1}}` and
replayed as `{{uuid-1}}`. Only a `{{` followed by token-shaped text (or by
`{{}}`) is escaped; `{{request.host}}` and other placeholders are not
token-shaped and stay as they are.

## The tape block

A recording with any rule starts with them, after the licence notice and
before the first interaction:

```markdown
## Volatile values

- request body, XML `{http://www.w3.org/2005/08/addressing}MessageID`: uuid
- request body, regex `&lt;SubmissionDate&gt;([^&]+)&lt;/SubmissionDate&gt;`: timestamp
- response body, XML `{http://www.w3.org/2005/08/addressing}RelatesTo`: uuid
- response headers, `Date`: date
```

Grammar, version 1:

```text
block     = "## Volatile values" NL { NL | rule NL }
rule      = "- " field ", " selector ": " class
field     = "request path" | "request headers" | "request body"
          | "response headers" | "response body" | "anywhere"
selector  = ( span                       ; a header name
            | "query " span | "JSON " span | "XML " span
            | "regex " span ) [ " regex " span ]
span      = CommonMark code span
class     = word { "-" word }            ; word = [a-z][a-z0-9]*
```

The block ends at the next line starting `## `. Anything else in it is an
error when the tape is opened. Rules are written sorted, one per line, so the
block is the same whatever order the test registered them in. A later grammar
will carry its version in the heading (`## Volatile values (v2)`); a reader
refuses a version it does not know. Readers that predate the block skip it:
it sits before the first `## Interaction`.

**A tape's rules apply on their own.** Playback reads the block, so a tape
that declares its rules replays with no rules set in code. Recording over an
existing tape reads its block too, so re-recording keeps them.

**Profiles.** A profile file is the same block, standalone: any text, then
the `## Volatile values` heading and rules. `volatile_profile(name_or_path)`
loads one; the names `ws-addressing`, `http-dates` and `trace-headers` are
built in (below), anything else is a file path. A vendor publishes one file
for every client, in every language.

**Merging and conflicts.** Code rules, profile rules and tape rules merge
into one set; a rule given twice counts once. Two rules with the same field
and selector but different classes are a conflict: the second registration
fails with an error naming both, so a binding's `start()` fails before
serving.

## Presets

| Name | Rules |
|---|---|
| `ws-addressing` | request body `{http://www.w3.org/2005/08/addressing}MessageID`: uuid; response body `{…}RelatesTo`: uuid; request body `{…}To` regex `:([0-9]+)(?:/\|$)`: port |
| `http-dates` | response headers `Date`, `Last-Modified`, `Expires`: date |
| `trace-headers` | request and response headers `traceparent`: traceparent, `tracestate`: tracestate, `X-Request-Id`: request-id, `X-Correlation-Id`: correlation-id |

A preset is shorthand: the rules it adds are written into the tape block in
full, so a tape never depends on what a preset meant in a later release.

## Playback

1. **Canonicalize.** With `pretty_xml`/`match_xml_body` or
   `pretty_json`/`match_json_body` on, both the tape's request body and the
   live one are canonicalized first (`docs/pretty-xml.md`,
   `docs/pretty-json.md`); paths are compared in their RFC 3986 canonical
   form. Selectors therefore never depend on whitespace, attribute order or
   escapes. Regex selectors see the canonical text: write them against
   values, not layout.
2. **Normalize.** The tape side: a selected value that is already a token is
   kept, one of its class's shape becomes a token (a hand-written tape can
   hold real values), anything else stays as it is. The live side: each
   selected value of the right shape is a *slot*.
3. **Compare.** Everything outside tokens and slots must be equal, byte for
   byte, and each slot must line up with a token of its class. A token then
   **binds** the live value. A token already bound must meet the same value
   again, and for a per-value class a live value already bound to one token
   cannot stand for another: that is the correlation guard.
4. **Respond.** Each token in the tape's response is replaced by its bound
   value; an unbound one by the value a hand-written tape held there, else by
   its class's stand-in (table above), and is then bound to what was sent. So
   `/cases/{{int-1}}/documents` matches the case id the replayed response
   handed out. Escapes are unescaped.

A live request may also carry a token's text literally (`/checkout/{{uuid-1}}`,
the value of an interaction skipped by a playback range that the test never
received); that matches the same token without binding it.

**Bindings are per conversation.** `reset_cursor` clears them. An interaction
replayed again (`match_multiple`: polling, retries) first releases the tokens
it bound itself, so each repeat binds afresh while correlation with other
interactions still holds. Tokens first seen in interactions outside a
`playback_range` are simply unbound: the first live value binds them.

`match_header`, `strict_headers` and the body matchers compare the normalized
forms.

## Recording

Rules run last, after ordering, redactions, credential tokens, secret
callbacks, header removals and pretty-printing, so a redacted value is never
seen by a rule (redaction keeps priority) and selectors see the formatted
body. Recorded `Content-Length` values follow the rewritten bodies. The
upstream and the client see the original bytes. The recording-rules footer,
when on, lists each rule with the interactions it touched.

## Diagnostics

A playback mismatch on a handle with rules adds, to the retained diagnostic
(`last_error`, `diagnostics_json`'s `volatile`, `assert_no_mismatches`):

- both normalized forms and the first difference between them;
- the rules that fired and where;
- the bindings (`{{uuid-1}} = 5f1d0c6e-… (interaction 0)`), including the one
  a correlation mismatch broke;
- every shape warning.

Values covered by `unredact`, credential headers and resolved secrets are
masked exactly as elsewhere in diagnostics. `volatile_report()` returns the
same rule/binding/shape lines at any time; in record mode it lists the shape
warnings of the recording, and a failed `fail_if_changed` / `_or_check`
appends them to its message, so "the id stopped being a UUID" is named.

## Regex engine and limits

Regexes are PCRE2 (Perl syntax), the core's `std.regex`, so every binding
agrees. PCRE2 backtracks; there is no linear-time engine in the toolchain.
Every rule regex is therefore run with `(*LIMIT_MATCH=1000000)` and
`(*LIMIT_DEPTH=10000)`, and a field larger than 4 MiB is not searched by
regex selectors. A rule that hits a limit selects nothing in that field and
is reported as a shape warning naming the limit; a pathological pattern costs
milliseconds, never a hung test.

## The C ABI

```c
char *aether_vcr_embed_volatile(void *h, const char *rules);
char *aether_vcr_embed_volatile_profile(void *h, const char *name_or_path);
char *aether_vcr_embed_volatile_report(void *h);
```

Removed with them: `normalize_whole_tape`, `normalize_whole_tape_described`
and `clear_normalizations`.

`volatile` takes one or more rule lines (the leading `- ` and a
`## Volatile values` heading are optional); `volatile_profile` a preset name
or a profile file path. Both return `""` or the error (a grammar error with
its line, or a conflict), caller-owned like every string result. Configure
after open, before start, on a playback or a record handle.

## Worked example: WCF

```csharp
using var vcr = Vcr.Playback("tapes/create_case.md")
    .PrettyXml()
    .VolatileProfile("ws-addressing")
    .Volatile("request body, regex `&lt;SubmissionDate&gt;([^&]+)&lt;/SubmissionDate&gt;`: timestamp")
    .Start();
```

`SubmissionDate` sits inside `caseData`, XML escaped as text, so XML
selectors do not reach it (an element selector never looks inside text); the
regex does. Recording with the same two lines writes them into the tape's
block, after which playback needs neither.

## Worked example: a TCK profile

The vendor publishes `cas-profile.md`:

```markdown
CAS QA environment, volatile by contract.

## Volatile values

- response body, JSON `caseId`: case-id
- request path, regex `/cases/([0-9]+)`: case-id
- response headers, `ETag`: etag
- response headers, `X-Request-Id`: request-id
```

A Rails client:

```ruby
vcr = Servirtium::Vcr.record("spec/tapes/cases.md", ENV["CAS_QA"])
  .volatile_profile("cas-profile.md")
  .volatile_profile("http-dates")
  .fail_if_changed
```

Every night the tape comes out byte-identical unless CAS changed something.
When it does change, the diff is that change: per-class numbering means one
extra interaction renumbers only tokens of the classes it carries.
