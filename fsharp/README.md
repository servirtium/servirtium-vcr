# Servirtium.Vcr.FSharp

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for **F#**.

You point your system-under-test at a local URL. In **playback** it replays
a recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```fsharp
open Servirtium.Vcr
open Servirtium.Vcr.FSharp

Servirtium.usingPlayback "tapes/single_get.md" (fun vcr ->
    use client = new HttpClient()
    let body = client.GetStringAsync(Servirtium.baseUrl vcr + "/ok").Result
    Assert.Equal("ok-body", body)
    Assert.Equal(VcrOutcome.Ok, Servirtium.lastKind vcr))   // clean match
```

## What this is (and isn't)

This is a thin F# layer over the **Aether VCR** core. All record/replay
machinery — markdown parse/emit, the HTTP server, request matching, redactions,
notes, drift detection, static bypass, gzip/chunked handling — lives in the
in-repo, pure-Aether `core/vcr.ae` module. This binding does **not**
reimplement Servirtium in F#.

### Consumes the shared C# assembly (over the CLR)

There is **no second FFI** here. The one CLR binding to libservirtium_vcr is
`dotnet/Servirtium.Vcr` (P/Invoke over the `aether_vcr_embed_*` C-ABI);
everything in `Servirtium.fs` is ordinary F#/.NET interop on top of those
classes. One C# assembly backs the CLR family (C#, F#), exactly as one Java
jar backs the JVM five and one Erlang NIF backs the BEAM four. An F#-specific
P/Invoke layer would be a second copy of the marshalling rules to keep in sync
with `core/embed.ae` — and would break the repo's one rule: bindings carry no
logic.

### What F# adds over the C# surface

- **Loan-pattern combinators** — `usingPlayback`, `usingPlaybackOn`,
  `usingRecord` run a body against a live server and dispose it on every path,
  including exceptions. In record mode disposal is what flushes the tape, so
  the loan pattern is also what makes a recording land on disk.
- **Members as functions** — `baseUrl`, `port`, `tapeLength`, `lastKind`,
  `lastError`, `lastIndex`, `resetCursor`, `note` are curry-friendly, so a VCR
  can sit in a pipeline (`vcr |> Servirtium.baseUrl`).
- **`matchedCleanly`** — the assertion most tests actually want, without
  naming the enum.

## Layout

- `Servirtium.fs` — the idiomatic F# module (`Servirtium.Vcr.FSharp`).
- `PlaybackTest.fs` — six xUnit facts over the canonical tape: body, clean
  match, tape length + bound port, an off-tape path, loan-pattern disposal,
  and cursor reset.
- `tapes/single_get.md` — the canonical sample tape (`GET /ok` → `200
  text/plain` / `ok-body`), byte-identical to every other binding's copy.

## Getting it

F# has no package of its own: it is ordinary F# over the C# binding, and `Servirtium.Vcr`
(the `.nupkg` each release attaches, native libraries inside) is all you need. The F#
loan-pattern combinators are one source file, `Servirtium.fs`, that you may copy in.
`Servirtium.Vcr` is **not on nuget.org yet**, so use the release asset as a local feed. Run
from your own project directory (the first two lines make a throwaway one; skip them
to use yours):

```sh
set -eu
VER=2.0.0-alpha.13                       # a release version of servirtium-vcr; nothing else to edit
REL=https://github.com/servirtium/servirtium-vcr/releases/download/v$VER
RAW=https://raw.githubusercontent.com/servirtium/servirtium-vcr/v$VER

dotnet new console -lang 'F#' -o servirtium-check --force && cd servirtium-check   # skip: use your own project

# 1. the package into a local feed (checksum-verified), declared in a nuget.config
mkdir -p nupkgs
curl -fsSL -o nupkgs/Servirtium.Vcr.$VER.nupkg $REL/Servirtium.Vcr.$VER.nupkg
curl -fsSL -o nupkgs/Servirtium.Vcr.$VER.nupkg.sha256 $REL/Servirtium.Vcr.$VER.nupkg.sha256
( cd nupkgs && { sha256sum -c Servirtium.Vcr.$VER.nupkg.sha256 2>/dev/null || shasum -a 256 -c Servirtium.Vcr.$VER.nupkg.sha256; } )
[ -f nuget.config ] || dotnet new nugetconfig
dotnet nuget add source "$PWD/nupkgs" --name servirtium-local --configfile nuget.config

# 2. the dependency line
dotnet add package Servirtium.Vcr --version $VER

# 3. check it: replay a recorded tape
mkdir -p tapes
curl -fsSL -o tapes/single_get.md $RAW/fsharp/tapes/single_get.md
cat > Program.fs <<'FS'
open System.Net.Http
open Servirtium.Vcr
[<EntryPoint>]
let main _ =
    use vcr = Vcr.Playback("tapes/single_get.md").Port(0).Start()
    use http = new HttpClient()
    printfn "%s %A" (http.GetStringAsync(vcr.BaseUrl + "/ok").Result.Trim()) vcr.LastKind   // -> ok-body Ok
    0
FS
dotnet run

# optional: the F# combinators (usingPlayback, ...), one file, compiled before your own files
curl -fsSL -o Servirtium.fs $RAW/fsharp/Servirtium.Vcr.FSharp/Servirtium.fs   # add <Compile Include="Servirtium.fs" /> above Program.fs
```

The dependency in an `.fsproj` is `<PackageReference Include="Servirtium.Vcr" Version="2.0.0-alpha.13" />`.
There is no `Servirtium.Vcr.FSharp` package on any feed or release page; do not add that
`PackageReference` (the repo's own example uses it from a feed that `aeb fsharp/.package.ae`
builds locally).

### Notes for coding agents

- Everything in the C# notes applies (see `dotnet/README.md`): `NU1101` means the local
  feed is not configured, `NU1102` means a wrong file name or version, and the native library
  comes from the package, so never set `SERVIRTIUM_VCR_LIB` unless you are on FreeBSD.
- Compile order matters in F#: `Servirtium.fs` must come before any file that uses
  `Servirtium.usingPlayback`.
- Do not `ProjectReference` this repo's `fsharp/` or `dotnet/` projects: they build only
  through `aeb`.

## Building and testing

**Get the native library** (`libservirtium_vcr`) for your OS/arch from the
[GitHub releases](https://github.com/servirtium/servirtium-vcr/releases) — one
prebuilt shared library per platform, each with a `.sha256` — and (optionally)
verify it:

```sh
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v2.0.0-alpha.13/libservirtium_vcr-v2.0.0-alpha.13-linux-x86_64.so
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v2.0.0-alpha.13/libservirtium_vcr-v2.0.0-alpha.13-linux-x86_64.so.sha256
sha256sum -c libservirtium_vcr-v2.0.0-alpha.13-linux-x86_64.so.sha256   # -> OK
```

Available platforms: linux (x86_64, arm64), macOS (x86_64, arm64), Windows
(x86_64, arm64), FreeBSD (x86_64). No Aether toolchain is needed to *use* the
library. (For macOS use the `.dylib`, for Windows the `.dll`.)

F# has no FFI of its own — it uses the `dotnet/Servirtium.Vcr` binding's
P/Invoke — so the native lib is located exactly the way the
[dotnet README](../dotnet/README.md) describes: point that binding at the
downloaded lib with `SERVIRTIUM_VCR_LIB` (or drop it where the dotnet binding
loads it).

Contributors who want to build the lib from source instead (Aether toolchain
required) can use `aeb`:

There is no native step here — `libservirtium_vcr.so` and the C# assembly are built
by `core/.build.ae` and `dotnet/Servirtium.Vcr/.build.ae`. Needs the .NET SDK.

```sh
aeb fsharp/.tests.ae   # deps core + dotnet/Servirtium.Vcr, then dotnet test
```

The project targets **net8.0** (the shipped floor, matching
`dotnet/Servirtium.Vcr`) with `RollForward=LatestMajor`, so the test host also
launches on a box carrying only a newer runtime — this dev box has the net10
runtime and no net8 one.
