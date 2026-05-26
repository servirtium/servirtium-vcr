# Servirtium .NET → Aether VCR migration

**Status (2026-05-24):** DONE. The Aether-core changes shipped in
aether v0.182.0 (`vcr_embed_abi_wish.md` → closed), and the .NET rewrite
is complete: the C# Servirtium reimplementation (~6,000 lines) is deleted,
replaced by `Servirtium.Vcr` — a P/Invoke wrapper over the native VCR
library built from `std/http/server/vcr/embed.ae`. Playback, mismatch
diagnostics, and record→replay are proven end-to-end by
`Servirtium.Vcr.Tests` against the real native lib. One follow-up gap was
fed upstream (`../aether/vcr_record_chunked_dechunk_wish.md`).

## Why

Today this repo is a ~6,000-line C# *reimplementation* of Servirtium:
markdown reader/writer, interaction model, body formatters, transform
pipeline, an ASP.NET Core record/replay server, recorder + replayer.
All of that logic now exists — tested and maintained — in the Aether
standard library at `std/http/server/vcr`.

The new shape: **this repo wholly depends on the Aether VCR for core
record/replay** and keeps only DotNet-flavored glue — a P/Invoke
binding to a precompiled native VCR library plus an idiomatic .NET
test fixture. No backwards compatibility with the previously published
`Servirtium.Core` / `Servirtium.AspNetCore` DLL APIs.

## Architecture (target)

```
NUnit/xUnit test
   │  Vcr.Playback(tape).Port(0).Start()  /  Vcr.Record(tape, upstream).Start()
   ▼
Servirtium.Vcr (this repo)           ── thin C# ──
   │  P/Invoke  aether_vcr_*()
   ▼
libservirtium_vcr.{so,dylib,dll}     ── ae build --emit=lib --with=fs,net
   │  (the Aether VCR core: parse, dispatch, record, mutate, emit)
   ▼
SUT  ⇄  http://127.0.0.1:<port>      ── the SUT talks HTTP to the VCR
```

The system-under-test only ever sees an HTTP base URL — exactly the
server-first model the Aether VCR is designed around.

## Blocked on (Aether team — see `vcr_embed_abi_wish.md`)

1. **PIC runtime** so `--emit=lib --with=net` links a `.so`
   (`build/libaether.a` is not `-fPIC` today).
2. **`aether_vcr_*` embedding C-ABI** — a thin Aether wrapper that
   starts the accept loop on a background thread and exposes lifecycle
   / diagnostics / mutations as clean C entry points.
3. **`http_server_port()` + port-0 `getsockname`** so dynamic ports
   work (needed for parallel test runners).

## What gets deleted once the native lib lands

- `Servirtium.Core/Interactions/*` — MarkdownScriptReader/Writer,
  InteractionReplayer, InteractionRecorder, body formatters,
  FindAndReplaceScriptWriter, ImmutableInteraction, InteractionRouter,
  monitors. (Aether owns markdown parse/emit + record/replay.)
- `Servirtium.Core/Http/*` — ServiceRequest/Response, the
  System.Net.Http interop, transform pipeline. (Aether owns forwarding
  in record mode.)
- `Servirtium.AspNetCore/*` — the ASP.NET Core server is replaced by
  the Aether embedded HTTP server.
- `Servirtium.StandaloneServer/*` — superseded; the native lib is the
  standalone server. (Re-evaluate: a tiny `ae`-built exe could replace
  it.)
- Their `*.Tests` projects — replaced by integration tests that drive
  record/playback through the native lib (mirrors the C-driver
  acceptance test in the wish spec).

## What stays / is new

- `Servirtium.Vcr/` — **new**, pre-staged here: `NativeMethods.cs`
  (DllImport bindings to the proposed ABI) + `Vcr.cs` (idiomatic
  builders/fixture). Provisional until the ABI symbol names are
  finalized by the Aether team (open questions in the wish spec).
- The Servirtium markdown tape format and the compatibility suite —
  unchanged; format interop is the whole point.

## Provisional API

```csharp
// playback
using var vcr = Vcr.Playback("tapes/my_api.md").Port(0).Start();
httpClient.BaseAddress = new Uri(vcr.BaseUrl);
// ... drive the SUT ...
Assert.That(vcr.LastKind, Is.EqualTo(VcrOutcome.Ok));

// record
using var vcr = Vcr.Record("tapes/my_api.md", "https://api.example.com")
    .RemoveHeader(VcrField.ResponseHeaders, "Set-Cookie")
    .Redact(VcrField.RequestHeaders, realToken, "Bearer REDACTED")
    .Port(0)
    .Start();
// ... drive the SUT ...  (Dispose flushes the tape)
```
