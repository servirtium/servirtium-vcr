# Architecture

## The layering

```
your test (jest / vitest / node:test)
   │   Vcr.playback(tape).start()  /  Vcr.record(tape, upstream).start()
   ▼
@servirtium/vcr            ── thin TypeScript, this repo ──
   │   • Vcr / PlaybackBuilder / RecordBuilder / VcrServer  (src/vcr.ts)
   │   • koffi bindings to aether_vcr_embed_*               (src/native.ts)
   │   • native-lib resolver                                (src/native.ts)
   ▼   koffi FFI
libservirtium_vcr.{so,dylib,dll}     (built to core/native/)
   │   built: ae build --emit=lib --with=fs,net \
   │            core/embed.ae --extra core/_embed_strdup.c
   │   • core/embed.ae  — thin Aether wrapper exposing the C-ABI
   │   • core/vcr.ae    — the actual VCR (parse, dispatch, record,
   │     mutate, emit, match) + the embedded Aether HTTP server,
   │     a pure-Aether module on Aether stdlib primitives
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The TypeScript side owns **none** of the Servirtium semantics. It starts/stops
the server, marshals strings, and presents an idiomatic fixture. Everything that
defines Servirtium behaviour is the in-repo Aether core (`core/vcr.ae`), shared
with every other language binding built on the same `core/embed.ae`.

## The C-ABI

`core/embed.ae` exports `aether_vcr_embed_*` C symbols (the `vcr_embed_` prefix
avoids colliding with the core's own `vcr_*` runtime symbols). It adds only the
*embedding seam* the raw VCR module lacks:

- **starts the accept loop on a background thread** — the core's `load()`
  deliberately doesn't listen, leaving that to a caller, which an FFI host can't
  wire;
- **binds synchronously first** so an OS-assigned port (port 0) is resolved
  before `start()` returns and `vcr.port` can report it;
- **returns caller-owned, NUL-terminated C strings** (freed via
  `aether_vcr_embed_free_string`) rather than the core's borrowed TLS/arena
  strings.

`src/native.ts` mirrors these 1:1 with koffi `lib.func(...)` declarations.

### koffi string ownership

Every `char*`-returning ABI function is declared with a `void*` return type
(**not** koffi's `str`, which copies into a JS string but leaves the native
buffer dangling — a leak you can't free). `takeString(ptr)` does the right
thing: `koffi.decode(ptr, 'char', -1)` to read the C string, then
`aether_vcr_embed_free_string(ptr)` to release it. NULL decodes to `''`.

## Native-library resolution

`src/native.ts` resolves the library, in order:

1. `SERVIRTIUM_VCR_LIB` (explicit path — point it at a fresh
   `ae build --emit=lib` artifact during development);
2. `native/<libservirtium_vcr.so|.dylib|.dll>` next to the package (the
   shipped/built layout; `aeb` builds the artifact under `core/native/` and the
   suite points `SERVIRTIUM_VCR_LIB` at it directly);
3. the bare file name, letting the OS loader try `LD_LIBRARY_PATH` / system
   paths.

The file name is computed per-platform: `libservirtium_vcr.so` (Linux) /
`.dylib` (macOS) / `servirtium_vcr.dll` (Windows). The resolver runs from both
`src/native.ts` (tests) and `dist/native.js` (published) — `../native` is the
same relative depth from each.

## Concurrency: one server per port

The core is **one server per port** (handle-based). Each `.start()` calls an
`open*` ABI function that returns an opaque handle; every config / diagnostic /
lifecycle call thereafter takes that handle. A handle owns its own tape, replay
cursor, mutations, static mounts, pending note, and diagnostics. Consequences:

- **N independent `VcrServer`s can run concurrently in one process** — each
  keyed by its own handle — without their cursors or mutations bleeding into
  each other. `core_tests/concurrent_probe.ae` proves it on the Aether side.
- A fixture's config is applied to its own handle in `start()` (`applyConfig`),
  so there is no process-global state to reset and no leakage between fixtures.
- The bundled `jest.config.js` still pins `maxWorkers: 1` (= `jest --runInBand`),
  but **not** because the engine is single-server — the suite shares a single
  fixed test port across files, so running files in parallel would collide on
  that port. The one-server-per-port engine itself imposes no serial constraint.

## A subtle ordering rule (notes)

Redactions / unredactions / header-removals / static-mounts are registered on
the handle before the server starts. A **note**, however, is stored alongside
the tape and is cleared when `start_record` (re)loads the tape — so the wrapper
stages the builder's note *after* `start_record` returns, attaching it to the
first interaction. (See `RecordBuilder.start` in `src/vcr.ts`.)
