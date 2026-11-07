# servirtium

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

## Getting it

The package is `servirtium` (`build-depends: servirtium`; modules `Servirtium.Vcr`,
`Servirtium.Vcr.Native`). It is **not on Hackage yet**; the source lives in the `haskell/`
subdirectory of this repo, so cabal pulls it with a `source-repository-package` stanza
(`subdir: haskell`). The native library does not come with it: you download it and give
cabal its absolute path. Run this in an empty directory (or adapt it to your project):

```sh
VER=v2.0.0-alpha.13                      # a release tag of servirtium-vcr
REL=https://github.com/servirtium/servirtium-vcr/releases/download/$VER
RAW=https://raw.githubusercontent.com/servirtium/servirtium-vcr/$VER/haskell/example

# 1. the native library for this OS/arch, checksum-verified, into ./native
case "$(uname -s)-$(uname -m)" in
  Linux-x86_64)  P=linux-x86_64;  E=so ;;
  Linux-aarch64) P=linux-arm64;   E=so ;;
  Darwin-arm64)  P=macos-arm64;   E=dylib ;;
  Darwin-x86_64) P=macos-x86_64;  E=dylib ;;
  *) echo "see the release assets for your platform"; exit 1 ;;
esac
LIB=libservirtium_vcr-$VER-$P.$E
mkdir -p native
curl -fsSL -o native/$LIB $REL/$LIB
curl -fsSL -o native/$LIB.sha256 $REL/$LIB.sha256
( cd native && { sha256sum -c $LIB.sha256 2>/dev/null || shasum -a 256 -c $LIB.sha256; } )
cp native/$LIB native/libservirtium_vcr.$E

# 2. cabal.project: your package + servirtium from the repo's haskell/ subdirectory
cat > cabal.project <<EOF
packages: .
source-repository-package
  type: git
  location: https://github.com/servirtium/servirtium-vcr
  tag: $VER
  subdir: haskell
EOF

# 3. cabal.project.local: the library directory as an ABSOLUTE path, plus an rpath
cat > cabal.project.local <<EOF
package servirtium
  extra-lib-dirs: $PWD/native
  ghc-options: -optl-Wl,-rpath,$PWD/native
EOF

# 4. check it: the repo's consumer example (build-depends: servirtium) replays a tape
curl -fsSL -O $RAW/Main.hs -O $RAW/consumer-example.cabal -O $RAW/single_get.md
cabal run consumer-example               # -> PASS[discovery]: ...
```

In your own `.cabal` it is simply `build-depends: base, servirtium`. For a local checkout
instead of the git source, replace the `source-repository-package` stanza with
`packages: . /path/to/servirtium-vcr/haskell` (the same `cabal.project.local` applies).
Windows (x86_64, arm64) and FreeBSD (x86_64) assets exist too (`windows-<arch>.dll`,
`freebsd-x86_64.so`); musl Linux is `linux-<arch>-musl.so`.

### Notes for coding agents

- The package name is `servirtium` (not `servirtium-haskell`, which no longer exists).
  `Unknown package servirtium` or `no such package` means the `source-repository-package`
  stanza is missing or `subdir: haskell` was left out.
- **`cabal.project.local` is mandatory.** Without it configure fails with
  `Missing (or bad) C library: servirtium_vcr`. That reads like a missing system package,
  but the library is simply unfindable: do not `apt`/`brew install` anything. `extra-lib-dirs`
  must be an absolute path (ghc-pkg rejects a relative one), which is why it cannot live in
  the package's own `.cabal`.
- The file in `native/` must be named exactly `libservirtium_vcr.so` / `.dylib` (step 1 copies
  the versioned asset to that name). The rpath makes the built binary find it; without the
  rpath, run with `LD_LIBRARY_PATH=$PWD/native` (`DYLD_LIBRARY_PATH` on macOS).
- Do not set `SERVIRTIUM_VCR_LIB`; that is for this repo's own tests.
- Do not edit the package's `.cabal` to add the path, and do not commit `cabal.project.local`
  (machine-specific absolute paths).
- In-repo development: `aeb haskell/.tests.ae` from the repo root writes its own
  `cabal.project.local`. The `build-native.sh` that older docs mention does not exist.

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
