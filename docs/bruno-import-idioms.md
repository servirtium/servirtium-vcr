# Bruno → Servirtium: what to expand into which idiom

`import-bru` reads a Bruno collection, which is a **request definition** format,
and produces a Servirtium tape, which is a **concrete record of what happened**.
Those are different kinds of artifact, so most of the interesting work is
deciding which Servirtium idiom each Bruno concept becomes. The policy is to
**expand into Servirtium idioms**, never to preserve Bruno semantics in the tape.

Status (2026-11-11): `.bru` files are now read by **Bruno's own parser**
(`@usebruno/lang`, vendored, run in QuickJS embedded in the CLI and in
libservirtium_vcr: `core/bru.ae`), and what a request means is worked out once,
in `core/bru_convert.ae`, for both `import-bru` and the new offline
`servirtium convert bru` (which turns a collection's saved examples into tapes
without a service). So variables resolve from the request, its folders and the
collection (and, for `convert bru`, an environment); folder and collection
headers and auth are worked out (`convert bru` lists them in each
interaction's note, credentials never written; `import-bru` still sends
neither, see below); and json, xml, text, sparql, form-urlencoded and graphql
bodies are serialised. The measurements below are from the hand-written
parser this replaced, kept for the reasoning.

## What silently goes wrong today

A probe collection of four ordinary Bruno constructs, imported against a live
service. All four produced `hydrated 4 interaction(s)` with no warning:

| `.bru` construct | what happened | why it matters |
|---|---|---|
| `{{widgetId}}` (any var but the base URL) | sent **literally**: `GET /widgets/{{widgetId}}` → 404, recorded as interaction 0 | the tape now contains a path that is not a path, and `check --canonical` passes it |
| `headers { X-Api-Key: … }` | never sent | against a real API you record a 401/403 and enshrine it as the expected response |
| `body:form-urlencoded` | POST sent with **empty body** | the tape is wrong and looks right — worst case of the four |
| `auth:bearer { token: … }` | never sent | as above; the recorded 401 lints clean |

The common shape is the one this repo keeps meeting: **the failure renders as the
success**. A tape full of 404s from unresolved placeholders is indistinguishable,
on inspection, from a tape of genuine 404s.

## The mapping

### Variables → resolve what you can, leave a visible TODO for the rest

Bruno resolves `{{var}}` from `environments/*.bru` at send time. A Servirtium
tape has no templating and should not acquire any — it records concrete bytes.

**Import does not have to be perfect.** An earlier draft of this document said
"resolve at import, or fail the import", which is a false binary: refusing the
whole collection because one variable is unknown is worse than importing the
other 20 requests and telling the dev what to finish. The third option is the
right one — import everything, and leave an explicit placeholder where a human
has to fill in.

Implemented: an unresolved `{{var}}` now produces a console `TODO` line naming
the file and the variable, and a `## [Note]` block attached to that interaction
in the tape, so the gap survives in the artifact rather than scrolling past in
the import output.

What it must never do is pass intent off as fact silently, which is what firing
`/widgets/{{widgetId}}` and recording its 404 used to do: a tape holding a path
that is not a path, linting clean.

> **Caveat, measured: `[Note]` blocks do not round-trip.** `## [Note]` appears
> only in the EMITTER (`core/vcr.ae:3623`); there is no parser for it. So a note
> is written when a recording is flushed, and silently dropped the next time the
> tape is loaded and re-emitted. Two consequences: a tape carrying a note fails
> `check --canonical` (the emitter form is exactly the note's bytes shorter —
> verified by deleting the note by hand, after which it lints clean), and a TODO
> can vanish on a re-emit, which looks indistinguishable from the TODO having
> been done. Notes are the right idiom for placeholders; they are currently
> half-built, and making the parser read them back is the fix.

### `headers { … }` → send them, but keep them out of the match block

Already the documented policy, and now enforced for `Content-Type` (see
`bruno_import_demo/README.md`). The general rule is the same: **send** what
Bruno would send, so the upstream behaves as it would for a real caller, but
match on method + path + body only, because a collection's headers will never
equal a test client's.

That split — fidelity on the wire, looseness in the match — is the Servirtium
idiom. Bruno has no such distinction because it never replays.

### `auth:*` and `vars:secret` → redaction

This is the cleanest bridge available, and Bruno hands it to us.

A Bruno environment already declares which values are secret:

```
vars:secret [
  API_key
]
```

That is a machine-readable list of exactly the things that must not land in a
tape. The Servirtium idiom for "this went over the wire but must not be on disk"
is **redaction** — `redact(FIELD_REQUEST_HEADERS, …)`.

So the expansion writes itself: send the real credential so the call actually
works, and register a redaction for every `vars:secret` name plus every
`auth:*` token, so the hydrated tape carries `Authorization: Bearer ********`
and remains committable.

Today neither happens — auth is dropped, which is *accidentally* safe and
*deliberately* useless: the call is made unauthenticated and the tape records
whatever the service says to an anonymous caller.

### Other body types → serialise and record the bytes

`body:form-urlencoded`, `body:text`, `body:xml`, `body:graphql`, `body:multipart`
all reduce to "a request body plus a content type". A tape stores a literal body,
so each is a small serialiser away.

**Implemented** in `core/bru_convert.ae` (`body_of`), shared by `import-bru`
and `convert bru`; it replaced the engine's earlier `bru_body_block` /
`bru_body_content_type` / `bru_body_needs_work`, along with the hand-written
`.bru` reader.

| `body:` | sent as | status |
|---|---|---|
| `json` | `application/json` | literal |
| `xml` | `application/xml` | literal |
| `text` | `text/plain` | literal |
| `sparql` | `application/sparql-query` | literal |
| `formUrlEncoded` | `application/x-www-form-urlencoded` | `k=v&...`, percent-encoded |
| `graphql` | `application/json` | `{"query":...,"variables":...}` |
| `multipartForm`, `file` | — | **TODO note**, sent with no body |

A collection's own `Content-Type` header, when it sets one, wins over these.
Multipart framing and file bodies remain: rather than send an empty body and
record a plausible-looking wrong answer, the importer leaves an explicit TODO,
on the console and as a `## [Note]` in the tape.

### `script:*`, `tests`, `asserts` → out of scope, and say so

Bruno's pre-request/post-response JavaScript and its assertions have no tape
equivalent and should not acquire one — a tape is a recording, not a test
harness. The right expansion is **nothing**, plus a warning at import naming the
files whose scripts were skipped, so nobody assumes their behaviour was captured.

### `params:query` → fold into the path

The GitHub sample collection carries the query string twice: once inline in
`url`, once as a `params:query` block. A tape matches on path, so the importer
should reconcile them (Bruno's own precedence is the inline URL) and record one
canonical path.

## The through-line

Every row above is the same decision: a Bruno file describes *intent*, and a tape
records *fact*. Anywhere Bruno defers something to send time — a variable, a
secret, a computed header, a script — the importer has to either resolve it into
fact at import, or refuse. What it must not do is pass the intent through as
though it were fact, which is what produces `GET /widgets/{{widgetId}}` sitting
in a tape that lints clean.

## Implemented so far

- `Content-Type` kept out of the request match block, so body-carrying requests
  can actually be replayed (`847344e`).
- Unresolved `{{var}}` now warns on the console and leaves a `## [Note]` TODO in
  the tape, rather than silently recording a bogus response.
- Everything else here is a proposal, and the measurements above are the
  argument for it. The `[Note]` round-trip gap is the one that blocks the
  placeholder idiom from being fully load-bearing.
