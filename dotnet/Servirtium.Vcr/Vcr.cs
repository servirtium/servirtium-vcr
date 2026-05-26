using System;
using System.Collections.Generic;

namespace Servirtium.Vcr;

/// <summary>
/// Entry point for record/replay fixtures backed by the Aether VCR core
/// (the <c>aether_vcr_embed_*</c> C-ABI from
/// <c>std/http/server/vcr/embed.ae</c>). The system-under-test talks plain
/// HTTP to <see cref="VcrServer.BaseUrl"/>; tape paths, mode, mutations,
/// and diagnostics live in test setup/teardown.
///
/// <code>
/// using var vcr = Vcr.Playback("tapes/my_api.md").Port(0).Start();
/// client.BaseAddress = new Uri(vcr.BaseUrl);
/// // ... drive the SUT ...
/// Assert.Equal(VcrOutcome.Ok, vcr.LastKind);
/// </code>
///
/// v1 contract (from the Aether side): ONE active VCR server per process.
/// The mutation/diagnostic state is process-global, so <see cref="Start"/>
/// resets it to a clean slate before applying this fixture's config — a
/// redaction/note/strict setting from a previous test never leaks forward.
/// Run tests serially (one server per process at a time).
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
    /// Wipe all process-global mutation/format/strict state so a previous
    /// fixture's settings can't leak into this one (v1 one-server-per-process
    /// has no per-handle state). Called first by <see cref="ApplyConfig"/>.
    /// </summary>
    private protected static void ResetGlobalState()
    {
        NativeMethods.ClearRedactions();
        NativeMethods.ClearUnredactions();
        NativeMethods.ClearHeaderRemovals();
        NativeMethods.ClearStaticContent();
        NativeMethods.ClearUntaped();
        NativeMethods.ClearFormatOptions();
        NativeMethods.SetStrictHeaders(0);
        NativeMethods.ClearLastError();
        // A staged-but-unconsumed note is reset core-side when start_*
        // (re)loads the tape, so there's nothing to clear here.
    }

    /// <summary>
    /// Apply this builder's accumulated config after the reset and before
    /// the server starts (mutations like static-content and unredactions
    /// must be registered before the tape loads). Subclasses extend this.
    /// </summary>
    private protected virtual void ApplyConfig()
    {
        foreach ((VcrField field, string name) in _headerRemovals)
        {
            Check(NativeMethods.RemoveHeader((int)field, name), nameof(RemoveHeader));
        }
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
    private readonly List<(VcrField field, string pattern, string replacement)> _unredactions = new();
    private readonly List<(string mount, string dir)> _staticContent = new();
    private readonly List<string> _untaped = new();
    private bool _strictHeaders;

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
    /// Serve a path prefix from an on-disk directory instead of the tape
    /// (Servirtium step 11).
    /// </summary>
    public PlaybackBuilder StaticContent(string mountPath, string fsDir)
    {
        _staticContent.Add((mountPath, fsDir));
        return this;
    }

    /// <summary>
    /// Mark an incidental request path (e.g. "/favicon.ico") the VCR answers
    /// 404 for without consuming the tape cursor, so a normal interaction
    /// recorded after it still matches.
    /// </summary>
    public PlaybackBuilder Untaped(string path)
    {
        _untaped.Add(path);
        return this;
    }

    private protected override void ApplyConfig()
    {
        base.ApplyConfig();
        if (_strictHeaders) NativeMethods.SetStrictHeaders(1);
        foreach ((VcrField field, string pattern, string replacement) in _unredactions)
        {
            Check(NativeMethods.Unredact((int)field, pattern, replacement), nameof(Unredact));
        }
        foreach ((string mount, string dir) in _staticContent)
        {
            Check(NativeMethods.StaticContent(mount, dir), nameof(StaticContent));
        }
        foreach (string path in _untaped)
        {
            Check(NativeMethods.Untaped(path), nameof(Untaped));
        }
    }

    public VcrServer Start()
    {
        ResetGlobalState();
        ApplyConfig();
        IntPtr handle = NativeMethods.StartPlayback(LabelValue, TapePath, HostValue, PortValue);
        if (handle == IntPtr.Zero)
        {
            throw new VcrException($"vcr playback failed to start for tape '{TapePath}': {DrainStartError()}");
        }
        return new VcrServer(handle, HostValue, TapePath, recordMode: false, failIfChanged: false);
    }

    private static string DrainStartError()
    {
        string err = NativeMethods.TakeString(NativeMethods.LastError());
        return string.IsNullOrEmpty(err) ? "(no detail; check tape path and port availability)" : err;
    }
}

/// <summary>Configures and starts a record VCR server.</summary>
public sealed class RecordBuilder : VcrBuilderBase<RecordBuilder>
{
    private readonly string _upstreamBase;
    private readonly List<(VcrField field, string pattern, string replacement)> _redactions = new();
    private (string title, string body)? _note;
    private bool _indentCodeBlocks;
    private bool _emphasizeHttpVerbs;
    private bool _failIfChanged;

    internal RecordBuilder(string tapePath, string upstreamBase) : base(tapePath)
        => _upstreamBase = upstreamBase;

    private protected override RecordBuilder Self => this;

    /// <summary>Scrub a value out of the given field before it lands on the tape.</summary>
    public RecordBuilder Redact(VcrField field, string pattern, string replacement)
    {
        _redactions.Add((field, pattern, replacement));
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

    private protected override void ApplyConfig()
    {
        base.ApplyConfig();
        if (_indentCodeBlocks) NativeMethods.IndentCodeBlocks();
        if (_emphasizeHttpVerbs) NativeMethods.EmphasizeHttpVerbs();
        foreach ((VcrField field, string pattern, string replacement) in _redactions)
        {
            Check(NativeMethods.Redact((int)field, pattern, replacement), nameof(Redact));
        }
        // NOTE: the staged note is applied *after* start_record — load_record
        // clears the tape (and the pending note) as it binds, so staging it
        // pre-start would be wiped. See Start().
    }

    public VcrServer Start()
    {
        ResetGlobalState();
        ApplyConfig();
        IntPtr handle = NativeMethods.StartRecord(LabelValue, TapePath, _upstreamBase, HostValue, PortValue);
        if (handle == IntPtr.Zero)
        {
            throw new VcrException(
                $"vcr record failed to start for tape '{TapePath}' (upstream '{_upstreamBase}')");
        }
        // Stage the note now (after load_record cleared the tape) so it
        // attaches to the first interaction the SUT triggers.
        if (_note is { } n)
        {
            Check(NativeMethods.Note(n.title, n.body), nameof(Note));
        }
        return new VcrServer(handle, HostValue, TapePath, recordMode: true, failIfChanged: _failIfChanged);
    }
}

/// <summary>
/// A running VCR server. Dispose to stop it; in record mode dispose also
/// flushes the captured tape to disk.
/// </summary>
public sealed class VcrServer : IDisposable
{
    private IntPtr _handle;
    private readonly string _host;
    private readonly string _tapePath;
    private readonly bool _recordMode;
    private readonly bool _failIfChanged;
    private string? _baseUrl;

    internal VcrServer(IntPtr handle, string host, string tapePath, bool recordMode, bool failIfChanged)
    {
        _handle = handle;
        _host = host;
        _tapePath = tapePath;
        _recordMode = recordMode;
        _failIfChanged = failIfChanged;
    }

    private IntPtr Handle =>
        _handle != IntPtr.Zero ? _handle : throw new ObjectDisposedException(nameof(VcrServer));

    /// <summary>The OS-resolved port the server is listening on.</summary>
    public int Port => NativeMethods.Port(Handle);

    /// <summary>Base URL the SUT should target, e.g. <c>http://127.0.0.1:54213</c>.</summary>
    public string BaseUrl => _baseUrl ??= NativeMethods.TakeString(NativeMethods.BaseUrl(Handle, _host));

    /// <summary>Tape entry count (playback), or interactions captured so far (record).</summary>
    public int TapeLength => NativeMethods.TapeLength();

    /// <summary>Most-recent dispatch diagnostic; empty when none flagged.</summary>
    public string LastError => NativeMethods.TakeString(NativeMethods.LastError());

    /// <summary>Outcome of the most-recent dispatch.</summary>
    public VcrOutcome LastKind => (VcrOutcome)NativeMethods.LastKind();

    /// <summary>Tape index of the most-recent matched interaction, or -1.</summary>
    public int LastIndex => NativeMethods.LastIndex();

    /// <summary>
    /// Stage a note (record mode) for the *next* interaction to be captured.
    /// Call between requests to annotate specific interactions.
    /// </summary>
    public void Note(string title, string body)
    {
        VcrBuilderBaseCheck(NativeMethods.Note(title, body));
    }

    /// <summary>Rewind the replay cursor to interaction 0 and clear last-* slots.</summary>
    public void ResetCursor() => NativeMethods.ResetCursor();

    /// <summary>Clear the last-error slot between sub-cases.</summary>
    public void ClearLastError() => NativeMethods.ClearLastError();

    private static void VcrBuilderBaseCheck(IntPtr resultPtr)
    {
        string err = NativeMethods.TakeString(resultPtr);
        if (!string.IsNullOrEmpty(err)) throw new VcrException(err);
    }

    public void Dispose()
    {
        if (_handle == IntPtr.Zero) return;
        IntPtr h = _handle;
        _handle = IntPtr.Zero;

        if (!_recordMode)
        {
            NativeMethods.Stop(h);
            return;
        }

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
