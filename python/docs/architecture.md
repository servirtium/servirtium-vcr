# Architecture

## The layering

```
your test (pytest / unittest)
   │   servirtium.playback(tape).start()  /  servirtium.record(tape, upstream).start()
   ▼
servirtium (this package)        ── thin Python, this repo ──
   │   • playback / record / PlaybackBuilder / RecordBuilder / VcrServer  (_vcr.py)
   │   • ctypes bindings to aether_vcr_embed_* + native-lib loader        (_native.py)
   ▼   ctypes FFI
libservirtium_vcr.{so,dylib,dll}
   │   built: ae build --emit=lib --with=fs,net std/http/server/vcr/embed.ae
   │   • embed.ae  — thin Aether wrapper exposing the C-ABI
   │   • std/http/server/vcr  — the actual VCR (parse, dispatch, record,
   │     mutate, emit, match) + the embedded Aether HTTP server
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The Python side owns **none** of the Servirtium semantics. It starts/stops the
server, marshals strings, and presents an idiomatic fixture. Everything that
defines Servirtium behaviour is the Aether core, shared with every other
language binding built on the same `embed.ae` (.NET, Go, Java, Rust, Python).

## The C-ABI

`embed.ae` exports `aether_vcr_embed_*` C symbols (the `vcr_embed_` prefix
avoids colliding with the core's own `vcr_*` runtime symbols). It adds only the
*embedding seam* the raw VCR module lacks:

- **starts the accept loop on a background thread** — the core's `load()`
  deliberately doesn't listen, leaving that to a caller, which an FFI host
  can't wire;
- **binds synchronously first** so an OS-assigned port (port 0) is resolved
  before `start()` returns and `vcr.port` can report it;
- **returns caller-owned, NUL-terminated C strings** (freed via
  `aether_vcr_embed_free_string`) rather than the core's borrowed TLS/arena
  strings.

`_native.py` declares these 1:1. `char*`-returning functions use `restype =
c_void_p` (not `c_char_p`, which auto-converts to `bytes` and drops the pointer
we must free); `_native.take_string` reads the pointer with `ctypes.string_at`,
decodes UTF-8, then frees the **original** pointer via
`aether_vcr_embed_free_string`. Inputs are encoded `str → bytes` for `c_char_p`;
the handle is a `c_void_p`.

## Native-library resolution

`_native._load_library()` looks, in order, at:

1. `SERVIRTIUM_VCR_LIB` (explicit path — point it at a fresh
   `ae build --emit=lib` artifact during development);
2. the package's bundled `servirtium/native/` directory;
3. the OS loader: the bare file name, then `ctypes.util.find_library`
   (`LD_LIBRARY_PATH`, system paths, …).

The file name is computed per-platform: `libservirtium_vcr.so` / `.dylib` /
`servirtium_vcr.dll`.

## One server per process

v1 keeps the VCR's tape, replay cursor, mutations, static mounts, pending note,
and diagnostics as **process-global** state (the documented v1 contract on the
Aether side). Consequences:

- You cannot run two `VcrServer`s simultaneously in one process.
- **Run tests serially** — pytest does this by default; do not add
  `pytest-xdist` (`-n`). Parallel test workers would stomp each other's state
  (it shows up as spurious `599` mismatches).
- `PlaybackBuilder.start()` / `RecordBuilder.start()` call
  `_reset_global_state()` first — clearing redactions, unredactions, header
  removals, static mounts, format options, strict-headers, and the last-error
  slot — then apply the current fixture's config. So a setting from a previous
  test never leaks forward, even within one process.

Per-server isolation (a real handle owning its own state) is on the Aether
roadmap; when it lands, the wrapper drops the serial constraint without an API
change.

## A subtle ordering rule (notes)

Redactions / unredactions / header-removals / static-mounts are separate global
lists, registered before the server starts. A **note**, however, is stored
alongside the tape and is cleared when `start_record` (re)loads the tape — so
the wrapper stages the builder's note *after* `start_record` returns, attaching
it to the first interaction. (See `RecordBuilder.start` in `_vcr.py`.)
