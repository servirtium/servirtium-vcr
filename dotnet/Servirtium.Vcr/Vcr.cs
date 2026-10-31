using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Net.Sockets;
using System.Security.Cryptography.X509Certificates;
using System.Threading;
using System.Threading.Tasks;

namespace Servirtium.Vcr;

/// <summary>
/// Entry point for record/replay fixtures backed by the in-repo VCR core
/// (the <c>aether_vcr_embed_*</c> C-ABI from
/// <c>core/embed.ae</c>, the embedding layer over <c>core/vcr.ae</c>). The
/// system-under-test talks plain HTTP to <see cref="VcrServer.BaseUrl"/>;
/// tape paths, mode, mutations, and diagnostics live in test
/// setup/teardown.
///
/// <code>
/// using var vcr = Vcr.Playback("tapes/my_api.md").Port(0).Start();
/// client.BaseAddress = new Uri(vcr.BaseUrl);
/// // ... drive the SUT ...
/// Assert.Equal(VcrOutcome.Ok, vcr.LastKind);
/// </code>
///
/// Handle-based: each <see cref="Start"/> opens its own VCR handle, so N
/// independent servers can run concurrently — one server per port, each
/// keyed by its own handle. Tape/cursor/mutation state is owned by the
/// handle (not process-global), so config from one fixture never leaks into
/// another. Tests that share a single fixed port must still run serially.
/// </summary>
public static class Vcr
{
    /// <summary>Replay a Servirtium markdown tape from disk.</summary>
    public static PlaybackBuilder Playback(string tapePath) => new(tapePath);

    /// <summary>
    /// Record live interactions: forward to <paramref name="upstreamBase"/>,
    /// return the real response to the SUT, and capture the exchange. The
    /// tape is written to <paramref name="tapePath"/> when the server is
    /// disposed.
    /// </summary>
    public static RecordBuilder Record(string tapePath, string upstreamBase) => new(tapePath, upstreamBase);
}

/// <summary>Shared bind options for both builders.</summary>
public abstract class VcrBuilderBase<TSelf> where TSelf : VcrBuilderBase<TSelf>
{
    private protected readonly string TapePath;
    private protected string HostValue = "127.0.0.1";
    private protected int PortValue;          // 0 => OS-assigned (dynamic)
    private protected string LabelValue = "";

    private readonly List<(VcrField field, string name)> _headerRemovals = new();
    private readonly List<(string mount, string dir)> _staticContent = new();
    private readonly List<string> _untaped = new();
    private bool _ignoreVolatileHeaders;
    private (string cert, string key)? _tls;
    private (string certPem, string keyPem)? _tlsPem;

    private protected VcrBuilderBase(string tapePath) => TapePath = tapePath;

    private protected abstract TSelf Self { get; }

    /// <summary>Bind host. Defaults to 127.0.0.1.</summary>
    public TSelf Host(string host) { HostValue = host; return Self; }

    /// <summary>Bind port. 0 (the default) asks the OS for a free port.</summary>
    public TSelf Port(int port) { PortValue = port; return Self; }

    /// <summary>Human-facing label for logs/diagnostics (not a state key).</summary>
    public TSelf Label(string label) { LabelValue = label; return Self; }

    /// <summary>Remove a header by name from the given block (case-insensitive).</summary>
    public TSelf RemoveHeader(VcrField field, string name)
    {
        _headerRemovals.Add((field, name));
        return Self;
    }

    /// <summary>
    /// One call to drop the per-request VOLATILE headers modern clients inject
    /// on every call — distributed-tracing context and correlation ids that
    /// change run to run (<c>traceparent</c>, <c>tracestate</c>, <c>Request-Id</c>,
    /// <c>X-Request-Id</c>, <c>X-Correlation-Id</c>, <c>baggage</c>). .NET's
    /// <see cref="System.Net.Http.HttpClient"/> adds the tracing trio to every
    /// request, so strict matching otherwise fails on a confusing first run.
    /// Each is removed from BOTH the recorded expectation and the live request
    /// before matching. The companion to <c>StrictIgnoreCommonHeaders</c>
    /// (User-Agent/Accept/…); call both for the full default-ignore set.
    /// Honored in playback and record.
    /// </summary>
    public TSelf IgnoreVolatileHeaders(bool on = true)
    {
        _ignoreVolatileHeaders = on;
        return Self;
    }

    /// <summary>
    /// Serve a path prefix from an on-disk directory instead of the tape
    /// (Servirtium step 11). Honored in both playback and record mode — the
    /// libservirtium_vcr wires the static routes either way, so a browser suite can be
    /// served same-origin from the VCR while recording too (no CORS/OPTIONS
    /// noise on the tape), matching how it's replayed.
    /// </summary>
    public TSelf StaticContent(string mountPath, string fsDir)
    {
        _staticContent.Add((mountPath, fsDir));
        return Self;
    }

    /// <summary>
    /// Terminate TLS: the VCR serves <c>https://</c> instead of <c>http://</c>,
    /// for client libraries that refuse plain HTTP. <paramref name="certPath"/>
    /// and <paramref name="keyPath"/> are PEM files (a certificate and its
    /// matching private key). Honored in both playback and record mode; the
    /// <see cref="Vcr.BaseUrl"/> then carries the <c>https</c> scheme. A bad or
    /// mismatched PEM throws from <see cref="Build"/>. Configure before
    /// building/starting.
    /// </summary>
    public TSelf Tls(string certPath, string keyPath)
    {
        _tls = (certPath, keyPath);
        return Self;
    }

    /// <summary>
    /// Like <see cref="Tls"/>, but the certificate and key are PEM TEXT passed
    /// in memory rather than file paths — so a test never writes a private key
    /// to disk (what security reviews flag). <paramref name="certPem"/> is the
    /// PEM certificate (chain) and <paramref name="keyPem"/> the matching PEM
    /// private key. Honored in playback and record; a bad or mismatched PEM
    /// throws from <see cref="Build"/>. Takes precedence over <see cref="Tls"/>
    /// if both are set.
    /// </summary>
    public TSelf TlsFromPem(string certPem, string keyPem)
    {
        _tlsPem = (certPem, keyPem);
        return Self;
    }

    /// <summary>
    /// Mark an incidental request path (e.g. "/favicon.ico") the VCR answers
    /// 404 for without consuming the tape cursor, so a normal interaction
    /// recorded after it still matches. Honored in both playback and record
    /// mode.
    /// </summary>
    public TSelf Untaped(string path)
    {
        _untaped.Add(path);
        return Self;
    }

    /// <summary>
    /// Apply this builder's accumulated config to the opened handle, before
    /// serving starts. Subclasses extend this.
    /// </summary>
    private protected virtual void ApplyConfig(IntPtr handle)
    {
        foreach ((VcrField field, string name) in _headerRemovals)
        {
            Check(NativeMethods.RemoveHeader(handle, (int)field, name), nameof(RemoveHeader));
        }
        foreach ((string mount, string dir) in _staticContent)
        {
            Check(NativeMethods.StaticContent(handle, mount, dir), nameof(StaticContent));
        }
        foreach (string path in _untaped)
        {
            Check(NativeMethods.Untaped(handle, path), nameof(Untaped));
        }
        if (_ignoreVolatileHeaders)
        {
            Check(NativeMethods.IgnoreVolatileHeaders(handle), nameof(IgnoreVolatileHeaders));
        }
        if (_tlsPem is (string certPem, string keyPem))
        {
            Check(NativeMethods.SetTlsPem(handle, certPem, keyPem), nameof(TlsFromPem));
        }
        else if (_tls is (string cert, string key))
        {
            Check(NativeMethods.SetTls(handle, cert, key), nameof(Tls));
        }
    }

    /// <summary>
    /// The configured server-certificate PEM text, or null when TLS is off.
    /// Resolves the file form (<see cref="Tls"/>) by reading it. Used by
    /// <see cref="VcrServer.CreateClientHandler"/> to pin the self-signed cert.
    /// </summary>
    private protected string? ResolveTlsCertPem()
    {
        if (_tlsPem is (string certPem, _)) return certPem;
        if (_tls is (string certPath, _))
        {
            try { return System.IO.File.ReadAllText(certPath); }
            catch { return null; }
        }
        return null;
    }

    /// <summary>Throw if a mutation call returned a non-empty error string ("" = success).</summary>
    private protected static void Check(IntPtr resultPtr, string op)
    {
        string err = NativeMethods.TakeString(resultPtr);
        if (!string.IsNullOrEmpty(err))
        {
            throw new VcrException($"vcr {op} failed: {err}");
        }
    }
}

/// <summary>Configures and starts a playback VCR server.</summary>
public sealed class PlaybackBuilder : VcrBuilderBase<PlaybackBuilder>
{
    private Func<string, string?>? _secretResolver;
    public PlaybackBuilder SecretResolver(Func<string, string?> callback) { _secretResolver = callback; return this; }
    private readonly List<(VcrField field, string pattern, string replacement)> _unredactions = new();
    private readonly List<(VcrField field, string pattern, string replacement, bool required)> _substitutions = new();
    private readonly List<string> _matchHeaders = new();
    private bool _strictHeaders;
    private bool _matchJsonBody;
    private bool _matchXmlBody;
    private bool _matchMultiple;

    internal PlaybackBuilder(string tapePath) : base(tapePath) { }
    private protected override PlaybackBuilder Self => this;

    /// <summary>
    /// Compare the SUT's request headers against the recorded block on
    /// every interaction (Servirtium step 10), surfacing mismatches via
    /// <see cref="VcrServer.LastError"/>.
    /// </summary>
    public PlaybackBuilder StrictHeaders(bool on = true)
    {
        _strictHeaders = on;
        return this;
    }

    /// <summary>
    /// Opt in to matching request bodies by semantic JSON equality (key
    /// order / whitespace ignored) instead of byte-for-byte. Non-JSON
    /// bodies fall back to byte-exact.
    /// </summary>
    public PlaybackBuilder MatchJsonBody(bool on = true)
    {
        _matchJsonBody = on;
        return this;
    }

    /// <summary>
    /// Opt in to matching request bodies by semantic XML equality (attribute
    /// order and insignificant whitespace ignored; element order significant)
    /// instead of byte-for-byte — the SOAP/XML twin of <see cref="MatchJsonBody"/>.
    /// Non-XML bodies fall back to byte-exact. It does NOT ignore a chosen
    /// volatile element (e.g. a WS-Addressing MessageID); make those
    /// deterministic with <see cref="RecordBuilder.RedactWholeTape"/> / a fixed
    /// clock as before — this closes the key-order / indentation gap.
    /// </summary>
    public PlaybackBuilder MatchXmlBody(bool on = true)
    {
        _matchXmlBody = on;
        return this;
    }

    /// <summary>
    /// Opt in to reusable, order-independent playback: matches any recorded
    /// interaction (not just the next in sequence) and doesn't consume it —
    /// for polling/retries or non-deterministic request order.
    /// </summary>
    public PlaybackBuilder MatchMultiple(bool on = true)
    {
        _matchMultiple = on;
        return this;
    }

    /// <summary>
    /// Match playback on this specific request header's value (ignoring the
    /// rest of the recorded header block); repeatable.
    /// </summary>
    public PlaybackBuilder MatchHeader(string name)
    {
        _matchHeaders.Add(name);
        return this;
    }

    /// <summary>
    /// Replace a redacted placeholder in the recorded expectation with the
    /// real value the live SUT sends, so a committed (scrubbed) tape still
    /// matches.
    /// </summary>
    public PlaybackBuilder Unredact(VcrField field, string pattern, string replacement)
    {
        _unredactions.Add((field, pattern, replacement));
        return this;
    }

    /// <summary>
    /// Rewrite <paramref name="pattern"/> to <paramref name="replacement"/> in
    /// the recorded RESPONSE body (<see cref="VcrField.ResponseBody"/>) or
    /// RESPONSE headers (<see cref="VcrField.ResponseHeaders"/>) on playback,
    /// so a taped <c>nextLink</c> / <c>id</c> / absolute URL resolves against
    /// the test's own host (paging / HATEOAS). The placeholders
    /// <c>{{request.host}}</c>, <c>{{request.scheme}}</c> and
    /// <c>{{baseUrl}}</c> are filled from the live request automatically —
    /// use <c>Substitute</c> only for your own placeholders (e.g.
    /// <c>Substitute(VcrField.ResponseBody, "{{vault}}", "https://" + host)</c>).
    /// Pass <see cref="VcrField.Response"/> to fill the placeholder in the body
    /// AND the headers with one rule (counted once by
    /// <see cref="VcrServer.AssertAllRedactionsUsed"/>). Only those three fields
    /// are accepted; anything else throws from <see cref="Start"/>. Request-side
    /// matching is unaffected.
    /// </summary>
    /// <param name="required">
    /// When <c>true</c> (default), <see cref="VcrServer.AssertAllRedactionsUsed"/>
    /// reports this rule if it never fires. Pass <c>false</c> (or use
    /// <see cref="SubstituteOptional"/>) for a shared fixture's safeguard rule
    /// that some tapes legitimately don't exercise — e.g. a <c>{{vault}}</c>
    /// substitution a 403/503/empty-vault tape contains no placeholder for.
    /// </param>
    public PlaybackBuilder Substitute(VcrField field, string pattern, string replacement, bool required = true)
    {
        _substitutions.Add((field, pattern, replacement, required));
        return this;
    }

    /// <summary>
    /// Like <see cref="Substitute(VcrField,string,string,bool)"/> but optional:
    /// <see cref="VcrServer.AssertAllRedactionsUsed"/> never reports it as
    /// unused. For a shared fixture that configures the same substitutions for a
    /// whole family of tapes, where some tapes legitimately contain no
    /// placeholder for a given rule (403/503/empty-vault cases).
    /// </summary>
    public PlaybackBuilder SubstituteOptional(VcrField field, string pattern, string replacement)
        => Substitute(field, pattern, replacement, required: false);

    /// <summary>
    /// Register a base-URL-style <paramref name="marker"/> (e.g. <c>{{workpro}}</c>)
    /// once, applied in BOTH directions: the recorded expectation's marker is
    /// filled with <paramref name="value"/> on the request side so a live request
    /// carrying the real URL still matches (an <see cref="Unredact"/>), and the
    /// served response's marker — body and headers — is filled with it too (a
    /// <see cref="Substitute"/> over <see cref="VcrField.Response"/>). One call
    /// instead of pairing an <c>Unredact</c> with a <c>Substitute</c> by hand.
    /// The request-side rule is registered on the path and request body; use the
    /// lower-level calls directly if you need a different field scope.
    /// </summary>
    public PlaybackBuilder Placeholder(string marker, string value)
    {
        _unredactions.Add((VcrField.Path, marker, value));
        _unredactions.Add((VcrField.RequestBody, marker, value));
        _substitutions.Add((VcrField.Response, marker, value, false));
        return this;
    }

    private protected override void ApplyConfig(IntPtr handle)
    {
        base.ApplyConfig(handle);
        if (_strictHeaders) NativeMethods.SetStrictHeaders(handle, 1);
        if (_matchJsonBody) NativeMethods.SetMatchJsonBody(handle, 1);
        if (_matchXmlBody) NativeMethods.SetMatchXmlBody(handle, 1);
        if (_matchMultiple) NativeMethods.SetMatchMultiple(handle, 1);
        foreach (string name in _matchHeaders)
        {
            NativeMethods.MatchHeader(handle, name);
        }
        foreach ((VcrField field, string pattern, string replacement) in _unredactions)
        {
            Check(NativeMethods.Unredact(handle, (int)field, pattern, replacement), nameof(Unredact));
        }
        foreach ((VcrField field, string pattern, string replacement, bool required) in _substitutions)
        {
            Check(NativeMethods.Substitute(handle, (int)field, pattern, replacement, required ? 1 : 0), nameof(Substitute));
        }
    }

    public VcrServer Start()
    {
        IntPtr handle = NativeMethods.OpenPlayback(LabelValue, TapePath, HostValue, PortValue);
        if (handle == IntPtr.Zero)
        {
            throw new VcrException($"vcr playback failed to start for tape '{TapePath}'");
        }
        ApplyConfig(handle);
        if (_secretResolver != null) SecretCallbacks.Stage(handle, null, _secretResolver);
        if (NativeMethods.Start(handle) < 0)
        {
            string detail = DrainStartError(handle);
            NativeMethods.Stop(handle);
            throw new VcrException($"vcr playback failed to begin serving for tape '{TapePath}': {detail}");
        }
        return new VcrServer(handle, HostValue, TapePath, recordMode: false, failIfChanged: false, tlsCertPem: ResolveTlsCertPem());
    }

    private static string DrainStartError(IntPtr handle)
    {
        string err = NativeMethods.TakeString(NativeMethods.LastError(handle));
        return string.IsNullOrEmpty(err) ? "(no detail; check tape path and port availability)" : err;
    }
}

/// <summary>Configures and starts a record VCR server.</summary>
public sealed class RecordBuilder : VcrBuilderBase<RecordBuilder>
{
    private Func<string, SecretRequest, string?>? _secretRedactor;
    public RecordBuilder SecretRedactor(Func<string, SecretRequest, string?> callback) { _secretRedactor = callback; return this; }
    private readonly string _upstreamBase;
    private readonly List<(Func<IntPtr, int, string, string, IntPtr> operation, VcrField field, string pattern, string replacement)> _redactions = new();
    private readonly List<(string pattern, string name)> _normalizeWholeTape = new();
    private readonly List<(string pattern, string replacement)> _redactWholeTape = new();
    private (string title, string body)? _note;
    private bool _indentCodeBlocks;
    private bool _emphasizeHttpVerbs;
    private bool _failIfChanged;
    private bool _requireLoopbackUpstream;

    internal RecordBuilder(string tapePath, string upstreamBase) : base(tapePath)
        => _upstreamBase = upstreamBase;

    private protected override RecordBuilder Self => this;

    /// <summary>Scrub a value out of the given field before it lands on the tape.</summary>
    public RecordBuilder Redact(VcrField field, string pattern, string replacement)
    {
        _redactions.Add((NativeMethods.Redact, field, pattern, replacement));
        return this;
    }

    /// <summary>Redact the named header value when emitting the tape.</summary>
    public RecordBuilder RedactHeader(string name, string replacement = "[REDACTED]", VcrField field = VcrField.RequestHeaders)
    {
        _redactions.Add((NativeMethods.RedactHeader, field, name, replacement));
        return this;
    }

    /// <summary>Redact the named query parameter when emitting the tape.</summary>
    public RecordBuilder RedactQueryParam(string name, string replacement = "[REDACTED]", VcrField field = VcrField.Path)
    {
        _redactions.Add((NativeMethods.RedactQueryParam, field, name, replacement));
        return this;
    }

    /// <summary>Redact the named JSON field value when emitting the tape.</summary>
    public RecordBuilder RedactJsonField(string name, string replacement = "[REDACTED]", VcrField field = VcrField.RequestBody)
    {
        _redactions.Add((NativeMethods.RedactJsonField, field, name, replacement));
        return this;
    }

    /// <summary>
    /// Normalize every distinct regex match across the WHOLE tape (all fields
    /// and interactions, in first-appearance order) to a stable
    /// <c>{{name-N}}</c> token. Use for correlated, recurring volatile ids
    /// (e.g. a UUID minted in one response that reappears in later request
    /// paths) so the same value maps to the same token everywhere.
    /// </summary>
    public RecordBuilder NormalizeWholeTape(string pattern, string name)
    {
        _normalizeWholeTape.Add((pattern, name));
        return this;
    }

    /// <summary>
    /// Redact every regex match across the WHOLE tape (all fields and
    /// interactions) to the constant <paramref name="replacement"/>. Use for
    /// uncorrelated volatiles where the value never needs to round-trip
    /// (e.g. a <c>Date</c> header).
    /// </summary>
    public RecordBuilder RedactWholeTape(string pattern, string replacement)
    {
        _redactWholeTape.Add((pattern, replacement));
        return this;
    }

    /// <summary>
    /// Attach a note to the next recorded interaction (Servirtium step 9).
    /// For notes on later interactions, call <see cref="VcrServer.Note"/> on
    /// the running server between requests.
    /// </summary>
    public RecordBuilder Note(string title, string body)
    {
        _note = (title, body);
        return this;
    }

    /// <summary>Emit code blocks as 4-space-indented text instead of fences.</summary>
    public RecordBuilder IndentCodeBlocks(bool on = true)
    {
        _indentCodeBlocks = on;
        return this;
    }

    /// <summary>Emit the HTTP method emphasized (e.g. <c>*GET*</c>) in headings.</summary>
    public RecordBuilder EmphasizeHttpVerbs(bool on = true)
    {
        _emphasizeHttpVerbs = on;
        return this;
    }

    /// <summary>
    /// On dispose, still write the freshly recorded tape but throw if it
    /// differs from the on-disk one — the Servirtium step-4 drift contract,
    /// so a normal <c>git diff</c> shows the change and CI fails loudly.
    /// </summary>
    public RecordBuilder FailIfChanged(bool on = true)
    {
        _failIfChanged = on;
        return this;
    }

    /// <summary>
    /// Enforce Servirtium's "never record against a real site" rule in the
    /// library itself (field report #9): <see cref="Start"/> throws unless the
    /// upstream base resolves to a loopback host (<c>localhost</c>, <c>127.0.0.0/8</c>,
    /// or <c>::1</c>). Opt-in, so a team can guarantee a stray record run — a
    /// weekly drift check, a mis-set env var — can never reach production. Off
    /// by default; recording against a non-loopback upstream stays allowed
    /// unless you ask for this guard.
    /// </summary>
    public RecordBuilder RequireLoopbackUpstream(bool on = true)
    {
        _requireLoopbackUpstream = on;
        return this;
    }

    private void CheckLoopbackUpstream()
    {
        if (!_requireLoopbackUpstream) return;
        string host;
        try
        {
            host = new Uri(_upstreamBase).Host;
        }
        catch (Exception ex)
        {
            throw new VcrException(
                $"RequireLoopbackUpstream: upstream '{_upstreamBase}' is not a valid absolute URL: {ex.Message}");
        }
        bool loopback =
            host.Equals("localhost", StringComparison.OrdinalIgnoreCase) ||
            (System.Net.IPAddress.TryParse(host.Trim('[', ']'), out System.Net.IPAddress? ip) &&
             System.Net.IPAddress.IsLoopback(ip));
        if (!loopback)
        {
            throw new VcrException(
                $"RequireLoopbackUpstream: refusing to record against non-loopback upstream '{_upstreamBase}' " +
                "(host must be localhost, 127.0.0.0/8, or ::1).");
        }
    }

    private protected override void ApplyConfig(IntPtr handle)
    {
        base.ApplyConfig(handle);
        if (_indentCodeBlocks) NativeMethods.IndentCodeBlocks(handle);
        if (_emphasizeHttpVerbs) NativeMethods.EmphasizeHttpVerbs(handle);
        foreach (var (operation, field, pattern, replacement) in _redactions)
        {
            Check(operation(handle, (int)field, pattern, replacement), nameof(Redact));
        }
        foreach ((string pattern, string name) in _normalizeWholeTape)
        {
            Check(NativeMethods.NormalizeWholeTape(handle, pattern, name), nameof(NormalizeWholeTape));
        }
        foreach ((string pattern, string replacement) in _redactWholeTape)
        {
            Check(NativeMethods.RedactWholeTape(handle, pattern, replacement), nameof(RedactWholeTape));
        }
    }

    public VcrServer Start()
    {
        CheckLoopbackUpstream();
        IntPtr handle = NativeMethods.OpenRecord(LabelValue, TapePath, _upstreamBase, HostValue, PortValue);
        if (handle == IntPtr.Zero)
        {
            throw new VcrException(
                $"vcr record failed to start for tape '{TapePath}' (upstream '{_upstreamBase}')");
        }
        ApplyConfig(handle);
        // Stage the note now (open_record cleared the tape) so it attaches to
        // the first interaction the SUT triggers, before serving begins.
        if (_note is { } n)
        {
            Check(NativeMethods.Note(handle, n.title, n.body), nameof(Note));
        }
        if (NativeMethods.Start(handle) < 0)
        {
            string detail = NativeMethods.TakeString(NativeMethods.LastError(handle));
            NativeMethods.Stop(handle);
            throw new VcrException($"vcr record failed to begin serving for tape '{TapePath}': {detail}");
        }
        return new VcrServer(handle, HostValue, TapePath, recordMode: true, failIfChanged: _failIfChanged, tlsCertPem: ResolveTlsCertPem()) { SecretRedactorCallback = _secretRedactor };
    }
}

/// <summary>
/// A running VCR server. Dispose to stop it; in record mode dispose also
/// flushes the captured tape to disk.
/// </summary>
public sealed class VcrServer : IDisposable
{
    internal Func<string, SecretRequest, string?>? SecretRedactorCallback;
    private IntPtr _handle;
    private readonly string _host;
    private readonly string _tapePath;
    private readonly bool _recordMode;
    private readonly bool _failIfChanged;
    private readonly string? _tlsCertPem;
    private string? _baseUrl;
    private bool _discarded;
    private bool _committed;

    internal VcrServer(IntPtr handle, string host, string tapePath, bool recordMode, bool failIfChanged, string? tlsCertPem = null)
    {
        _handle = handle;
        _host = host;
        _tapePath = tapePath;
        _recordMode = recordMode;
        _failIfChanged = failIfChanged;
        _tlsCertPem = tlsCertPem;
    }

    private IntPtr Handle =>
        _handle != IntPtr.Zero ? _handle : throw new ObjectDisposedException(nameof(VcrServer));

    /// <summary>The OS-resolved port the server is listening on.</summary>
    public int Port => NativeMethods.Port(Handle);

    /// <summary>Base URL the SUT should target, e.g. <c>http://127.0.0.1:54213</c>.</summary>
    public string BaseUrl => _baseUrl ??= NativeMethods.TakeString(NativeMethods.BaseUrl(Handle, _host));

    /// <summary>Tape entry count (playback), or interactions captured so far (record).</summary>
    public int TapeLength => NativeMethods.TapeLength(Handle);

    /// <summary>Latest retained replay diagnostic; consuming reads acknowledge without erasing.</summary>
    public string LastError => NativeMethods.TakeString(NativeMethods.LastError(Handle));

    /// <summary>Read the latest retained diagnostic; false observes without acknowledging.</summary>
    public string ReadLastError(bool consume = true) => NativeMethods.TakeString(NativeMethods.LastErrorEx(Handle, consume ? 1 : 0));
    public string DiagnosticsJson(bool consume = false) => NativeMethods.TakeString(NativeMethods.DiagnosticsJson(Handle, consume ? 1 : 0));
    public void AssertNoMismatches()
    {
        string error = NativeMethods.TakeString(NativeMethods.AssertNoMismatches(Handle));
        if (!string.IsNullOrEmpty(error)) throw new VcrException(error);
    }

    /// <summary>
    /// Throw unless every recorded interaction was replayed at least once since
    /// load/reset. Catches a system-under-test that skipped a taped step (e.g.
    /// never performed the recorded 401 sign-in) — which a per-request outcome
    /// check cannot see. Works in ordered and MatchMultiple playback. Call after
    /// the SUT has finished driving the server. The exception lists the unused
    /// interactions (index + method + path).
    /// </summary>
    public void AssertAllConsumed()
    {
        string error = NativeMethods.TakeString(NativeMethods.AssertAllConsumed(Handle));
        if (!string.IsNullOrEmpty(error)) throw new VcrException(error);
    }

    /// <summary>
    /// Throw unless every registered <see cref="PlaybackBuilder.Unredact"/> /
    /// <see cref="PlaybackBuilder.Substitute"/> / record-mode redaction rule
    /// actually matched something — the <c>verifyNoMoreInteractions()</c>
    /// analogue for scrubbing config. Catches a stale test: a rule whose pattern
    /// no longer appears in the tape, so it silently does nothing. Call at the
    /// end of the test; the exception lists the rules that never fired, by
    /// kind, field NAME and pattern — never the replacement value, so a real
    /// value restored with <see cref="PlaybackBuilder.Unredact"/> cannot leak
    /// into CI logs. A substitution registered with
    /// <see cref="PlaybackBuilder.SubstituteOptional"/> (or
    /// <c>required: false</c>) is never reported.
    /// </summary>
    public void AssertAllRedactionsUsed()
    {
        string error = NativeMethods.TakeString(NativeMethods.AssertAllRedactionsUsed(Handle));
        if (!string.IsNullOrEmpty(error)) throw new VcrException(error);
    }

    /// <summary>
    /// Throw if any served response still contained a <c>{{placeholder}}</c>
    /// when it was sent to the SUT — a typo like <c>{{valut}}</c>, or a
    /// placeholder no <see cref="PlaybackBuilder.Substitute"/> /
    /// <c>{{request.*}}</c> rule covers. That marker reaches the client as
    /// literal text and a test can otherwise still pass. Unlike
    /// <see cref="AssertAllRedactionsUsed"/>, this works the same with a shared
    /// fixture or per-test rules — it inspects the bytes actually served, not
    /// the rule list. Call at the end of the test; the exception lists the
    /// interactions (method + path) that still held a placeholder.
    /// </summary>
    public void AssertNoUnfilledPlaceholders()
    {
        string error = NativeMethods.TakeString(NativeMethods.AssertNoUnfilledPlaceholders(Handle));
        if (!string.IsNullOrEmpty(error)) throw new VcrException(error);
    }

    /// <summary>
    /// The TLS protocol this listener serves over — "TLSv1.3" when TLS is
    /// enabled (libservirtium_vcr's pure-Aether TLS 1.3 server), or "" for plain
    /// HTTP. Lets a test assert the server negotiated 1.3, not merely that the
    /// client was configured for it.
    /// </summary>
    public string LastTlsProtocol => NativeMethods.TakeString(NativeMethods.LastTlsProtocol(Handle));
    public void TestContext(string name, string sourceFile = "", int sourceLine = 0) => NativeMethods.TestContext(Handle, name, sourceFile, sourceLine);

    /// <summary>Outcome of the most-recent dispatch.</summary>
    public VcrOutcome LastKind => (VcrOutcome)NativeMethods.LastKind(Handle);

    /// <summary>Tape index of the most-recent matched interaction, or -1.</summary>
    public int LastIndex => NativeMethods.LastIndex(Handle);

    /// <summary>
    /// Stage a note (record mode) for the *next* interaction to be captured.
    /// Call between requests to annotate specific interactions.
    /// </summary>
    public void Note(string title, string body)
    {
        VcrBuilderBaseCheck(NativeMethods.Note(Handle, title, body));
    }

    /// <summary>Rewind the replay cursor to interaction 0 and clear last-* slots.</summary>
    public void ResetCursor() => NativeMethods.ResetCursor(Handle);

    /// <summary>Clear the last-error slot between sub-cases.</summary>
    public void ClearLastError() => NativeMethods.ClearLastError(Handle);

    private static void VcrBuilderBaseCheck(IntPtr resultPtr)
    {
        string err = NativeMethods.TakeString(resultPtr);
        if (!string.IsNullOrEmpty(err)) throw new VcrException(err);
    }

    /// <summary>
    /// Build an <see cref="HttpMessageHandler"/> that routes the system under
    /// test to THIS VCR safely, and nowhere else (field report #8). It is the
    /// safety-critical client wiring that's easy to get subtly wrong, shipped so
    /// you don't hand-roll ~40 lines of <c>ConnectCallback</c> + cert pinning:
    ///
    ///  * every outbound connection is forced to the VCR's real loopback
    ///    endpoint, regardless of the request's host/port — so a URL that leaks
    ///    a real hostname can't escape to the internet;
    ///  * a connection whose request host is not <paramref name="aliasHost"/>
    ///    (nor the loopback host the VCR bound) is REFUSED outright;
    ///  * when the VCR is serving TLS, the self-signed server certificate is
    ///    PINNED by thumbprint — the handler trusts exactly that certificate and
    ///    rejects any other, instead of blanket-disabling validation.
    ///
    /// Point the SUT at <c>https://{aliasHost}/</c> (or <c>http://</c>), give it
    /// an <see cref="HttpClient"/> built on this handler, and it can only ever
    /// reach the tape. This is a .NET-only helper (host HttpClient plumbing, not
    /// portable Servirtium logic).
    /// </summary>
    public HttpMessageHandler CreateClientHandler(string aliasHost)
    {
        int realPort = Port;
        string realHost = _host;
        byte[]? pinnedThumbprint = null;
        if (_tlsCertPem is string pem)
        {
            try
            {
                X509Certificate2 pinned = X509Certificate2.CreateFromPem(pem);
                pinnedThumbprint = pinned.GetCertHash();
            }
            catch (Exception ex)
            {
                throw new VcrException($"CreateClientHandler: could not parse the TLS certificate PEM to pin it: {ex.Message}");
            }
        }

        var handler = new SocketsHttpHandler
        {
            ConnectCallback = async (ctx, cancel) =>
            {
                string requestedHost = ctx.DnsEndPoint.Host;
                bool allowed =
                    requestedHost.Equals(aliasHost, StringComparison.OrdinalIgnoreCase) ||
                    requestedHost.Equals(realHost, StringComparison.OrdinalIgnoreCase);
                if (!allowed)
                {
                    throw new VcrException(
                        $"CreateClientHandler: refusing a connection to '{requestedHost}' — this client may only reach the VCR alias '{aliasHost}'.");
                }
                var socket = new Socket(SocketType.Stream, ProtocolType.Tcp) { NoDelay = true };
                try
                {
                    await socket.ConnectAsync(IPAddress.Loopback, realPort, cancel).ConfigureAwait(false);
                    return new NetworkStream(socket, ownsSocket: true);
                }
                catch
                {
                    socket.Dispose();
                    throw;
                }
            },
        };

        if (pinnedThumbprint != null)
        {
            handler.SslOptions.RemoteCertificateValidationCallback = (sender, cert, chain, errors) =>
            {
                if (cert == null) return false;
                byte[] seen = cert.GetCertHash();
                if (seen.Length != pinnedThumbprint.Length) return false;
                int diff = 0;
                for (int i = 0; i < seen.Length; i++) diff |= seen[i] ^ pinnedThumbprint[i];
                return diff == 0;
            };
            // TargetHost must match the alias the SUT dials, not loopback.
            handler.SslOptions.TargetHost = aliasHost;
        }

        return handler;
    }

    /// <summary>
    /// Record mode, explicit two-phase commit (field report #5): stop the
    /// server and write the captured tape to disk NOW. Call this on the success
    /// path of a test, paired with <see cref="Discard"/> on the failure path, so
    /// a half-finished recording from a failed test can never become a tape that
    /// later replays as the truth. The write itself is crash-safe (temp file +
    /// atomic rename) in the native library. Once committed (or discarded),
    /// <see cref="Dispose"/> does nothing further. Throws if the tape fails to
    /// write, or — when <see cref="RecordBuilder.FailIfChanged"/> is set — if it
    /// differs from the on-disk one. No-op outside record mode.
    /// </summary>
    public void Commit()
    {
        if (_handle == IntPtr.Zero || !_recordMode) { _committed = true; return; }
        IntPtr h = _handle;
        _handle = IntPtr.Zero;
        _committed = true;
        if (SecretRedactorCallback != null) SecretCallbacks.Stage(h, SecretRedactorCallback, null);
        IntPtr resultPtr = _failIfChanged
            ? NativeMethods.StopAndFlushFailIfChanged(h, _tapePath)
            : NativeMethods.StopAndFlush(h, _tapePath);
        string err = NativeMethods.TakeString(resultPtr);
        if (!string.IsNullOrEmpty(err))
        {
            throw new VcrException(err);
        }
    }

    /// <summary>
    /// Record mode: stop the server and DROP the captured recording WITHOUT
    /// writing a tape (field report #5). Call this on a test's failure path so a
    /// failed run never mints a tape. Safe to call then <see cref="Dispose"/>;
    /// once discarded, dispose writes nothing. No-op outside record mode.
    /// </summary>
    public void Discard()
    {
        if (_handle == IntPtr.Zero || !_recordMode) { _discarded = true; return; }
        IntPtr h = _handle;
        _handle = IntPtr.Zero;
        _discarded = true;
        NativeMethods.TakeString(NativeMethods.Discard(h, _tapePath));
    }

    public void Dispose()
    {
        // Already committed or discarded: nothing left to do (handle is zeroed).
        if (_committed || _discarded) return;
        if (_handle == IntPtr.Zero) return;
        IntPtr h = _handle;
        _handle = IntPtr.Zero;

        if (!_recordMode)
        {
            NativeMethods.Stop(h);
            return;
        }

        // Back-compat: a record server disposed WITHOUT an explicit Commit()/
        // Discard() still flushes, so existing tests keep recording on dispose.
        // Tests that must not mint a tape on failure call Discard() in teardown.
        if (SecretRedactorCallback != null) SecretCallbacks.Stage(h, SecretRedactorCallback, null);
        IntPtr resultPtr = _failIfChanged
            ? NativeMethods.StopAndFlushFailIfChanged(h, _tapePath)
            : NativeMethods.StopAndFlush(h, _tapePath);
        string err = NativeMethods.TakeString(resultPtr);
        if (!string.IsNullOrEmpty(err))
        {
            throw new VcrException(err);
        }
    }
}

/// <summary>Thrown when the VCR fails to start, or a record-mode flush detects drift.</summary>
public sealed class VcrException : Exception
{
    public VcrException(string message) : base(message) { }
}
