# servirtium-zig

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for Zig.

You point your system-under-test at a local URL. In **playback** it replays
a recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```zig
const std = @import("std");
const servirtium = @import("servirtium.zig");

var vcr = try servirtium.Vcr.playback(
    allocator,
    "climate_api",
    "tapes/climate_api.md",
    "127.0.0.1",
    0, // 0 picks a free port
);
defer vcr.close();          // `vcr` stops when closed
try vcr.start();

const base = try vcr.baseUrl("127.0.0.1");
defer allocator.free(base);
// ... point your HTTP client at `base` and make requests ...

// optional: assert a clean match
try std.testing.expectEqual(servirtium.Outcome.ok, vcr.lastKind());
```

## What this is (and isn't)

This is a thin Zig layer over the **Aether VCR** core. All record/replay
machinery — markdown parse/emit, the HTTP server, request matching,
redactions, notes, drift detection, static bypass, gzip/chunked handling —
lives in the in-repo, pure-Aether `core/vcr.ae` module (built on Aether stdlib
primitives, with the Servirtium logic in this repo, *not* the Aether standard
library). This binding links a precompiled native build of that core and calls
its `aether_vcr_embed_*` C ABI directly; it does **not** reimplement Servirtium
in Zig.

Unlike the Rust binding (which `dlopen`s the engine at runtime via
`libloading`), this binding links the engine `.so` at **build time**
(`addLibraryPath` + `linkSystemLibrary("servirtium_vcr")`) and bakes an rpath
so the test binary finds it without `LD_LIBRARY_PATH`. The tape *format* is the
same across all bindings, so existing tapes replay as-is.

## Use

The binding is a single source file, `src/servirtium.zig`, exposing:

- the raw `extern "c"` C ABI (`aether_vcr_embed_*`), and
- an idiomatic `Vcr` wrapper with `playback` / `record` constructors and
  `start`, `baseUrl`, `port`, `lastKind`, `lastError`, `redact`,
  `normalizeWholeTape`, `redactWholeTape`, `staticContent`, `untaped`,
  `stop`, `stopAndFlush`, and `close`.

Field ids for `redact` / `unredact` / `remove_header` are the `Field` enum
(`path=1`, `response_body=2`, `request_headers=3`, `request_body=4`,
`response_headers=5`); the clean-match outcome is `Outcome.ok` (0).

Returned strings are caller-owned: the wrapper copies them into the supplied
allocator and frees the native buffer via `aether_vcr_embed_free_string` for
you, so free the returned slice with `allocator.free`.

## Building and testing

The native engine is built from `core/` (needs the Aether `ae` toolchain). The
build looks for `libservirtium_vcr.so` at `$SERVIRTIUM_VCR_LIB` if set,
otherwise at `../core/native/libservirtium_vcr.so` relative to this directory.

```sh
# build the shared engine from core/, then point the build at it:
SERVIRTIUM_VCR_LIB=../core/native/libservirtium_vcr.so zig build test
```

Toolchain: **Zig 0.16.0**. If `build.zig` ever fights a newer/older Zig, the
test compiles and runs standalone:

```sh
N=../core/native
zig test src/test.zig -lc -L"$N" -lservirtium_vcr -rpath "$N"
```

## Concurrency: one server per port

The Aether VCR runs **one server per port**: each `Vcr` owns its own native
handle with its own tape, cursor, mutations, and diagnostics, so **N
independent servers can run concurrently in one process** without interfering.

## License

Licensed under the MIT License ([LICENSE](../LICENSE) or
http://opensource.org/licenses/MIT).
