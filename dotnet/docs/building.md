# Building & releasing

## Turnkey: `./bootstrap.sh`

From the repo root, `bootstrap.sh` installs the pinned `ae` (0.941.0) and `aeb`
via their official installers to a user prefix (`$HOME/.local`, no sudo; needs
`curl`) if they are missing, then runs `aeb` on the leaf you name:

```sh
./bootstrap.sh dotnet/Servirtium.Vcr.Tests/.tests.ae     # builds libservirtium_vcr, then runs the xunit suite
```

It does not install the .NET SDK; it must already be present. Override `PREFIX` / `AETHER_REF` / `AEB_REF` / `MIN_AE` via env.

Everything from here down is what that leaf automates.

## Prerequisites

- **.NET SDK 8.0+** (the test project targets a current runtime; the
  library targets `net8.0`). `bootstrap.sh` does not install it.
- **The Aether toolchain (`ae`) on PATH** — only needed to build the
  *native* library; `bootstrap.sh` installs it via aether's `get.sh` if
  absent (`curl -sSL https://raw.githubusercontent.com/aether-lang-dev/aether/main/get.sh | sh`).
  Consumers of the NuGet package don't need it. For the from-source / HEAD
  developer flow see aether's `docs/bootstrap-from-source.md` in the
  [Aether toolchain repo](https://github.com/aether-lang-dev/aether).

## Build the native library

The native library is built from the **in-repo** Aether VCR embedding
module, `core/embed.ae` (which imports libservirtium_vcr in
`core/vcr.ae`) — no Aether source checkout beyond this repo is needed. The
build is driven by `aeb` (the Aether build runner); `bootstrap.sh` installs
`ae`/`aeb` and runs it for you. Under the hood the native step is:

```sh
ae build --emit=lib --with=fs,net,extern core/embed.ae \
   -o core/native/libservirtium_vcr.<ext>
```

- `--emit=lib` produces a shared library with `aether_*` exports.
- `--with=fs,net,extern` grants `extern` (required since ae 0.801: libservirtium_vcr declares C externs) plus the filesystem + networking capabilities the VCR
  needs (tape I/O + the embedded HTTP server). This requires a `-fPIC`
  Aether runtime, and libservirtium_vcr's whole-tape rewrites use `std.regex` —
  **Aether 0.941.0**.

This produces the **host platform's** RID only. The native libs are
**git-ignored build artifacts** — let `aeb` / CI build them after cloning.

## Build & test

```sh
dotnet test
```

`SERVIRTIUM_VCR_LIB=/path/to/libservirtium_vcr.so` overrides the native-lib
location (handy when iterating on `core/embed.ae`).

## .NET Framework 4.8 consumers (`dotnet/net48/`)

The shipped package (net8.0 + net48, from `Servirtium.Vcr.pkg.csproj`) carries
`build/net48/Servirtium.Vcr.targets` and `buildTransitive/net48/`, which copy
the Windows engine into a .NET Framework project's output (the binding
README's ".NET Framework 4.8" section says when and which).
`dotnet/net48/check.sh NUPKG_DIR WORK_DIR` builds a packed `.nupkg` into the
three project shapes users have: an SDK-style MSTest project with a
`PackageReference` (AnyCPU, `RuntimeIdentifier` win-x64, x64, and x86, which
must fail with `SVCR001`), tests that reach the package through a
`ProjectReference`, and a classic `packages.config` console project (and its
template default `Prefer32Bit`, which must fail too). It checks the output
layout and that no engine is copied twice; on Windows (MSYS2 bash) it then
runs `dotnet test` and the console program. Building needs only the .NET SDK
(the .NET Framework reference assemblies come from NuGet), so it runs on Linux;
running needs Windows.

```sh
# 1. the Windows engines (any host with ae and zig)
TARGETS="x86_64-windows aarch64-windows" release/build.sh
# 2. stage them and pack (any host with the .NET SDK)
mkdir -p dotnet/Servirtium.Vcr/native/win-x64 dotnet/Servirtium.Vcr/native/win-arm64
cp release/dist/*-windows-x86_64.dll dotnet/Servirtium.Vcr/native/win-x64/libservirtium_vcr.dll
cp release/dist/*-windows-arm64.dll dotnet/Servirtium.Vcr/native/win-arm64/libservirtium_vcr.dll
dotnet pack dotnet/Servirtium.Vcr/Servirtium.Vcr.pkg.csproj -c Release -o ../nupkg
# 3. build (and on Windows run) the consumers
sh dotnet/net48/check.sh ../nupkg ../net48work
```

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
Aether toolchain, builds the native lib (`core/.build.ae`), then `dotnet test`, and uploads
each RID's native lib as an artifact.

## Releasing to NuGet

`.github/workflows/release-package.yml` is triggered by publishing a GitHub
release tagged `<Package>/v<semver>` (e.g. `Servirtium.Vcr/v2.0.0`). Because
a complete package must bundle **every** RID's native lib, it runs in two
stages:

1. **build the native lib** — one runner per OS/arch builds its
   `runtimes/<rid>/native` lib and uploads it.
2. **pack-and-push** — downloads all RID artifacts into `runtimes/`, then
   `dotnet pack` + `dotnet nuget push`.

The package places each binary at `runtimes/<rid>/native/`, so the SDK
restores only the consumer's platform.

## Supply-chain notes

- Native builds are reproducible from `core/embed.ae` + a pinned Aether toolchain
  version — record the `ae --version` used so a hash can be verified from
  source.
- Prefer the `runtimes/<rid>/native` packaging (the default) over embedding
  the binaries inside the managed DLL: discrete files stay visible to
  SCA/SBOM tooling, are individually signable, and avoid runtime
  extract-and-load.
