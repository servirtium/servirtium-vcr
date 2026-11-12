// servirtium.hpp — the header-only C++ client for the shared pure-Aether VCR
// libservirtium_vcr.
//
// Servirtium records an HTTP conversation to a human-readable markdown tape
// once, then replays it forever — offline, deterministic, git-diffable. Point
// your system-under-test at base_url() and drive it with plain HTTP.
//
//     #include <servirtium.hpp>
//
//     {
//         auto vcr = servirtium::Vcr::playback("tapes/single_get.md");
//         auto body = http_get(vcr.base_url() + "/ok");   // your HTTP client
//         assert(body == "ok-body");
//         assert(vcr.last_kind() == servirtium::Outcome::Ok);
//     }   // <- destructor stops the server
//
// This is a header-only RAII wrapper over the C client (c/include/servirtium.h)
// — which is itself the thinnest ergonomic layer over libservirtium_vcr's flat C ABI.
// There is NO second FFI here: C++ links the C client's object (compiled AS C,
// so its extern "C" symbols aren't mangled) and the libservirtium_vcr.so. What C++ adds
// is exactly what C++ should add:
//
//   * RAII — the server is stopped by the destructor, on every path including
//     an exception, so a test can't leak a listener;
//   * std::string in, std::string out — the caller-owned char* discipline of
//     the ABI never reaches user code (no sv_free to forget);
//   * exceptions instead of NULL/error-string returns;
//   * enum class for Field and Outcome.
//
// It carries NO record/replay logic: markdown parse/emit, the HTTP server,
// request matching, redactions and drift detection all live in the in-repo
// Aether core/vcr.ae libservirtium_vcr.
//
// Portability: C++17, no dependencies beyond the C client + libservirtium_vcr.so.
// Thread-safety matches libservirtium_vcr: each Vcr owns an independent handle — N
// servers can run concurrently in one process, one per port — but don't share
// a single Vcr across threads without external synchronisation.
#ifndef SERVIRTIUM_CPP_HPP
#define SERVIRTIUM_CPP_HPP

#include <servirtium.h>

#include <stdexcept>
#include <string>
#include <utility>
#include <functional>
#include <memory>
#include <optional>
#include <exception>

namespace servirtium {

// Field selector for redactions / unredactions / header removals. Values
// mirror the C client's sv_field (and the FIELD_* constants in core/vcr.ae).
enum class Field {
    Path = SV_FIELD_PATH,
    ResponseBody = SV_FIELD_RESPONSE_BODY,
    RequestHeaders = SV_FIELD_REQUEST_HEADERS,
    RequestBody = SV_FIELD_REQUEST_BODY,
    ResponseHeaders = SV_FIELD_RESPONSE_HEADERS,
};

// Per-dispatch outcome. Anything but Ok is a mismatch.
enum class Outcome {
    Ok = SV_OK,
    PathOrMethodDiff = SV_PATH_OR_METHOD_DIFF,
    HeaderMissing = SV_HEADER_MISSING,
    HeaderValueDiff = SV_HEADER_VALUE_DIFF,
    HeaderUnexpected = SV_HEADER_UNEXPECTED,
    TapeExhausted = SV_TAPE_EXHAUSTED,
    BodyDiff = SV_BODY_DIFF,
    RecordError = SV_RECORD_ERROR,
};

// Thrown when a server can't be opened/started, or when a config call or a
// record flush reports an error.
class Error : public std::runtime_error {
public:
    explicit Error(const std::string& what) : std::runtime_error(what) {}
};

namespace detail {

// Adopt an owned sv_str as a std::string and release it — the ABI's
// caller-owned-string discipline, discharged exactly once, right here.
inline std::string take(sv_str s) {
    std::string out = (s.ptr != nullptr) ? std::string(s.ptr, s.len) : std::string();
    sv_free(s);
    return out;
}

// Config calls return an owned error string; empty means OK. Convert a
// non-empty one into an exception.
inline void check(sv_str s, const char* what) {
    std::string err = take(s);
    if (!err.empty()) throw Error(std::string(what) + ": " + err);
}

}  // namespace detail

// A running VCR server. Move-only: the handle has one owner, and the
// destructor stops it and frees the underlying VCR.
struct SecretRequest {
    std::string method, path, location, format, field_path;
    int interaction;
};
using SecretRedactor = std::function<std::optional<std::string>(const std::string&, const SecretRequest&)>;
using SecretResolver = std::function<std::optional<std::string>(const std::string&)>;

class Vcr {
public:
    static Vcr playback(const std::string& tape_path, SecretResolver resolver) {
        SecretContext context;
        context.resolver = std::move(resolver);
        sv_str err{nullptr, 0};
        auto h = sv_playback_with_secrets(tape_path.c_str(), "127.0.0.1", 0, resolve_secret, &context, &err);
        if (context.error) { sv_free(err); std::rethrow_exception(context.error); }
        return Vcr(opened(h, err, "playback"));
    }
    Vcr& secret_redactor(SecretRedactor callback) {
        if (vcr_ == nullptr) throw Error("Vcr is closed");
        secret_context_ = std::make_shared<SecretContext>();
        secret_context_->redactor = std::move(callback);
        sv_secret_redactor(vcr_, redact_secret, secret_context_.get());
        return *this;
    }
    // Replay a markdown tape from disk on an OS-chosen free port (127.0.0.1).
    static Vcr playback(const std::string& tape_path) {
        sv_str err{nullptr, 0};
        sv_vcr* h = sv_playback(tape_path.c_str(), &err);
        return Vcr(opened(h, err, "playback"));
    }

    // Replay a tape bound to a specific host/port. port 0 = OS-assigned.
    static Vcr playback_on(const std::string& tape_path, const std::string& host,
                           int port) {
        sv_str err{nullptr, 0};
        sv_vcr* h = sv_playback_on(tape_path.c_str(), host.c_str(), port, &err);
        return Vcr(opened(h, err, "playback"));
    }

    // Replay a tape fetched from a URL rather than the filesystem.
    static Vcr playback_url(const std::string& tape_url) {
        sv_str err{nullptr, 0};
        sv_vcr* h = sv_playback_url(tape_url.c_str(), &err);
        return Vcr(opened(h, err, "playback-url"));
    }

    // Record: forward each request to upstream_base, return the live response
    // to the SUT, and capture the exchange. Call flush() to write the tape —
    // a plain destructor discards the recording.
    static Vcr record(const std::string& tape_path, const std::string& upstream_base) {
        sv_str err{nullptr, 0};
        sv_vcr* h = sv_record(tape_path.c_str(), upstream_base.c_str(), &err);
        return Vcr(opened(h, err, "record"));
    }

    static Vcr record_on(const std::string& tape_path, const std::string& upstream_base,
                         const std::string& host, int port) {
        sv_str err{nullptr, 0};
        sv_vcr* h = sv_record_on(tape_path.c_str(), upstream_base.c_str(), host.c_str(),
                                 port, &err);
        return Vcr(opened(h, err, "record"));
    }

    Vcr(const Vcr&) = delete;
    Vcr& operator=(const Vcr&) = delete;

    Vcr(Vcr&& other) noexcept : secret_context_(std::move(other.secret_context_)), vcr_(other.vcr_) { other.vcr_ = nullptr; }

    Vcr& operator=(Vcr&& other) noexcept {
        if (this != &other) {
            close();
            vcr_ = other.vcr_;
            secret_context_ = std::move(other.secret_context_);
            other.vcr_ = nullptr;
        }
        return *this;
    }

    ~Vcr() { close(); }

    // ---- introspection ---------------------------------------------------

    // Base URL the SUT should target, e.g. "http://127.0.0.1:54213".
    std::string base_url() const { return detail::take(sv_base_url(vcr_)); }

    // The OS-resolved port the server is listening on.
    int port() const { return sv_port(vcr_); }

    // Tape entry count (playback), or interactions captured so far (record).
    int tape_length() const { return sv_tape_length(vcr_); }

    // Rewind the playback cursor to the top of the tape.
    void reset_cursor() { sv_reset_cursor(vcr_); }

    // ---- diagnostics (read after a request) ------------------------------

    // Outcome of the most-recent dispatch. Ok means a clean match.
    Outcome last_kind() const { return static_cast<Outcome>(sv_last_kind(vcr_)); }

    // Most-recent dispatch diagnostic; "" when none flagged.
    std::string last_error(bool consume = true) const { return detail::take(sv_last_error_ex(vcr_, consume)); }

    // Tape index of the most-recent matched interaction, or -1.
    int last_index() const { return sv_last_index(vcr_); }

    // True when the most-recent dispatch matched cleanly — the assertion most
    // tests actually want.
    bool matched_cleanly() const { return last_kind() == Outcome::Ok; }

    std::string diagnostics_json(bool consume = false) const { return detail::take(sv_diagnostics_json(vcr_, consume)); }
    void assert_no_mismatches() const { detail::check(sv_assert_no_mismatches(vcr_), "assert_no_mismatches"); }
    void test_context(const std::string& name, const std::string& file = "", int line = 0) {
        sv_test_context(vcr_, name.c_str(), file.c_str(), line);
    }

    void clear_last_error() { sv_clear_last_error(vcr_); }

    // ---- configuration ---------------------------------------------------
    // Each throws Error if libservirtium_vcr rejects it. Apply after construction and
    // before driving the SUT.

    void redact(Field field, const std::string& pattern, const std::string& replacement) {
        detail::check(sv_redact(vcr_, static_cast<sv_field>(field), pattern.c_str(),
                                replacement.c_str()),
                      "redact");
    }

    void redact_header(const std::string& name, const std::string& replacement = "[REDACTED]", Field field = static_cast<Field>(3)) {
        detail::check(sv_redact_header_with(vcr_, static_cast<sv_field>(field), name.c_str(), replacement.c_str()), "redact_header");
    }

    void redact_query_param(const std::string& name, const std::string& replacement = "[REDACTED]", Field field = static_cast<Field>(1)) {
        detail::check(sv_redact_query_param_with(vcr_, static_cast<sv_field>(field), name.c_str(), replacement.c_str()), "redact_query_param");
    }

    void redact_json_field(const std::string& name, const std::string& replacement = "[REDACTED]", Field field = static_cast<Field>(4)) {
        detail::check(sv_redact_json_field_with(vcr_, static_cast<sv_field>(field), name.c_str(), replacement.c_str()), "redact_json_field");
    }

    void unredact(Field field, const std::string& pattern, const std::string& replacement) {
        detail::check(sv_unredact(vcr_, static_cast<sv_field>(field), pattern.c_str(),
                                  replacement.c_str()),
                      "unredact");
    }

    // Correlate every match into {{name-N}} tokens (things that recur and must
    // stay consistent across the whole tape — UUIDs, CSRF tokens).
    void normalize_whole_tape(const std::string& pattern, const std::string& name) {
        detail::check(sv_normalize_whole_tape(vcr_, pattern.c_str(), name.c_str()),
                      "normalize_whole_tape");
    }

    // Collapse every match to one constant (variable-cardinality noise — dates).
    void redact_whole_tape(const std::string& pattern, const std::string& replacement) {
        detail::check(sv_redact_whole_tape(vcr_, pattern.c_str(), replacement.c_str()),
                      "redact_whole_tape");
    }

    void remove_header(Field field, const std::string& name) {
        detail::check(sv_remove_header(vcr_, static_cast<sv_field>(field), name.c_str()),
                      "remove_header");
    }

    void note(const std::string& title, const std::string& body) {
        detail::check(sv_note(vcr_, title.c_str(), body.c_str()), "note");
    }

    void static_content(const std::string& mount_path, const std::string& fs_dir) {
        detail::check(sv_static_content(vcr_, mount_path.c_str(), fs_dir.c_str()),
                      "static_content");
    }

    void untaped(const std::string& path) {
        detail::check(sv_untaped(vcr_, path.c_str()), "untaped");
    }

    // Require this request header's live value to equal the recorded one. Also
    // suppresses the automatic full-block header match unless strict headers
    // are explicitly on — surgical, not all-or-nothing.
    void match_header(const std::string& name) {
        detail::check(sv_match_header(vcr_, name.c_str()), "match_header");
    }

    void strict_ignore_common_headers() { sv_strict_ignore_common_headers(vcr_); }

    // Drop the per-request volatile headers modern clients inject on every call
    // (traceparent, tracestate, Request-Id, X-Request-Id, X-Correlation-Id,
    // baggage) from both sides before matching — the companion to
    // strict_ignore_common_headers for tracing / correlation noise.
    void ignore_volatile_headers() { sv_ignore_volatile_headers(vcr_); }

    // Opt-in header presets: each registers ordinary rules, listed under the
    // preset's name in the recording-rules footer. Throw Error on failure.

    // Leave the connection-describing headers (Host, Connection, Content-Length
    // and the other hop-by-hop headers, Accept-Encoding) out of the recording.
    void remove_transport_headers() {
        detail::check(sv_remove_transport_headers(vcr_), "remove_transport_headers");
    }

    // Drop a cloud vendor's per-request headers; vendor is one of "aws",
    // "azure", "cloudflare", "fastly", "gcp".
    void remove_cloud_headers(const std::string& vendor) {
        detail::check(sv_remove_cloud_headers(vcr_, vendor.c_str()), "remove_cloud_headers");
    }

    // Redact the common credential headers (Authorization, Cookie, Set-Cookie,
    // X-Api-Key, X-Auth-Token, ...) as numbered tokens. Register on the
    // playback handle too, as with every rule.
    void redact_credentials() {
        detail::check(sv_redact_credentials(vcr_), "redact_credentials");
    }

    // One more credential header with the same treatment.
    void redact_credential_header(const std::string& name) {
        detail::check(sv_redact_credential_header(vcr_, name.c_str()), "redact_credential_header");
    }

    // Record mode: verify an https upstream against this PEM CA file.
    void set_upstream_cafile(const std::string& path) {
        detail::check(sv_set_upstream_cafile(vcr_, path.c_str()), "set_upstream_cafile");
    }

    // Record mode: put text under "## LICENSE NOTICE" at the top of each tape;
    // playback ignores it.
    void add_license_notice(const std::string& text) {
        detail::check(sv_add_license_notice(vcr_, text.c_str()), "add_license_notice");
    }

    void set_strict_headers(bool on = true) { sv_set_strict_headers(vcr_, on ? 1 : 0); }

    // Opt-in: a request body that differs byte-for-byte gets a second chance at
    // semantic JSON equality (key order + whitespace ignored, array order
    // significant). A non-JSON body always falls back to the byte-exact verdict.
    void set_match_json_body(bool on = true) { sv_set_match_json_body(vcr_, on ? 1 : 0); }

    // Opt-in: the SOAP/XML twin of set_match_json_body — a byte-differing
    // request body gets a second chance at semantic XML equality (attribute
    // order + insignificant whitespace ignored; element order significant). A
    // non-XML body always falls back to the byte-exact verdict.
    void set_match_xml_body(bool on = true) { sv_set_match_xml_body(vcr_, on ? 1 : 0); }

    // Opt-in: search ALL interactions for one that fits and replay it WITHOUT
    // consuming it, so repeated and out-of-order requests both match.
    void set_match_multiple(bool on = true) { sv_set_match_multiple(vcr_, on ? 1 : 0); }

    void indent_code_blocks() { sv_indent_code_blocks(vcr_); }
    void emphasize_http_verbs() { sv_emphasize_http_verbs(vcr_); }
    // Shared XML layout setting: format recorded request and response bodies; match XML requests on playback (indent 1..16; 0 = off). Falls back to byte-exact if the body isn't well-formed XML.
    void pretty_xml(int indent = 2) { sv_set_pretty_xml(vcr_, indent); }
    // Format recorded JSON request and response bodies, keeping key order and number spellings; playback matches JSON request layout.
    void pretty_json(int indent = 2) { sv_set_pretty_json(vcr_, indent); }
    // Current pretty-JSON indent (0 = off).
    int get_pretty_json() const { return sv_get_pretty_json(vcr_); }
    // Opt-in stable order (record side; all off by default, the tape is
    // byte-exact without them). Sorted JSON is only written pretty-printed:
    // with a JSON sort rule and no pretty_json(), flush() throws
    // "sort_json_keys needs pretty_json: ..." and writes nothing.
    // Sort JSON object keys at every depth in recorded JSON response bodies.
    void set_sort_json_keys(bool on = true) { sv_set_sort_json_keys(vcr_, on ? 1 : 0); }
    bool get_sort_json_keys() const { return sv_get_sort_json_keys(vcr_) != 0; }

    // Sort the JSON response arrays `path` selects (JSON pointer from the root,
    // "*" for one segment, "" the root array, or a bare member name) by member
    // `by` ("" = each element's canonical JSON). Throws Error if refused.
    void sort_json_array(const std::string& path, const std::string& by = "") {
        detail::check(sv_sort_json_array(vcr_, path.c_str(), by.c_str()), "sort_json_array");
    }

    // The same, only for requests whose path (query included) matches the
    // regex `request`. Throws Error if refused.
    void sort_json_array_at(const std::string& request, const std::string& path,
                            const std::string& by = "") {
        detail::check(sv_sort_json_array_at(vcr_, request.c_str(), path.c_str(), by.c_str()),
                      "sort_json_array_at");
    }

    // Sort response header lines by name (case-insensitive).
    void set_sort_response_headers(bool on = true) { sv_set_sort_response_headers(vcr_, on ? 1 : 0); }
    bool get_sort_response_headers() const { return sv_get_sort_response_headers(vcr_) != 0; }

    // Sort one response header's comma-separated items ("Allow"). Throws Error if refused.
    void sort_header_value(const std::string& name) {
        detail::check(sv_sort_header_value(vcr_, name.c_str()), "sort_header_value");
    }

    // Turn every stable-order rule off.
    void clear_stable_order() { sv_clear_stable_order(vcr_); }

    // Playback only: replay just interactions from..to of the tape (0-based
    // "## Interaction N" numbers, inclusive; to < 0 = through the last). Throws
    // Error on a record handle or a bad range. Call after opening, before traffic.
    void set_playback_range(int from, int to = -1) {
        detail::check(sv_set_playback_range(vcr_, from, to), "set_playback_range");
    }
    void clear_playback_range() { sv_clear_playback_range(vcr_); }
    // The range's ends; -1 when none is set.
    int get_playback_range_from() const { return sv_get_playback_range_from(vcr_); }
    int get_playback_range_to() const { return sv_get_playback_range_to(vcr_); }
    void clear_redactions() { sv_clear_redactions(vcr_); }
    void clear_unredactions() { sv_clear_unredactions(vcr_); }
    void clear_normalizations() { sv_clear_normalizations(vcr_); }
    void clear_header_removals() { sv_clear_header_removals(vcr_); }
    void clear_match_headers() { sv_clear_match_headers(vcr_); }
    void clear_static_content() { sv_clear_static_content(vcr_); }
    void clear_untaped() { sv_clear_untaped(vcr_); }
    void clear_format_options() { sv_clear_format_options(vcr_); }

    // ---- shutdown --------------------------------------------------------

    // Stop and write the captured tape (record mode). Pass an empty path to
    // use the one the recorder was opened with. Throws Error if the flush
    // fails. The server is consumed either way — this Vcr is empty afterwards.
    void flush(const std::string& tape_path = "") {
        sv_vcr* h = release();
        if (h == nullptr) return;
        check_flush(sv_close_and_flush(h, tape_path.empty() ? nullptr : tape_path.c_str()),
                      "flush");
    }

    // As flush(), but fails if the fresh recording differs from what is
    // already on disk (drift detection for a checked-in tape).
    void flush_fail_if_changed(const std::string& tape_path = "") {
        sv_vcr* h = release();
        if (h == nullptr) return;
        check_flush(
            sv_close_and_flush_fail_if_changed(h, tape_path.empty() ? nullptr
                                                                    : tape_path.c_str()),
            "flush_fail_if_changed");
    }

    // As flush(), but only CHECKS against an existing tape instead of
    // overwriting it when one is already present.
    void flush_or_check(const std::string& tape_path = "") {
        sv_vcr* h = release();
        if (h == nullptr) return;
        check_flush(
            sv_close_and_flush_or_check(h, tape_path.empty() ? nullptr : tape_path.c_str()),
            "flush_or_check");
    }

    // Stop the server now, discarding any recording. Idempotent; the
    // destructor calls it.
    void close() {
        sv_vcr* h = release();
        if (h != nullptr) sv_close(h);
    }

    // Stop the server and DROP the captured recording WITHOUT writing a tape
    // (record mode). Call on a test's failure path so a half-finished recording
    // never becomes a tape that later replays as the truth. Pass an empty path
    // to use the one the recorder was opened with. The server is consumed.
    void discard(const std::string& tape_path = "") {
        sv_vcr* h = release();
        if (h != nullptr) sv_discard(h, tape_path.empty() ? nullptr : tape_path.c_str());
    }

private:
    explicit Vcr(sv_vcr* vcr) : vcr_(vcr) {}

    // An open's result: the handle, or throw with the reason the C binding
    // returned through its per-call error out-parameter (always released).
    static sv_vcr* opened(sv_vcr* h, sv_str err, const char* mode) {
        std::string why = detail::take(err);
        if (h == nullptr) throw Error(std::string(mode) + " open failed: " + why);
        return h;
    }

    // Hand the handle to the caller, leaving this object empty.
    sv_vcr* release() {
        sv_vcr* h = vcr_;
        vcr_ = nullptr;
        return h;
    }

    void check_flush(sv_str error, const char* operation) {
        if (secret_context_ && secret_context_->error) {
            sv_free(error);
            std::rethrow_exception(secret_context_->error);
        }
        detail::check(error, operation);
    }
    struct SecretContext {
        SecretRedactor redactor;
        SecretResolver resolver;
        std::optional<std::string> value;
        std::exception_ptr error;
    };
    static const char* redact_secret(const char* key, const sv_secret_request* request, void* data) noexcept {
        auto& context = *static_cast<SecretContext*>(data);
        try {
            context.value = context.redactor(key, SecretRequest{request->method, request->path,
                request->location, request->format, request->field_path, request->interaction});
            return context.value ? context.value->c_str() : nullptr;
        } catch (...) { context.error = std::current_exception(); return "!callback-failed!"; }
    }
    static const char* resolve_secret(const char* token, void* data) noexcept {
        auto& context = *static_cast<SecretContext*>(data);
        try {
            context.value = context.resolver(token);
            return context.value ? context.value->c_str() : nullptr;
        } catch (...) { context.error = std::current_exception(); return nullptr; }
    }
    std::shared_ptr<SecretContext> secret_context_;
    sv_vcr* vcr_;
};

// ---- converters (no server) ---------------------------------------------

// HAR 1.2 capture -> Servirtium markdown tape. Throws Error on failure.
inline void har_import(const std::string& har_path, const std::string& tape_path) {
    detail::check(sv_har_import(har_path.c_str(), tape_path.c_str()), "har_import");
}

// Servirtium markdown tape -> HAR 1.2 JSON. Throws Error on failure.
inline void har_export(const std::string& tape_path, const std::string& har_path) {
    detail::check(sv_har_export(tape_path.c_str(), har_path.c_str()), "har_export");
}

}  // namespace servirtium

#endif  // SERVIRTIUM_CPP_HPP
