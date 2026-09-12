module Servirtium.Vcr.FSharp.PlaybackTest

open System.Net.Http
open Xunit
open Servirtium.Vcr
open Servirtium.Vcr.FSharp

/// Playback facts for the F# binding — real xUnit tests, no browser, no network.
///
/// Proves F# drives the ONE CLR binding (dotnet/Servirtium.Vcr, P/Invoke) — no
/// second FFI — against the canonical one-interaction tape
/// (GET /ok -> 200 text/plain "ok-body"), the same tape every other binding
/// replays byte-for-byte. The engine .so is resolved by the C# NativeLoader
/// (SERVIRTIUM_VCR_LIB, or the copy staged next to the assembly).

let private tape = "tapes/single_get.md"

let private get (url: string) =
    use client = new HttpClient()
    client.GetStringAsync(url).Result

[<Fact>]
let ``replays the canonical tape body`` () =
    Servirtium.usingPlayback tape (fun vcr ->
        Assert.Equal("ok-body", get (Servirtium.baseUrl vcr + "/ok")))

[<Fact>]
let ``reports a clean match`` () =
    Servirtium.usingPlayback tape (fun vcr ->
        get (Servirtium.baseUrl vcr + "/ok") |> ignore
        Assert.Equal(VcrOutcome.Ok, Servirtium.lastKind vcr)
        Assert.True(Servirtium.matchedCleanly vcr)
        Assert.Equal(0, Servirtium.lastIndex vcr)
        Assert.Equal("", Servirtium.lastError vcr))

[<Fact>]
let ``exposes tape length and a bound port`` () =
    Servirtium.usingPlayback tape (fun vcr ->
        Assert.Equal(1, Servirtium.tapeLength vcr)
        Assert.True(Servirtium.port vcr > 0)
        Assert.StartsWith("http://127.0.0.1:", Servirtium.baseUrl vcr))

[<Fact>]
let ``flags a path that is not on the tape`` () =
    Servirtium.usingPlayback tape (fun vcr ->
        use client = new HttpClient()
        let res = client.GetAsync(Servirtium.baseUrl vcr + "/nope").Result
        Assert.False(res.IsSuccessStatusCode)
        Assert.NotEqual(VcrOutcome.Ok, Servirtium.lastKind vcr))

[<Fact>]
let ``loan pattern disposes the server`` () =
    // The port is bound inside the loan and released on the way out; a second
    // loan over the same tape must therefore succeed independently.
    let first = Servirtium.usingPlayback tape Servirtium.port
    let second = Servirtium.usingPlayback tape Servirtium.port
    Assert.True(first > 0 && second > 0)

[<Fact>]
let ``reset cursor allows the tape to be replayed twice`` () =
    Servirtium.usingPlayback tape (fun vcr ->
        let url = Servirtium.baseUrl vcr + "/ok"
        Assert.Equal("ok-body", get url)
        Servirtium.resetCursor vcr
        Assert.Equal("ok-body", get url)
        Assert.Equal(VcrOutcome.Ok, Servirtium.lastKind vcr))
