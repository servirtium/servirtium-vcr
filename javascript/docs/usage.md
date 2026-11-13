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
import { Vcr } from '@servirtium/vcr'

const vcr = Vcr.record('tapes/climate_api.md', 'https://climatedataapi.worldbank.org')
  .port(0)
  .start()
try {
  const response = await fetch(`${vcr.baseUrl}/api/v1/countries`, {
    signal: AbortSignal.timeout(10000),
  })
  const body = await response.text()
} finally {
  vcr.close() // forwards nothing more and writes the markdown tape to disk
}
```

Record forwards each request to the upstream, returns the **real** response to
your SUT, and captures the exchange. Chunked responses are de-chunked
automatically.

For a runnable JavaScript example with a local HTTP service and replay after
that service has stopped, see the [README quickstart](../README.md#record-and-replay-a-local-service).

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

`redact` works field-by-field on one value. When a value changes on every run
(an id, a timestamp, the port a test picked), declare a **rule** with a
`{{placeholder}}` where it sits. Recording writes each captured value as a
**token** (`{{messageId-1}}`), so a re-record is **byte-identical**; playback
lets a token match whatever live value arrives and puts it back in later
responses. Rules work on the playback and the record builder:

```ts
Vcr.playback(tape)
  .prettyXml(2)
  .volatileRule('request body', '<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>')
  .volatileRule('response body', '<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>')
  .bind('serverDate', new Date().toUTCString())
  .start()
```

- **`volatileRule(scope, pattern, kind = 'template')`**: `kind` is `'template'`
  or `'regex'`; may be called repeatedly.
- **`bind(nameOrToken, value)`**: bind a real value to a token (`'serverDate-2'`)
  or to every token of a placeholder name.
- **`volatileProfile(path)`**: load rules from a profile file.
- **`volatileMarkers(VolatileMarkers.DollarCurly)`**: write placeholders and
  tokens as `${name}` (`Wikilink`: `[[name]]`); applied before any rule.
- **`server.volatileReport()`**: rules, binds, bindings and warnings.
- A bad rule throws `VcrError` at `start()` with the core's message.
- **`redactWholeTape(pattern, replacement)`**: every match collapses to the
  single constant `replacement`, for uncorrelated noise.

The spec: [docs/volatile-values.md](../../docs/volatile-values.md).

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

Two further opt-in matchers relax the default strict-ordered playback:
`.matchMultiple()` matches any recorded interaction (order-independent) and does
not consume it, for polling/retries or non-deterministic request order, while
`.matchHeader(name)` matches on just that one named request header's value and
ignores the rest of the recorded header block.

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
  .prettyXml(2) // pretty-print recorded XML bodies
  .prettyJson(2) // pretty-print recorded JSON bodies
  .addLicenseNotice('Licence terms of the recorded service') // under ## LICENSE NOTICE
  .start()
```

Playback tolerates either form regardless, so cross-implementation tapes load
cleanly.

## Stable order (record, opt-in)

For a service that answers in a different order every run. All off by default;
the tape is byte-exact without them.

```ts
const rec = Vcr.record(tape, upstream)
  .prettyJson(2)                                // required: sorted JSON is only written pretty-printed
  .sortJsonKeys()                               // object keys sorted at every depth
  .sortJsonArray('versions', '/created')        // arrays `versions` holds, by member
  .sortJsonArrayAt('^/secrets', '', 'name')     // only for matching request paths
  .sortResponseHeaders()                        // header lines by name
  .sortHeaderValue('Allow')                     // "POST, GET" -> "GET, POST"
  .start()
```

A rule the core refuses (an empty header name, a bad regex) throws `VcrError`
at `start()`. `sortJsonKeys` / `sortJsonArray*` without `prettyJson` are
refused when the tape is written: `close()` throws `VcrError`
("sort_json_keys needs pretty_json ...") and writes nothing.

## Playback range

Replay only a slice of a tape, by interaction number (the `## Interaction N`
headings, 0-based, inclusive; `to` < 0 means through the last):

```ts
Vcr.playback(tape).playbackRange(4, 6).start()
```

A request outside the range is never served (kind `PathOrMethodDiff`,
"... is outside the playback range 4-6"). A bad range throws `VcrError` at
`start()`.

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
not because libservirtium_vcr is single-server.
