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

## Install

> **Note:** nothing is published to **NuGet** yet, so `dotnet add package
> Servirtium.Vcr` does **not** give you this library. Until a package ships,
> install by downloading the prebuilt native library and pointing the binding
> at it, as below.

**Get the native library** (`libservirtium_vcr`) for your OS/arch from the
[GitHub releases](https://github.com/servirtium/servirtium-vcr/releases) — one
prebuilt shared library per platform, each with a `.sha256` — and (optionally)
verify it:

```sh
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v0.1.0/libservirtium_vcr-v0.1.0-linux-x86_64.so
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v0.1.0/libservirtium_vcr-v0.1.0-linux-x86_64.so.sha256
sha256sum -c libservirtium_vcr-v0.1.0-linux-x86_64.so.sha256   # -> OK
```

Available platforms: linux (x86_64, arm64), macOS (x86_64, arm64), Windows
(x86_64, arm64), FreeBSD (x86_64). No Aether toolchain is needed to *use* the
library. (For macOS use the `.dylib`, for Windows the `.dll`.)

Point the binding at the downloaded library with `SERVIRTIUM_VCR_LIB` — the
managed layer P/Invokes it from that path at runtime:

```sh
export SERVIRTIUM_VCR_LIB=$PWD/libservirtium_vcr-v0.1.0-linux-x86_64.so
```

**Build the package locally.** Nothing is published to NuGet yet, so build the
`.nupkg` yourself — stage the downloaded lib under the project's per-RID runtime
folder so the pack bundles it, run `dotnet pack`, then add the output directory
as a local NuGet source (adjust `linux-x64` to your RID):

```sh
# from the dotnet/ binding directory, with the .so downloaded here:
mkdir -p Servirtium.Vcr/runtimes/linux-x64/native && cp libservirtium_vcr-v0.1.0-linux-x86_64.so Servirtium.Vcr/runtimes/linux-x64/native/libservirtium_vcr.so
dotnet pack Servirtium.Vcr -c Release -o pkg
# -> then use the produced artifact locally: dotnet nuget add source "$PWD/pkg"
```

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
