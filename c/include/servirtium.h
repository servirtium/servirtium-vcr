/* servirtium.h — the C client for libservirtium_vcr.
 *
 * Servirtium records an HTTP conversation to a human-readable markdown tape
 * once, then replays it forever — offline, deterministic, git-diffable. Point
 * your system-under-test at sv_base_url() and drive it with plain HTTP.
 *
 * This is the thinnest possible ergonomic layer over the flat C ABI
 * (aether_vcr_embed_*, from core/embed.ae). Unlike every other binding in this
 * repo, C needs no FFI bridge at all — libservirtium_vcr's ABI is already C — so what
 * this header adds is exactly three things:
 *
 *   1. the ABI declared once, so a consumer doesn't hand-write 42 externs;
 *   2. the Field and Outcome integer constants as real enums;
 *   3. the caller-owned-string discipline made safe (every ABI char* comes
 *      back as an sv_str you release with sv_free) and open+start+error
 *      reporting folded into one call per mode.
 *
 * It carries NO record/replay logic: markdown parse/emit, the HTTP server,
 * request matching, redactions and drift detection all live in the in-repo
 * Aether core/vcr.ae libservirtium_vcr. This header is ALSO the substrate the C++ client
 * (cpp/) wraps in RAII.
 *
 * Portability: C99, no dependencies beyond the libservirtium_vcr.so. Link with
 * -lservirtium_vcr (+ an rpath to its directory). Thread-safety matches the
 * libservirtium_vcr: each sv_vcr handle is independent — N servers can run concurrently
 * in one process, one per port — but do not share one handle across threads
 * without external synchronisation.
 */
#ifndef SERVIRTIUM_C_H
#define SERVIRTIUM_C_H

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

/* ---- owned strings ------------------------------------------------------ */

/* A heap string owned by the caller. `ptr` is NUL-terminated (never NULL for
 * a successful call; "" on an empty result). Free EVERY sv_str with sv_free —
 * do not free() it directly (it came from libservirtium_vcr's allocator). */
typedef struct {
    char *ptr;
    size_t len;
} sv_str;

/* Release a sv_str returned by this API. NULL-safe; idempotent per value. */
void sv_free(sv_str s);

/* ---- enums (mirror the FIELD_* / VCR_KIND_* constants in core/vcr.ae) --- */

/* Field selector for redactions / unredactions / header removals. */
typedef enum {
    SV_FIELD_PATH = 1,
    SV_FIELD_RESPONSE_BODY = 2,
    SV_FIELD_REQUEST_HEADERS = 3,
    SV_FIELD_REQUEST_BODY = 4,
    SV_FIELD_RESPONSE_HEADERS = 5
} sv_field;

/* Per-dispatch outcome. Drain after a request to assert what the dispatcher
 * decided; anything but SV_OK is a mismatch. */
typedef enum {
    SV_OK = 0,
    SV_PATH_OR_METHOD_DIFF = 1,
    SV_HEADER_MISSING = 2,
    SV_HEADER_VALUE_DIFF = 3,
    SV_HEADER_UNEXPECTED = 4,
    SV_TAPE_EXHAUSTED = 5,
    SV_BODY_DIFF = 6,
    SV_RECORD_ERROR = 7
} sv_outcome;

/* ---- the running server ------------------------------------------------- */

/* Opaque running VCR server. Created by one of the sv_playback* / sv_record
 * calls, released by sv_close or sv_close_and_flush. */
typedef struct sv_vcr sv_vcr;

/* Replay a markdown tape from disk on an OS-chosen free port (127.0.0.1).
 * Returns NULL if the tape can't be opened or the server can't start; the
 * reason is available from sv_open_error(). */
sv_vcr *sv_playback(const char *tape_path);

typedef struct {
    const char *method, *path, *location, *format, *field_path;
    int interaction;
} sv_secret_request;
/* Return NULL to skip; an empty string is a valid replacement. Returned strings
 * must remain valid until the next callback. Metadata is borrowed for that invocation. */
typedef const char *(*sv_secret_redactor_fn)(const char *key, const sv_secret_request *, void *context);
typedef const char *(*sv_secret_resolver_fn)(const char *token, void *context);
sv_vcr *sv_playback_with_secrets(const char *tape, const char *host, int port,
                                 sv_secret_resolver_fn resolver, void *context);
void sv_secret_redactor(sv_vcr *, sv_secret_redactor_fn, void *context);

/* Replay a tape bound to a specific host/port. port 0 = OS-assigned. */
sv_vcr *sv_playback_on(const char *tape_path, const char *host, int port);

/* Replay a tape fetched from a URL rather than the filesystem. */
sv_vcr *sv_playback_url(const char *tape_url);

/* Record: forward each request to upstream_base, return the live response to
 * the SUT, and capture the exchange. The tape is written by
 * sv_close_and_flush — plain sv_close discards the recording. */
sv_vcr *sv_record(const char *tape_path, const char *upstream_base);

/* Record, bound to a specific host/port. port 0 = OS-assigned. */
sv_vcr *sv_record_on(const char *tape_path, const char *upstream_base,
                     const char *host, int port);

/* Why the most recent open call (any sv_playback / sv_record variant) in this
 * thread returned NULL. Points at static storage — copy it if you need it to
 * outlive the next call. "" when the last open succeeded. */
const char *sv_open_error(void);

/* ---- introspection ----------------------------------------------------- */

/* Base URL the SUT should target, e.g. "http://127.0.0.1:54213". */
sv_str sv_base_url(sv_vcr *vcr);

/* The OS-resolved port the server is listening on. */
int sv_port(sv_vcr *vcr);

/* Tape entry count (playback), or interactions captured so far (record). */
int sv_tape_length(sv_vcr *vcr);

/* Rewind the playback cursor to the top of the tape. */
void sv_reset_cursor(sv_vcr *vcr);

/* ---- diagnostics (read after a request) -------------------------------- */

/* Outcome of the most-recent dispatch. SV_OK means a clean match. */
sv_outcome sv_last_kind(sv_vcr *vcr);

/* Most-recent dispatch diagnostic; "" when none flagged. */
/* Consuming reads acknowledge without erasing; observers pass 0. */
sv_str sv_last_error_ex(sv_vcr *vcr, int consume);
sv_str sv_diagnostics_json(sv_vcr *vcr, int consume);
sv_str sv_assert_no_mismatches(sv_vcr *vcr);
void sv_test_context(sv_vcr *vcr, const char *name, const char *source_file, int source_line);
sv_str sv_last_error(sv_vcr *vcr);

/* Tape index of the most-recent matched interaction, or -1. */
int sv_last_index(sv_vcr *vcr);

/* Clear the stored diagnostic. */
void sv_clear_last_error(sv_vcr *vcr);

/* ---- configuration ----------------------------------------------------- */
/* Each returns an owned error string — EMPTY (len 0) means OK. Apply these
 * after the open call and before driving the SUT. */

sv_str sv_redact(sv_vcr *vcr, sv_field field, const char *pattern,
                 const char *replacement);
/* Structured recording redaction; the short form uses request scope and [REDACTED]. */
sv_str sv_redact_header(sv_vcr *vcr, const char *name);
sv_str sv_redact_header_with(sv_vcr *vcr, sv_field field, const char *name, const char *replacement);
/* Structured recording redaction; the short form uses request scope and [REDACTED]. */
sv_str sv_redact_query_param(sv_vcr *vcr, const char *name);
sv_str sv_redact_query_param_with(sv_vcr *vcr, sv_field field, const char *name, const char *replacement);
/* Structured recording redaction; the short form uses request scope and [REDACTED]. */
sv_str sv_redact_json_field(sv_vcr *vcr, const char *name);
sv_str sv_redact_json_field_with(sv_vcr *vcr, sv_field field, const char *name, const char *replacement);
sv_str sv_unredact(sv_vcr *vcr, sv_field field, const char *pattern,
                   const char *replacement);
/* Correlate every match into {{name-N}} tokens (UUIDs, CSRF tokens — things
 * that recur and must stay consistent across the whole tape). */
sv_str sv_normalize_whole_tape(sv_vcr *vcr, const char *pattern,
                               const char *name);
/* Collapse every match to one constant (variable-cardinality noise — dates). */
sv_str sv_redact_whole_tape(sv_vcr *vcr, const char *pattern,
                            const char *replacement);
sv_str sv_remove_header(sv_vcr *vcr, sv_field field, const char *name);
sv_str sv_note(sv_vcr *vcr, const char *title, const char *body);
sv_str sv_static_content(sv_vcr *vcr, const char *mount_path,
                         const char *fs_dir);
sv_str sv_untaped(sv_vcr *vcr, const char *path);
/* Require this request header's live value to equal the recorded one. Also
 * suppresses the automatic full-block header match unless strict headers are
 * explicitly on — surgical, not all-or-nothing. */
sv_str sv_match_header(sv_vcr *vcr, const char *name);
void sv_strict_ignore_common_headers(sv_vcr *vcr);
/* Drop the per-request volatile headers modern clients inject on every call
 * (traceparent, tracestate, Request-Id, X-Request-Id, X-Correlation-Id,
 * baggage) from both sides before matching — the companion to
 * sv_strict_ignore_common_headers for tracing / correlation noise. */
void sv_ignore_volatile_headers(sv_vcr *vcr);
/* Opt-in header presets: each registers ordinary rules listed under the
 * preset's name in the recording-rules footer. Strings return "" on success,
 * else the error. */
/* Leave the connection-describing headers (Host, Connection, Content-Length
 * and the other hop-by-hop headers, Accept-Encoding) out of the recording. */
sv_str sv_remove_transport_headers(sv_vcr *vcr);
/* Drop a cloud vendor's per-request headers; vendor is one of "aws", "azure",
 * "cloudflare", "fastly", "gcp". */
sv_str sv_remove_cloud_headers(sv_vcr *vcr, const char *vendor);
/* Redact the common credential headers (Authorization, Cookie, Set-Cookie,
 * X-Api-Key, X-Auth-Token, ...) as numbered tokens on the tape. Register on
 * the playback handle too, as with every rule. */
sv_str sv_redact_credentials(sv_vcr *vcr);
/* One more credential header with the same treatment. */
sv_str sv_redact_credential_header(sv_vcr *vcr, const char *name);
/* Record mode: verify an https upstream against this PEM CA file. */
sv_str sv_set_upstream_cafile(sv_vcr *vcr, const char *path);
/* Record mode: put text under "## LICENSE NOTICE" at the top of each tape;
 * playback ignores it. */
sv_str sv_add_license_notice(sv_vcr *vcr, const char *text);
void sv_set_strict_headers(sv_vcr *vcr, int on);
/* Opt-in: a request body that differs byte-for-byte gets a second chance at
 * semantic JSON equality (key order + whitespace ignored, array order
 * significant). A non-JSON body always falls back to the byte-exact verdict. */
void sv_set_match_json_body(sv_vcr *vcr, int on);
/* Opt-in: the SOAP/XML twin of sv_set_match_json_body — a byte-differing
 * request body gets a second chance at semantic XML equality (attribute order +
 * insignificant whitespace ignored; element order significant). A non-XML body
 * always falls back to the byte-exact verdict. */
void sv_set_match_xml_body(sv_vcr *vcr, int on);
/* Opt-in: search ALL interactions for one that fits and replay it WITHOUT
 * consuming it, so repeated and out-of-order requests both match. */
void sv_set_match_multiple(sv_vcr *vcr, int on);
void sv_indent_code_blocks(sv_vcr *vcr);
void sv_emphasize_http_verbs(sv_vcr *vcr);
/* Pretty-print recorded XML response bodies (indent 1..16; 0 = off); request bodies are never changed. Falls back to byte-exact if the body isn't well-formed XML. */
void sv_set_pretty_xml(sv_vcr *vcr, int indent);
/* Pretty-print recorded JSON response bodies (indent 1..16; 0 = off), keeping key order and number spellings; request bodies are never changed. */
void sv_set_pretty_json(sv_vcr *vcr, int indent);
/* Current pretty-JSON indent (0 = off). */
int sv_get_pretty_json(sv_vcr *vcr);
/* Opt-in stable order (record side; all off by default, the tape is byte-exact
 * without them). Sorted JSON is only written pretty-printed: with any JSON sort
 * rule registered and pretty_json off, sv_close_and_flush (and the check
 * variants) return "sort_json_keys needs pretty_json: ..." and write nothing. */
/* Sort JSON object keys at every depth in recorded JSON response bodies. */
void sv_set_sort_json_keys(sv_vcr *vcr, int on);
int sv_get_sort_json_keys(sv_vcr *vcr);
/* Sort the JSON response arrays `path` selects (JSON pointer from the root, "*"
 * for one segment, "" the root array, or a bare member name) by member `by`
 * ("" = each element's canonical JSON). Returns "" or the refusal reason. */
sv_str sv_sort_json_array(sv_vcr *vcr, const char *path, const char *by);
/* The same, only for requests whose path (query included) matches `request`
 * (a regex). Returns "" or the refusal reason. */
sv_str sv_sort_json_array_at(sv_vcr *vcr, const char *request, const char *path, const char *by);
/* Sort response header lines by name (case-insensitive). */
void sv_set_sort_response_headers(sv_vcr *vcr, int on);
int sv_get_sort_response_headers(sv_vcr *vcr);
/* Sort one response header's comma-separated items ("Allow"). "" or the reason. */
sv_str sv_sort_header_value(sv_vcr *vcr, const char *name);
/* Turn every stable-order rule off. */
void sv_clear_stable_order(sv_vcr *vcr);
/* Playback only: replay just interactions from..to of the tape (0-based,
 * inclusive; to < 0 = through the last). Selection is by interaction number.
 * Returns "" or the refusal reason (a record handle refuses; so does a bad
 * range). Call after opening, before traffic. */
sv_str sv_set_playback_range(sv_vcr *vcr, int from, int to);
void sv_clear_playback_range(sv_vcr *vcr);
/* The range's ends; -1 when none is set. */
int sv_get_playback_range_from(sv_vcr *vcr);
int sv_get_playback_range_to(sv_vcr *vcr);
void sv_clear_redactions(sv_vcr *vcr);
void sv_clear_unredactions(sv_vcr *vcr);
void sv_clear_normalizations(sv_vcr *vcr);
void sv_clear_header_removals(sv_vcr *vcr);
void sv_clear_match_headers(sv_vcr *vcr);
void sv_clear_static_content(sv_vcr *vcr);
void sv_clear_untaped(sv_vcr *vcr);
void sv_clear_format_options(sv_vcr *vcr);

/* ---- shutdown ---------------------------------------------------------- */

/* Stop the server and release the handle. In record mode the recording is
 * DISCARDED — use sv_close_and_flush to write it. */
void sv_close(sv_vcr *vcr);

/* Stop, write the captured tape to tape_path (NULL = the path the recorder
 * was opened with), and release the handle. Returns an owned error string —
 * EMPTY means OK. */
sv_str sv_close_and_flush(sv_vcr *vcr, const char *tape_path);

/* As sv_close_and_flush, but fails if the fresh recording differs from what
 * is already on disk (drift detection for a checked-in tape). */
sv_str sv_close_and_flush_fail_if_changed(sv_vcr *vcr, const char *tape_path);

/* As sv_close_and_flush, but only CHECKS against an existing tape instead of
 * overwriting it when one is already present. */
sv_str sv_close_and_flush_or_check(sv_vcr *vcr, const char *tape_path);

/* Stop the server and DROP the captured recording WITHOUT writing a tape, then
 * release the handle. Call on a test's failure path so a half-finished
 * recording never becomes a tape that later replays as the truth. (sv_close is
 * equivalent for the common case; this routes through the discard ABI so the
 * core clears its recording state explicitly.) tape_path NULL = the path the
 * recorder was opened with. */
void sv_discard(sv_vcr *vcr, const char *tape_path);

/* ---- converters (no server handle) ------------------------------------- */

/* HAR 1.2 capture -> Servirtium markdown tape. Returns an owned error
 * string — EMPTY means OK. */
sv_str sv_har_import(const char *har_path, const char *tape_path);

/* Servirtium markdown tape -> HAR 1.2 JSON. EMPTY error means OK. */
sv_str sv_har_export(const char *tape_path, const char *har_path);

#ifdef __cplusplus
}  /* extern "C" */
#endif

#endif /* SERVIRTIUM_C_H */
