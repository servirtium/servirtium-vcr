# Volatile values

Some values change on every run although nothing meaningful changed: a
generated message id, a timestamp a library adds, a `Date` header, a request
id, the endpoint a test happened to start on. Volatile-value rules say where
such values sit. One rule set serves recording, playback and drift detection:

- **Recording** writes each value as a **token**, `{{messageId-1}}`, so
  re-recording an unchanged conversation gives a byte-identical tape.
- **Playback** lets a token in the tape's request match whatever the live
  request carries there, remembers that value, and puts it back wherever the
  same token appears in a response or a later request.
- **Drift detection** (`stop_and_flush_fail_if_changed`, `_or_check`)
  compares tokenized tapes, so volatile values never count as drift and
  everything else does.

Rules, tokens and bound values are plain strings, compiled and evaluated in the
core (`core/volatile.ae`, wired into `core/vcr.ae`); every binding passes
them through unchanged, so every language behaves identically. This
replaces `normalize_whole_tape`. `redact_whole_tape(pattern, constant)`
stays, as what it always was: a redaction by regex to a constant, for values
nobody correlates (it runs with the other redactions, before volatile
values, so a rule never sees what it replaced).

Lineage: Servirtium 1's `withReplacementsInPlayback(regex, replacement)`
(Java `MarkdownReplayer`), which rewrote the live request's body and headers
but the tape's URL. Here both sides go through the same rules.

## Three users

**A SOAP client that mints ids.** A WCF client (WS-Addressing 1.0) sends a
fresh `<a:MessageID>urn:uuid:…</a:MessageID>` with every request, a
`SubmissionDate` of "now" inside an escaped `caseData` string, and the
endpoint the test started on in `<a:To>`. The response echoes the MessageID
in `<a:RelatesTo>`. Four rules, and the tape reads:

```xml
<a:MessageID>urn:uuid:{{messageId-1}}</a:MessageID>
<a:To s:mustUnderstand="1">{{endpoint}}/Services/CaseService.svc</a:To>
…&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;…
<a:RelatesTo>urn:uuid:{{messageId-1}}</a:RelatesTo>
```

On playback the client gets its own MessageID back in `RelatesTo`.

**Tapes reviewed by people.** A tokenized tape reads like documentation:
the rules are at its top in the same markdown, and the same token appears
wherever the same value recurs.

**A TCK across companies.** A vendor redeploys a QA environment nightly; a
client re-records against it with `fail_if_changed`. Nightly noise must never
change a tape, and a real API change always must. The vendor publishes its
rules once, as a profile file, and every client, in any language, applies
the same file.

## Placeholders and tokens

A **placeholder** is `{{name}}` in a rule; a **token** is what a tape holds
in its place. A name is an identifier, `[A-Za-z_][A-Za-z0-9_]*`, chosen by
whoever writes the rule (`messageId`, `serverDate`, `airTempInParis`); the
core gives no name a meaning. Every token comes from a rule: there is no
implicit echo or search-and-replace elsewhere, and different names never
bind each other.

**Only names used on both sides are numbered.** A name is *two-sided* when
the rules (code, profiles and the tape's block together) use it on the
request side (`request path`, `request headers`, `request body`) and on the
response side, or in one rule whose scope spans both (`headers`, `body`).
Its tokens are `{{messageId-1}}`, `{{messageId-2}}`: N counts the distinct
values of the name in the conversation, from 1, in order of first
appearance (interactions in tape order; within one: path, request headers,
request body, response headers, response body). The same value always gets
the same token, which is how correlation shows (`{{messageId-1}}` in
MessageID and in RelatesTo). Any other name is *one-sided*, and its token is
`{{serverDate}}`, without a number, wherever it appears and whatever its
value. Numbering a one-sided name would only record coincidences: three
`Date` headers in one second one night and across two the next would change
the tape with no change to the API.

A placeholder `{{name}}` matches one or more characters on one line,
stopping at the first place the rest of the template matches.

`{{name:pattern}}` gives the placeholder its own PCRE2 pattern:
`<a:DOB>{{dob:\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])}}</a:DOB>`. The
first `:` after the name starts the pattern, which ends at the closing marker
once its braces and brackets are balanced (escaped `\{ \} \[ \]` do not
count), so `\d{4}` and `[12]` work in every marker style. The surrounding
literal text anchors it: `^` and `$` are refused rather than silently
changing meaning. Groups inside the pattern are allowed and produce no
tokens; a named group inside a placeholder is an error.

**Literal markers.** Text in a body that would read as a token is written
with a backslash before it: `\{{messageId-1}}` in a tape is the text
`{{messageId-1}}`, replayed without the backslash. A backslash that really
precedes token-shaped text is doubled (`\\{{messageId-1}}` is a backslash
followed by a real token), and an escaped literal after a backslash gets
both (`\\\{{x-1}}`). Only token-shaped text is escaped: a numbered token of
any name, or an unnumbered token of a one-sided name. Every other backslash,
in a JSON escape or a Windows path, is untouched, and `{{request.host}}` and
the other substitution placeholders stay as they are. A template uses the
same escape for a literal marker: `\{{` is the text `{{`.

**Marker styles.** One closed choice per VCR, set in code before any rule:
`Mustache` `{{name}}` (the default), `DollarCurly` `${name}`, `Wikilink`
`[[name]]`. Rules in code and in the tape use the VCR's markers, and the escape
is the same backslash (`\${x-1}`, `\[[x-1]]`). A tape does not declare its style.
At start, playback scans the tape for its rules' tokens, numbered and
unnumbered, in all three styles: tokens only in another style, or in two styles at once, fail the
start with the styles named.

## Rules

Two kinds, both one line:

**Templates** (the ordinary kind): literal text with placeholders. The core
compiles a template to its own PCRE2 (literal text quoted, each placeholder a
named group), so a template needs no regex knowledge:

```text
request body: `<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>`
response headers: `Date: {{serverDate}}`
request path: `/cases/{{caseId}}/documents`
```

**Regex** (the escape hatch): a PCRE2 pattern whose **named** groups are
placeholders, `(?<name>…)` or `(?P<name>…)`; several per rule are fine,
unnamed groups produce nothing:

```text
request body regex: `<a:To[^>]*>(?<endpoint>https?://[^/]+)/`
```

### Scopes

| Scope | Fields |
|---|---|
| `request path` | the request target, path and query |
| `request headers`, `response headers`, `headers` | one header block, or both |
| `request body`, `response body`, `body` | one body, or both |

Leaving out the side means both.

### What a template matches, exactly

- **The canonical form.** With `pretty_xml`/`match_xml_body` or
  `pretty_json`/`match_json_body` on, playback canonicalizes both bodies
  first (`docs/pretty-xml.md`, `docs/pretty-json.md`), then applies the
  rules, then compares; recording applies them to the formatted body it
  writes. Write templates as one line of the canonical form shows the text.
  Paths are compared in their RFC 3986 canonical form.
- **Escaped text, as written.** A template matches the characters of the
  field, so XML held as text inside an element is matched escaped:
  `&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;`.
- **The literal after a placeholder must not occur inside the value.** The
  placeholder stops at the first place the rest matches:
  `<a:To s:mustUnderstand="1">{{endpoint}}/` captures only `https:`,
  because `/` follows the scheme. Anchor on more of the text
  (`{{endpoint}}/Services/`), or write a regex rule.
- **A placeholder at the end of a template** has no following literal: it
  runs to the end of the line, trailing spaces and tabs excluded
  (`Date: {{serverDate}}` takes the whole header value).
- **No shape check.** A placeholder accepts any text: a template is a
  location, not a type. The cost is the TCK's "the id format changed"
  signal: a UUID turning into an integer is still tokenized, so the tape
  does not change. Where the format is part of the contract, say so with an
  inline pattern, `{{caseId:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}}}`:
  a value that does not match is not tokenized, so recording writes it as it
  is (drift), and playback reports a mismatch.
- A placeholder name appears once per template, and two placeholders need
  literal text between them.

## The tape block

A recording with rules starts with them, after the licence notice and before
the first interaction:

```markdown
## Volatile values

- request body regex: `<a:To[^>]*>(?<endpoint>https?://[^/]+)/`
- request body: `&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;`
- request body: `<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>`
- response body: `<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>`
```

Grammar, version 1:

```text
block   = "## Volatile values" NL { NL | "- " rule NL }
rule    = scope [ " regex" ] ": " span
scope   = "request path" | "request headers" | "response headers" | "headers"
        | "request body" | "response body" | "body"
span    = a CommonMark code span (a pattern holding a backtick uses a longer
          run of backticks; one starting or ending with a backtick is padded
          with a space)

; in the rule's pattern and in the tape's fields:
placeholder = open name [ ":" pcre ] close
token       = open name "-" N close        ; a two-sided name
            | open name close              ; a one-sided name
escape      = "\" before token-shaped text (a literal), with a run of
              backslashes before it doubled first
```

The block ends at the next line starting `## `; anything else in it fails the
start, naming the line. Rules are written sorted, so the block is the same
whatever order a test registered them in. A later grammar will carry its
version in the heading, `## Volatile values (v2)`; this reader refuses a
version it does not know. Readers that predate the block skip it: it sits
before the first `## Interaction`.

**Where rules come from.** Code, profile files and the tape's own block
merge into one set: a tape that declares its rules replays with no rules in
code, and recording over a tape keeps the rules it declares. Not every rule
has to travel: code rules alone are fine (and are written into the block of
what they record). The same rule twice counts once. The same text with other
placeholder names (`{{msgId}}` in code, `{{messageId}}` in the tape) is a
conflict, and fails the start with both rules and where each came from.

**Profiles.** A profile file is a vendor's rules for every client: its first
line names its marker style (`Markers: Mustache`, `Markers: DollarCurly` or
`Markers: Wikilink`, which must be the VCR's), then any text, then the
`## Volatile values` block.

## Bind

Three words: a **placeholder** names a slot in a rule, a **token** is a
captured value in a tape, and to **bind** is to attach a real value to a
token. A live request binds the tokens it carries; the test binds the rest,
before start, with plain strings:

- `bind("serverDate", "Fri, 13 Nov 2026 09:41:07 GMT")` binds every token of
  the name that nothing else bound: `{{serverDate}}` everywhere, or for a
  two-sided name `{{caseId-1}}`, `{{caseId-2}}`, …;
- `bind("caseId-2", "…")` binds that one token of a two-sided name. On a
  one-sided name it is an error at start, saying the name is unnumbered.

A response token that nothing binds before it is replayed (a server's
`Date`, a request id it mints, a case id it creates) must be bound by the
test, or the start fails listing the names; a hand-written tape holding a
real value there needs nothing (that value is replayed as written). A
one-sided request token matches any value its rule captures (so its inline
pattern, if any, still applies), and binds and correlates with nothing.
When the test bound a two-sided token and a live request carries it, the
request must agree: a different value is a mismatch, and the diagnostic
names both (`{{messageId-1}} was bound by the test to 5f1d…; the request sent
0b6c…`). A placeholder with an inline pattern refuses a bound value that
does not match it, at start.

The core has no date, UUID or relative-time logic. Computing a value ("22
years ago next Monday", a fresh UUID, `Time.now.httpdate`) is the test's
job, in its own language, passed in as a string. Whether to placeholder a
stable value at all is the team's choice. A birth date the system under
test derives from "now", which the service echoes back, is worth one: a rule
each side makes it two-sided, and the test binds the value it expects, so
the request is checked against it and the echo replays it:

```text
request body: `<a:DOB>{{dob:\d{4}-\d{2}-\d{2}}}</a:DOB>`
response body: `<Customer><DOB>{{dob}}</DOB>`
```

```ruby
vcr.bind("dob", (Date.today.next_occurring(:monday) << 12 * 22).iso8601)
```

while a fixed customer's birth date is better left as recorded.

## Playback

1. **Canonicalize** (above).
2. **Normalize.** The tape side: a placeholder's value that is a token stays;
   a real value (a hand-written tape) becomes a token too, remembering the
   value. The live side: each value a placeholder captures is a *slot*.
3. **Compare.** Everything outside tokens and slots must be equal, byte for
   byte; each slot must line up with a token of the same name. A token then
   **binds** the live value. A token already bound must meet the same value
   again, and a value already bound to one token of a name cannot stand for
   another of the same name: the correlation guard.
4. **Respond.** Each token in the response is replaced by its bound value
   (bound by a request or by the test), else by the hand-written tape's
   value, and is then bound to what was sent. So a case id a response
   handed out must come back in the next request's path.

A live request may carry a token's text itself (`/checkout/{{cartId-1}}`,
the value of an interaction a playback range skipped, which the test never
received); that matches the token without binding it.

**Bindings are per conversation.** `reset_cursor` clears them. An
interaction replayed again (`match_multiple`: polling, retries) first
releases what it bound itself, so each repeat binds afresh while correlation
with other interactions holds. Tokens first seen outside a `playback_range`
are unbound until a live value binds them.

`match_header`, `strict_headers` and the body matchers compare the
normalized forms.

## Recording

Rules run last: after ordering, redactions (literal, structured,
`redact_whole_tape`), credential tokens, secret callbacks, header removals
and pretty-printing. A redacted value is never seen by a rule: redaction
keeps priority. Recorded `Content-Length` values follow the rewritten
bodies; the upstream and the client see the original bytes. With the
recording-rules footer on, each rule is a row with the interactions it
touched.

## Diagnostics

A playback mismatch on a VCR with rules adds a `volatile values:` section to
the retained diagnostic (`last_error`, `assert_no_mismatches`, and
`diagnostics_json`'s `volatile` member):

- both normalized forms and the first difference (an unbound slot shows as
  `{{name-?}}`);
- the rules that fired, with the value each captured;
- the bindings (`{{caseId-1}} = 42 (interaction 0)`), and the one a request
  broke (`{{caseId-1}} = 42 (bound by interaction 0), but this request has 99`);
- warnings (a regex limit).

Values covered by `unredact`, credential headers and resolved secrets are
masked as everywhere in diagnostics. `volatile_report()` returns the rules,
binds, bindings and warnings at any time; a failed `fail_if_changed` /
`_or_check` appends the recording's warnings.

## Regex and limits

Patterns are PCRE2 (Perl syntax), the core's `std.regex`, so every binding
agrees; named groups are `(?<name>…)`, `(?P<name>…)` or `(?'name'…)`, and
branch reset `(?|…)` is refused. PCRE2 backtracks, and the toolchain has no
linear-time engine, so every compiled rule runs under
`(*LIMIT_MATCH=1000000)(*LIMIT_DEPTH=10000)`, a field over 4 MiB is not
searched, and a rule stops after 10,000 matches in one field. A rule that
hits a limit selects nothing more in that field and leaves a warning: a
pathological pattern costs milliseconds, never a hung test. A regex rule
searches for each next match from where the last ended, so a lookbehind
cannot see across the previous match.

## The C ABI

```c
char *aether_vcr_embed_volatile_rule(void *h, const char *scope, const char *kind, const char *pattern);
char *aether_vcr_embed_volatile_bind(void *h, const char *name_or_token, const char *value);
char *aether_vcr_embed_volatile_profile(void *h, const char *path);
char *aether_vcr_embed_set_volatile_markers(void *h, int style); /* 0 Mustache, 1 DollarCurly, 2 Wikilink */
char *aether_vcr_embed_volatile_report(void *h);
```

`kind` is `"template"` or `"regex"`. Each returns `""` or the error,
caller-owned like every string result. Configure after open and before
start, on a playback or a record handle; set the markers before any rule. A
rule's syntax is checked when it is given; the tape-wide checks (the tape's
block, conflicts, marker style, binds) run at start, which then fails with
the reason in `last_error`. A call after start re-prepares a playback VCR
(clearing its bindings) and returns any start-time error itself.

Removed with this: `normalize_whole_tape`, `normalize_whole_tape_described`,
`clear_normalizations`.

## Worked example: WCF

```csharp
using var vcr = Vcr.Playback("tapes/create_case.md")
    .PrettyXml()
    .VolatileRule("request body", "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>")
    .VolatileRule("response body", "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>")
    .VolatileRule("request body", "<a:To s:mustUnderstand=\"1\">{{endpoint}}/Services/")
    .VolatileRule("request body", "&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;")
    .Start();
```

Recording with the same rules writes them into the tape's block, after which
playback needs none in code.

## Worked example: a TCK profile

The vendor publishes `cas-profile.md`:

```markdown
Markers: Mustache
CAS QA environment: values that change on every redeploy, by contract.

## Volatile values

- response body: `"caseId":"{{caseId}}"`
- request path: `/cases/{{caseId}}/`
- headers: `X-Request-Id: {{requestId}}`
- response headers: `ETag: {{etag}}`
- response headers: `Date: {{serverDate}}`
```

A Rails client records nightly:

```ruby
vcr = Servirtium::Vcr.record("spec/tapes/cases.md", ENV["CAS_QA"])
  .volatile_profile("cas-profile.md")
```

and replays, binding what its own tests need:

```ruby
Servirtium::Vcr.playback("spec/tapes/cases.md")
  .bind("serverDate", Time.now.httpdate)
  .bind("requestId", SecureRandom.uuid)
```

The tape comes out byte-identical every night unless CAS changed something,
and the diff is that change. The one-sided names (`serverDate`, `etag`) are
never numbered, so coincidences between their values cannot touch the tape;
the two-sided ones (`caseId`, `requestId`) are numbered by the values the
conversation actually correlates, and an extra value renumbers only tokens
of its own name.
