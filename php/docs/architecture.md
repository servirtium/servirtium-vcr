# Architecture

```
your test (PHPUnit)
   │   Vcr::playback($tape)->start()  /  Vcr::record($tape, $upstream)->start()
   ▼
Servirtium\* (this package — thin PHP)
   │   • Vcr / PlaybackBuilder / RecordBuilder / VcrServer
   │   • Native (FFI::cdef of aether_vcr_embed_*, + takeString copy/free)
   ▼   PHP FFI
libservirtium_vcr.so
   │   built: --emit=lib --with=fs,net core/embed.ae
   │   core/embed.ae (C-ABI wrapper) + core/vcr.ae (the engine + HTTP server)
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The PHP layer owns **no** Servirtium semantics — it starts/stops the server,
marshals strings, and presents an idiomatic fixture. All record/replay
behaviour is the shared Aether engine, identical across every language
binding.

## FFI surface

`Servirtium\Native` holds a single `FFI::cdef($header, $soPath)` (lazy,
cached), resolving the `.so` from `SERVIRTIUM_VCR_LIB` then the bundled
`native/` dir. PHP strings pass as `const char*` directly; returned `char*`
are copied with `FFI::string()` then handed back to
`aether_vcr_embed_free_string` (`Native::takeString`), per the caller-owned
ownership rule.

> Note: the class is `Native`, not `Ffi` — PHP class names are
> case-insensitive, so `Ffi` would collide with the global `FFI` class.

## Concurrency: one server per port

The VCR runs **one server per port**. Each `Vcr::playback(...)->start()` /
`Vcr::record(...)->start()` opens its own handle, and the VCR's tape, replay
cursor, mutations, static mounts, pending note, and diagnostics are all scoped
to that handle. Consequences:

- You **can** run several `VcrServer`s simultaneously in one process, each on
  its own port replaying its own tape — e.g. a test that stands up a weather API
  and a payments API at once, each with its own `baseUrl()`. A mismatch on one
  does not touch another's diagnostics. (`core_tests/concurrent_probe.ae` proves
  this.)
- Config (redactions, unredactions, header removals, static mounts, format
  options, whole-tape rules, strict-headers) and diagnostics never bleed between
  handles, so there is **no need to run PHPUnit serially** for state-isolation
  reasons — independent fixtures don't stomp each other.
- Every `aether_vcr_embed_*` mutation / diagnostics call takes the `$handle` as
  its first argument; the PHP wrapper holds the handle inside the builder and
  the returned `VcrServer`.

A record **note** is the one ordering subtlety: it is stored alongside the tape
and cleared when `open_record` (re)opens it, so `RecordBuilder::start()` stages
the note *after* `open_record` and before serving, so it attaches to the first
interaction.
