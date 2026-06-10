# Architecture

## The layering

```
your test (zig build test)
   │   servirtium.Playback.init(alloc, tape).start()
   │   servirtium.Record.init(alloc, tape, upstream).start()
   ▼
servirtium-zig          ── thin Zig (extern "C"), this repo ──
   │   • Playback / Record builders + Server          (src/servirtium.zig)
   │   • the raw `extern "c"` aether_vcr_embed_* surface
   ▼   build-time link (libservirtium_vcr.so)
core/native/libservirtium_vcr.so
   │   built: ae build --emit=lib --with=fs,net core/embed.ae (by core/.build.ae)
   │   • core/embed.ae  — thin Aether wrapper exposing the C-ABI
   │   • core/vcr.ae    — the actual VCR (parse, dispatch, record, mutate,
   │     emit, match) — pure Aether, in this repo, on top of std.http's
   │     server + std.regex / std.zlib / std.cryptography
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The Zig side owns **none** of the Servirtium semantics. It opens/starts/stops
the server, marshals strings across the FFI, and presents an idiomatic,
allocator-aware fixture. Everything that defines Servirtium behaviour is the
in-repo Aether core (`core/vcr.ae` + `core/embed.ae`), shared with every other
language binding through the one `core/native/libservirtium_vcr.so` built by
`core/.build.ae`.

## The C-ABI

`core/embed.ae` exports `aether_vcr_embed_*` C symbols. The Zig binding
declares them 1:1 as `pub extern "c" fn aether_vcr_embed_*(...)` in
`src/servirtium.zig`. It adds only the *embedding seam* the raw VCR module
lacks:

- **starts the accept loop on a background thread** — the core's `load()`
  deliberately doesn't listen, leaving that to a caller;
- **binds synchronously first** so an OS-assigned port (port 0) is resolved
  before `start()` returns and `Server.port()` can report it;
- **returns caller-owned, NUL-terminated C strings** (freed via
  `aether_vcr_embed_free_string`).

The binding's `takeString` copies each returned `char*` into a slice allocated
from the caller's `std.mem.Allocator` and frees the native pointer per the
ABI's ownership rule; `checkErr` turns a setter's `char*` result ("" on
success) into `error.VcrError`. Inputs are passed as NUL-terminated
`[:0]const u8` (`.ptr`), so no per-call C-string allocation is needed.

## Native-library resolution

Unlike the Rust binding (which `dlopen`s the engine at runtime via
`libloading`), this binding links the engine `.so` at **build time**. In
`build.zig`:

```zig
test_mod.addLibraryPath(.{ .cwd_relative = native_dir });
test_mod.linkSystemLibrary("servirtium_vcr", .{});
test_mod.addRPath(.{ .cwd_relative = native_dir });
```

`addLibraryPath` finds it at link time; `addRPath` bakes an rpath so the test
binary finds `libservirtium_vcr.so` at runtime without `LD_LIBRARY_PATH`.
`native_dir` is `$SERVIRTIUM_VCR_LIB`'s parent if that env var points at the
`.so`, else `../core/native` relative to `build.zig`.

## Concurrency: one server per port

The VCR core runs **one server per port**. Each `start()` opens a fresh native
handle, and the VCR's tape, replay cursor, mutations, static mounts, pending
note, and diagnostics are all scoped to **that handle** — nothing is
process-global. Consequently N independent `Server`s can be alive at once in
one process, each replaying or recording its own tape with its own cursor and
diagnostics, without bleeding into each other. The
`two playback servers run at once` test proves it: two playback VCRs on two
ports with two tapes, served simultaneously, each asserting it replays its own.

The lifecycle is **open → configure(handle) → start**: each builder's config
(redactions, unredactions, header removals, static mounts, whole-tape rewrites,
format options, strict-headers) is applied to its own handle between open and
start, so one fixture's settings can never leak into another's. The
`mutation state does not leak between fixtures` test asserts this directly.

## A subtle ordering rule (notes)

Redactions / unredactions / header-removals / static-mounts / whole-tape
rewrites are registered against the handle before the server starts. A
**note**, however, is stored alongside the tape and is cleared when
`open_record` (re)loads the tape — so `Record.start` stages the builder's note
*after* the handle is opened, attaching it to the first interaction.

## Builder value semantics (a Zig idiom note)

The fluent builders use **value semantics**: each configuration method takes
the builder by value and returns the modified copy
(`pub fn port(self: Playback, p: c_int) Playback`). Zig will not take a `*`
to an rvalue, so a chain like `Playback.init(...).port(0).start()` only works
if the receivers are by-value. The growable config lists are
`std.ArrayList`s; copying a builder copies the (ptr, len, cap) triple, and the
final `start` owns and `deinit`s them.
