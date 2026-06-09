# Architecture

```
your test (dart test) — or a Flutter test
   │   Vcr.playback(tape).start()  /  Vcr.record(tape, upstream).start()
   ▼
package:servirtium (thin Dart)
   │   • Vcr / PlaybackBuilder / RecordBuilder / VcrServer   (lib/src/vcr.dart)
   │   • Native (dart:ffi lookups of aether_vcr_embed_*, + takeString copy/free)
   ▼   dart:ffi (DynamicLibrary.open)
core/native/libservirtium_vcr.so
   │   built: ae build --emit=lib --with=fs,net core/embed.ae
   │   core/embed.ae (C-ABI wrapper) + core/vcr.ae (the in-repo pure-Aether
   │   engine + HTTP server, on Aether stdlib primitives)
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

## Concurrency: one server per port

The ABI is **handle-based**: `open` mints a handle, every config / diagnostic
/ lifecycle call takes that handle, and `start`/`stop` bring just that listener
up and down. N independent servers run concurrently in one process, each with
its own tape, cursor, mutations, and diagnostics — nothing is process-global,
so two `VcrServer`s never bleed state into each other. Lifecycle is
open → configure(handle) → start. A record **note** is staged after the tape
loads (the load clears the pending note), so it attaches to the first
interaction.
