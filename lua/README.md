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
  libservirtium_vcr ABI (`require("servirtium_native")`).
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

Caller-owned `char*` returns from libservirtium_vcr are copied into Lua strings and
freed (`aether_vcr_embed_free_string`) inside the C module, per the ABI's
ownership rule. Mutation setters return libservirtium_vcr's error string (`""` on
success); the builders raise a Lua error on a non-empty result.

## Build

`lua5.4` and its dev headers are required (`pkg-config --cflags lua5.4` must
work), plus a C compiler (`cc`). Build libservirtium_vcr from `core/` first (see
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

The `-Wl,-rpath` bakes libservirtium_vcr's directory into the module, so
`libservirtium_vcr.so` is found at runtime without `LD_LIBRARY_PATH`. See
[docs/building.md](docs/building.md).

## Getting it

Nothing is published to LuaRocks. The binding is two source files, `servirtium.lua` and a C
extension that is compiled against the release's native library, so you fetch both and build
once. You need a C compiler and **Lua 5.4** with its headers (`pkg-config --cflags lua5.4`
must work; Lua 5.5 or 5.1 will not load a module built for 5.4). In your own project:

```sh
set -eu
TAG=v2.0.0-alpha.13                      # a release tag of servirtium-vcr; nothing else to edit
REL=https://github.com/servirtium/servirtium-vcr/releases/download/$TAG
RAW=https://raw.githubusercontent.com/servirtium/servirtium-vcr/$TAG
# 1. the native library for this OS/arch, checksum-verified, into ~/.servirtium-vcr/$TAG
case "$(uname -s)" in
  Linux)   OS=linux;   EXT=so;    ldd --version 2>&1 | grep -qi musl && LIBC=-musl || LIBC= ;;
  Darwin)  OS=macos;   EXT=dylib; LIBC= ;;
  FreeBSD) OS=freebsd; EXT=so;    LIBC= ;;
  *) echo "unsupported OS (Windows: take the .dll asset by hand)"; exit 1 ;;
esac
case "$(uname -m)" in x86_64|amd64) ARCH=x86_64 ;; arm64|aarch64) ARCH=arm64 ;; *) echo "unsupported arch"; exit 1 ;; esac
LIBDIR="$HOME/.servirtium-vcr/$TAG"        # keep it OUT of your git tree
mkdir -p "$LIBDIR"
LIB=libservirtium_vcr-$TAG-$OS-$ARCH$LIBC.$EXT
curl -fsSL -o "$LIBDIR/$LIB" "$REL/$LIB"
curl -fsSL -o "$LIBDIR/$LIB.sha256" "$REL/$LIB.sha256"
( cd "$LIBDIR" && { sha256sum -c "$LIB.sha256" 2>/dev/null || shasum -a 256 -c "$LIB.sha256"; } )
cp "$LIBDIR/$LIB" "$LIBDIR/libservirtium_vcr.$EXT"     # the loader/linker want the plain name

# 2. the two sources, built into ./servirtium-lua beside a copy of the library
mkdir -p servirtium-lua
curl -fsSL -o servirtium-lua/servirtium.lua $RAW/lua/servirtium.lua
curl -fsSL -o servirtium-lua/servirtium.c   $RAW/lua/csrc/servirtium.c
cp "$LIBDIR/libservirtium_vcr.$EXT" servirtium-lua/
case "$OS" in
  macos) cc -O2 -shared -fPIC -undefined dynamic_lookup $(pkg-config --cflags lua5.4) servirtium-lua/servirtium.c \
           -Lservirtium-lua -lservirtium_vcr -Wl,-rpath,@loader_path -o servirtium-lua/servirtium_native.so ;;
  *)     cc -O2 -shared -fPIC $(pkg-config --cflags lua5.4) servirtium-lua/servirtium.c \
           -Lservirtium-lua -lservirtium_vcr -Wl,-rpath,'$ORIGIN' -o servirtium-lua/servirtium_native.so ;;
esac

# 3. check it: replay a recorded tape
export LUA_PATH="$PWD/servirtium-lua/?.lua;;" LUA_CPATH="$PWD/servirtium-lua/?.so;;"
mkdir -p tapes
curl -fsSL -o tapes/single_get.md $RAW/lua/tapes/single_get.md
lua5.4 -e '
local servirtium = require("servirtium")
local srv = assert(servirtium.playback("tapes/single_get.md"):port(0):start())
local body = io.popen("curl -s " .. srv:base_url() .. "/ok"):read("*a")
print(body, srv:last_kind() == servirtium.OK and "(clean match)" or "(MISMATCH)")   -- -> ok-body (clean match)
srv:close()'
```

The dependency is the `LUA_PATH` / `LUA_CPATH` pair above (or the same two directories in
`package.path` / `package.cpath`). The library's directory is baked into
`servirtium_native.so` as an rpath, so no `LD_LIBRARY_PATH` is needed; keep the two `.so`
files together. There is no rockspec, so no registry form exists yet.

### Notes for coding agents

- The interpreter must be the one the extension was built for: `lua5.4`, not whatever `lua`
  is (often 5.5 or 5.1 on a modern distro). A mismatch shows as `lua: version mismatch: app. needs 504.0, Lua core
  provides 505.0` (when `lua` is 5.5). `pkg-config --list-all | grep lua` shows what is installed.
- `module 'servirtium_native' not found` means `LUA_CPATH` does not include the build
  directory, or the build step did not run. `libservirtium_vcr.so: cannot open shared object
  file` at `require` means the two `.so` files were separated (the rpath is `$ORIGIN`); on macOS
  the equivalent is `@loader_path`, and the extension file is still named `.so`.
- The library is **linked**, not `dlopen`-ed at an env-var path: `SERVIRTIUM_VCR_LIB` has
  no effect here. Rebuild the extension if you change the library. It must be at least as new as
  `csrc/servirtium.c`: use the same tag for both, or the link fails with
  `undefined reference to 'aether_vcr_embed_...'`.
- Use `-musl` assets on Alpine. Windows is not covered by this recipe.
- Do not `luarocks install servirtium`: there is no such rock.

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
suite spawns a compiled Aether HTTP server
(`target/test-tools/test_upstream`) that returns a fixed body/headers and echoes the request
method+body, then kills it. Recorded tapes are written to the OS temp dir, never
into `tapes/`.

With [aeb](https://github.com/aether-lang-dev/aeb): `aeb lua/.tests.ae` builds
`libservirtium_vcr.so`, compiles the extension, and runs the whole suite.

## Concurrency: one server per port

The Aether VCR runs **one server per port**: each server owns its own native
handle with its own tape, cursor, mutations, and diagnostics, so N independent
servers can run concurrently in one process without interfering (the playback
suite runs two at once). Open each on port `0` to let the OS pick a free port,
then read it back via `:base_url()` or `:port()`.

## License

Licensed under the MIT License (see the repository root `LICENSE`), or
http://opensource.org/licenses/MIT.
