# Architecture

```
your test (dart test) — or a Flutter test
   │   Vcr.playback(tape).start()  /  Vcr.record(tape, upstream).start()
   ▼
package:servirtium (thin Dart)
   │   • Vcr / PlaybackBuilder / RecordBuilder / VcrServer   (lib/src/vcr.dart)
   │   • Native (dart:ffi lookups of aether_vcr_embed_*, + takeString copy/free)
   ▼   dart:ffi (DynamicLibrary.open)
libservirtium_vcr.so
   │   built: ae build --emit=lib --with=fs,net …/embed.ae
   │   embed.ae (C-ABI wrapper) + std/http/server/vcr (the engine + HTTP server)
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The Dart layer owns **no** Servirtium semantics — it opens the library,
marshals strings, and presents an idiomatic fixture. All record/replay
behaviour is the shared Aether engine, identical across every language
binding. The same binding works under Flutter (same `dart:ffi`).

## FFI surface

`lib/src/native.dart` opens the `.so` (resolving `SERVIRTIUM_VCR_LIB` then the
bundled `native/` dir) and `lookupFunction`s each `aether_vcr_embed_*`. Input
strings go through `toNativeUtf8()` (package:ffi) and are freed after the call;
returned `Pointer<Utf8>` are copied with `.toDartString()` then handed to
`aether_vcr_embed_free_string` (`takeString`), per the caller-owned rule.

## One server per process

v1 keeps the engine's tape/cursor/mutations as **process-global** state — and
crucially, Dart isolates in one process share that native state. So: one
active `VcrServer` at a time; run `dart test` with `concurrency: 1`.
`PlaybackBuilder/RecordBuilder.start()` call `_resetGlobalState()` first
(clear redactions/unredactions/header-removals/static/format, strict→off,
clear last-error), then apply the fixture's config — so nothing leaks between
tests. A record **note** is staged *after* `start_record` (the load clears the
pending note), so it attaches to the first interaction.
