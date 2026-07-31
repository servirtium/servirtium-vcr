# servirtium-lua

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for **Lua 5.4**.

You point your system-under-test at a local URL. In **playback** it replays a
recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```lua
local servirtium = require("servirtium")

local srv = assert(servirtium.playback("tapes/single_get.md"):port(0):start())
local body = io.popen("curl -s " .. srv:base_url() .. "/ok"):read("*a")

assert(body == "ok-body")
assert(srv:last_kind() == servirtium.OK)   -- optional: assert a clean match
srv:close()                                -- stops the server (flushes, if record)
```

## What this is (and isn't)

This binding is a **hand-written Lua 5.4 C extension** (`csrc/servirtium.c`),
the portable path — it uses the Lua 5.4 C API (`luaL_Reg` / `luaL_newlib` /
light userdata for the opaque handle), **not** LuaJIT FFI (LuaJIT is not a
requirement, and need not be installed).

All record/replay machinery — markdown parse/emit, the HTTP server, request
matching, redactions, notes, drift detection, static bypass, gzip/chunked
handling — lives in the in-repo, pure-Aether **Aether VCR** core
(`core/vcr.ae`), compiled once to a single shared library
(`core/native/libservirtium_vcr.so`). The C extension links that library and
wraps its `aether_vcr_embed_*` C ABI; it does **not** reimplement Servirtium in
Lua or C.

Two modules ship:

- `servirtium_native.so` — the compiled C extension, a thin 1:1 wrapper over the
  engine ABI (`require("servirtium_native")`).
- `servirtium.lua` — the idiomatic Lua surface (`require("servirtium")`): the
  `playback` / `record` builders with chainable config and a `Server` object.

## API surface

A fixture is a builder; configure it fluently, then `:start()` it for a
`Server`:

```lua
-- Playback
servirtium.playback(tape)
    :host("127.0.0.1") :port(0) :label("my fixture")
    :strict_headers()
    :match_json_body()
    :match_multiple()
    :match_header("Authorization")
    :remove_header(servirtium.FIELD_REQUEST_HEADERS, "User-Agent")
    :unredact(servirtium.FIELD_REQUEST_HEADERS, "Bearer REDACTED", realToken)
    :static_content("/assets", "build/static")
    :untaped("/favicon.ico")
    :start()

-- Record
servirtium.record(tape, upstreamBase)
    :host("127.0.0.1") :port(0) :label("my fixture")
    :remove_header(servirtium.FIELD_RESPONSE_HEADERS, "Set-Cookie")
    :redact(servirtium.FIELD_RESPONSE_BODY, "secret", "REDACTED")
    :normalize_whole_tape("[0-9a-f-]{36}", "id")
    :redact_whole_tape("Date: .+ GMT", "Date: <DATE>")
    :static_content("/assets", "build/static")
    :untaped("/favicon.ico")
    :note("Login", "establishes the session")
    :indent_code_blocks()
    :emphasize_http_verbs()
    :fail_if_changed()
    :start()
```

`Server` methods: `:base_url([host])`, `:port()`, `:tape_length()`,
`:last_kind()`, `:last_index()`, `:last_error()`, `:clear_last_error()`,
`:reset_cursor()`, `:note(title, body)`, `:close()`.

Module constants:

- Redaction field selectors — `FIELD_PATH` (1), `FIELD_RESPONSE_BODY` (2),
  `FIELD_REQUEST_HEADERS` (3), `FIELD_REQUEST_BODY` (4),
  `FIELD_RESPONSE_HEADERS` (5).
- Outcome codes from `:last_kind()` — `OK` (0), `PATH_OR_METHOD_DIFF` (1),
  `HEADER_MISSING` (2), `HEADER_VALUE_DIFF` (3), `HEADER_UNEXPECTED` (4),
  `TAPE_EXHAUSTED` (5), `BODY_DIFF` (6), `RECORD_ERROR` (7).

See [docs/usage.md](docs/usage.md) for worked examples and
[docs/features.md](docs/features.md) for the capability matrix.

Caller-owned `char*` returns from the engine are copied into Lua strings and
freed (`aether_vcr_embed_free_string`) inside the C module, per the ABI's
ownership rule. Mutation setters return the engine's error string (`""` on
success); the builders raise a Lua error on a non-empty result.

## Build

`lua5.4` and its dev headers are required (`pkg-config --cflags lua5.4` must
work), plus a C compiler (`cc`). Build the shared engine from `core/` first (see
the repo root), then compile the extension:

```sh
./build.sh                       # or: ./build.sh /abs/path/to/core/native
```

which runs, in effect:

```sh
cc -O2 -shared -fPIC $(pkg-config --cflags lua5.4) csrc/servirtium.c \
   -L<core/native> -lservirtium_vcr -Wl,-rpath,<core/native> \
   -o servirtium_native.so
```

The `-Wl,-rpath` bakes the engine's directory into the module, so
`libservirtium_vcr.so` is found at runtime without `LD_LIBRARY_PATH`. See
[docs/building.md](docs/building.md).

## Run the tests

```sh
LUA_CPATH="./?.so;;" \
SERVIRTIUM_VCR_LIB=../core/native/libservirtium_vcr.so \
lua5.4 tests/run_all.lua
```

`tests/run_all.lua` drives the full suite (each file in its own subprocess):

- **`tests/playback.lua`** — replays a recorded GET; flags a path mismatch via
  `:last_kind()`; unredaction lets a scrubbed tape match (secure_get +
  Authorization unredact); strict matching flags a missing request header;
  static content served from disk; an untaped path 404s without consuming the
  cursor; two playback servers run at once on two ports.
- **`tests/record.lua`** — record-then-replay the same GET (de-chunking on the
  record path); record + replay a POST with a body.
- **`tests/mutation.lua`** — redacts a response body before it lands on the
  tape; attaches a note; removes a named response header; mutation state does
  not leak between fixtures; `:fail_if_changed()` returns an error on drift.

Record-mode tests need a live upstream. Lua 5.4 has no stdlib sockets, so the
suite spawns a throwaway one-process `python3` HTTP server
(`/usr/bin/python3`) that returns a fixed body/headers and echoes the request
method+body, then kills it. Recorded tapes are written to the OS temp dir, never
into `tapes/`.

With [aeb](https://github.com/aether-lang-dev/aeb): `aeb lua/.tests.ae` builds
the engine `.so`, compiles the extension, and runs the whole suite.

## Concurrency: one server per port

The Aether VCR runs **one server per port**: each server owns its own native
handle with its own tape, cursor, mutations, and diagnostics, so N independent
servers can run concurrently in one process without interfering (the playback
suite runs two at once). Open each on port `0` to let the OS pick a free port,
then read it back via `:base_url()` or `:port()`.

## License

Licensed under the MIT License (see the repository root `LICENSE`), or
http://opensource.org/licenses/MIT.
