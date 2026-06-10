# Architecture

## The layering

```
your test (lua5.4 tests/*.lua)
   │   servirtium.playback(tape):start()  /  servirtium.record(tape, upstream):start()
   ▼
servirtium-lua          ── thin Lua, this repo ──
   │   • servirtium.lua            — the idiomatic surface: PlaybackBuilder /
   │                                 RecordBuilder / Server (chainable config)
   │   • csrc/servirtium.c         — a hand-written Lua 5.4 C EXTENSION that
   │                                 declares + calls the aether_vcr_embed_* ABI
   ▼   Lua 5.4 C API (luaL_newlib, light userdata for the handle)
servirtium_native.so    ── the compiled C extension (require("servirtium_native")) ──
   ▼   -L/-l link + embedded rpath
core/native/libservirtium_vcr.so
   │   built: ae build --emit=lib --with=fs,net core/embed.ae (by core/.build.ae)
   │   • core/embed.ae  — thin Aether wrapper exposing the C-ABI
   │   • core/vcr.ae    — the actual VCR (parse, dispatch, record, mutate,
   │     emit, match) — pure Aether, in this repo, on top of std.http's
   │     server + std.regex / std.zlib / std.cryptography
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The Lua side owns **none** of the Servirtium semantics. The C extension
starts/stops the server, marshals strings across the FFI, and the `.lua` file
presents an idiomatic fixture. Everything that defines Servirtium behaviour is
the in-repo Aether core (`core/vcr.ae` + `core/embed.ae`), shared with every
other language binding through the one `core/native/libservirtium_vcr.so` built
by `core/.build.ae`.

## Why a C extension (not LuaJIT FFI)

This is the **portable** binding path: a hand-written module using the Lua 5.4
C API (`luaL_Reg` / `luaL_newlib`, the opaque engine handle carried as a *light
userdata*), **not** LuaJIT FFI — LuaJIT is not a requirement and need not be
installed. Two modules ship:

- `servirtium_native.so` — the compiled extension, a thin 1:1 wrapper over the
  engine ABI (`require("servirtium_native")`).
- `servirtium.lua` — the idiomatic surface (`require("servirtium")`) that wraps
  it with builders + a `Server` object.

## The C-ABI

`core/embed.ae` exports `aether_vcr_embed_*` C symbols (the `vcr_embed_` prefix
avoids colliding with the core's own `vcr_*` runtime symbols). It adds only the
*embedding seam* the raw VCR module lacks:

- **starts the accept loop on a background thread** — the core's `load()`
  deliberately doesn't listen;
- **binds synchronously first** so an OS-assigned port (port 0) is resolved
  before `start()` returns and `srv:port()` can report it;
- **returns caller-owned, NUL-terminated C strings** (freed via
  `aether_vcr_embed_free_string`).

`csrc/servirtium.c` declares the full table of `extern` prototypes 1:1 and
exposes each as a Lua C function. The helper `push_owned_string` copies a
returned `char*` into a Lua string and frees the pointer; inputs are read with
`luaL_checkstring` (Lua owns those, no free). Mutation setters return the
engine's `char*` error ("" on success), surfaced to Lua and raised as a Lua
error by the builder's `check()`.

## Native-library resolution

`build.sh` links the extension against the engine with:

```sh
cc ... -L<core/native> -lservirtium_vcr -Wl,-rpath,<core/native> -o servirtium_native.so
```

`-L` finds it at link time; `-Wl,-rpath` bakes an **absolute** rpath into the
module so the runtime loader finds `libservirtium_vcr.so` without
`LD_LIBRARY_PATH`. For parity with the other bindings, the `.tests.ae` also
exports `SERVIRTIUM_VCR_LIB` (an absolute path the engine honors first).

## Concurrency: one server per port

The VCR core runs **one server per port**. Each `:start()` opens a fresh native
handle, and the VCR's tape, replay cursor, mutations, static mounts, pending
note, and diagnostics are all scoped to **that handle** — nothing is
process-global. Consequences:

- N independent `Server`s can be alive at once in one process, each replaying or
  recording its own tape with its own cursor and diagnostics, without bleeding
  into each other (the `playback.lua` suite runs two playback servers on two
  ports at once and asserts each replays its own tape).
- The lifecycle is **open → configure(handle) → start**: each builder's config
  (redactions, unredactions, header removals, static mounts, whole-tape
  rewrites, format options, strict-headers) is applied to its own handle
  between open and start, so one fixture's settings can never leak into
  another's (`mutation.lua` proves the no-leak property).

## A subtle ordering rule (notes)

Redactions / unredactions / header-removals / static-mounts / whole-tape
rewrites are registered against the handle before the server starts. A
**note**, however, is stored alongside the tape and is cleared when
`open_record` (re)loads the tape — so `RecordBuilder:start()` stages the
builder's note *after* the handle is opened, attaching it to the first
interaction. (See the comment in `servirtium.lua`.)
