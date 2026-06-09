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
core/native/libservirtium_vcr.{so,dylib,dll}
   │   built: ae build --emit=lib --with=fs,net core/embed.ae
   │   • core/embed.ae  — thin Aether wrapper exposing the C-ABI
   │   • core/vcr.ae    — the actual VCR (parse, dispatch, record, mutate,
   │     emit, match), a pure-Aether module on stdlib primitives, plus the
   │     embedded Aether HTTP server
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The C# side owns **none** of the Servirtium semantics. It starts/stops the
server, marshals strings, and presents an idiomatic fixture. Everything that
defines Servirtium behaviour is the in-repo Aether core (`core/vcr.ae`),
shared with every other language binding built on the same `core/embed.ae`.

## The C-ABI

`core/embed.ae` exports `aether_vcr_embed_*` C symbols (the `vcr_embed_`
prefix avoids colliding with the core's own `vcr_*` runtime symbols). It
adds only the *embedding seam* the raw VCR module lacks:

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

## Concurrency: one server per port

Each `.Start()` opens a native handle (`aether_vcr_embed_open_playback` /
`open_record`) that **owns its own** tape, replay cursor, mutations, static
mounts, pending note, and diagnostics. Every native call is keyed by that
handle (see the `IntPtr server` parameter on every method in
`NativeMethods.cs`), and `VcrServer` holds exactly one handle. Consequences:

- You can run **N independent `VcrServer`s concurrently** in one process —
  each on its own port, with its own tape and independent cursor. State
  never crosses between them, so there is **no need to serialize tests**.
- Because each fixture starts from a fresh handle, its config (redactions,
  unredactions, header removals, static mounts, format options,
  strict-headers, diagnostics) is isolated by construction — nothing from a
  prior fixture can leak forward.
- `core_tests/.concurrent.ae` is the proof: two playback servers on two
  ports, in one process, each replaying its own tape with independent
  cursors and diagnostics at the same time.

## A subtle ordering rule (notes)

Redactions / unredactions / header-removals / static-mounts are per-handle
lists, registered against the handle before the server starts. A **note**,
however, is stored alongside the tape and is cleared when `start_record`
(re)loads the tape — so the wrapper stages the builder's note *after*
`start_record` returns, attaching it to the first interaction. (See
`RecordBuilder.Start`.)
