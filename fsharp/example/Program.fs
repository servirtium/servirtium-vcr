// Program.fs — a third party using the packaged F# binding.
//
// Restores Servirtium.Vcr.FSharp (and its Servirtium.Vcr dependency, which
// carries the engine .so) from a LOCAL NUGET FEED, with no ProjectReference to
// this repo and with SERVIRTIUM_VCR_LIB unset: only the per-RID native payload
// inside the Servirtium.Vcr package can satisfy the P/Invoke.
//
// Replays the canonical tape (GET /ok -> 200 text/plain "ok-body").
module ConsumerExample

open System.Net.Http
open Servirtium.Vcr
open Servirtium.Vcr.FSharp

[<EntryPoint>]
let main _ =
    Servirtium.usingPlayback "tapes/single_get.md" (fun vcr ->
        use client = new HttpClient()
        let body = client.GetStringAsync(Servirtium.baseUrl vcr + "/ok").Result
        if body <> "ok-body" || Servirtium.lastKind vcr <> VcrOutcome.Ok then
            eprintfn "FAIL: body=%s lastKind=%A" body (Servirtium.lastKind vcr)
            1
        else
            printfn "PASS[discovery]: consumer replayed the canonical tape from the installed package"
            0)
