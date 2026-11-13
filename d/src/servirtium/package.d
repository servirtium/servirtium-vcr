/**
 * servirtium — the D binding over libservirtium_vcr.
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
 * One libservirtium_vcr (`libservirtium_vcr`, written in Aether) exposes a flat C ABI of
 * `aether_vcr_embed_*` symbols; every language binding is a thin, ergonomic
 * surface over that ABI. This is the D one. It carries NO record/replay logic:
 * markdown parse/emit, the HTTP server, request matching, redactions and drift
 * detection all live in the in-repo `core/vcr.ae` libservirtium_vcr.
 *
 * Why extern(C) + a real link (not a runtime dlopen): D compiles and links like
 * Nim/Zig/Go-cgo/Rust. The `.tests.ae` node passes
 * `-L-L../core/native -L-lservirtium_vcr -L-rpath ...` to dmd, so a test binary
 * finds libservirtium_vcr at build time and at run time.
 *
 * Every ABI call that returns a `char*` hands back a caller-owned string; it is
 * copied into a GC'd D `string` and freed via `aether_vcr_embed_free_string` by
 * `takeString`. Do not hold the raw pointer.
 */
module servirtium;

import std.exception : enforce;
import std.string : toStringz, fromStringz;
import std.conv : to;
import std.typecons : Nullable, nullable;
public import std.typecons : Nullable, nullable;

// ---- the flat C ABI (aether_vcr_embed_*) -----------------------------------
// Handle-based: N independent VCR servers can run concurrently in one process,
// each keyed by its own handle; an open_* always returns a handle (null only when
// out of memory) and a failed one carries its reason in open_error. Every handle
// is destroyed exactly once.

private extern (C) nothrow @nogc {
    // lifecycle
    void* aether_vcr_embed_open_playback(const(char)* label, const(char)* tape,
                                         const(char)* host, int port);
    void* aether_vcr_embed_open_playback_url(const(char)* label, const(char)* url,
                                             const(char)* host, int port);
    void* aether_vcr_embed_open_record(const(char)* label, const(char)* tape,
                                       const(char)* upstreamBase,
                                       const(char)* host, int port);
    char* aether_vcr_embed_secret_begin(void*, int);
    int aether_vcr_embed_secret_next(void*);
    char* aether_vcr_embed_secret_get(void*, int);
    int aether_vcr_embed_secret_interaction(void*);
    char* aether_vcr_embed_secret_apply(void*, const(char)*);
    char* aether_vcr_embed_secret_finish(void*);
    void aether_vcr_embed_secret_abort(void*);
    char* aether_vcr_embed_open_error(void* h);
    void  aether_vcr_embed_destroy(void* h);
    int   aether_vcr_embed_start(void* h);
    void  aether_vcr_embed_stop(void* h);
    char* aether_vcr_embed_stop_and_flush(void* h, const(char)* tape);
    char* aether_vcr_embed_stop_and_flush_fail_if_changed(void* h, const(char)* tape);
    char* aether_vcr_embed_stop_and_flush_or_check(void* h, const(char)* tape);
    char* aether_vcr_embed_discard(void* h, const(char)* tape);

    // introspection
    int   aether_vcr_embed_port(void* h);
    char* aether_vcr_embed_base_url(void* h, const(char)* host);
    int   aether_vcr_embed_tape_length(void* h);
    void  aether_vcr_embed_reset_cursor(void* h);

    // diagnostics
    char* aether_vcr_embed_last_error(void* h);
    char* aether_vcr_embed_last_error_ex(void* h, int consume);
    char* aether_vcr_embed_diagnostics_json(void* h, int consume);
    char* aether_vcr_embed_assert_no_mismatches(void* h);
    void aether_vcr_embed_test_context(void* h, const(char)* name, const(char)* file, int line);
    int   aether_vcr_embed_last_kind(void* h);
    int   aether_vcr_embed_last_index(void* h);
    void  aether_vcr_embed_clear_last_error(void* h);

    // config
    char* aether_vcr_embed_redact(void* h, int field, const(char)* pat, const(char)* repl);
    char* aether_vcr_embed_redact_header(void* h, int field, const(char)* pat, const(char)* repl);
    char* aether_vcr_embed_redact_query_param(void* h, int field, const(char)* pat, const(char)* repl);
    char* aether_vcr_embed_redact_json_field(void* h, int field, const(char)* pat, const(char)* repl);
    char* aether_vcr_embed_unredact(void* h, int field, const(char)* pat, const(char)* repl);
    char* aether_vcr_embed_volatile_rule(void* h, const(char)* scope_, const(char)* kind, const(char)* pattern);
    char* aether_vcr_embed_volatile_bind(void* h, const(char)* name_or_token, const(char)* value);
    char* aether_vcr_embed_volatile_profile(void* h, const(char)* path);
    char* aether_vcr_embed_set_volatile_markers(void* h, int style);
    char* aether_vcr_embed_volatile_report(void* h);
    char* aether_vcr_embed_redact_whole_tape(void* h, const(char)* pat, const(char)* repl);
    char* aether_vcr_embed_remove_header(void* h, int field, const(char)* name);
    char* aether_vcr_embed_match_header(void* h, const(char)* name);
    char* aether_vcr_embed_note(void* h, const(char)* k, const(char)* v);
    char* aether_vcr_embed_static_content(void* h, const(char)* mount, const(char)* dir);
    char* aether_vcr_embed_untaped(void* h, const(char)* path);
    void  aether_vcr_embed_strict_ignore_common_headers(void* h);
    void  aether_vcr_embed_ignore_volatile_headers(void* h);
    void  aether_vcr_embed_set_strict_headers(void* h, int on);
    void  aether_vcr_embed_set_match_json_body(void* h, int on);
    void  aether_vcr_embed_set_match_xml_body(void* h, int on);
    void  aether_vcr_embed_set_match_multiple(void* h, int on);
    void  aether_vcr_embed_indent_code_blocks(void* h);
    void  aether_vcr_embed_emphasize_http_verbs(void* h);
    void  aether_vcr_embed_set_pretty_xml(void* h, int indent);
    void  aether_vcr_embed_set_pretty_json(void* h, int indent);
    int   aether_vcr_embed_get_pretty_json(void* h);
    char* aether_vcr_embed_remove_transport_headers(void* h);
    char* aether_vcr_embed_remove_cloud_headers(void* h, const(char)* vendor);
    char* aether_vcr_embed_redact_credentials(void* h);
    char* aether_vcr_embed_redact_credential_header(void* h, const(char)* name);
    char* aether_vcr_embed_set_upstream_cafile(void* h, const(char)* path);
    char* aether_vcr_embed_add_license_notice(void* h, const(char)* text);
    void  aether_vcr_embed_set_sort_json_keys(void* h, int on);
    int   aether_vcr_embed_get_sort_json_keys(void* h);
    char* aether_vcr_embed_sort_json_array(void* h, const(char)* path, const(char)* by);
    char* aether_vcr_embed_sort_json_array_at(void* h, const(char)* request, const(char)* path, const(char)* by);
    void  aether_vcr_embed_set_sort_response_headers(void* h, int on);
    int   aether_vcr_embed_get_sort_response_headers(void* h);
    char* aether_vcr_embed_sort_header_value(void* h, const(char)* name);
    void  aether_vcr_embed_clear_stable_order(void* h);
    char* aether_vcr_embed_set_playback_range(void* h, int from, int to);
    void  aether_vcr_embed_clear_playback_range(void* h);
    int   aether_vcr_embed_get_playback_range_from(void* h);
    int   aether_vcr_embed_get_playback_range_to(void* h);
    void  aether_vcr_embed_clear_redactions(void* h);
    void  aether_vcr_embed_clear_unredactions(void* h);
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

/// Token markers for volatile values; set BEFORE any rule.
enum VolatileMarkers : int {
    mustache = 0,
    dollarCurly = 1,
    wikilink = 2,
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
struct SecretRequest {
    string method, path, location, format, fieldPath;
    int interaction;
}
alias SecretRedactor = Nullable!string delegate(string, SecretRequest);
alias SecretResolver = Nullable!string delegate(string);
private void secretStage(void* h, SecretRedactor redactor, SecretResolver resolver) {
    scope(failure) { aether_vcr_embed_secret_abort(h); aether_vcr_embed_stop(h); }
    check(aether_vcr_embed_secret_begin(h, resolver is null ? 0 : 1), "secretBegin");
    string get(int part) { return takeString(aether_vcr_embed_secret_get(h, part)); }
    while (true) {
        auto next = aether_vcr_embed_secret_next(h);
        enforce(next >= 0, new VcrException("Secret staging aborted"));
        if (next == 0) break;
        auto value = resolver is null ? redactor(get(1), SecretRequest(get(3), get(4), get(5), get(6), get(7), aether_vcr_embed_secret_interaction(h))) : resolver(get(2));
        if (!value.isNull) check(aether_vcr_embed_secret_apply(h, value.get.toStringz), "secretApply");
    }
    check(aether_vcr_embed_secret_finish(h), "secretFinish");
}

struct Vcr {
    private void* handle;
    private string host;
    private string tape;
    private bool closed;
    private SecretRedactor secretRedactorCallback;
    ref Vcr secretRedactor(SecretRedactor callback) { secretRedactorCallback = callback; return this; }


    @disable this(this);          // one owner per handle

    private this(void* handle, string host, string tape) {
        this.handle = handle;
        this.host = host;
        this.tape = tape;
    }

    // ---- lifecycle -------------------------------------------------------

    /// Replay a Servirtium markdown tape from disk.
    static Vcr playback(string tapePath, string host = "127.0.0.1", int port = 0, SecretResolver secretResolver = null) {
        auto h = aether_vcr_embed_open_playback("", tapePath.toStringz,
                                                host.toStringz, port);
        return Vcr(started(h, "playback open failed: " ~ tapePath, secretResolver), host, tapePath);
    }

    /// Open a playback VCR WITHOUT starting it: give rules and `bind` first, then
    /// `start()` (a response token no request binds needs a bind before start).
    static Vcr playbackUnstarted(string tapePath, string host = "127.0.0.1", int port = 0) {
        auto h = aether_vcr_embed_open_playback("", tapePath.toStringz,
                                                host.toStringz, port);
        if (h is null) throw new VcrException("playback open failed: out of memory");
        const why = takeString(aether_vcr_embed_open_error(h));
        if (why.length) {
            aether_vcr_embed_destroy(h);
            throw new VcrException("playback open failed: " ~ why);
        }
        return Vcr(h, host, tapePath);
    }

    /// Start an unstarted VCR; throws VcrException with the core's reason (the
    /// tape-wide volatile checks run here). The VCR is still to be closed.
    void start() {
        if (aether_vcr_embed_start(handle) < 0) {
            const detail = takeString(aether_vcr_embed_last_error(handle));
            throw new VcrException(detail.length ? "start: " ~ detail : "start failed");
        }
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

    /// Check the open, stage resolver secrets, and start the handle, destroying
    /// it and throwing (with the native reason) rather than handing back a dead
    /// server. Shared by every open above.
    private static void* started(void* h, string failure, SecretResolver secretResolver = null) {
        if (h is null) throw new VcrException(failure ~ ": out of memory");
        const why = takeString(aether_vcr_embed_open_error(h));
        if (why.length) {
            aether_vcr_embed_destroy(h);
            throw new VcrException(failure ~ ": " ~ why);
        }
        scope(failure) aether_vcr_embed_destroy(h);
        if (secretResolver !is null) secretStage(h, null, secretResolver);
        if (aether_vcr_embed_start(h) < 0) {
            const detail = takeString(aether_vcr_embed_last_error(h));
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
    string lastError(bool consume = true) { return takeString(aether_vcr_embed_last_error_ex(handle, consume ? 1 : 0)); }

    /// Tape index of the most-recent matched interaction, or -1.
    int lastIndex() { return aether_vcr_embed_last_index(handle); }

    string diagnosticsJson(bool consume = false) { return takeString(aether_vcr_embed_diagnostics_json(handle, consume ? 1 : 0)); }
    void assertNoMismatches() { check(aether_vcr_embed_assert_no_mismatches(handle), "assertNoMismatches"); }
    void testContext(string name, string sourceFile = "", int sourceLine = 0) {
        aether_vcr_embed_test_context(handle, name.toStringz, sourceFile.toStringz, sourceLine);
    }
    void clearLastError() { aether_vcr_embed_clear_last_error(handle); }

    // ---- config (each throws VcrException if libservirtium_vcr rejects it) ------

    void redact(Field field, string pattern, string replacement) {
        check(aether_vcr_embed_redact(handle, field, pattern.toStringz,
                                      replacement.toStringz), "redact");
    }

    void redactHeader(string name, string replacement = "[REDACTED]", Field field = cast(Field)3) {
        check(aether_vcr_embed_redact_header(handle, field, name.toStringz, replacement.toStringz), "redactHeader");
    }

    void redactQueryParam(string name, string replacement = "[REDACTED]", Field field = cast(Field)1) {
        check(aether_vcr_embed_redact_query_param(handle, field, name.toStringz, replacement.toStringz), "redactQueryParam");
    }

    void redactJsonField(string name, string replacement = "[REDACTED]", Field field = cast(Field)4) {
        check(aether_vcr_embed_redact_json_field(handle, field, name.toStringz, replacement.toStringz), "redactJsonField");
    }

    void unredact(Field field, string pattern, string replacement) {
        check(aether_vcr_embed_unredact(handle, field, pattern.toStringz,
                                        replacement.toStringz), "unredact");
    }

    /// Volatile values (docs/volatile-values.md). A rule names a scope and a
    /// pattern holding {{name}} placeholders; the tape holds tokens {{name-N}}.
    /// Each throws VcrException with the core's message. (Not `volatile`: a D
    /// keyword.)
    void volatileMarkers(VolatileMarkers style) {
        check(aether_vcr_embed_set_volatile_markers(handle, style), "volatileMarkers");
    }

    /// `kind` is "template" (default) or "regex".
    void volatileRule(string scope_, string pattern, string kind = "template") {
        check(aether_vcr_embed_volatile_rule(handle, scope_.toStringz, kind.toStringz, pattern.toStringz), "volatileRule");
    }

    /// Attach a real value to a placeholder name or a token.
    void bind(string nameOrToken, string value) {
        check(aether_vcr_embed_volatile_bind(handle, nameOrToken.toStringz, value.toStringz), "bind");
    }

    /// Load the rules of a profile file.
    void volatileProfile(string path) {
        check(aether_vcr_embed_volatile_profile(handle, path.toStringz), "volatileProfile");
    }

    /// The rules in force, the token bindings seen and any warnings.
    string volatileReport() { return takeString(aether_vcr_embed_volatile_report(handle)); }

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

    /// Drop the per-request volatile headers modern clients inject on every call
    /// (traceparent, tracestate, Request-Id, X-Request-Id, X-Correlation-Id,
    /// baggage) from both sides before matching — the companion to
    /// strictIgnoreCommonHeaders for tracing / correlation noise.
    void ignoreVolatileHeaders() {
        aether_vcr_embed_ignore_volatile_headers(handle);
    }

    /// Opt-in header presets: each registers ordinary rules, listed under the
    /// preset's name in the recording-rules footer. Throw on failure.

    /// Leave the connection-describing headers (Host, Connection, Content-Length
    /// and the other hop-by-hop headers, Accept-Encoding) out of the recording.
    void removeTransportHeaders() {
        check(aether_vcr_embed_remove_transport_headers(handle), "removeTransportHeaders");
    }

    /// Drop a cloud vendor's per-request headers; vendor is one of "aws",
    /// "azure", "cloudflare", "fastly", "gcp".
    void removeCloudHeaders(string vendor) {
        check(aether_vcr_embed_remove_cloud_headers(handle, vendor.toStringz),
              "removeCloudHeaders");
    }

    /// Redact the common credential headers (Authorization, Cookie, Set-Cookie,
    /// X-Api-Key, X-Auth-Token, ...) as numbered tokens. Register on the
    /// playback handle too, as with every rule.
    void redactCredentials() {
        check(aether_vcr_embed_redact_credentials(handle), "redactCredentials");
    }

    /// One more credential header with the same treatment.
    void redactCredentialHeader(string name) {
        check(aether_vcr_embed_redact_credential_header(handle, name.toStringz),
              "redactCredentialHeader");
    }

    /// Record mode: verify an https upstream against this PEM CA file.
    void setUpstreamCafile(string path) {
        check(aether_vcr_embed_set_upstream_cafile(handle, path.toStringz),
              "setUpstreamCafile");
    }

    /// Record mode: put text under "## LICENSE NOTICE" at the top of each tape;
    /// playback ignores it.
    void addLicenseNotice(string text) {
        check(aether_vcr_embed_add_license_notice(handle, text.toStringz),
              "addLicenseNotice");
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

    /// Opt-in: the SOAP/XML twin of setMatchJsonBody — a byte-differing request
    /// body gets a second chance at semantic XML equality (attribute order +
    /// insignificant whitespace ignored; element order significant). A non-XML
    /// body always falls back to the byte-exact verdict.
    void setMatchXmlBody(bool on = true) {
        aether_vcr_embed_set_match_xml_body(handle, on ? 1 : 0);
    }

    /// Opt-in: search ALL interactions for one that fits and replay it WITHOUT
    /// consuming it, so repeated and out-of-order requests both match.
    void setMatchMultiple(bool on = true) {
        aether_vcr_embed_set_match_multiple(handle, on ? 1 : 0);
    }

    void indentCodeBlocks() { aether_vcr_embed_indent_code_blocks(handle); }
    void emphasizeHttpVerbs() { aether_vcr_embed_emphasize_http_verbs(handle); }
    /// Shared XML layout setting: format recorded request and response bodies; match XML requests on playback (indent 1..16; 0 = off). Falls back to byte-exact if the body isn't well-formed XML.
    void prettyXml(int indent = 2) { aether_vcr_embed_set_pretty_xml(handle, indent); }
    /// Format recorded JSON request and response bodies, keeping key order and number spellings; playback matches JSON request layout.
    void prettyJson(int indent = 2) { aether_vcr_embed_set_pretty_json(handle, indent); }
    /// Current pretty-JSON indent (0 = off).
    int getPrettyJson() { return aether_vcr_embed_get_pretty_json(handle); }

    /// Opt-in stable order (record side; all off by default, the tape is
    /// byte-exact without them). Sorted JSON is only written pretty-printed:
    /// with a JSON sort rule and no prettyJson(), flush() throws a
    /// VcrException "sort_json_keys needs pretty_json: ..." and writes nothing.

    /// Sort JSON object keys at every depth in recorded JSON response bodies.
    void setSortJsonKeys(bool on = true) { aether_vcr_embed_set_sort_json_keys(handle, on ? 1 : 0); }
    /// Whether JSON object keys are sorted (setSortJsonKeys).
    bool getSortJsonKeys() { return aether_vcr_embed_get_sort_json_keys(handle) != 0; }

    /// Sort the JSON response arrays `path` selects (JSON pointer from the root,
    /// "*" for one segment, "" the root array, or a bare member name) by member
    /// `by` ("" = each element's canonical JSON). Throws if the rule is refused.
    void sortJsonArray(string path, string by = "") {
        check(aether_vcr_embed_sort_json_array(handle, path.toStringz, by.toStringz), "sortJsonArray");
    }

    /// The same, only for requests whose path (query included) matches the
    /// regex `request`. Throws if the rule is refused.
    void sortJsonArrayAt(string request, string path, string by = "") {
        check(aether_vcr_embed_sort_json_array_at(handle, request.toStringz, path.toStringz, by.toStringz),
              "sortJsonArrayAt");
    }

    /// Sort response header lines by name (case-insensitive).
    void setSortResponseHeaders(bool on = true) { aether_vcr_embed_set_sort_response_headers(handle, on ? 1 : 0); }
    /// Whether response header lines are sorted (setSortResponseHeaders).
    bool getSortResponseHeaders() { return aether_vcr_embed_get_sort_response_headers(handle) != 0; }

    /// Sort one response header's comma-separated items ("Allow"). Throws if refused.
    void sortHeaderValue(string name) {
        check(aether_vcr_embed_sort_header_value(handle, name.toStringz), "sortHeaderValue");
    }

    /// Turn every stable-order rule off.
    void clearStableOrder() { aether_vcr_embed_clear_stable_order(handle); }

    /// Playback only: replay just interactions `from`..`to` of the tape (the
    /// numbers of its "## Interaction N" headings, 0-based, inclusive; `to < 0`
    /// = through the last). Throws on a record handle (a recording always
    /// captures the whole conversation) or a bad range. Call after opening,
    /// before traffic.
    void setPlaybackRange(int from, int to = -1) {
        check(aether_vcr_embed_set_playback_range(handle, from, to), "setPlaybackRange");
    }
    /// Replay the whole tape again.
    void clearPlaybackRange() { aether_vcr_embed_clear_playback_range(handle); }
    /// The range's ends; -1 when none is set.
    int getPlaybackRangeFrom() { return aether_vcr_embed_get_playback_range_from(handle); }
    int getPlaybackRangeTo() { return aether_vcr_embed_get_playback_range_to(handle); }
    void clearRedactions() { aether_vcr_embed_clear_redactions(handle); }
    void clearUnredactions() { aether_vcr_embed_clear_unredactions(handle); }
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
        aether_vcr_embed_destroy(handle);
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

    /// Stop the server and DROP the captured recording WITHOUT writing a tape.
    /// Call on a test's failure path so a half-finished recording never becomes
    /// a tape that later replays as the truth. Idempotent.
    void discard(string tapePath = null) {
        if (closed) return;
        closed = true;
        scope(exit) aether_vcr_embed_destroy(handle);
        const target = tapePath !is null ? tapePath : (tape !is null ? tape : "");
        check(aether_vcr_embed_discard(handle, target.toStringz), "discard");
    }

    /// The three flush variants differ only in the ABI call, so they share this.
    private void flushVia(string tapePath, FlushFn call) {
        if (closed) return;
        closed = true;
        scope(exit) aether_vcr_embed_destroy(handle);
        if (secretRedactorCallback !is null) secretStage(handle, secretRedactorCallback, null);
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
