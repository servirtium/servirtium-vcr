# Usage

All fixtures start from `playbackOptions tapePath` or
`recordOptions tapePath upstreamBase`, are tweaked with record-update syntax,
and are run inside `withPlayback` / `withRecord` (bracket-style, auto-stop) —
or started explicitly with `startPlayback` / `startRecord` and torn down with
`stop`.

The system-under-test only ever needs `baseUrl vcr`. Everything else — tape
path, mode, mutations, assertions — lives in your test setup/teardown.

## Playback

```haskell
withPlayback (playbackOptions "tapes/climate_api.md") { pbPort = 0 } $ \vcr -> do
  url <- baseUrl vcr
  body <- httpGet (url ++ "/api/v1/countries")
  k <- lastKind vcr
  k `shouldBe` Ok
```

`pbPort = 0` (the default) asks the OS for a free port.

## Recording

```haskell
withRecord (recordOptions "tapes/climate_api.md" "https://climatedataapi.worldbank.org") $ \vcr -> do
  url <- baseUrl vcr
  _ <- httpGet (url ++ "/api/v1/countries")
  pure ()
-- `withRecord` stops the server at the end, which writes the markdown tape.
```

Record forwards each request to the upstream, returns the **real** response to
your SUT, and captures the exchange. Chunked responses are de-chunked
automatically.

### Drift detection

```haskell
withRecord (recordOptions tape upstream) { recFailIfChanged = True } $ \vcr -> ...
```

On stop, the freshly recorded tape is written **and** a `VcrException` is
thrown if it differs from the committed tape — so `git diff` shows the drift
and CI fails loudly. (Without `recFailIfChanged`, stop just overwrites.)
Because `withRecord`'s teardown runs the flush, the exception surfaces from
`withRecord` itself.

## Scrubbing secrets out of tapes (redaction)

Applied at flush time, so the live test still sees real bytes while the
committed tape is clean:

```haskell
withRecord (recordOptions tape upstream)
  { recRedactions =
      [ (ResponseBody, "Bearer abc123", "Bearer REDACTED")
      , (Path,         "session=xyz",   "session=REDACTED")
      ]
  } $ \vcr -> ...
```

`Field` is `Path`, `ResponseBody`, `RequestHeaders`, `RequestBody`, or
`ResponseHeaders`.

### Volatile values and whole-tape redaction

`recRedactions` scrubs one field at a time. A volatile-value rule names where a
value that changes on every run sits, using a `{{placeholder}}`; the recording
writes a token (`{{orderId-1}}`) there, so a re-record is **byte-identical**,
and playback matches any live value. See
[`docs/volatile-values.md`](../../docs/volatile-values.md).

```haskell
withRecord (recordOptions tape upstream)
  { recVolatileRules =
      [ volatileRule "response headers" "Date: {{serverDate}}"
      , ("request path", "/orders/(?<orderId>[0-9a-f]{16})", "regex") ]
  , recVolatileProfiles = ["cas-profile.md"]
    -- uncorrelated: a value that just needs pinning to one constant.
  , recRedactWholeTape  = [("X-Build: .*", "X-Build: <BUILD>")]
  } $ \vcr -> ...

withPlayback (playbackOptions tape)
  { pbPrettyXml = 2
  , pbVolatileMarkers = Just DollarCurly      -- applied before any rule
  , pbVolatileBinds = [("caseId", "42")]      -- bind a real value
  } $ \vcr -> volatileReport vcr
```

- `recVolatileRules` / `pbVolatileRules` - `(scope, pattern, kind)` with kind
  `"template"` or `"regex"`; `volatileRule scope pattern` builds a template.
- `recVolatileBinds` / `pbVolatileBinds` - `(name or token, value)`.
- `recVolatileProfiles` / `pbVolatileProfiles` - profile file paths.
- `recVolatileMarkers` / `pbVolatileMarkers` - `Mustache` (default),
  `DollarCurly`, `Wikilink`.
- A bad rule makes the start throw `VcrException` with the core's message.
- `volatileReport server` - the rules and bindings, as text.
- `recRedactWholeTape` - `(pattern, replacement)`: every match collapses to the
  one `replacement` constant, for values nobody correlates.

## Replaying a scrubbed tape (unredaction)

When a committed tape holds a placeholder but the live SUT sends the real
value, rewrite the recorded expectation before matching:

```haskell
withPlayback (playbackOptions tape)
  { pbStrictHeaders = True
  , pbUnredactions  = [(RequestHeaders, "Bearer REDACTED", realToken)]
  } $ \vcr -> ...
```

## Removing headers

Drop noisy/sensitive headers from a block (case-insensitive name match):

```haskell
withRecord (recordOptions tape upstream)
  { recRemoveHeaders =
      [ (ResponseHeaders, "Set-Cookie")
      , (RequestHeaders,  "Authorization")
      ]
  } $ \vcr -> ...
```

> **Gotcha:** Haskell HTTP clients send default request headers (`Host`,
> `Accept-Encoding`, …). If a strict-match test trips on them, remove them
> with `recRemoveHeaders`/`pbRemoveHeaders` (`RequestHeaders`). The test-suite
> does exactly this for the record→replay and redaction tests.

## Strict request matching

By default the dispatcher matches on method + path (and on request
headers/body when the tape entry carries them). `pbStrictHeaders = True` forces
header comparison on every interaction; mismatches return a non-`Ok` outcome
and populate the diagnostics:

```haskell
withPlayback (playbackOptions tape) { pbStrictHeaders = True } $ \vcr -> do
  -- ... drive SUT ...
  k <- lastKind vcr
  if k /= Ok then lastError vcr >>= error else pure ()
```

For request bodies, `pbMatchJsonBody = True` opts into semantic JSON matching:
JSON request bodies match when equal as JSON (object key order and insignificant
whitespace ignored; array order still significant), while non-JSON bodies fall
back to byte-exact matching.

Two further opt-in matchers relax interaction selection: `pbMatchMultiple = True`
switches from strict ordered replay to reusable, order-independent matching (any
recorded interaction may match, and a match is not consumed — handy for
polling/retries or non-deterministic order), while `pbMatchHeaders = ["Name"]`
matches on just those named request headers' values, ignoring the rest of the
recorded header block.

## Notes

Annotate the tape for humans (ignored on playback). The builder note attaches
to the first interaction; stage later ones on the running server:

```haskell
withRecord (recordOptions tape upstream)
  { recNote = Just ("Login", "Establishes the session the next calls reuse") }
  $ \vcr -> do
    -- ... first request recorded with the note ...
    note vcr "Overdraft" "Should be refused"   -- attaches to the next interaction
    -- ... next request ...
```

## Static content (UI tests)

Serve a path prefix from disk instead of the tape — keeps the tape focused on
API calls while CSS/JS/images come from your build output:

```haskell
withPlayback (playbackOptions tape) { pbStaticContent = [("/assets", "build/static")] } $ \vcr -> ...
```

## Markdown format options (record)

```haskell
withRecord (recordOptions tape upstream)
  { recIndentCodeBlocks   = True   -- 4-space-indented blocks instead of ``` fences
  , recEmphasizeHttpVerbs = True   -- *GET* instead of bare GET in headings
  , recPrettyXml          = 2      -- pretty-print recorded XML bodies (indent 1..16)
  , recPrettyJson         = 2      -- pretty-print recorded JSON bodies (indent 1..16)
  , recLicenseNotice      = Just "Licence terms of the recorded service"  -- under ## LICENSE NOTICE
  } $ \vcr -> ...
```

Playback tolerates either form regardless, so cross-implementation tapes load
cleanly.

## Stable ordering (record; opt-in)

For a service that sends the same response in a different order every run.
Each rule is off by default; the tape is byte-exact without them.

```haskell
withRecord (recordOptions tape upstream)
  { recPrettyJson          = 2                        -- required by the JSON rules below
  , recSortJsonKeys        = True                     -- object keys sorted at every depth
  , recSortJsonArrays      = [("/items", "/id")]      -- (path, by): sort that array by member
  , recSortJsonArraysAt    = [("^/users", "", "name")] -- (request regex, path, by)
  , recSortResponseHeaders = True                     -- header lines sorted by name
  , recSortHeaderValues    = ["Allow"]                -- one header's comma-separated items
  } $ \vcr -> ...
```

Sorted JSON is only written pretty-printed: a record with `recSortJsonKeys` or a
sort-array rule but without `recPrettyJson` is refused when the tape is written,
so `stop` (and so `withRecord`) throws `VcrException` containing
"sort_json_keys needs pretty_json: sorted JSON is only written pretty-printed
(turn pretty_json on)", and writes nothing. A rule the core refuses outright
throws `VcrException` from `startRecord`.

## Playback range (playback only)

Replay only interactions `from`..`to` of a tape, by the tape's `## Interaction N`
number (0-based, inclusive; `to < 0` = through the last). Interactions outside
the range are never served.

```haskell
withPlayback (playbackOptions tape) { pbPlaybackRange = Just (4, 6) } $ \vcr -> ...

setPlaybackRange vcr 4 (-1)   -- throws VcrException when refused
playbackRange vcr             -- Just (4, 6) | Nothing
clearPlaybackRange vcr
```

A record server refuses a range (`VcrException`), so a test cannot silently
overwrite a journey's tape with a slice.
## `VcrServer` accessors (all in `IO`)

| Function | Meaning |
|---|---|
| `baseUrl vcr` | `http://host:port` for the SUT |
| `port vcr` | the resolved (possibly OS-assigned) port |
| `tapeLength vcr` | tape entries (playback) / interactions captured (record) |
| `lastKind vcr` | `Outcome` of the most recent dispatch |
| `lastError vcr` | mismatch diagnostic, or empty |
| `lastIndex vcr` | tape index of the last matched interaction, or -1 |
| `note vcr title body` | stage a note for the next recorded interaction |
| `resetCursor vcr` | rewind replay to interaction 0; clear last-* |
| `clearLastError vcr` | clear the last-error slot between sub-cases |
| `stop vcr` | stop; flush tape if recording |

## `Outcome`

`Ok`, `PathOrMethodDiff`, `HeaderMissing`, `HeaderValueDiff`,
`HeaderUnexpected`, `TapeExhausted`, `BodyDiff`, `RecordError`.

## Concurrency: one server per port

Each `startPlayback` / `startRecord` opens its own listener with a dedicated
**handle**; tape, cursor, mutations, and diagnostics are scoped to that handle.
So you can run **N `VcrServer`s at once** in one process without their state
bleeding into each other. `hspec` runs specs sequentially by default (fine);
with `tasty` you may run them in parallel. See
[architecture.md](architecture.md#concurrency-one-server-per-port).
