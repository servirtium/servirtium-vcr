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

var srv = try servirtium.Playback.init(allocator, "tapes/climate_api.md")
    .port(0)             // 0 picks a free port
    .start();
defer srv.close() catch {};

const base = try srv.baseUrl();
defer allocator.free(base);
// ... point your HTTP client at `base` and make requests ...

// optional: assert a clean match
try std.testing.expectEqual(servirtium.Outcome.ok, srv.lastKind());
```

## What this is (and isn't)

This is a thin Zig layer over the **Aether VCR** core. All record/replay
machinery — markdown parse/emit, the HTTP server, request matching,
redactions, notes, drift detection, static bypass, gzip/chunked handling —
lives in the in-repo, pure-Aether `core/vcr.ae` module. This binding links a
precompiled native build of that core and calls its `aether_vcr_embed_*` C ABI
directly; it does **not** reimplement Servirtium in Zig.

Unlike the Rust binding (which `dlopen`s the engine at runtime via
`libloading`), this binding links the engine `.so` at **build time**
(`addLibraryPath` + `linkSystemLibrary("servirtium_vcr")`) and bakes an rpath
so the test binary finds it without `LD_LIBRARY_PATH`. The tape *format* is the
same across all bindings, so existing tapes replay as-is.

## API

`src/servirtium.zig` is a single source file exposing:

- the raw `extern "c"` C ABI (`aether_vcr_embed_*`);
- fluent, allocator-aware **`Playback`** and **`Record`** builders returning a
  running **`Server`** (mirrors the Go binding); and
- a thin low-level **`Vcr`** handle wrapper.

**Playback** builder: `init(alloc, tape)`, `.host`, `.port`, `.label`,
`.strictHeaders`, `.matchJsonBody`, `.matchMultiple`, `.matchHeader(name)`, `.removeHeader(field, name)`, `.unredact(field, pat, repl)`,
`.staticContent(mount, dir)`, `.untaped(path)`, `.start`.

**Record** builder: `init(alloc, tape, upstream)`, `.host`, `.port`, `.label`,
`.removeHeader`, `.redact(field, pat, repl)`,
`.normalizeWholeTape(pat, name)`, `.redactWholeTape(pat, repl)`,
`.staticContent`, `.untaped`, `.note(title, body)`, `.indentCodeBlocks`,
`.emphasizeHttpVerbs`, `.failIfChanged`, `.start`.

**Server**: `.port`, `.baseUrl`, `.tapeLength`, `.lastError`, `.lastKind`,
`.lastIndex`, `.note`, `.resetCursor`, `.clearLastError`, `.close`
(record-mode `close` flushes the tape; `failIfChanged` returns
`error.VcrError` on drift).

The builders use **value semantics** so a chain like
`Playback.init(...).port(0).start()` works (Zig won't take a `*` to an
rvalue). `Field` ids for `redact`/`unredact`/`removeHeader` are the `Field`
enum (`.path`, `.response_body`, `.request_headers`, `.request_body`,
`.response_headers`); the clean-match outcome is `Outcome.ok`.

Returned strings are caller-owned: the wrapper copies them into the supplied
allocator and frees the native buffer for you, so free the returned slice with
`allocator.free`.

See [docs/usage.md](docs/usage.md) for the full cookbook,
[docs/features.md](docs/features.md) for the capability matrix and the 14 test
scenarios, and [docs/architecture.md](docs/architecture.md) for the layering.

## Building and testing

The native engine is built from `core/` (needs the Aether `ae` toolchain). The
build looks for `libservirtium_vcr.so` at `$SERVIRTIUM_VCR_LIB` if set,
otherwise at `../core/native/libservirtium_vcr.so` relative to this directory.
The suite shells out to `curl`, so `curl` must be on `PATH`.

```sh
# build the shared engine from core/, then point the build at it:
SERVIRTIUM_VCR_LIB=../core/native/libservirtium_vcr.so zig build test --summary all
# Build Summary: 3/3 steps succeeded; 14/14 tests passed
```

Toolchain: **Zig 0.16.0**. If `build.zig` ever fights a different Zig, the
suite compiles standalone:

```sh
N=../core/native
zig test src/test.zig -lc -L"$N" -lservirtium_vcr -rpath "$N"
```

See [docs/building.md](docs/building.md) for the aeb leaf (`zig/.tests.ae`) and
the Zig-0.16 std gotchas.

## Test coverage

`zig build test` runs 14 scenarios across three files — full parity with the
Go binding:

- **playback** (`src/playback_test.zig`): replay a GET; flag a path mismatch;
  unredaction lets a scrubbed tape match; strict matching flags a missing
  header; static content from disk; untaped 404 without consuming the cursor;
  two servers at once.
- **record** (`src/record_test.zig`): record-then-replay a GET; record+replay a
  POST with a body.
- **mutation** (`src/mutation_test.zig`): redact a response body; attach a note;
  remove a named header; mutation state does not leak between fixtures;
  fail-if-changed drift.

Record-mode tests drive a throwaway `FakeUpstream` (`src/testutil.zig`) over
`std.Io.net` and record to a temp tape, never into `tapes/`.

## Concurrency: one server per port

The Aether VCR runs **one server per port**: each `Server` owns its own native
handle with its own tape, cursor, mutations, and diagnostics, so **N
independent servers can run concurrently in one process** without interfering.

## License

Licensed under the MIT License ([LICENSE](../LICENSE) or
http://opensource.org/licenses/MIT).
