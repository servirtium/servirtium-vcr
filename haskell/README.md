# servirtium-haskell

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for Haskell.

You point your system-under-test at a local URL. In **playback** it replays a
recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```haskell
import Servirtium.Vcr

withPlayback (playbackOptions "tapes/climate_api.md") $ \vcr -> do
  url <- baseUrl vcr
  -- ... drive the SUT against `url` ...
  k <- lastKind vcr            -- optional: assert a clean match
  k `shouldBe` Ok
```

## What this is (and isn't)

Since **2.0**, this is a thin Haskell **FFI** layer over the **Aether VCR**
core. All record/replay machinery — markdown parse/emit, the HTTP server,
request matching, redactions, notes, drift detection, static bypass,
gzip/chunked handling — lives in a pure-Aether module in this repo
(`core/vcr.ae`, with the C-ABI seam in `core/embed.ae`), built on Aether
stdlib primitives with the Servirtium logic kept in-repo. This package links a
precompiled native build of that core
(`core/native/libservirtium_vcr.so`) via `foreign import ccall`; it does
**not** reimplement Servirtium in Haskell.

> **Breaking from 1.x:** the old pure-Haskell modules and their API are gone,
> with no shim. The new API is below / in [docs/usage.md](docs/usage.md). The
> tape *format* is unchanged, so existing tapes replay as-is. See
> [MIGRATION.md](MIGRATION.md).

## Docs

- **[docs/usage.md](docs/usage.md)** — playback, record, redactions,
  unredactions, header removal, notes, strict matching, JSON body matching,
  reusable matching / header matching,
  static content, drift,
  diagnostics — with code.
- **[docs/features.md](docs/features.md)** — Servirtium capability matrix and
  what's covered by tests.
- **[docs/architecture.md](docs/architecture.md)** — how the FFI layering
  works (Haskell → `ccall` → `core/embed.ae` → Aether VCR), native linking, and
  the one-server-per-port (handle-based) concurrency model.
- **[docs/building.md](docs/building.md)** — building the native library,
  linking, and CI.
- **[docs/usage.md](docs/usage.md)** — the full how-to (also linked above).
- **[docs/features.md](docs/features.md)** — the capability matrix (also linked
  above).
- **[MIGRATION.md](MIGRATION.md)** — the 1.x → 2.0 rewrite story.
- **[CHANGELOG.md](CHANGELOG.md)** — release notes.

## Concurrency: one server per port

The Aether VCR runs **one server per port**: N independent servers can run concurrently
in one process, each keyed by its own handle. A fixture's config / diagnostics
/ tape are scoped to its handle, so two `startPlayback` / `startRecord` servers
can be alive at once without their cursors or mutations bleeding into each
other (the `core_tests/.concurrent.ae` test proves it). `hspec` runs specs
sequentially by default, which is fine; with `tasty` you may run in parallel.
See [docs/architecture.md](docs/architecture.md#concurrency-one-server-per-port).

## Getting the native library

**Get the native library** (`libservirtium_vcr`) for your OS/arch from the
[GitHub releases](https://github.com/servirtium/servirtium-vcr/releases) — one
prebuilt shared library per platform, each with a `.sha256` — and (optionally)
verify it:

```sh
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v2.0.0-alpha.1/libservirtium_vcr-v2.0.0-alpha.1-linux-x86_64.so
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v2.0.0-alpha.1/libservirtium_vcr-v2.0.0-alpha.1-linux-x86_64.so.sha256
sha256sum -c libservirtium_vcr-v2.0.0-alpha.1-linux-x86_64.so.sha256   # -> OK
```

**Build the package locally**

Nothing is published to a registry yet, so you assemble the package yourself:
drop the downloaded library at the package-relative path below, then consume it
from source (a local/source-tree dependency in your `cabal.project`).

```sh
# from the haskell binding directory, with libservirtium_vcr-v2.0.0-alpha.1-linux-x86_64.so downloaded:
mkdir -p native
cp libservirtium_vcr-v2.0.0-alpha.1-linux-x86_64.so native/libservirtium_vcr.so
# the package now carries the native library; consume it from source (see this README's usage/examples).
```

Available platforms: linux (x86_64, arm64), macOS (x86_64, arm64), Windows
(x86_64, arm64), FreeBSD (x86_64). No Aether toolchain is needed to *use* the
library. (For macOS use the `.dylib`, for Windows the `.dll`.)

The `foreign import ccall` FFI resolves the lib at **link time**: drop the
downloaded `libservirtium_vcr` in as `native/libservirtium_vcr.so` where the
`-L`/rpath finds it — the same location `build-native.sh` produces. (If you skip
the rpath, run `LD_LIBRARY_PATH=$PWD/native cabal test`.)

## Building from source

Contributors who want to build the lib from source instead (Aether toolchain
required) can use the scripts below.

**Casual dev, one command** (installs the Aether toolchain via its official
`get.sh` to `~/.local` if missing — no sudo, no tests, no contrib; needs
`curl` — then builds the native lib and runs the tests; needs GHC + cabal
already present):

```sh
./bootstrap.sh
```

Already have `ae` (≥ 0.227.0), GHC, and cabal on PATH? Drive the two steps
directly:

```sh
./build-native.sh     # builds native/libservirtium_vcr.so + cabal.project.local
cabal test
```

`build-native.sh` bakes an rpath into the test binary, so `cabal test` finds
and loads libservirtium_vcr with no `LD_LIBRARY_PATH`. (If you skip the rpath, run
`LD_LIBRARY_PATH=$PWD/native cabal test`.) Details in
[docs/building.md](docs/building.md).
