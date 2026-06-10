# Building and testing

This binding links the shared native engine (`core/native/libservirtium_vcr.so`)
at **build time** via `build.zig`, then runs its `zig build test` suite.

## Prerequisites

- **Zig 0.16.0** (`zig version` → `0.16.0`). The std build graph and several
  std modules (`std.Io.net`, `std.process.run(gpa, io, options)`,
  `std.ArrayList` unmanaged) match this release; see "Zig 0.16 gotchas" below.
- **`curl`** on `PATH` — the test suite shells out to `curl` for HTTP rather
  than fighting `std.http.Client`'s churning API.
- The native engine `libservirtium_vcr.so`, built from `core/` with the Aether
  `ae` toolchain (≥ 0.227.0 for `std.regex` whole-tape rewrites + chunked
  de-chunk). It is git-ignored build output produced by `core/.build.ae`.

## How the build finds the engine

`build.zig` resolves the directory holding `libservirtium_vcr.so` as:

1. the parent of `$SERVIRTIUM_VCR_LIB` if that env var points at the `.so`, else
2. `../core/native` relative to `build.zig`.

It then `addLibraryPath` + `linkSystemLibrary("servirtium_vcr")` + `addRPath`
that directory, so the test binary loads the `.so` at runtime with no
`LD_LIBRARY_PATH`.

```sh
# point the build at a prebuilt engine and run the full suite:
SERVIRTIUM_VCR_LIB=../core/native/libservirtium_vcr.so zig build test
```

## Running the suite

```sh
zig build test --summary all
# Build Summary: 3/3 steps succeeded; 14/14 tests passed
```

`src/test.zig` is the test root; it `@import`s `playback_test.zig`,
`record_test.zig`, and `mutation_test.zig` so the test runner discovers every
`test {}` block. `build.zig`'s `test` step compiles that root module against
the engine and runs it.

## Within aeb (the monorepo build)

In the monorepo, `zig/.tests.ae` is the build leaf. It `build.dep`s
`core/.build.ae` (so the engine is built first), then shells:

```
cd "<root>/zig" && SERVIRTIUM_VCR_LIB="<root>/core/native/libservirtium_vcr.so" zig build test
```

Run it via `aeb zig/.tests.ae` from the repo root (aeb lives at
`~/.local/bin/aeb`). Never run two top-level `aeb` invocations concurrently —
they clobber the shared build workspace.

## Standalone (fallback)

If `build.zig` ever fights a different Zig, the suite compiles directly:

```sh
N=../core/native
zig test src/test.zig -lc -L"$N" -lservirtium_vcr -rpath "$N"
```

## Zig 0.16 gotchas (hit while writing this binding)

- **No top-level `std.net`.** Sockets live in `std.Io.net`
  (`IpAddress.listen` → `Server`, `Socket.address.getPort()` for the
  ephemeral port, `Stream.reader`/`.writer` over the `std.Io.Reader`/`Writer`
  interfaces). The record-mode test upstream is built on this.
- **`std.process.run` takes `(gpa, io, options)`** — the `io` is
  `std.testing.io` (a `std.Io.Threaded` instance the test runner seeds with the
  parent environment, so `curl` resolves on `PATH`).
- **`std.ArrayList(T)` is unmanaged**: init with `.empty`, and methods take the
  allocator (`list.append(alloc, item)`, `list.deinit(alloc)`).
- **`usingnamespace` was removed** — shared builder methods are written out per
  type instead of mixed in.
- **`std.testing.refAllDeclsRecursive` and `Thread.Mutex` are gone** — import
  test files at container scope to register their blocks; sync primitives moved
  under `std.Io`.
- **`std.Io.Dir` has no `realpathAlloc`** and its methods take `io` — record
  tapes are absolutized via libc `getcwd` (libc is linked) joined with the
  `TmpDir`'s known relative path.
