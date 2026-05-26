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
your SUT, and captures the exchange. Chunked responses are de-chunked (needs
the native lib built with Aether ≥ 0.183.0).

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

## Gotcha: one server per process

State is process-global in v1, so configure/`close` one `VcrServer` at a time
and **run tests serially** (see
[architecture.md](architecture.md#one-server-per-process)). `.start()` resets
all process-global mutation/strict/format state first, so settings from a prior
fixture never leak forward.
