using System;
using System.Runtime.InteropServices;

namespace Servirtium.Vcr;

/// <summary>
/// Field selector for redactions / unredactions / header removals.
/// Values mirror the FIELD_* constants in std/http/server/vcr/module.ae.
/// </summary>
public enum VcrField
{
    Path = 1,
    ResponseBody = 2,
    RequestHeaders = 3,
    RequestBody = 4,
    ResponseHeaders = 5,
}

/// <summary>
/// Per-dispatch outcome. Values mirror the VCR_KIND_* constants in
/// aether_vcr.c / module.ae. Drain after a request to assert what the
/// dispatcher decided.
/// </summary>
public enum VcrOutcome
{
    Ok = 0,
    PathOrMethodDiff = 1,
    HeaderMissing = 2,
    HeaderValueDiff = 3,
    HeaderUnexpected = 4,
    TapeExhausted = 5,
    BodyDiff = 6,
    RecordError = 7,
}

/// <summary>
/// Raw P/Invoke surface over the native VCR library. 1:1 with the
/// <c>aether_vcr_embed_*</c> C-ABI exported by
/// <c>std/http/server/vcr/embed.ae</c> (Aether v0.182.0).
///
/// v1 contract (matching the Aether side): ONE active VCR server per
/// process — the tape/cursor/mutation state is process-global, so the
/// diagnostics, tape-length, and mutation calls take no handle.
/// Returned <c>char*</c> values are caller-owned and NUL-terminated;
/// free them with <see cref="FreeString"/> (see <see cref="TakeString"/>).
/// </summary>
internal static class NativeMethods
{
    /// <summary>
    /// Native library base name. .NET resolves this to
    /// libservirtium_vcr.so / .dylib / servirtium_vcr.dll via the
    /// runtimes/&lt;rid&gt;/native NuGet layout (and the dev-time
    /// resolver in <see cref="NativeLoader"/>).
    /// </summary>
    internal const string Lib = "servirtium_vcr";

    // ---- lifecycle -----------------------------------------------------

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_open_playback", CharSet = CharSet.Ansi)]
    internal static extern IntPtr OpenPlayback(string label, string tapePath, string host, int port);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_open_playback_url", CharSet = CharSet.Ansi)]
    internal static extern IntPtr OpenPlaybackUrl(string label, string tapeUrl, string host, int port);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_open_record", CharSet = CharSet.Ansi)]
    internal static extern IntPtr OpenRecord(string label, string tapePath, string upstreamBase, string host, int port);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_start")]
    internal static extern int Start(IntPtr server);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_stop")]
    internal static extern void Stop(IntPtr server);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_stop_and_flush", CharSet = CharSet.Ansi)]
    internal static extern IntPtr StopAndFlush(IntPtr server, string tapePath);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_stop_and_flush_fail_if_changed", CharSet = CharSet.Ansi)]
    internal static extern IntPtr StopAndFlushFailIfChanged(IntPtr server, string tapePath);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_stop_and_flush_or_check", CharSet = CharSet.Ansi)]
    internal static extern IntPtr StopAndFlushOrCheck(IntPtr server, string tapePath);

    // ---- introspection -------------------------------------------------

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_port")]
    internal static extern int Port(IntPtr server);

    // base_url builds "http://<host>:<port>"; the server doesn't store the host.
    [DllImport(Lib, EntryPoint = "aether_vcr_embed_base_url", CharSet = CharSet.Ansi)]
    internal static extern IntPtr BaseUrl(IntPtr server, string host);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_tape_length")]
    internal static extern int TapeLength(IntPtr server);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_reset_cursor")]
    internal static extern void ResetCursor(IntPtr server);

    // ---- diagnostics (handle-based) ------------------------------------

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_last_error")]
    internal static extern IntPtr LastError(IntPtr server);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_last_kind")]
    internal static extern int LastKind(IntPtr server);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_last_index")]
    internal static extern int LastIndex(IntPtr server);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_clear_last_error")]
    internal static extern void ClearLastError(IntPtr server);

    // ---- mutations / config (call BEFORE start; return "" or an error) -

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_redact", CharSet = CharSet.Ansi)]
    internal static extern IntPtr Redact(IntPtr server, int field, string pattern, string replacement);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_normalize_whole_tape", CharSet = CharSet.Ansi)]
    internal static extern IntPtr NormalizeWholeTape(IntPtr server, string pattern, string name);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_redact_whole_tape", CharSet = CharSet.Ansi)]
    internal static extern IntPtr RedactWholeTape(IntPtr server, string pattern, string replacement);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_unredact", CharSet = CharSet.Ansi)]
    internal static extern IntPtr Unredact(IntPtr server, int field, string pattern, string replacement);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_remove_header", CharSet = CharSet.Ansi)]
    internal static extern IntPtr RemoveHeader(IntPtr server, int field, string name);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_strict_ignore_common_headers", CharSet = CharSet.Ansi)]
    internal static extern IntPtr StrictIgnoreCommonHeaders(IntPtr server);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_note", CharSet = CharSet.Ansi)]
    internal static extern IntPtr Note(IntPtr server, string title, string body);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_static_content", CharSet = CharSet.Ansi)]
    internal static extern IntPtr StaticContent(IntPtr server, string mountPath, string fsDir);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_untaped", CharSet = CharSet.Ansi)]
    internal static extern IntPtr Untaped(IntPtr server, string path);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_set_strict_headers")]
    internal static extern void SetStrictHeaders(IntPtr server, int on);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_indent_code_blocks")]
    internal static extern void IndentCodeBlocks(IntPtr server);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_emphasize_http_verbs")]
    internal static extern void EmphasizeHttpVerbs(IntPtr server);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_clear_redactions")]
    internal static extern void ClearRedactions(IntPtr server);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_clear_unredactions")]
    internal static extern void ClearUnredactions(IntPtr server);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_clear_header_removals")]
    internal static extern void ClearHeaderRemovals(IntPtr server);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_clear_static_content")]
    internal static extern void ClearStaticContent(IntPtr server);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_clear_untaped")]
    internal static extern void ClearUntaped(IntPtr server);

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_clear_format_options")]
    internal static extern void ClearFormatOptions(IntPtr server);

    // ---- string ownership ----------------------------------------------

    [DllImport(Lib, EntryPoint = "aether_vcr_embed_free_string")]
    internal static extern void FreeString(IntPtr s);

    /// <summary>
    /// Marshal a caller-owned native char* into a managed string and free
    /// it via <c>aether_vcr_embed_free_string</c>, per the ABI's ownership
    /// rule. Returns <see cref="string.Empty"/> for a NULL pointer.
    /// </summary>
    internal static string TakeString(IntPtr ptr)
    {
        if (ptr == IntPtr.Zero) return string.Empty;
        try
        {
            return Marshal.PtrToStringAnsi(ptr) ?? string.Empty;
        }
        finally
        {
            FreeString(ptr);
        }
    }
}
