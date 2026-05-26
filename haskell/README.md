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
gzip/chunked handling — lives in and is maintained as the Aether standard
library (`std/http/server/vcr`). This package links a precompiled native build
of that core (`libservirtium_vcr.so`) via `foreign import ccall`; it does
**not** reimplement Servirtium in Haskell.

> **Breaking from 1.x:** the old pure-Haskell modules and their API are gone,
> with no shim. The new API is below / in [docs/usage.md](docs/usage.md). The
> tape *format* is unchanged, so existing tapes replay as-is. See
> [MIGRATION.md](MIGRATION.md).

## Docs

- **[docs/usage.md](docs/usage.md)** — playback, record, redactions,
  unredactions, header removal, notes, strict matching, static content, drift,
  diagnostics — with code.
- **[docs/features.md](docs/features.md)** — Servirtium capability matrix and
  what's covered by tests.
- **[docs/architecture.md](docs/architecture.md)** — how the FFI layering
  works (Haskell → `ccall` → `embed.ae` → Aether VCR), native linking, and the
  v1 one-server-per-process model.
- **[docs/building.md](docs/building.md)** — building the native library,
  linking, and CI.
- **[MIGRATION.md](MIGRATION.md)** — the 1.x → 2.0 rewrite story.

## One hard rule: run tests serially

The Aether VCR is **one active server per process** in v1 (its tape / cursor /
mutation state is process-global). `hspec` runs specs sequentially by default,
which is what you want; if you use `tasty`, set `NumThreads 1`. Each
`startPlayback` / `startRecord` resets all process-global mutation/strict/
format state first, so settings from a prior fixture never leak forward. See
[docs/architecture.md](docs/architecture.md#one-server-per-process).

## Building from source

**Casual dev, one command** (installs the Aether toolchain via its official
`get.sh` to `~/.local` if missing — no sudo, no tests, no contrib; needs
`curl` — then builds the native lib and runs the tests; needs GHC + cabal
already present):

```sh
./bootstrap.sh
```

Already have `ae` (≥ 0.183), GHC, and cabal on PATH? Drive the two steps
directly:

```sh
./build-native.sh     # builds native/libservirtium_vcr.so + cabal.project.local
cabal test
```

`build-native.sh` bakes an rpath into the test binary, so `cabal test` finds
and loads the engine with no `LD_LIBRARY_PATH`. (If you skip the rpath, run
`LD_LIBRARY_PATH=$PWD/native cabal test`.) Details in
[docs/building.md](docs/building.md).
