# Building & releasing

## Turnkey: `./bootstrap.sh`

For a casual dev, the repo-root `bootstrap.sh` encodes the steps below as one
idempotent command:

```sh
./bootstrap.sh        # extra args pass through to `dotnet test`
```

It checks for `ae` (≥ 0.183) and installs it via aether's official `get.sh`
remote installer to a user prefix (`$HOME/.local` — **no sudo, no Aether test
suite, no contrib**; needs `curl`, no build-from-source fallback) if it's
missing/too old; checks the .NET SDK is present (it does **not** auto-install
it — that's a large external dependency); then runs `build-native.sh` and
`dotnet test`. No-op for the toolchain when `ae` is already good; on failure
it prints the `-fPIC` re-install triage. Override `PREFIX` / `AETHER_REF`
(pin in CI) / `MIN_AE` / `MIN_DOTNET` via env.

Everything from here down is what `bootstrap.sh` automates — useful when you
already have both toolchains.

## Prerequisites

- **.NET SDK 8.0+** (the test project targets a current runtime; the
  library targets `net8.0`). `bootstrap.sh` checks for it but does not
  install it.
- **The Aether toolchain (`ae`) on PATH** — only needed to build the
  *native* library; `bootstrap.sh` installs it via aether's `get.sh` if
  absent (`curl -sSL https://raw.githubusercontent.com/aether-lang-org/aether/main/get.sh | sh`).
  Consumers of the NuGet package don't need it. For the from-source / HEAD
  developer flow see aether's
  [bootstrap-from-source.md](../../aether/docs/bootstrap-from-source.md).

## Build the native library

The native library is built from the Aether std VCR embedding module,
`std/http/server/vcr/embed.ae`:

```sh
./build-native.sh
```

This produces the **host platform's** RID only, into
`Servirtium.Vcr/runtimes/<rid>/native/`. `embed.ae` is sourced from the
**installed** toolchain (the stdlib that ships next to `ae`) — no Aether
source checkout needed; engine devs can point at a local HEAD with
`AETHER_REPO=/path/to/aether`. Under the hood:

```sh
ae build --emit=lib --with=fs,net <prefix>/share/aether/std/http/server/vcr/embed.ae \
   -o Servirtium.Vcr/runtimes/<rid>/native/libservirtium_vcr.<ext>
```

- `--emit=lib` produces a shared library with `aether_*` exports.
- `--with=fs,net` grants the filesystem + networking capabilities the VCR
  needs (tape I/O + the embedded HTTP server). This requires a `-fPIC`
  Aether runtime — **Aether ≥ 0.182.0**; chunked de-chunking needs
  **≥ 0.183.0**.

The native libs are **git-ignored build artifacts** — run `build-native.sh`
after cloning, or let CI build them.

## Build & test

```sh
dotnet test
```

`SERVIRTIUM_VCR_LIB=/path/to/libservirtium_vcr.so` overrides the native-lib
location (handy when iterating on `embed.ae`).

## RID matrix

| RID | Built by | Status |
|---|---|---|
| linux-x64 | ubuntu runner | ✅ |
| osx-x64 | macos-13 runner | ✅ |
| osx-arm64 | macos-14 runner | ✅ |
| linux-arm64 | — | TODO (cross-compile or arm runner) |
| win-x64 | — | TODO (MSYS2/MINGW Aether build) |

Each arch is a distinct binary (no shared code between x64 and arm64).

## CI

`.github/workflows/dotnetcore.yml` runs on push/PR: per-OS matrix builds the
Aether toolchain, runs `build-native.sh`, then `dotnet test`, and uploads
each RID's native lib as an artifact.

## Releasing to NuGet

`.github/workflows/release-package.yml` is triggered by publishing a GitHub
release tagged `<Package>/v<semver>` (e.g. `Servirtium.Vcr/v2.0.0`). Because
a complete package must bundle **every** RID's native lib, it runs in two
stages:

1. **build-native** — one runner per OS/arch builds its
   `runtimes/<rid>/native` lib and uploads it.
2. **pack-and-push** — downloads all RID artifacts into `runtimes/`, then
   `dotnet pack` + `dotnet nuget push`.

The package places each binary at `runtimes/<rid>/native/`, so the SDK
restores only the consumer's platform.

## Supply-chain notes

- Native builds are reproducible from `embed.ae` + a pinned Aether toolchain
  version — record the `ae --version` used so a hash can be verified from
  source.
- Prefer the `runtimes/<rid>/native` packaging (the default) over embedding
  the binaries inside the managed DLL: discrete files stay visible to
  SCA/SBOM tooling, are individually signable, and avoid runtime
  extract-and-load.
