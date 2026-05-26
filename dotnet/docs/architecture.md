# Architecture

## The layering

```
your test (xUnit / NUnit / MSTest)
   │   Vcr.Playback(tape).Start()  /  Vcr.Record(tape, upstream).Start()
   ▼
Servirtium.Vcr            ── thin managed C#, this repo ──
   │   • Vcr / PlaybackBuilder / RecordBuilder / VcrServer  (Vcr.cs)
   │   • DllImport bindings to aether_vcr_embed_*           (NativeMethods.cs)
   │   • native-lib resolver                                (NativeLoader.cs)
   ▼   P/Invoke
libservirtium_vcr.{so,dylib,dll}
   │   built: ae build --emit=lib --with=fs,net std/http/server/vcr/embed.ae
   │   • embed.ae  — thin Aether wrapper exposing the C-ABI
   │   • std/http/server/vcr  — the actual VCR (parse, dispatch, record,
   │     mutate, emit, match) + the embedded Aether HTTP server
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The C# side owns **none** of the Servirtium semantics. It starts/stops the
server, marshals strings, and presents an idiomatic fixture. Everything that
defines Servirtium behaviour is the Aether core, shared with every other
language binding built on the same `embed.ae`.

## The C-ABI

`embed.ae` exports `aether_vcr_embed_*` C symbols (the `vcr_embed_` prefix
avoids colliding with the core's own `vcr_*` runtime symbols). It adds only
the *embedding seam* the raw VCR module lacks:

- **starts the accept loop on a background thread**
  (`http_server_start_background_raw`) — the core's `load()` deliberately
  doesn't listen, leaving that to a caller, which an FFI host can't wire;
- **binds synchronously first** so an OS-assigned port (port 0) is resolved
  before `Start()` returns and `vcr.Port` can report it;
- **returns caller-owned, NUL-terminated C strings** (freed via
  `aether_vcr_embed_free_string`) rather than the core's borrowed
  TLS/arena strings.

`NativeMethods.cs` mirrors these 1:1; `NativeMethods.TakeString` marshals
and frees each returned `char*`.

## Native-library resolution

`NativeLoader` registers a `DllImportResolver` (via `[ModuleInitializer]`,
so it's active before the first P/Invoke). It looks, in order, at:

1. `SERVIRTIUM_VCR_LIB` (explicit path — point it at a fresh
   `ae build --emit=lib` artifact during development);
2. the assembly's output directory;
3. `runtimes/<rid>/native/` (the NuGet layout);
4. the OS loader (`LD_LIBRARY_PATH`, system paths, …).

The file name is computed per-platform: `libservirtium_vcr.so` /
`.dylib` / `servirtium_vcr.dll`, and `<rid>` from
`RuntimeInformation` (e.g. `linux-x64`, `osx-arm64`).

## One server per process

v1 keeps the VCR's tape, replay cursor, mutations, static mounts, pending
note, and diagnostics as **process-global** state (this is the documented
v1 contract on the Aether side). Consequences:

- You cannot run two `VcrServer`s simultaneously in one process.
- **Run tests serially** —
  `[assembly: CollectionBehavior(DisableTestParallelization = true)]` for
  xUnit. Parallel test classes would stomp each other's state (it shows up
  as spurious `599` mismatches).
- `PlaybackBuilder.Start()` / `RecordBuilder.Start()` call `ResetGlobalState()`
  first — clearing redactions, unredactions, header removals, static mounts,
  format options, strict-headers, and the last-error slot — then apply the
  current fixture's config. So a setting from a previous test never leaks
  forward, even within one process.

Per-server isolation (a real handle owning its own state) is on the Aether
roadmap; when it lands, the wrapper drops the serial constraint without an
API change.

## A subtle ordering rule (notes)

Redactions / unredactions / header-removals / static-mounts are separate
global lists, registered before the server starts. A **note**, however, is
stored alongside the tape and is cleared when `start_record` (re)loads the
tape — so the wrapper stages the builder's note *after* `start_record`
returns, attaching it to the first interaction. (See `RecordBuilder.Start`.)
