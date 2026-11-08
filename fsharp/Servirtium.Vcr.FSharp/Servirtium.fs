namespace Servirtium.Vcr.FSharp

open Servirtium.Vcr

/// Idiomatic F# over the .NET binding.
///
/// There is NO second FFI here. The one CLR binding to the shared Aether VCR
/// libservirtium_vcr is `dotnet/Servirtium.Vcr` (P/Invoke over the `aether_vcr_embed_*`
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

    /// Configure a request redaction before starting the record builder.
    let redactHeader (name: string) (builder: RecordBuilder) : RecordBuilder =
        builder.RedactHeader(name)

    /// Configure a request redaction before starting the record builder.
    let redactQueryParam (name: string) (builder: RecordBuilder) : RecordBuilder =
        builder.RedactQueryParam(name)

    /// Configure a request redaction before starting the record builder.
    let redactJsonField (name: string) (builder: RecordBuilder) : RecordBuilder =
        builder.RedactJsonField(name)

    /// Pretty-print recorded JSON response bodies (indent 1..16); request bodies are never changed.
    let prettyJson (indent: int) (builder: RecordBuilder) : RecordBuilder =
        builder.PrettyJson(indent)

    /// Write `text` under "## LICENSE NOTICE" at the top of every recorded tape; playback ignores it.
    let addLicenseNotice (text: string) (builder: RecordBuilder) : RecordBuilder =
        builder.AddLicenseNotice(text)

    /// Record mode: verify an https upstream against this PEM CA file.
    let upstreamCafile (path: string) (builder: RecordBuilder) : RecordBuilder =
        builder.UpstreamCafile(path)

    /// Opt-in stable order: write JSON response bodies' object keys sorted at every depth.
    /// Needs `prettyJson`: without it the tape is refused when written (disposing the server throws).
    let sortJsonKeys (builder: RecordBuilder) : RecordBuilder =
        builder.SortJsonKeys()

    /// Sort the JSON response arrays `path` selects by member `by` ("" = by each element's canonical JSON).
    let sortJsonArray (path: string) (by: string) (builder: RecordBuilder) : RecordBuilder =
        builder.SortJsonArray(path, by)

    /// The same, only for interactions whose request path matches the regex `requestRegex`.
    let sortJsonArrayAt (requestRegex: string) (path: string) (by: string) (builder: RecordBuilder) : RecordBuilder =
        builder.SortJsonArrayAt(requestRegex, path, by)

    /// Write response header lines sorted by name (case-insensitive).
    let sortResponseHeaders (builder: RecordBuilder) : RecordBuilder =
        builder.SortResponseHeaders()

    /// Sort one response header's comma-separated items ("Allow").
    let sortHeaderValue (name: string) (builder: RecordBuilder) : RecordBuilder =
        builder.SortHeaderValue(name)

    /// Replay only interactions `from`..`to` of the tape (0-based, inclusive; `to` < 0 = through the last).
    let playbackRange (from: int) (``to``: int) (builder: PlaybackBuilder) : PlaybackBuilder =
        builder.PlaybackRange(from, ``to``)

    /// Header presets (opt-in): drop Host, Connection, Content-Length, ... on the record builder.
    let removeTransportHeaders (builder: RecordBuilder) : RecordBuilder =
        builder.RemoveTransportHeaders()

    /// Header presets (opt-in): drop a vendor's headers (aws, azure, cloudflare, fastly, gcp).
    let removeCloudHeaders (vendor: string) (builder: RecordBuilder) : RecordBuilder =
        builder.RemoveCloudHeaders(vendor)

    /// Redact Authorization, cookies, X-Api-Key and X-Auth-Token on the record builder.
    let redactCredentials (builder: RecordBuilder) : RecordBuilder =
        builder.RedactCredentials()

    /// Redact one more credential header (its whole value becomes a token) on the record builder.
    let redactCredentialHeader (name: string) (builder: RecordBuilder) : RecordBuilder =
        builder.RedactCredentialHeader(name)

    /// The transport-header preset on the playback builder.
    let removeTransportHeadersOnPlayback (builder: PlaybackBuilder) : PlaybackBuilder =
        builder.RemoveTransportHeaders()

    /// The cloud-header preset on the playback builder.
    let removeCloudHeadersOnPlayback (vendor: string) (builder: PlaybackBuilder) : PlaybackBuilder =
        builder.RemoveCloudHeaders(vendor)

    /// The credential-redaction preset on the playback builder (matches on presence, not value).
    let redactCredentialsOnPlayback (builder: PlaybackBuilder) : PlaybackBuilder =
        builder.RedactCredentials()

    /// One more credential header on the playback builder.
    let redactCredentialHeaderOnPlayback (name: string) (builder: PlaybackBuilder) : PlaybackBuilder =
        builder.RedactCredentialHeader(name)

    /// Return None to leave a field alone; Some token names the playback secret.
    let secretRedactor (callback: string -> SecretRequest -> string option) (builder: RecordBuilder) =
        builder.SecretRedactor(System.Func<string, SecretRequest, string>(fun key request ->
            callback key request |> Option.toObj))

    let secretResolver (callback: string -> string option) (builder: PlaybackBuilder) =
        builder.SecretResolver(System.Func<string, string>(fun token -> callback token |> Option.toObj))

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

    /// Observe or acknowledge the latest retained replay failure.
    let lastErrorWith (consume: bool) (server: VcrServer) = server.ReadLastError(consume)
    let diagnosticsJson (consume: bool) (server: VcrServer) = server.DiagnosticsJson(consume)
    let assertNoMismatches (server: VcrServer) = server.AssertNoMismatches()
    let testContext (name: string) (file: string) (line: int) (server: VcrServer) = server.TestContext(name, file, line)
