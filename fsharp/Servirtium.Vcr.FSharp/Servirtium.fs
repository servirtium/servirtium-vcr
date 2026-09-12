namespace Servirtium.Vcr.FSharp

open Servirtium.Vcr

/// Idiomatic F# over the .NET binding.
///
/// There is NO second FFI here. The one CLR binding to the shared Aether VCR
/// engine is `dotnet/Servirtium.Vcr` (P/Invoke over the `aether_vcr_embed_*`
/// C-ABI); everything in this module is ordinary F#/.NET interop on top of
/// those classes — exactly as one Java jar backs the whole JVM family
/// (Java/Kotlin/Scala/Clojure/Groovy) and one Erlang NIF backs the BEAM four.
/// An F#-specific FFI would be a second copy of the marshalling rules to keep
/// in sync with core/embed.ae, and would break the repo's one rule: bindings
/// carry no logic.
///
/// What F# adds over the C# surface: loan-pattern combinators that dispose the
/// server on the way out (no `use` ceremony, exception-safe), and the server's
/// members as curry-friendly functions so a VCR can sit in a pipeline.
[<RequireQualifiedAccess>]
module Servirtium =

    /// Replay a Servirtium markdown tape from disk, on an OS-chosen free port.
    /// The caller owns the server — prefer `usingPlayback` unless you need to
    /// hold it across a fixture's lifetime.
    let playback (tapePath: string) : VcrServer =
        Vcr.Playback(tapePath).Start()

    /// Replay a tape on a specific host/port (0 = OS-assigned).
    let playbackOn (host: string) (port: int) (tapePath: string) : VcrServer =
        Vcr.Playback(tapePath).Host(host).Port(port).Start()

    /// Record: forward each request to `upstreamBase`, return the live response
    /// to the SUT, and write the tape when the server is disposed.
    let record (upstreamBase: string) (tapePath: string) : VcrServer =
        Vcr.Record(tapePath, upstreamBase).Start()

    // ---- loan patterns ----------------------------------------------------
    // The F#-idiomatic way to scope a VCR: run `body` against a live server and
    // dispose it on every path, including exceptions. In record mode disposal is
    // what flushes the tape, so the loan pattern is also what makes a recording
    // land on disk.

    /// Replay `tapePath` for the duration of `body`, then dispose.
    let usingPlayback (tapePath: string) (body: VcrServer -> 'a) : 'a =
        use vcr = playback tapePath
        body vcr

    /// Replay `tapePath` on a given host/port for the duration of `body`.
    let usingPlaybackOn (host: string) (port: int) (tapePath: string) (body: VcrServer -> 'a) : 'a =
        use vcr = playbackOn host port tapePath
        body vcr

    /// Record to `tapePath` against `upstreamBase` for the duration of `body`,
    /// then dispose — which flushes the captured tape to disk.
    let usingRecord (upstreamBase: string) (tapePath: string) (body: VcrServer -> 'a) : 'a =
        use vcr = record upstreamBase tapePath
        body vcr

    // ---- running-server members as functions ------------------------------

    /// Base URL the SUT should target, e.g. "http://127.0.0.1:54213".
    let baseUrl (vcr: VcrServer) : string = vcr.BaseUrl

    /// The OS-resolved port the server is listening on.
    let port (vcr: VcrServer) : int = vcr.Port

    /// Tape entry count (playback), or interactions captured so far (record).
    let tapeLength (vcr: VcrServer) : int = vcr.TapeLength

    /// Outcome of the most-recent dispatch. `VcrOutcome.Ok` means a clean match.
    let lastKind (vcr: VcrServer) : VcrOutcome = vcr.LastKind

    /// Most-recent dispatch diagnostic; "" when none flagged.
    let lastError (vcr: VcrServer) : string = vcr.LastError

    /// Tape index of the most-recent matched interaction, or -1.
    let lastIndex (vcr: VcrServer) : int = vcr.LastIndex

    /// True when the most-recent dispatch matched cleanly. The assertion most
    /// tests actually want: `vcr |> Servirtium.matchedCleanly |> Assert.True`.
    let matchedCleanly (vcr: VcrServer) : bool = vcr.LastKind = VcrOutcome.Ok

    /// Rewind the playback cursor to the top of the tape.
    let resetCursor (vcr: VcrServer) : unit = vcr.ResetCursor()

    /// Add a titled note to the tape being recorded.
    let note (title: string) (body: string) (vcr: VcrServer) : unit = vcr.Note(title, body)
