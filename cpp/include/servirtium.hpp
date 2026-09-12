// servirtium.hpp — the header-only C++ client for the shared pure-Aether VCR
// engine.
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
// — which is itself the thinnest ergonomic layer over the engine's flat C ABI.
// There is NO second FFI here: C++ links the C client's object (compiled AS C,
// so its extern "C" symbols aren't mangled) and the engine .so. What C++ adds
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
// Aether core/vcr.ae engine.
//
// Portability: C++17, no dependencies beyond the C client + engine .so.
// Thread-safety matches the engine: each Vcr owns an independent handle — N
// servers can run concurrently in one process, one per port — but don't share
// a single Vcr across threads without external synchronisation.
#ifndef SERVIRTIUM_CPP_HPP
#define SERVIRTIUM_CPP_HPP

#include <servirtium.h>

#include <stdexcept>
#include <string>
#include <utility>

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
// destructor stops it.
class Vcr {
public:
    // Replay a markdown tape from disk on an OS-chosen free port (127.0.0.1).
    static Vcr playback(const std::string& tape_path) {
        return Vcr(sv_playback(tape_path.c_str()), "playback");
    }

    // Replay a tape bound to a specific host/port. port 0 = OS-assigned.
    static Vcr playback_on(const std::string& tape_path, const std::string& host,
                           int port) {
        return Vcr(sv_playback_on(tape_path.c_str(), host.c_str(), port), "playback");
    }

    // Replay a tape fetched from a URL rather than the filesystem.
    static Vcr playback_url(const std::string& tape_url) {
        return Vcr(sv_playback_url(tape_url.c_str()), "playback-url");
    }

    // Record: forward each request to upstream_base, return the live response
    // to the SUT, and capture the exchange. Call flush() to write the tape —
    // a plain destructor discards the recording.
    static Vcr record(const std::string& tape_path, const std::string& upstream_base) {
        return Vcr(sv_record(tape_path.c_str(), upstream_base.c_str()), "record");
    }

    static Vcr record_on(const std::string& tape_path, const std::string& upstream_base,
                         const std::string& host, int port) {
        return Vcr(sv_record_on(tape_path.c_str(), upstream_base.c_str(), host.c_str(),
                                port),
                   "record");
    }

    Vcr(const Vcr&) = delete;
    Vcr& operator=(const Vcr&) = delete;

    Vcr(Vcr&& other) noexcept : vcr_(other.vcr_) { other.vcr_ = nullptr; }

    Vcr& operator=(Vcr&& other) noexcept {
        if (this != &other) {
            close();
            vcr_ = other.vcr_;
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
    std::string last_error() const { return detail::take(sv_last_error(vcr_)); }

    // Tape index of the most-recent matched interaction, or -1.
    int last_index() const { return sv_last_index(vcr_); }

    // True when the most-recent dispatch matched cleanly — the assertion most
    // tests actually want.
    bool matched_cleanly() const { return last_kind() == Outcome::Ok; }

    void clear_last_error() { sv_clear_last_error(vcr_); }

    // ---- configuration ---------------------------------------------------
    // Each throws Error if the engine rejects it. Apply after construction and
    // before driving the SUT.

    void redact(Field field, const std::string& pattern, const std::string& replacement) {
        detail::check(sv_redact(vcr_, static_cast<sv_field>(field), pattern.c_str(),
                                replacement.c_str()),
                      "redact");
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
    void set_strict_headers(bool on = true) { sv_set_strict_headers(vcr_, on ? 1 : 0); }

    // Opt-in: a request body that differs byte-for-byte gets a second chance at
    // semantic JSON equality (key order + whitespace ignored, array order
    // significant). A non-JSON body always falls back to the byte-exact verdict.
    void set_match_json_body(bool on = true) { sv_set_match_json_body(vcr_, on ? 1 : 0); }

    // Opt-in: search ALL interactions for one that fits and replay it WITHOUT
    // consuming it, so repeated and out-of-order requests both match.
    void set_match_multiple(bool on = true) { sv_set_match_multiple(vcr_, on ? 1 : 0); }

    void indent_code_blocks() { sv_indent_code_blocks(vcr_); }
    void emphasize_http_verbs() { sv_emphasize_http_verbs(vcr_); }
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
        detail::check(sv_close_and_flush(h, tape_path.empty() ? nullptr : tape_path.c_str()),
                      "flush");
    }

    // As flush(), but fails if the fresh recording differs from what is
    // already on disk (drift detection for a checked-in tape).
    void flush_fail_if_changed(const std::string& tape_path = "") {
        sv_vcr* h = release();
        if (h == nullptr) return;
        detail::check(
            sv_close_and_flush_fail_if_changed(h, tape_path.empty() ? nullptr
                                                                    : tape_path.c_str()),
            "flush_fail_if_changed");
    }

    // As flush(), but only CHECKS against an existing tape instead of
    // overwriting it when one is already present.
    void flush_or_check(const std::string& tape_path = "") {
        sv_vcr* h = release();
        if (h == nullptr) return;
        detail::check(
            sv_close_and_flush_or_check(h, tape_path.empty() ? nullptr : tape_path.c_str()),
            "flush_or_check");
    }

    // Stop the server now, discarding any recording. Idempotent; the
    // destructor calls it.
    void close() {
        sv_vcr* h = release();
        if (h != nullptr) sv_close(h);
    }

private:
    Vcr(sv_vcr* vcr, const char* mode) : vcr_(vcr) {
        if (vcr_ == nullptr) {
            throw Error(std::string(mode) + " open failed: " + sv_open_error());
        }
    }

    // Hand the handle to the caller, leaving this object empty.
    sv_vcr* release() {
        sv_vcr* h = vcr_;
        vcr_ = nullptr;
        return h;
    }

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
