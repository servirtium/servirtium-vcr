/**
 * servirtium — the D binding over the shared pure-Aether VCR engine.
 *
 * Servirtium records an HTTP conversation to a human-readable markdown tape
 * once, then replays it forever — offline, deterministic, git-diffable. Point
 * your system-under-test at `vcr.baseUrl` and drive it with plain HTTP.
 *
 * ---
 * auto vcr = Vcr.playback("tapes/single_get.md");
 * scope (exit) vcr.close();
 * auto body_ = httpGet(vcr.baseUrl ~ "/ok");
 * assert(body_ == "ok-body");
 * assert(vcr.lastKind == Outcome.ok);
 * ---
 *
 * One engine (`libservirtium_vcr`, written in Aether) exposes a flat C ABI of
 * `aether_vcr_embed_*` symbols; every language binding is a thin, ergonomic
 * surface over that ABI. This is the D one. It carries NO record/replay logic:
 * markdown parse/emit, the HTTP server, request matching, redactions and drift
 * detection all live in the in-repo `core/vcr.ae` engine.
 *
 * Why extern(C) + a real link (not a runtime dlopen): D compiles and links like
 * Nim/Zig/Go-cgo/Rust. The `.tests.ae` node passes
 * `-L-L../core/native -L-lservirtium_vcr -L-rpath ...` to dmd, so a test binary
 * finds the engine at build time and at run time.
 *
 * Every ABI call that returns a `char*` hands back a caller-owned string; it is
 * copied into a GC'd D `string` and freed via `aether_vcr_embed_free_string` by
 * `takeString`. Do not hold the raw pointer.
 */
module servirtium;

import std.exception : enforce;
import std.string : toStringz, fromStringz;
import std.conv : to;

// ---- the flat C ABI (aether_vcr_embed_*) -----------------------------------
// Handle-based: N independent VCR servers can run concurrently in one process,
// each keyed by its own handle; null from an open_* means failure.

private extern (C) nothrow @nogc {
    // lifecycle
    void* aether_vcr_embed_open_playback(const(char)* label, const(char)* tape,
                                         const(char)* host, int port);
    void* aether_vcr_embed_open_playback_url(const(char)* label, const(char)* url,
                                             const(char)* host, int port);
    void* aether_vcr_embed_open_record(const(char)* label, const(char)* tape,
                                       const(char)* upstreamBase,
                                       const(char)* host, int port);
    int   aether_vcr_embed_start(void* h);
    void  aether_vcr_embed_stop(void* h);
    char* aether_vcr_embed_stop_and_flush(void* h, const(char)* tape);
    char* aether_vcr_embed_stop_and_flush_fail_if_changed(void* h, const(char)* tape);
    char* aether_vcr_embed_stop_and_flush_or_check(void* h, const(char)* tape);

    // introspection
    int   aether_vcr_embed_port(void* h);
    char* aether_vcr_embed_base_url(void* h, const(char)* host);
    int   aether_vcr_embed_tape_length(void* h);
    void  aether_vcr_embed_reset_cursor(void* h);

    // diagnostics
    char* aether_vcr_embed_last_error(void* h);
    int   aether_vcr_embed_last_kind(void* h);
    int   aether_vcr_embed_last_index(void* h);
    void  aether_vcr_embed_clear_last_error(void* h);

    // config
    char* aether_vcr_embed_redact(void* h, int field, const(char)* pat, const(char)* repl);
    char* aether_vcr_embed_unredact(void* h, int field, const(char)* pat, const(char)* repl);
    char* aether_vcr_embed_normalize_whole_tape(void* h, const(char)* pat, const(char)* name);
    char* aether_vcr_embed_redact_whole_tape(void* h, const(char)* pat, const(char)* repl);
    char* aether_vcr_embed_remove_header(void* h, int field, const(char)* name);
    char* aether_vcr_embed_match_header(void* h, const(char)* name);
    char* aether_vcr_embed_note(void* h, const(char)* k, const(char)* v);
    char* aether_vcr_embed_static_content(void* h, const(char)* mount, const(char)* dir);
    char* aether_vcr_embed_untaped(void* h, const(char)* path);
    void  aether_vcr_embed_strict_ignore_common_headers(void* h);
    void  aether_vcr_embed_set_strict_headers(void* h, int on);
    void  aether_vcr_embed_set_match_json_body(void* h, int on);
    void  aether_vcr_embed_set_match_multiple(void* h, int on);
    void  aether_vcr_embed_indent_code_blocks(void* h);
    void  aether_vcr_embed_emphasize_http_verbs(void* h);
    void  aether_vcr_embed_clear_redactions(void* h);
    void  aether_vcr_embed_clear_unredactions(void* h);
    void  aether_vcr_embed_clear_normalizations(void* h);
    void  aether_vcr_embed_clear_header_removals(void* h);
    void  aether_vcr_embed_clear_match_headers(void* h);
    void  aether_vcr_embed_clear_static_content(void* h);
    void  aether_vcr_embed_clear_untaped(void* h);
    void  aether_vcr_embed_clear_format_options(void* h);

    // converters (no handle)
    char* aether_vcr_embed_har_import(const(char)* harPath, const(char)* tapePath);
    char* aether_vcr_embed_har_export(const(char)* tapePath, const(char)* harPath);

    // every returned char* is released with this
    void  aether_vcr_embed_free_string(char* s);
}

/**
 * The shape of the three stop-and-flush ABI entry points, so `Vcr.flushVia`
 * can take whichever one a caller wants.
 *
 * It must be an ALIAS carrying `extern (C)` linkage: a D function-pointer type
 * defaults to D linkage, and dmd then refuses the ABI symbol ("cannot pass
 * argument ... of type extern (C) char* function ..."). `extern (C)` is also
 * not accepted inline in a parameter's type, so the alias is the way to say it.
 */
private alias FlushFn = extern (C) char* function(void*, const(char)*) nothrow @nogc;

/// Field selector for redactions / unredactions / header removals. Values
/// mirror the FIELD_* constants in core/vcr.ae.
enum Field : int {
    path = 1,
    responseBody = 2,
    requestHeaders = 3,
    requestBody = 4,
    responseHeaders = 5,
}

/// Per-dispatch outcome. Anything but `ok` is a mismatch. Values mirror the
/// VCR_KIND_* constants in core/vcr.ae.
enum Outcome : int {
    ok = 0,
    pathOrMethodDiff = 1,
    headerMissing = 2,
    headerValueDiff = 3,
    headerUnexpected = 4,
    tapeExhausted = 5,
    bodyDiff = 6,
    recordError = 7,
}

/// Thrown when a server can't be opened/started, or when a config call or a
/// record flush reports an error.
class VcrException : Exception {
    this(string msg, string file = __FILE__, size_t line = __LINE__) {
        super(msg, file, line);
    }
}

/// Adopt an owned char* from the ABI as a GC'd D string and release it — the
/// caller-owned-string discipline, discharged in exactly one place.
private string takeString(char* raw) {
    if (raw is null) return "";
    scope (exit) aether_vcr_embed_free_string(raw);
    return raw.fromStringz.idup;
}

/// A config call's owned error string; empty means OK, anything else throws.
private void check(char* raw, string what) {
    const err = takeString(raw);
    if (err.length) throw new VcrException(what ~ ": " ~ err);
}

/**
 * A running VCR server. One handle per instance, so N servers can run
 * concurrently in one process — one per port.
 *
 * A struct, not a class: it is a handle token, cheap to pass, and `scope (exit)
 * vcr.close()` is the idiomatic D scoping. Copying one would give two owners of
 * the same handle, so copying is disabled.
 */
struct Vcr {
    private void* handle;
    private string host;
    private string tape;
    private bool closed;

    @disable this(this);          // one owner per handle

    private this(void* handle, string host, string tape) {
        this.handle = handle;
        this.host = host;
        this.tape = tape;
    }

    // ---- lifecycle -------------------------------------------------------

    /// Replay a Servirtium markdown tape from disk.
    static Vcr playback(string tapePath, string host = "127.0.0.1", int port = 0) {
        auto h = aether_vcr_embed_open_playback("", tapePath.toStringz,
                                                host.toStringz, port);
        return Vcr(started(h, "playback open failed: " ~ tapePath), host, tapePath);
    }

    /// Replay a tape fetched from a URL rather than the filesystem.
    static Vcr playbackUrl(string tapeUrl, string host = "127.0.0.1", int port = 0) {
        auto h = aether_vcr_embed_open_playback_url("", tapeUrl.toStringz,
                                                    host.toStringz, port);
        return Vcr(started(h, "playback-url open failed: " ~ tapeUrl), host, null);
    }

    /// Record: forward each request to `upstreamBase`, return the live response
    /// to the SUT, and capture the exchange. Call `flush` to write the tape — a
    /// plain `close` discards the recording.
    static Vcr record(string tapePath, string upstreamBase,
                      string host = "127.0.0.1", int port = 0) {
        auto h = aether_vcr_embed_open_record("", tapePath.toStringz,
                                              upstreamBase.toStringz,
                                              host.toStringz, port);
        return Vcr(started(h, "record open failed: " ~ tapePath), host, tapePath);
    }

    /// Start an opened handle, cleaning up and throwing rather than handing back
    /// a dead server. Shared by every open above.
    private static void* started(void* h, string failure) {
        if (h is null) throw new VcrException(failure);
        if (aether_vcr_embed_start(h) < 0) {
            const detail = takeString(aether_vcr_embed_last_error(h));
            aether_vcr_embed_stop(h);
            throw new VcrException(detail.length ? failure ~ ": " ~ detail : failure);
        }
        return h;
    }

    // ---- introspection ---------------------------------------------------

    /// Base URL the SUT should target, e.g. "http://127.0.0.1:54213".
    string baseUrl() {
        return takeString(aether_vcr_embed_base_url(handle, host.toStringz));
    }

    /// The OS-resolved port the server is listening on.
    int port() { return aether_vcr_embed_port(handle); }

    /// Tape entry count (playback), or interactions captured so far (record).
    int tapeLength() { return aether_vcr_embed_tape_length(handle); }

    /// Rewind the playback cursor to the top of the tape.
    void resetCursor() { aether_vcr_embed_reset_cursor(handle); }

    // ---- diagnostics -----------------------------------------------------

    /// Outcome of the most-recent dispatch. `Outcome.ok` means a clean match.
    Outcome lastKind() { return cast(Outcome) aether_vcr_embed_last_kind(handle); }

    /// True when the most-recent dispatch matched cleanly.
    bool matchedCleanly() { return lastKind == Outcome.ok; }

    /// Most-recent dispatch diagnostic; "" when none flagged.
    string lastError() { return takeString(aether_vcr_embed_last_error(handle)); }

    /// Tape index of the most-recent matched interaction, or -1.
    int lastIndex() { return aether_vcr_embed_last_index(handle); }

    void clearLastError() { aether_vcr_embed_clear_last_error(handle); }

    // ---- config (each throws VcrException if the engine rejects it) ------

    void redact(Field field, string pattern, string replacement) {
        check(aether_vcr_embed_redact(handle, field, pattern.toStringz,
                                      replacement.toStringz), "redact");
    }

    void unredact(Field field, string pattern, string replacement) {
        check(aether_vcr_embed_unredact(handle, field, pattern.toStringz,
                                        replacement.toStringz), "unredact");
    }

    /// Correlate every match into {{name-N}} tokens (things that recur and must
    /// stay consistent across the whole tape — UUIDs, CSRF tokens).
    void normalizeWholeTape(string pattern, string name) {
        check(aether_vcr_embed_normalize_whole_tape(handle, pattern.toStringz,
                                                    name.toStringz),
              "normalizeWholeTape");
    }

    /// Collapse every match to one constant (variable-cardinality noise — dates).
    void redactWholeTape(string pattern, string replacement) {
        check(aether_vcr_embed_redact_whole_tape(handle, pattern.toStringz,
                                                 replacement.toStringz),
              "redactWholeTape");
    }

    void removeHeader(Field field, string name) {
        check(aether_vcr_embed_remove_header(handle, field, name.toStringz),
              "removeHeader");
    }

    /// Require this request header's live value to equal the recorded one. Also
    /// suppresses the automatic full-block header match unless strict headers
    /// are explicitly on — surgical, not all-or-nothing.
    void matchHeader(string name) {
        check(aether_vcr_embed_match_header(handle, name.toStringz), "matchHeader");
    }

    void note(string title, string body_) {
        check(aether_vcr_embed_note(handle, title.toStringz, body_.toStringz), "note");
    }

    void staticContent(string mountPath, string fsDir) {
        check(aether_vcr_embed_static_content(handle, mountPath.toStringz,
                                              fsDir.toStringz), "staticContent");
    }

    void untaped(string path) {
        check(aether_vcr_embed_untaped(handle, path.toStringz), "untaped");
    }

    void strictIgnoreCommonHeaders() {
        aether_vcr_embed_strict_ignore_common_headers(handle);
    }

    void setStrictHeaders(bool on = true) {
        aether_vcr_embed_set_strict_headers(handle, on ? 1 : 0);
    }

    /// Opt-in: a request body that differs byte-for-byte gets a second chance at
    /// semantic JSON equality (key order + whitespace ignored, array order
    /// significant). A non-JSON body always falls back to the byte-exact verdict.
    void setMatchJsonBody(bool on = true) {
        aether_vcr_embed_set_match_json_body(handle, on ? 1 : 0);
    }

    /// Opt-in: search ALL interactions for one that fits and replay it WITHOUT
    /// consuming it, so repeated and out-of-order requests both match.
    void setMatchMultiple(bool on = true) {
        aether_vcr_embed_set_match_multiple(handle, on ? 1 : 0);
    }

    void indentCodeBlocks() { aether_vcr_embed_indent_code_blocks(handle); }
    void emphasizeHttpVerbs() { aether_vcr_embed_emphasize_http_verbs(handle); }
    void clearRedactions() { aether_vcr_embed_clear_redactions(handle); }
    void clearUnredactions() { aether_vcr_embed_clear_unredactions(handle); }
    void clearNormalizations() { aether_vcr_embed_clear_normalizations(handle); }
    void clearHeaderRemovals() { aether_vcr_embed_clear_header_removals(handle); }
    void clearMatchHeaders() { aether_vcr_embed_clear_match_headers(handle); }
    void clearStaticContent() { aether_vcr_embed_clear_static_content(handle); }
    void clearUntaped() { aether_vcr_embed_clear_untaped(handle); }
    void clearFormatOptions() { aether_vcr_embed_clear_format_options(handle); }

    // ---- shutdown --------------------------------------------------------

    /// Stop the server, discarding any recording. Idempotent.
    void close() {
        if (closed) return;
        closed = true;
        aether_vcr_embed_stop(handle);
    }

    /// Stop and write the captured tape. `tapePath` defaults to the one the
    /// recorder was opened with. Idempotent.
    void flush(string tapePath = null) {
        flushVia(tapePath, &aether_vcr_embed_stop_and_flush);
    }

    /// As `flush`, but fails if the fresh recording differs from what is already
    /// on disk (drift detection for a checked-in tape).
    void flushFailIfChanged(string tapePath = null) {
        flushVia(tapePath, &aether_vcr_embed_stop_and_flush_fail_if_changed);
    }

    /// As `flush`, but only CHECKS against an existing tape instead of
    /// overwriting it when one is already present.
    void flushOrCheck(string tapePath = null) {
        flushVia(tapePath, &aether_vcr_embed_stop_and_flush_or_check);
    }

    /// The three flush variants differ only in the ABI call, so they share this.
    private void flushVia(string tapePath, FlushFn call) {
        if (closed) return;
        closed = true;
        const target = tapePath !is null ? tapePath : (tape !is null ? tape : "");
        check(call(handle, target.toStringz), "flush");
    }
}

// ---- converters (no server handle) --------------------------------------

/// HAR 1.2 capture -> Servirtium markdown tape. Throws VcrException on failure.
void harImport(string harPath, string tapePath) {
    check(aether_vcr_embed_har_import(harPath.toStringz, tapePath.toStringz),
          "harImport");
}

/// Servirtium markdown tape -> HAR 1.2 JSON. Throws VcrException on failure.
void harExport(string tapePath, string harPath) {
    check(aether_vcr_embed_har_export(tapePath.toStringz, harPath.toStringz),
          "harExport");
}
