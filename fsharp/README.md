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

There is **no second FFI** here. The one CLR binding to the engine is
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

## Building and testing

There is no native step here — the engine `.so` and the C# assembly are built
by `core/.build.ae` and `dotnet/Servirtium.Vcr/.build.ae`. Needs the .NET SDK.

```sh
aeb fsharp/.tests.ae   # deps core + dotnet/Servirtium.Vcr, then dotnet test
```

The project targets **net8.0** (the shipped floor, matching
`dotnet/Servirtium.Vcr`) with `RollForward=LatestMajor`, so the test host also
launches on a box carrying only a newer runtime — this dev box has the net10
runtime and no net8 one.
