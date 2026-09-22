# Bruno → Servirtium: what to expand into which idiom

`import-bru` reads a Bruno collection, which is a **request definition** format,
and produces a Servirtium tape, which is a **concrete record of what happened**.
Those are different kinds of artifact, so most of the interesting work is
deciding which Servirtium idiom each Bruno concept becomes. The policy is to
**expand into Servirtium idioms**, never to preserve Bruno semantics in the tape.

Status: what the importer reads today is four things — `meta.seq`, the verb, the
`url`, and `body:json`. Everything else in a `.bru` is **silently ignored**.
Measured below, not assumed.

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

### Variables → resolve at import, or fail loudly

Bruno resolves `{{var}}` from `environments/*.bru` at send time. A Servirtium
tape has no templating and should not acquire any — it records concrete bytes.

So: read the collection's environment file, substitute every `{{var}}`, and if
one cannot be resolved **fail the import** rather than firing a request with a
literal placeholder in it. `--var NAME` (today's only knob) generalises to "the
env supplies the values, and an unresolved reference is an error".

The current behaviour is the bad half of both options: it neither resolves nor
refuses.

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
so each is a small serialiser away. The present silent-empty-body behaviour is
the one gap here that is actively dangerous rather than merely missing.

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
- Nothing else in this document. The rest is a proposal, and the measurements
  above are the argument for it.
