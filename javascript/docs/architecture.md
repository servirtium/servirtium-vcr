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
libservirtium_vcr.{so,dylib,dll}
   │   built: ae build --emit=lib --with=fs,net std/http/server/vcr/embed.ae
   │   • embed.ae  — thin Aether wrapper exposing the C-ABI
   │   • std/http/server/vcr  — the actual VCR (parse, dispatch, record,
   │     mutate, emit, match) + the embedded Aether HTTP server
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The TypeScript side owns **none** of the Servirtium semantics. It starts/stops
the server, marshals strings, and presents an idiomatic fixture. Everything that
defines Servirtium behaviour is the Aether core, shared with every other
language binding built on the same `embed.ae`.

## The C-ABI

`embed.ae` exports `aether_vcr_embed_*` C symbols (the `vcr_embed_` prefix
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
   shipped/built layout);
3. the bare file name, letting the OS loader try `LD_LIBRARY_PATH` / system
   paths.

The file name is computed per-platform: `libservirtium_vcr.so` (Linux) /
`.dylib` (macOS) / `servirtium_vcr.dll` (Windows). The resolver runs from both
`src/native.ts` (tests) and `dist/native.js` (published) — `../native` is the
same relative depth from each.

## One server per process

v1 keeps the VCR's tape, replay cursor, mutations, static mounts, pending note,
and diagnostics as **process-global** state (the documented v1 contract on the
Aether side). Consequences:

- You cannot run two `VcrServer`s simultaneously in one process.
- **Run tests serially.** Jest runs test *files* in separate worker processes,
  each loading its own copy of the `.so`, so files are isolated; but tests
  *within* a file run in order, and to be deterministic the bundled
  `jest.config.js` pins `maxWorkers: 1` (= `jest --runInBand`). Parallel
  in-process servers would stomp each other's state (spurious `599` mismatches).
- `PlaybackBuilder.start()` / `RecordBuilder.start()` call `resetGlobalState()`
  first — clearing redactions, unredactions, header removals, static mounts,
  format options, strict-headers, and the last-error slot — then apply the
  current fixture's config. So a setting from a previous test never leaks
  forward, even within one process.

Per-server isolation (a real handle owning its own state) is on the Aether
roadmap; when it lands, the wrapper drops the serial constraint without an API
change.

## A subtle ordering rule (notes)

Redactions / unredactions / header-removals / static-mounts are separate global
lists, registered before the server starts. A **note**, however, is stored
alongside the tape and is cleared when `start_record` (re)loads the tape — so
the wrapper stages the builder's note *after* `start_record` returns, attaching
it to the first interaction. (See `RecordBuilder.start` in `src/vcr.ts`.)
