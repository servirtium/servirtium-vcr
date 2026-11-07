# Servirtium .NET

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for .NET.

You point your system-under-test at a local URL. In **playback** it replays
a recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```csharp
using Servirtium.Vcr;

using var vcr = Vcr.Playback("tapes/climate_api.md").Port(0).Start();
using var client = new HttpClient { BaseAddress = new Uri(vcr.BaseUrl) };

var body = await client.GetStringAsync("/api/v1/countries");
Assert.Equal(VcrOutcome.Ok, vcr.LastKind);   // optional: assert a clean match
```

## What this is (and isn't)

Since **2.0**, this is a thin .NET layer over the **servirtium-vcr** core. All
record/replay machinery — markdown parse/emit, the HTTP server, request
matching, redactions, notes, drift detection, static bypass, gzip/chunked
handling — lives in this repo as a pure-Aether module (`core/vcr.ae`, with the
C-ABI seam in `core/embed.ae`), built on Aether stdlib primitives and compiled
to `core/native/libservirtium_vcr.so`. This package P/Invokes that precompiled
native build; it does **not** reimplement Servirtium in C#.

> **Breaking from 1.x:** the `Servirtium.Core` / `Servirtium.AspNetCore`
> packages and their APIs are gone, with no shim. The new API is below /
> in [docs/usage.md](docs/usage.md). The tape *format* is unchanged, so
> existing tapes replay as-is.

## Getting it

`Servirtium.Vcr` is **not on nuget.org yet**. Each release attaches the package
(`Servirtium.Vcr.<ver>.nupkg`, targets net8.0 and net48) with the native libraries inside
under `runtimes/<rid>/native/` (linux x64/arm64 glibc and musl, osx x64/arm64, win x64/arm64),
so the package is self-contained: no `SERVIRTIUM_VCR_LIB`. Use the release directory as a
local NuGet feed. Run this from the directory of your own project (the first two lines
make a throwaway one to check with; skip them to use yours):

```sh
set -eu
VER=2.0.0-alpha.13                       # a release version of servirtium-vcr; nothing else to edit
REL=https://github.com/servirtium/servirtium-vcr/releases/download/v$VER
RAW=https://raw.githubusercontent.com/servirtium/servirtium-vcr/v$VER

dotnet new console -o servirtium-check --force && cd servirtium-check   # skip: use your own project

# 1. the package into a local feed (checksum-verified), declared in a nuget.config
mkdir -p nupkgs
curl -fsSL -o nupkgs/Servirtium.Vcr.$VER.nupkg $REL/Servirtium.Vcr.$VER.nupkg
curl -fsSL -o nupkgs/Servirtium.Vcr.$VER.nupkg.sha256 $REL/Servirtium.Vcr.$VER.nupkg.sha256
( cd nupkgs && { sha256sum -c Servirtium.Vcr.$VER.nupkg.sha256 2>/dev/null || shasum -a 256 -c Servirtium.Vcr.$VER.nupkg.sha256; } )
[ -f nuget.config ] || dotnet new nugetconfig
dotnet nuget add source "$PWD/nupkgs" --name servirtium-local --configfile nuget.config

# 2. the dependency line
dotnet add package Servirtium.Vcr --version $VER

# 3. check it: replay a recorded tape (the library is deployed from the package)
mkdir -p tapes
curl -fsSL -o tapes/single_get.md $RAW/dotnet/example/tapes/single_get.md
cat > Program.cs <<'CS'
using Servirtium.Vcr;
using var vcr = Vcr.Playback("tapes/single_get.md").Port(0).Start();
using var http = new HttpClient();
Console.WriteLine((await http.GetStringAsync(vcr.BaseUrl + "/ok")).Trim() + " " + vcr.LastKind);   // -> ok-body Ok
CS
dotnet run
```

In a `.csproj` the dependency is `<PackageReference Include="Servirtium.Vcr" Version="2.0.0-alpha.13" />`.
Once published it is the same line with no `nuget.config` change; it does not resolve from nuget.org today.
`PackageReference` to a prerelease needs the explicit version, as above.

### Notes for coding agents

- `error NU1101: Unable to find package Servirtium.Vcr` means the local feed is not
  configured for this project (no `nuget.config` beside or above it, or the path in it is
  wrong). `NU1102` means the feed was found but not that version: the file name is
  `Servirtium.Vcr.<ver>.nupkg`, with the semver (no leading `v`).
- Do not look for it on nuget.org, and do not fall back to a `ProjectReference` into this
  repo: `dotnet/Servirtium.Vcr/` builds only through `aeb`, not plain `dotnet build`.
- Do not copy `libservirtium_vcr.so` next to your binary by hand: the package deploys the
  right one per RID (under `runtimes/<rid>/native/`, which `dotnet publish` carries too).
  FreeBSD has no RID in the package: fetch that release asset and set `SERVIRTIUM_VCR_LIB` to
  its absolute path (it wins over the packaged copy, so do not set it otherwise).
- `DllNotFoundException: Unable to load shared library 'servirtium_vcr' or one of its
  dependencies` means no library for this RID was deployed: a RID outside the eight, or a
  self-contained publish for a different RID. Print `RuntimeInformation.RuntimeIdentifier`.
  `EntryPointNotFoundException: ... required ABI symbol ... is missing` means a library older
  than the binding was forced in through `SERVIRTIUM_VCR_LIB`: unset it.
- The NuGet cache is keyed by id and version: if you replace a `.nupkg` with different bytes
  under the same version, `dotnet nuget locals all --clear` first, or you get the old one.
- The F# binding takes this same package; see `fsharp/README.md`.

## Docs

- **[docs/usage.md](docs/usage.md)** — playback, record, redactions,
  unredactions, header removal, notes, strict matching, static content,
  drift, diagnostics — with code.
- **[docs/features.md](docs/features.md)** — Servirtium capability matrix
  and what's covered by tests.
- **[docs/architecture.md](docs/architecture.md)** — how the FFI layering
  works (managed → P/Invoke → `core/embed.ae` → `core/vcr.ae`), the native
  loader, and the one-server-per-port (handle-based) concurrency model.
- **[docs/building.md](docs/building.md)** — building the native library,
  the RID matrix, CI, and releasing to NuGet.
- **[MIGRATION.md](MIGRATION.md)** — the 1.x → 2.0 rewrite story.

## Concurrency: one server per port

Each `.Start()` returns a `VcrServer` that owns its own native handle, and
all tape/cursor/mutation/diagnostic state is keyed by that handle. You can
run **N independent VCR servers concurrently in one process** — different
ports, different tapes, independent cursors — so test classes need not be
serialized. `core_tests/.concurrent.ae` proves two playback servers
replaying their own tapes side by side in a single process.

See [docs/architecture.md](docs/architecture.md#concurrency-one-server-per-port)
for details, and `Servirtium.Vcr.Tests/` for a worked example.

## Building from source

**Casual dev, one command** (installs the Aether toolchain via its official
`get.sh` to `~/.local` if missing — no sudo, no tests, no contrib; needs
`curl` — then builds the native lib and runs the tests; needs the .NET SDK
already present):

```sh
./bootstrap.sh
```

Already have `ae` (≥ 0.227.0), `aeb`, and the .NET SDK on PATH? The build is
aeb-native — each project's `.csproj` is generated from its `.build.ae` (never
checked in), `libservirtium_vcr.so` is built and staged automatically:

```sh
aeb dotnet/Servirtium.Vcr.Tests/.tests.ae     # libservirtium_vcr -> library -> xunit
```

Or drive the raw .NET tools directly (builds the native, then tests against a
generated csproj):

```sh
./build-native.sh     # builds the native lib for your platform (needs `ae`)
dotnet test
```

Details in [docs/building.md](docs/building.md).
