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
   │   built: ae build --emit=lib --with=fs,net …/embed.ae
   │   embed.ae (C-ABI wrapper) + std/http/server/vcr (the engine + HTTP server)
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

## One server per process

v1 keeps the engine's tape/cursor/mutations as process-global state, so:
one active `VcrServer` at a time; run PHPUnit serially.
`PlaybackBuilder/RecordBuilder::start()` call `resetGlobalState()` first
(clear redactions/unredactions/header-removals/static/format, strict→off,
clear last-error), then apply the fixture's config — so nothing leaks between
tests. A record **note** is staged *after* `start_record` (the load clears the
pending note), so it attaches to the first interaction.
