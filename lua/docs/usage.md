# Usage

All fixtures start from `servirtium.playback(tapePath)` or
`servirtium.record(tapePath, upstreamBase)`, are configured with a chainable
builder, and started with `:start()`, which returns a `Server` (or
`nil, message` on failure). `:close()` the server to stop it (and, in record
mode, flush the tape).

The system-under-test only ever needs `srv:base_url()`. Everything else — tape
path, mode, mutations, assertions — lives in your test setup/teardown.

```lua
local servirtium = require("servirtium")

local srv = assert(servirtium.playback("tapes/single_get.md"):port(0):start())
local body = io.popen("curl -s " .. srv:base_url() .. "/ok"):read("*a")
assert(body == "ok-body")
assert(srv:last_kind() == servirtium.OK)   -- optional: assert a clean match
srv:close()
```

> Compatibility: `servirtium.playback(tape)` / `servirtium.record(tape, up)`
> can also be used as a one-shot — calling any `Server` method (e.g.
> `:base_url()`) on the builder transparently starts it with default config.
> The fluent form (`...:port(0):start()`) is preferred.

## Playback

```lua
local srv = assert(servirtium.playback("tapes/climate_api.md")
    :port(0)                     -- 0 = OS-assigned
    :start())

io.popen("curl -s " .. srv:base_url() .. "/api/v1/countries"):read("*a")

if srv:last_kind() ~= servirtium.OK then error(srv:last_error()) end
srv:close()
```

## Recording

```lua
local srv = assert(servirtium.record("tapes/climate_api.md",
                                     "https://climatedataapi.worldbank.org")
    :port(0):start())

io.popen("curl -s " .. srv:base_url() .. "/api/v1/countries"):read("*a")

-- close flushes the markdown tape to disk; returns "" on success.
assert(srv:close() == "")
```

Record forwards each request to the upstream, returns the **real** response to
your SUT, and captures the exchange. Chunked responses are de-chunked (needs the
native lib built with Aether ≥ 0.227.0).

### Drift detection

```lua
local srv = assert(servirtium.record(tape, upstream):fail_if_changed():port(0):start())
-- ... drive SUT ...
local err = srv:close()
if err ~= "" then
    -- the freshly recorded tape was still written, but it differs from the
    -- committed one — git diff shows the drift and CI fails loudly.
    error(err)
end
```

Without `:fail_if_changed()`, `:close()` just overwrites.

## Scrubbing secrets out of tapes (redaction)

Applied at flush time, so the live test still sees real bytes while the
committed tape is clean:

```lua
servirtium.record(tape, upstream)
    :redact(servirtium.FIELD_RESPONSE_BODY, "Bearer abc123", "Bearer REDACTED")
    :redact(servirtium.FIELD_PATH,          "session=xyz",   "session=REDACTED")
    :start()
```

The field selector is `FIELD_PATH`, `FIELD_RESPONSE_BODY`,
`FIELD_REQUEST_HEADERS`, `FIELD_REQUEST_BODY`, or `FIELD_RESPONSE_HEADERS`.

## Whole-tape normalization (deterministic re-records)

`:redact` targets one field of each interaction. Two companion record-mode verbs
instead sweep the **whole tape** — every field of every interaction — so a value
the server mints anew on each run stops dirtying the diff:

```lua
servirtium.record(tape, upstream)
    -- CORRELATED value (an entity id echoed back in later request paths): each
    -- distinct match becomes a stable {{order-N}} token, minted in
    -- first-appearance order — identity preserved, so it round-trips on playback.
    :normalize_whole_tape("[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", "order")
    -- UNCORRELATED, variable-cardinality volatile (a Date header): collapse
    -- every match to one constant.
    :redact_whole_tape("Date: .+ GMT", "Date: <DATE>")
    :start()
```

## Replaying a scrubbed tape (unredaction)

When a committed tape holds a placeholder but the live SUT sends the real value,
rewrite the recorded expectation before matching:

```lua
servirtium.playback(tape)
    :strict_headers()
    :unredact(servirtium.FIELD_REQUEST_HEADERS, "Bearer REDACTED", realToken)
    :start()
```

## Removing headers

Drop noisy/sensitive headers from a block (case-insensitive name match):

```lua
servirtium.record(tape, upstream)
    :remove_header(servirtium.FIELD_RESPONSE_HEADERS, "Set-Cookie")
    :remove_header(servirtium.FIELD_REQUEST_HEADERS,  "Authorization")
    :start()
```

## Strict request matching

By default the dispatcher matches on method + path (and on request headers/body
when the tape entry carries them). `:strict_headers()` forces header comparison
on every interaction; mismatches populate the diagnostics:

```lua
local srv = assert(servirtium.playback(tape):strict_headers():start())
-- ... drive SUT ...
if srv:last_kind() ~= servirtium.OK then error(srv:last_error()) end
```

> Note: curl sends default `User-Agent` and `Accept: */*` headers. Under
> `:strict_headers()` those must appear on the recorded request block, or be
> suppressed on the request (`curl -H 'User-Agent:' -H 'Accept:'`).

For request bodies, `:match_json_body()` opts into semantic JSON matching: JSON
request bodies match when equal as JSON (object key order and insignificant
whitespace ignored; array order still significant), while non-JSON bodies fall
back to byte-exact matching.

## Notes

Annotate the tape for humans (ignored on playback). The builder note attaches to
the first interaction; stage later ones on the running server:

```lua
local srv = assert(servirtium.record(tape, upstream)
    :note("Login", "Establishes the session the next calls reuse")
    :start())
-- ... first request recorded with the note ...
srv:note("Overdraft", "Should be refused")   -- attaches to the next interaction
```

## Static content (UI tests)

Serve a path prefix from disk instead of the tape:

```lua
servirtium.playback(tape):static_content("/assets", "build/static"):start()
```

## Markdown format options (record)

```lua
servirtium.record(tape, upstream)
    :indent_code_blocks()      -- 4-space-indented blocks instead of ``` fences
    :emphasize_http_verbs()    -- *GET* instead of bare GET in headings
    :start()
```

Playback tolerates either form regardless, so cross-implementation tapes load
cleanly.

## `Server` members

| Member | Meaning |
|---|---|
| `base_url([host])` | `http://host:port` for the SUT |
| `port()` | the resolved (possibly OS-assigned) port |
| `tape_length()` | tape entries (playback) / interactions captured (record) |
| `last_kind()` | `Outcome` of the most recent dispatch |
| `last_error()` | mismatch diagnostic, or `""` |
| `last_index()` | tape index of the last matched interaction, or -1 |
| `note(title, body)` | stage a note for the next recorded interaction |
| `reset_cursor()` | rewind replay to interaction 0; clear last-* |
| `clear_last_error()` | clear the last-error slot between sub-cases |
| `close()` | stop; flush tape if recording (returns a drift message if `:fail_if_changed`) |

## `Outcome` constants

`OK` (0), `PATH_OR_METHOD_DIFF` (1), `HEADER_MISSING` (2), `HEADER_VALUE_DIFF`
(3), `HEADER_UNEXPECTED` (4), `TAPE_EXHAUSTED` (5), `BODY_DIFF` (6),
`RECORD_ERROR` (7) — exposed on the `servirtium` module.

## Concurrency: one server per port

Each `:start()` owns its own native handle, and all of a fixture's state — tape,
cursor, mutations, static mounts, note, diagnostics — is scoped to that handle.
Nothing is process-global, so N `Server`s can run at once. One fixture's settings
can never leak into another's. See
[architecture.md](architecture.md#concurrency-one-server-per-port).
