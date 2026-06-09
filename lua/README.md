# servirtium-lua

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for **Lua 5.4**.

You point your system-under-test at a local URL. In **playback** it replays
a recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```lua
local servirtium = require("servirtium")

local srv = servirtium.playback("tapes/single_get.md")   -- port 0 by default
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
wraps its `aether_vcr_embed_*` C ABI; it does **not** reimplement Servirtium
in Lua or C.

Two modules ship:

- `servirtium_native.so` — the compiled C extension, a thin 1:1 wrapper over
  the engine ABI (`require("servirtium_native")`).
- `servirtium.lua` — the idiomatic Lua surface (`require("servirtium")`) that
  wraps the C module: `playback` / `record` return a server object with
  `:base_url()`, `:port()`, `:last_kind()`, `:last_error()`, `:close()`,
  `:redact(...)`, `:static_content(...)`, `:normalize_whole_tape(...)`,
  `:untaped(...)`.

## Build

`lua5.4` and its dev headers are required (`pkg-config --cflags lua5.4` must
work), plus a C compiler (`cc`). Build the shared engine from `core/` first
(see the repo root), then compile the extension:

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
`libservirtium_vcr.so` is found at runtime without `LD_LIBRARY_PATH`.

## Run the tests

```sh
LUA_CPATH="./?.so;;" \
SERVIRTIUM_VCR_LIB=../core/native/libservirtium_vcr.so \
lua5.4 tests/playback.lua
```

The test opens a playback server on `tapes/single_get.md`, replays `GET /ok`
with `curl`, and asserts the body is `ok-body` and `last_kind` is `Ok`.

## API surface

The C ABI fields and outcome codes are exposed as module constants:

- Redaction field selectors: `FIELD_PATH` (1), `FIELD_RESPONSE_BODY` (2),
  `FIELD_REQUEST_HEADERS` (3), `FIELD_REQUEST_BODY` (4),
  `FIELD_RESPONSE_HEADERS` (5).
- `OK` (0) — the clean-match outcome from `last_kind()`.

Caller-owned `char*` returns from the engine are copied into Lua strings and
freed (`aether_vcr_embed_free_string`) inside the C module, per the ABI's
ownership rule.

## Concurrency: one server per port

The Aether VCR runs **one server per port**: each server owns its own native
handle with its own tape, cursor, mutations, and diagnostics, so N independent
servers can run concurrently in one process without interfering. Open each on
port `0` to let the OS pick a free port, then read it back via `:base_url()`
or `:port()`.

## License

Licensed under the MIT License (see the repository root `LICENSE`), or
http://opensource.org/licenses/MIT.
