# Usage

All fixtures start from `Servirtium playback:` or
`Servirtium record:upstream:`, are configured with a chained builder, and
started with `start`, which answers a `ServirtiumServer`. Send `stop` to the
server to stop it (and, in record mode, flush the tape). `startThenDo:`
wraps a block and always stops the server afterward.

The system-under-test only ever needs `server baseUrl`. Everything else —
tape path, mode, mutations, assertions — lives in your test setUp / tearDown.

## Playback

```smalltalk
| server body |
server := (Servirtium playback: 'tapes/climate_api.md')
    port: 0;                "0 = OS-assigned"
    start.
body := ZnClient new get: server baseUrl , '/api/v1/countries'.
self assert: server lastKind equals: #ok.
server stop.
```

## Recording

```smalltalk
(Servirtium record: 'tapes/climate_api.md' upstream: 'https://climatedataapi.worldbank.org')
    port: 0;
    startThenDo: [ :server |
        ZnClient new get: server baseUrl , '/api/v1/countries' ].
"stop (end of startThenDo:) forwards nothing more and writes the tape."
```

Record forwards each request to the upstream, returns the **real** response
to your SUT, and captures the exchange. Chunked responses are de-chunked
(needs the native lib built with Aether ≥ 0.183.0).

### Drift detection

```smalltalk
(Servirtium record: tape upstream: upstream) failIfChanged; start.
```

On `stop`, the freshly recorded tape is written **and** a `ServirtiumError`
is signaled if it differs from the committed tape — so `git diff` shows the
drift and CI fails loudly. (Without `failIfChanged`, `stop` just overwrites.)

## Scrubbing secrets out of tapes (redaction)

Applied at flush time, so the live test still sees real bytes while the
committed tape is clean:

```smalltalk
(Servirtium record: tape upstream: upstream)
    redactField: ServirtiumField responseBody pattern: 'Bearer abc123' replacement: 'Bearer REDACTED';
    redactField: ServirtiumField path pattern: 'session=xyz' replacement: 'session=REDACTED';
    start.
```

`ServirtiumField` is `path`, `responseBody`, `requestHeaders`, `requestBody`,
or `responseHeaders`.

## Replaying a scrubbed tape (unredaction)

When a committed tape holds a placeholder but the live SUT sends the real
value, rewrite the recorded expectation before matching:

```smalltalk
(Servirtium playback: tape)
    strictHeaders;
    unredactField: ServirtiumField requestHeaders pattern: 'Bearer REDACTED' replacement: realToken;
    start.
```

## Removing headers

Drop noisy/sensitive headers from a block (case-insensitive name match). This
is also the lever for telling **strict** matching to ignore a header a real
HTTP client always sends but the tape never recorded:

```smalltalk
(Servirtium playback: tape)
    strictHeaders;
    "ZnClient attaches Accept + User-Agent the tape never recorded:"
    removeHeaderField: ServirtiumField requestHeaders name: 'Accept';
    removeHeaderField: ServirtiumField requestHeaders name: 'User-Agent';
    start.
```

## Strict request matching

By default the dispatcher matches on method + path (and on request
headers/body when the tape entry carries them). `strictHeaders` forces header
comparison on every interaction; mismatches surface via the diagnostics:

```smalltalk
(Servirtium playback: tape) strictHeaders; startThenDo: [ :server |
    "... drive SUT ..."
    server lastKind = #ok ifFalse: [ Error signal: server lastError ] ].
```

## Notes

Annotate the tape for humans (ignored on playback). The builder note attaches
to the first interaction; stage later ones on the running server:

```smalltalk
(Servirtium record: tape upstream: upstream)
    noteTitle: 'Login' body: 'Establishes the session the next calls reuse';
    startThenDo: [ :server |
        "... first request recorded with the note ..."
        server noteTitle: 'Overdraft' body: 'Should be refused'.
        "... next request gets this note ..." ].
```

## Static content (UI tests)

Serve a path prefix from disk instead of the tape — keeps the tape focused on
API calls while CSS/JS/images come from your build output:

```smalltalk
(Servirtium playback: tape)
    staticContentMount: '/assets' dir: 'build/static';
    start.
```

## Markdown format options (record)

```smalltalk
(Servirtium record: tape upstream: upstream)
    indentCodeBlocks;       "4-space-indented blocks instead of ``` fences"
    emphasizeHttpVerbs;     "*GET* instead of bare GET in headings"
    start.
```

Playback tolerates either form regardless, so cross-implementation tapes load
cleanly.

## `ServirtiumServer` messages

| Message | Meaning |
|---|---|
| `baseUrl` | `http://host:port` for the SUT |
| `port` | the resolved (possibly OS-assigned) port |
| `tapeLength` | tape entries (playback) / interactions captured (record) |
| `lastKind` | symbolic `ServirtiumOutcome` of the most recent dispatch (e.g. `#ok`) |
| `lastKindCode` | the raw integer outcome |
| `lastError` | mismatch diagnostic String, or empty |
| `lastIndex` | tape index of the last matched interaction, or -1 |
| `noteTitle:body:` | stage a note for the next recorded interaction |
| `resetCursor` | rewind replay to interaction 0; clear last-* |
| `clearLastError` | clear the last-error slot between sub-cases |
| `stop` | stop; flush tape if recording (idempotent) |

## `ServirtiumOutcome` symbols

`#ok`, `#pathOrMethodDiff`, `#headerMissing`, `#headerValueDiff`,
`#headerUnexpected`, `#tapeExhausted`, `#bodyDiff`, `#recordError`.

## Gotcha: one server per image

State is process-global in v1, so configure/stop one `ServirtiumServer` at a
time and **run tests serially** (a Pharo image is one process). See
[architecture.md](architecture.md#one-server-per-process). `start` resets all
process-global mutation/strict/format state first, so settings from a prior
fixture never leak forward.
