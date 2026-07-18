# Usage

Every fixture starts from `playback(tapePath)` or
`record(tapePath, upstreamBase)`, which return an opened-but-not-started
`VcrServer`. Configure it (mutations, strict headers, static mounts, …) on that
returned object, call `start()`, then point your system-under-test at
`baseUrl()`. `close()` stops the server (and, in record mode, flushes the tape).

The system-under-test only ever needs `srv.baseUrl()`. Everything else — tape
path, mode, mutations, assertions — lives in your test setup/teardown.

The config setters are plain procs on the `VcrServer` (open → configure →
start), rather than a fluent builder, which keeps the binding a thin shim while
reading naturally in Nim.

## Playback

```nim
import servirtium

let srv = playback("tapes/climate_api.md")   # port 0 = OS-assigned by default
doAssert srv.start()
defer: srv.close()

# ... point your HTTP client at srv.baseUrl() & "/api/v1/countries" ...

doAssert srv.lastKind() == Ok                 # optional: assert a clean match
```

## Recording

```nim
let srv = record("tapes/climate_api.md", "https://climatedataapi.worldbank.org")
doAssert srv.start()

# ... drive your SUT against srv.baseUrl() ...

srv.close()   # forwards nothing more and writes the markdown tape to disk
```

Record forwards each request to the upstream, returns the **real** response to
your SUT, and captures the exchange. Chunked responses are de-chunked (needs
the native lib built with Aether ≥ 0.227.0).

### Drift detection

```nim
let srv = record(tape, upstream)
srv.failIfChanged()
doAssert srv.start()
# ... drive SUT ...
try:
  srv.close()
except VcrError:
  # the freshly recorded tape was still written, but it differs from the
  # committed one — git diff shows the drift and CI fails loudly.
  raise
```

Without `failIfChanged()`, `close()` just overwrites the tape.

## Scrubbing secrets out of tapes (redaction)

Applied at flush time, so the live test still sees real bytes while the
committed tape is clean:

```nim
let srv = record(tape, upstream)
srv.redact(ResponseBody, "Bearer abc123", "Bearer REDACTED")
srv.redact(Path,         "session=xyz",   "session=REDACTED")
doAssert srv.start()
```

`Field` is `Path`, `ResponseBody`, `RequestHeaders`, `RequestBody`, or
`ResponseHeaders`.

## Whole-tape normalization (deterministic re-records)

`redact` targets one field of each interaction. Two companion record-mode verbs
instead sweep the **whole tape** — every field of every interaction — so a value
the server mints anew on each run stops dirtying the diff. The payoff: a
re-record is **byte-identical**, so `failIfChanged()` drift detection fires only
on a real upstream change.

```nim
let srv = record(tape, upstream)
# CORRELATED value (an entity id echoed back in later request paths): each
# distinct match becomes a stable {{order-N}} token, minted in first-appearance
# order across the whole tape — identity preserved, so it still round-trips.
srv.normalizeWholeTape(
  "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", "order")
# UNCORRELATED, variable-cardinality volatile (a Date header): collapse every
# match to one constant — a per-value token would not be byte-stable when the
# number of distinct values varies run to run.
srv.redactWholeTape("Date: .+ GMT", "Date: <DATE>")
doAssert srv.start()
```

Use `normalizeWholeTape(pattern, name)` for a value that recurs and must stay
self-consistent; use `redactWholeTape(pattern, replacement)` for a volatile you
never correlate.

## Replaying a scrubbed tape (unredaction)

When a committed tape holds a placeholder but the live SUT sends the real
value, rewrite the recorded expectation before matching:

```nim
let srv = playback(tape)
srv.setStrictHeaders(true)
srv.unredact(RequestHeaders, "Bearer REDACTED", realToken)
doAssert srv.start()
```

## Removing headers

Drop noisy/sensitive headers from a block (case-insensitive name match):

```nim
let srv = record(tape, upstream)
srv.removeHeader(ResponseHeaders, "Set-Cookie")
srv.removeHeader(RequestHeaders,  "Authorization")
doAssert srv.start()
```

## Strict request matching

By default the dispatcher matches on method + path (and on request headers/body
when the tape entry carries them). `setStrictHeaders(true)` forces header
comparison on every interaction; mismatches surface via the diagnostics:

```nim
let srv = playback(tape)
srv.setStrictHeaders(true)
doAssert srv.start()
# ... drive SUT ...
if srv.lastKind() != Ok:
  echo srv.lastError()   # e.g. "<name> request header ..."
```

> Note: HTTP clients add default headers. `std/httpclient` sends a
> `User-Agent`; `curl` adds `User-Agent` and `Accept`. Under
> `setStrictHeaders(true)` these must appear on the recorded request block, or
> be suppressed on the request (curl: `-H 'User-Agent:' -H 'Accept:'`).

For request bodies, `setMatchJsonBody(true)` opts into semantic JSON matching:
JSON request bodies match when equal as JSON (object key order and insignificant
whitespace ignored; array order still significant), while non-JSON bodies fall
back to byte-exact matching.

Two further opt-in matchers relax how an interaction is selected:
`setMatchMultiple(true)` switches from strict ordered replay to reusable,
order-independent matching (any recorded interaction may match, and matching one
does not consume it — handy for polling/retries or non-deterministic order),
while `matchHeader(name)` matches on just that one named request header's value,
ignoring the rest of the recorded header block (repeatable for several headers).

## Notes

Annotate the tape for humans (ignored on playback). A note staged before
`start()` attaches to the first interaction; stage later ones on the running
server between requests:

```nim
let srv = record(tape, upstream)
srv.note("Login", "Establishes the session the next calls reuse")
doAssert srv.start()
# ... first request recorded with the note ...
srv.note("Overdraft", "Should be refused")   # attaches to the next interaction
# ... next request ...
```

## Static content (UI tests)

Serve a path prefix from disk instead of the tape:

```nim
let srv = playback(tape)
srv.staticContent("/assets", "build/static")
doAssert srv.start()
```

## Markdown format options (record)

```nim
let srv = record(tape, upstream)
srv.indentCodeBlocks()     # 4-space-indented blocks instead of ``` fences
srv.emphasizeHttpVerbs()   # *GET* instead of bare GET in headings
doAssert srv.start()
```

Playback tolerates either form regardless, so cross-implementation tapes load
cleanly.

## `VcrServer` members

| Member | Meaning |
|---|---|
| `baseUrl()` | `http://host:port` for the SUT |
| `port()` | the resolved (possibly OS-assigned) port |
| `tapeLength()` | tape entries (playback) / interactions captured (record) |
| `lastKind()` | `Outcome` of the most recent dispatch |
| `lastError()` | mismatch diagnostic, or empty |
| `lastIndex()` | tape index of the last matched interaction, or -1 |
| `note(title, body)` | stage a note for the next recorded interaction |
| `resetCursor()` | rewind replay to interaction 0; clear last-* |
| `clearLastError()` | clear the last-error slot between sub-cases |
| `failIfChanged()` | make `close` flush with drift detection (raises on drift) |
| `close()` | stop; flush tape if recording (raises `VcrError` on drift if `failIfChanged`) |

## `Outcome`

`Ok`, `PathOrMethodDiff`, `HeaderMissing`, `HeaderValueDiff`,
`HeaderUnexpected`, `TapeExhausted`, `BodyDiff`, `RecordError`. `Ok` (0) is a
clean match; anything non-zero is a mismatch.

## Concurrency: one server per port

Each `start` owns its own native handle, and all of a fixture's state — tape,
cursor, mutations, static mounts, note, diagnostics — is scoped to that handle.
Nothing is process-global, so N `VcrServer`s can run at once without
interfering. See [architecture.md](architecture.md#concurrency-one-server-per-port).
