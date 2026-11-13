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

### Volatile values & whole-tape redaction (byte-identical re-record)

Volatile-value rules name values that change on every run (ids, timestamps,
`Date`) and write them to the tape as tokens; playback matches any live value
of the right shape. Rules and profiles go on both builders; see
[`docs/volatile-values.md`](../../docs/volatile-values.md).

```smalltalk
(Servirtium record: tape upstream: upstream)
    volatileRule: 'response headers' pattern: 'Date: {{serverDate}}';
    volatileRule: 'request path' pattern: '/orders/(?<orderId>[0-9a-f]{16})' kind: 'regex';
    volatileProfile: 'cas-profile.md';
    "Uncorrelated values a client must still parse: collapse to one constant:"
    redactWholeTape: 'X-Build: .*' replacement: 'X-Build: <BUILD>';
    start.

(Servirtium playback: tape)
    prettyXml;
    volatileMarkers: #dollarCurly;    "before any rule"
    volatileRule: 'request body' pattern: '<a:MessageID>urn:uuid:${messageId}</a:MessageID>';
    bind: 'caseId' value: '42';       "attach a real value to a placeholder"
    startThenDo: [ :server | ... server volatileReport ... ].
```

- `volatileRule:pattern:` / `volatileRule:pattern:kind:` - scope, a pattern
  holding `{{placeholders}}`, kind `'template'` (default) or `'regex'`.
- `bind:value:` - a placeholder name or token and its real value.
- `volatileProfile:` - a profile file path.
- `volatileMarkers:` - `#mustache` (default), `#dollarCurly`, `#wikilink`.
- `ServirtiumServer>>volatileReport` - the rules and bindings.
- A bad rule makes `start` signal `ServirtiumError` with the core's message.
- `redactWholeTape:replacement:` - collapse **every** match of the pattern to
  one constant string, for uncorrelated values.

The payoff is a **byte-identical re-record**: re-running record over the same
traffic produces the same tape, so `git diff` stays empty.

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

Add `matchJsonBody` to the builder to match request bodies by semantic JSON
equality — object key order and insignificant whitespace are ignored (array
order still matters), and non-JSON bodies fall back to byte-exact matching.

Two further opt-in matchers relax the default strict ordered playback:
`matchMultiple` matches any recorded interaction (not just the next in sequence)
without consuming it — reusable and order-independent, for polling or
non-deterministic request order — and `matchHeader:` matches on a single named
request header's value, ignoring the rest of the recorded header block.

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
    prettyXml: 2;           "pretty-print recorded XML bodies"
    prettyJson: 2;          "pretty-print recorded JSON bodies"
    addLicenseNotice: 'Licence terms of the recorded service';  "under ## LICENSE NOTICE"
    start.
```

Playback tolerates either form regardless, so cross-implementation tapes load
cleanly.

## Stable ordering (record; opt-in)

For a service that sends the same response in a different order every run.
Each rule is off by default; the tape is byte-exact without them.

```smalltalk
(Servirtium record: tape upstream: upstream)
    prettyJson: 2;                              "required by the JSON rules below"
    sortJsonKeys;                               "object keys sorted at every depth"
    sortJsonArray: '/items' by: '/id';          "path, member to sort by"
    sortJsonArrayAt: '^/users' path: '' by: 'name';  "request regex, path, by"
    sortResponseHeaders;                        "header lines sorted by name"
    sortHeaderValue: 'Allow';                   "one header's comma-separated items"
    start.
```

Sorted JSON is only written pretty-printed: a record with `sortJsonKeys` or a
sort-array rule but without `prettyJson:` is refused when the tape is written, so
`stop` (and so `startThenDo:`) raises a `ServirtiumError` containing
"sort_json_keys needs pretty_json: sorted JSON is only written pretty-printed
(turn pretty_json on)" and writes nothing. A rule the core refuses outright
raises from `start`.

## Playback range (playback only)

Replay only interactions `from`..`to` of a tape, by the tape's `## Interaction N`
number (0-based, inclusive; `to < 0` = through the last). Interactions outside the
range are never served.

```smalltalk
(Servirtium playback: tape)
    playbackRangeFrom: 4 to: 6;
    startThenDo: [ :server |
        server setPlaybackRangeFrom: 4 to: -1.   "raises ServirtiumError when refused"
        server playbackRange.                    "4 -> 6, or nil when none is set"
        server clearPlaybackRange ].
```

A record server refuses a range (`setPlaybackRangeFrom:to:` raises), so a test
cannot silently overwrite a journey's tape with a slice.

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

## Concurrency: one server per port

Each `start` opens an independent VCR keyed by its own native handle, so **N
servers can run at once in one image** — each owns its tape, replay cursor,
mutations, and diagnostics, and nothing is shared. You don't have to run the
suite serially, and a fixture's config can't leak into another's. See
[architecture.md](architecture.md#concurrency-one-server-per-port).
