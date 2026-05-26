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

Since **2.0**, this is a thin .NET layer over the **Aether VCR** core. All
record/replay machinery — markdown parse/emit, the HTTP server, request
matching, redactions, notes, drift detection, static bypass, gzip/chunked
handling — lives in and is maintained as the Aether standard library
(`std/http/server/vcr`). This package P/Invokes a precompiled native build
of that core; it does **not** reimplement Servirtium in C#.

> **Breaking from 1.x:** the `Servirtium.Core` / `Servirtium.AspNetCore`
> packages and their APIs are gone, with no shim. The new API is below /
> in [docs/usage.md](docs/usage.md). The tape *format* is unchanged, so
> existing tapes replay as-is.

## Install

```sh
dotnet add package Servirtium.Vcr
```

The right native library for your OS/arch ships in the package
(`runtimes/<rid>/native/`) and is selected automatically — no Aether
toolchain needed to *use* it. Supported RIDs: linux-x64, osx-x64,
osx-arm64 (more in [docs/building.md](docs/building.md)).

## Docs

- **[docs/usage.md](docs/usage.md)** — playback, record, redactions,
  unredactions, header removal, notes, strict matching, static content,
  drift, diagnostics — with code.
- **[docs/features.md](docs/features.md)** — Servirtium capability matrix
  and what's covered by tests.
- **[docs/architecture.md](docs/architecture.md)** — how the FFI layering
  works (managed → P/Invoke → `embed.ae` → Aether VCR), the native loader,
  and the v1 one-server-per-process model.
- **[docs/building.md](docs/building.md)** — building the native library,
  the RID matrix, CI, and releasing to NuGet.
- **[MIGRATION.md](MIGRATION.md)** — the 1.x → 2.0 rewrite story.

## One hard rule: run tests serially

The Aether VCR is **one active server per process** in v1 (its tape /
cursor / mutation state is process-global). Disable test-framework
parallelization — for xUnit:

```csharp
[assembly: CollectionBehavior(DisableTestParallelization = true)]
```

See [docs/architecture.md](docs/architecture.md#one-server-per-process) for
why, and `Servirtium.Vcr.Tests/` for a worked example.

## Building from source

**Casual dev, one command** (installs the Aether toolchain via its official
`get.sh` to `~/.local` if missing — no sudo, no tests, no contrib; needs
`curl` — then builds the native lib and runs the tests; needs the .NET SDK
already present):

```sh
./bootstrap.sh
```

Already have `ae` (≥ 0.183) and the .NET SDK on PATH? Drive the two steps
directly:

```sh
./build-native.sh     # builds the native lib for your platform (needs `ae`)
dotnet test
```

Details in [docs/building.md](docs/building.md).
