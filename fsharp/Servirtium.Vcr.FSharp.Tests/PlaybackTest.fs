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
/// replays byte-for-byte. The libservirtium_vcr.so is resolved by the C# NativeLoader
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


[<Fact>]
let ``structured helpers forward credentials and scrub tape`` () =
    let directory = System.IO.Path.Combine(System.IO.Path.GetTempPath(), "vcr-helpers-" + System.Guid.NewGuid().ToString())
    System.IO.Directory.CreateDirectory(directory) |> ignore
    let fixture = System.IO.Path.GetFullPath(System.IO.Path.Combine(__SOURCE_DIRECTORY__, "../../target/test-tools/redaction_fixture"))
    let run args =
        let info = System.Diagnostics.ProcessStartInfo(fixture, RedirectStandardOutput = true)
        for arg in args do info.ArgumentList.Add(arg)
        use proc = System.Diagnostics.Process.Start(info)
        let output = proc.StandardOutput.ReadToEnd()
        proc.WaitForExit()
        Assert.Equal(0, proc.ExitCode)
        output.Trim()
    try
        let upstream = run ["start"; directory]
        let builder =
            Vcr.Record(System.IO.Path.Combine(directory, "tape.md"), upstream)
            |> Servirtium.redactHeader "Authorization"
            |> Servirtium.redactQueryParam "password"
            |> Servirtium.redactJsonField "secretKey"
        do
            use recServer = builder.Start()
            run ["drive"; directory; recServer.BaseUrl] |> ignore
            Assert.Equal(VcrOutcome.Ok, recServer.LastKind)
        run ["check"; directory] |> ignore
    finally System.IO.Directory.Delete(directory, true)


[<Fact>]
let ``retained replay diagnostics support observers and assertions`` () =
    let root = System.IO.Path.GetFullPath(System.IO.Path.Combine(__SOURCE_DIRECTORY__, "../.."))
    use server = Vcr.Playback(System.IO.Path.Combine(root, "core_tests/diagnostics/playback.md")).Start()
    Servirtium.testContext "FSharp scenario" "scenario.test" 123 server
    let info = System.Diagnostics.ProcessStartInfo(System.IO.Path.Combine(root, "target/test-tools/diagnostic_fixture"))
    info.ArgumentList.Add(server.BaseUrl)
    use driver = System.Diagnostics.Process.Start(info)
    driver.WaitForExit()
    Assert.Equal(0, driver.ExitCode)
    Assert.Contains("owner", Servirtium.lastErrorWith false server)
    Assert.Contains("scenario.test:123", Servirtium.lastErrorWith false server)
    Assert.DoesNotContain("\"retrieved\":1", Servirtium.diagnosticsJson false server)
    Assert.Contains("owner", server.LastError)
    Assert.Contains("\"retrieved\":0", Servirtium.diagnosticsJson false server)
    Assert.Throws<VcrException>(fun () -> Servirtium.assertNoMismatches server) |> ignore
    Servirtium.testContext "next test" "" 0 server
    Servirtium.assertNoMismatches server
    Assert.Equal("[]", Servirtium.diagnosticsJson false server)

[<Fact>]
let ``named secrets round trip`` () =
    let directory = System.IO.Path.Combine(System.IO.Path.GetTempPath(), "vcr-secrets-fsharp-" + System.Guid.NewGuid().ToString())
    System.IO.Directory.CreateDirectory(directory) |> ignore
    let tape = System.IO.Path.Combine(directory, "tape.md")
    let fixture = System.IO.Path.GetFullPath(System.IO.Path.Combine(__SOURCE_DIRECTORY__, "../../target/test-tools/secret_fixture"))
    let run action arg =
        let info = System.Diagnostics.ProcessStartInfo(fixture, RedirectStandardOutput = true)
        info.ArgumentList.Add(action)
        info.ArgumentList.Add(arg)
        use child = System.Diagnostics.Process.Start(info)
        let output = child.StandardOutput.ReadToEnd()
        child.WaitForExit()
        Assert.Equal(0, child.ExitCode)
        output.Trim()
    try
        let mutable count = 0
        let builder = Vcr.Record(tape, run "start" directory) |> Servirtium.secretRedactor (fun key request ->
            if key <> "password" then None else
                count <- count + 1
                Some(request.Path.Split('/').[1].ToUpperInvariant() + "_PASSWORD"))
        do
            use recorder = builder.Start()
            run "drive" recorder.BaseUrl |> ignore
            Assert.Equal(0, count)
        Assert.Equal(20, count)
        run "check" tape |> ignore
        do
            use replay = (Vcr.Playback(tape) |> Servirtium.secretResolver (fun token -> Some("pw-" + token.Replace("_PASSWORD", "").ToLowerInvariant() + "&secret"))).Start()
            run "drive" replay.BaseUrl |> ignore
            replay.AssertNoMismatches()
        run "check" tape |> ignore
    finally
        System.IO.Directory.Delete(directory, true)


[<Fact>]
let ``sortJsonKeys with prettyJson writes sorted pretty JSON`` () =
    use upstream = new System.Net.HttpListener()
    let port = (let l = new System.Net.Sockets.TcpListener(System.Net.IPAddress.Loopback, 0) in l.Start(); let p = (l.LocalEndpoint :?> System.Net.IPEndPoint).Port in l.Stop(); p)
    let baseUrl = sprintf "http://127.0.0.1:%d" port
    upstream.Prefixes.Add(baseUrl + "/")
    upstream.Start()
    let serve = System.Threading.Tasks.Task.Run(fun () ->
        try
            while upstream.IsListening do
                let ctx = upstream.GetContext()
                let payload = System.Text.Encoding.UTF8.GetBytes("""{"b":1,"a":{"d":2,"c":3}}""")
                ctx.Response.ContentType <- "application/json"
                ctx.Response.ContentLength64 <- int64 payload.Length
                ctx.Response.OutputStream.Write(payload, 0, payload.Length)
                ctx.Response.Close()
        with _ -> ())
    let tape = System.IO.Path.Combine(System.IO.Path.GetTempPath(), "vcr-sort-" + System.Guid.NewGuid().ToString() + ".md")
    try
        let record (configure: RecordBuilder -> RecordBuilder) =
            (Vcr.Record(tape, baseUrl) |> configure).Start()
        // with prettyJson: sorted, pretty
        do
            use rec1 = record (Servirtium.prettyJson 2 >> Servirtium.sortJsonKeys)
            get (rec1.BaseUrl + "/doc") |> ignore
        Assert.Contains("{\n  \"a\": {\n    \"c\": 3,\n    \"d\": 2\n  },\n  \"b\": 1\n}", (System.IO.File.ReadAllText tape).Replace("\r\n", "\n"))
        System.IO.File.Delete tape
        // without prettyJson: refused when the tape is written
        let rec2 = record Servirtium.sortJsonKeys
        get (rec2.BaseUrl + "/doc") |> ignore
        let ex = Assert.Throws<VcrException>(fun () -> rec2.Dispose())
        Assert.Contains("sort_json_keys needs pretty_json", ex.Message)
        Assert.False(System.IO.File.Exists tape)
        // a bad rule fails start
        let bad = Assert.Throws<VcrException>(fun () -> record (Servirtium.sortHeaderValue "") |> ignore)
        Assert.Contains("SortHeaderValue", bad.Message)
    finally
        upstream.Stop()
        if System.IO.File.Exists tape then System.IO.File.Delete tape

[<Fact>]
let ``playbackRange skips early interactions and serves a later one`` () =
    let root = System.IO.Path.GetFullPath(System.IO.Path.Combine(__SOURCE_DIRECTORY__, "../.."))
    let rangeTape = System.IO.Path.Combine(root, "core_tests/tapes/playback_range.tape")
    let start from =
        (Vcr.Playback(rangeTape) |> Servirtium.redactCredentialsOnPlayback |> Servirtium.playbackRange from (-1)).Start()
    let getWithCookie (url: string) =
        use client = new HttpClient()
        use request = new HttpRequestMessage(HttpMethod.Get, url)
        request.Headers.TryAddWithoutValidation("Cookie", "sid=live") |> ignore
        client.SendAsync(request).Result
    do
        use vcr = start 7
        Assert.Equal(8, Servirtium.tapeLength vcr)
        Assert.Equal(System.Net.HttpStatusCode.OK, (getWithCookie (Servirtium.baseUrl vcr + "/logout")).StatusCode)
        Assert.Equal(7, Servirtium.lastIndex vcr)
        Assert.True(Servirtium.matchedCleanly vcr)
    do
        use vcr = start 7
        getWithCookie (Servirtium.baseUrl vcr + "/login") |> ignore // interaction 0 is outside the range
        Assert.False(Servirtium.matchedCleanly vcr)
        Assert.Contains("outside the playback range", Servirtium.lastError vcr)
    let bad = Assert.Throws<VcrException>(fun () -> start 99 |> ignore)
    Assert.Contains("PlaybackRange", bad.Message)

