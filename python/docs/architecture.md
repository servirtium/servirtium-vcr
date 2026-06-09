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
   │   built: ae build --emit=lib --with=fs,net core/embed.ae
   │   • core/embed.ae  — thin Aether wrapper exposing the C-ABI
   │   • core/vcr.ae    — the actual VCR (parse, dispatch, record, mutate,
   │     emit, match) + the embedded Aether HTTP server, a pure-Aether module
   │     in this repo on top of std.http / std.regex / std.zlib /
   │     std.cryptography
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The Python side owns **none** of the Servirtium semantics. It starts/stops the
server, marshals strings, and presents an idiomatic fixture. Everything that
defines Servirtium behaviour is the Aether core — the in-repo `core/vcr.ae`
module, shared with every other language binding built on the same
`core/embed.ae` (.NET, Go, Java, Rust, Python, …). The Servirtium logic lives in
this repo, not the Aether standard library; it only *uses* stdlib primitives.

## The C-ABI

`core/embed.ae` exports `aether_vcr_embed_*` C symbols (the `vcr_embed_` prefix
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

## Concurrency: one server per port

The VCR runs **one server per port**. Each `servirtium.playback(...).start()` /
`servirtium.record(...).start()` opens its own handle, and the VCR's tape,
replay cursor, mutations, static mounts, pending note, and diagnostics are all
scoped to that handle. Consequences:

- You **can** run several `VcrServer`s simultaneously in one process, each on
  its own port replaying its own tape — e.g. a test that stands up a weather API
  and a payments API at once, each with its own `base_url`. A mismatch on one
  does not touch another's diagnostics. (`core_tests/concurrent_probe.ae` and
  `test/test_concurrent.py` prove this.)
- Config (redactions, unredactions, header removals, static mounts, format
  options, strict-headers) and diagnostics never bleed between handles, so there
  is **no need to run tests serially** for state-isolation reasons — pytest's
  default ordering is fine, and independent fixtures don't stomp each other.
- Every `_native` mutation / diagnostics call takes the handle as its first
  argument; the Python wrapper holds the handle inside the builder and the
  returned `VcrServer`.

## A subtle ordering rule (notes)

Redactions / unredactions / header-removals / static-mounts / whole-tape rules
are registered on the handle *after* `open_*` and before `start`. A **note**,
however, is stored alongside the tape and is cleared when `open_record` (re)opens
and clears the tape — so the wrapper stages the builder's note *after*
`open_record` returns, attaching it to the first interaction. (See
`RecordBuilder.start` in `_vcr.py`.)
