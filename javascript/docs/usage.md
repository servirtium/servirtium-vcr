# Usage

All fixtures start from `Vcr.playback(tapePath)` or
`Vcr.record(tapePath, upstreamBase)`, configured with a fluent builder, and
started with `.start()`, which returns a `VcrServer`. Call `.close()` on the
server to stop it (and, in record mode, flush the tape).

The system-under-test only ever needs `vcr.baseUrl`. Everything else — tape
path, mode, mutations, assertions — lives in your test setup/teardown.

## Playback

```ts
import { Vcr, VcrOutcome } from '@servirtium/vcr'

const vcr = Vcr.playback('tapes/climate_api.md')
  .port(0) // 0 = OS-assigned
  .start()
try {
  const res = await fetch(`${vcr.baseUrl}/api/v1/countries`)
  const body = await res.text()
  expect(vcr.lastKind).toBe(VcrOutcome.Ok)
} finally {
  vcr.close()
}
```

## Recording

```ts
const vcr = Vcr.record('tapes/climate_api.md', 'https://climatedataapi.worldbank.org')
  .port(0)
  .start()
try {
  await fetch(`${vcr.baseUrl}/api/v1/countries`)
} finally {
  vcr.close() // forwards nothing more and writes the markdown tape to disk
}
```

Record forwards each request to the upstream, returns the **real** response to
your SUT, and captures the exchange. Chunked responses are de-chunked
automatically.

### Drift detection

```ts
Vcr.record(tape, upstream).failIfChanged().start()
```

On `close()`, the freshly recorded tape is written **and** a `VcrError` is
thrown if it differs from the committed tape — so `git diff` shows the drift and
CI fails loudly. (Without `failIfChanged`, `close()` just overwrites.)

## Scrubbing secrets out of tapes (redaction)

Applied at flush time, so the live test still sees real bytes while the
committed tape is clean:

```ts
Vcr.record(tape, upstream)
  .redact(VcrField.ResponseBody, 'Bearer abc123', 'Bearer REDACTED')
  .redact(VcrField.Path, 'session=xyz', 'session=REDACTED')
  .start()
```

`VcrField` is `Path`, `ResponseBody`, `RequestHeaders`, `RequestBody`, or
`ResponseHeaders`.

### Whole-tape scrubbing (across every field and interaction)

`redact` works field-by-field on one value. For volatiles that move *across*
the tape, two whole-tape mutations scan all fields and interactions at flush
time — the payoff is a **byte-identical re-record** afterwards.

```ts
Vcr.record(tape, upstream)
  // Correlated: a server-minted id that appears in a response body and then
  // recurs in later request paths. Every distinct match (in first-appearance
  // order) becomes a stable {{order-N}} token, so the same value maps to the
  // same token everywhere — and it round-trips back on playback.
  .normalizeWholeTape('[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}', 'order')
  // Uncorrelated: each occurrence is independent (e.g. a Date header). Every
  // match collapses to one constant so it never churns the committed tape.
  .redactWholeTape('[A-Z][a-z]{2}, \\d{2} [A-Z][a-z]{2} \\d{4} [0-9:]{8} GMT', 'Mon, 01 Jan 2024 00:00:00 GMT')
  .start()
```

- **`normalizeWholeTape(pattern, name)`** — every *distinct* match across the
  whole tape gets its own `{{name-N}}` token (`{{order-1}}`, `{{order-2}}`, …),
  correlated so a value recurring in a later request path tokenizes the same;
  the token round-trips on playback.
- **`redactWholeTape(pattern, replacement)`** — *every* match collapses to the
  single constant `replacement`, for uncorrelated volatiles.

## Replaying a scrubbed tape (unredaction)

When a committed tape holds a placeholder but the live SUT sends the real value,
rewrite the recorded expectation before matching:

```ts
Vcr.playback(tape)
  .strictHeaders()
  .unredact(VcrField.RequestHeaders, 'Bearer REDACTED', realToken)
  .start()
```

## Removing headers

Drop noisy/sensitive headers from a block (case-insensitive name match):

```ts
Vcr.record(tape, upstream)
  .removeHeader(VcrField.ResponseHeaders, 'Set-Cookie')
  .removeHeader(VcrField.RequestHeaders, 'Authorization')
  .start()
```

## Strict request matching

By default the dispatcher matches on method + path (and on request headers/body
when the tape entry carries them). `strictHeaders()` forces header comparison on
every interaction; mismatches return `599` to the SUT and populate the
diagnostics:

```ts
const vcr = Vcr.playback(tape).strictHeaders().start()
// ... drive SUT ...
if (vcr.lastKind !== VcrOutcome.Ok) throw new Error(vcr.lastError)
```

> **Gotcha — `fetch`/`undici` default headers.** Node's global `fetch`
> automatically adds `Accept`, `Accept-Encoding`, `Accept-Language`,
> `Connection`, `Host`, `User-Agent`, `sec-fetch-mode`, etc. A scrubbed tape
> typically doesn't expect those, so under `strictHeaders()` they trip the
> match (`HeaderUnexpected`). Drop them with
> `removeHeader(VcrField.RequestHeaders, name)` — see `src/playback-match.test.ts`.

For request bodies, `.matchJsonBody()` opts into semantic JSON comparison —
object key order and insignificant whitespace are ignored (array order still
matters), and non-JSON bodies fall back to byte-exact matching.

## Notes

Annotate the tape for humans (ignored on playback). The builder note attaches to
the first interaction; stage later ones on the running server:

```ts
const vcr = Vcr.record(tape, upstream)
  .note('Login', 'Establishes the session the next calls reuse')
  .start()
// ... first request recorded with the note ...
vcr.note('Overdraft', 'Should be refused') // attaches to the next interaction
// ... next request ...
```

## Static content (UI tests)

Serve a path prefix from disk instead of the tape — keeps the tape focused on
API calls while CSS/JS/images come from your build output:

```ts
Vcr.playback(tape).staticContent('/assets', 'build/static').start()
```

## Markdown format options (record)

```ts
Vcr.record(tape, upstream)
  .indentCodeBlocks() // 4-space-indented blocks instead of ``` fences
  .emphasizeHttpVerbs() // *GET* instead of bare GET in headings
  .start()
```

Playback tolerates either form regardless, so cross-implementation tapes load
cleanly.

## `VcrServer` members

| Member | Meaning |
|---|---|
| `baseUrl` | `http://host:port` for the SUT |
| `port` | the resolved (possibly OS-assigned) port |
| `tapeLength` | tape entries (playback) / interactions captured (record) |
| `lastKind` | `VcrOutcome` of the most recent dispatch |
| `lastError` | mismatch diagnostic, or empty string |
| `lastIndex` | tape index of the last matched interaction, or -1 |
| `note(title, body)` | stage a note for the next recorded interaction |
| `resetCursor()` | rewind replay to interaction 0; clear last-* |
| `clearLastError()` | clear the last-error slot between sub-cases |
| `close()` | stop; flush tape if recording |

## `VcrOutcome`

`Ok`, `PathOrMethodDiff`, `HeaderMissing`, `HeaderValueDiff`,
`HeaderUnexpected`, `TapeExhausted`, `BodyDiff`, `RecordError`.

## Concurrency: one server per port

The core is handle-based and one-server-per-port, so you can keep **several
`VcrServer`s alive at once** in one process — each owns its own tape, cursor,
mutations, and diagnostics, with no cross-talk (see
[architecture.md](architecture.md#concurrency-one-server-per-port)). Each fixture's config is scoped
to its handle, so settings never leak between fixtures. The bundled Jest config
still runs `--runInBand`, but only because the suite shares one fixed test port,
not because the engine is single-server.
