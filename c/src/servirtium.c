/* servirtium.c — the C client's implementation: the aether_vcr_embed_* ABI
 * declared once, plus the ergonomic layer servirtium.h promises.
 *
 * Carries NO record/replay logic. Every function here either forwards to the
 * libservirtium_vcr, converts an integer, or handles string ownership. If you find
 * yourself wanting to parse a tape or match a request in this file, stop —
 * that is core/vcr.ae's job.
 */
#include "servirtium.h"

#include <stdlib.h>
#include <string.h>

/* ---- the raw C ABI (core/embed.ae) ------------------------------------- */
/* Declared here rather than in the public header: a consumer programs against
 * the sv_* surface, and these symbols are an implementation detail of the
 * seam. Handles are void* — NULL from an open means failure. Returned char*
 * are caller-owned and NUL-terminated; free with aether_vcr_embed_free_string. */

typedef void *sv_handle;

extern sv_handle aether_vcr_embed_open_playback(const char *label, const char *tape,
                                                const char *host, int port);
extern sv_handle aether_vcr_embed_open_playback_url(const char *label, const char *url,
                                                    const char *host, int port);
extern sv_handle aether_vcr_embed_open_record(const char *label, const char *tape,
                                              const char *upstream_base,
                                              const char *host, int port);
extern char *aether_vcr_embed_open_error(sv_handle h);
extern void  aether_vcr_embed_destroy(sv_handle h);
extern int   aether_vcr_embed_start(sv_handle h);
extern void  aether_vcr_embed_stop(sv_handle h);
extern char *aether_vcr_embed_stop_and_flush(sv_handle h, const char *tape);
extern char *aether_vcr_embed_stop_and_flush_fail_if_changed(sv_handle h, const char *tape);
extern char *aether_vcr_embed_stop_and_flush_or_check(sv_handle h, const char *tape);
extern char *aether_vcr_embed_discard(sv_handle h, const char *tape);

extern int   aether_vcr_embed_port(sv_handle h);
extern char *aether_vcr_embed_base_url(sv_handle h, const char *host);
extern int   aether_vcr_embed_tape_length(sv_handle h);
extern void  aether_vcr_embed_reset_cursor(sv_handle h);

extern char *aether_vcr_embed_last_error(sv_handle h);
extern char *aether_vcr_embed_last_error_ex(sv_handle h, int consume);
extern char *aether_vcr_embed_diagnostics_json(sv_handle h, int consume);
extern char *aether_vcr_embed_assert_no_mismatches(sv_handle h);
extern void aether_vcr_embed_test_context(sv_handle h, const char* name, const char* file, int line);
extern int   aether_vcr_embed_last_kind(sv_handle h);
extern int   aether_vcr_embed_last_index(sv_handle h);
extern void  aether_vcr_embed_clear_last_error(sv_handle h);

extern char *aether_vcr_embed_redact(sv_handle h, int field, const char *pat, const char *repl);
extern char *aether_vcr_embed_redact_header(sv_handle h, int field, const char *pat, const char *repl);
extern char *aether_vcr_embed_redact_query_param(sv_handle h, int field, const char *pat, const char *repl);
extern char *aether_vcr_embed_redact_json_field(sv_handle h, int field, const char *pat, const char *repl);
extern char *aether_vcr_embed_unredact(sv_handle h, int field, const char *pat, const char *repl);
extern char *aether_vcr_embed_volatile_rule(sv_handle h, const char *scope, const char *kind, const char *pattern);
extern char *aether_vcr_embed_volatile_bind(sv_handle h, const char *name_or_token, const char *value);
extern char *aether_vcr_embed_set_volatile_markers(sv_handle h, int style);
extern char *aether_vcr_embed_volatile_profile(sv_handle h, const char *path);
extern char *aether_vcr_embed_volatile_report(sv_handle h);
extern char *aether_vcr_embed_redact_whole_tape(sv_handle h, const char *pat, const char *repl);
extern char *aether_vcr_embed_remove_header(sv_handle h, int field, const char *name);
extern char *aether_vcr_embed_note(sv_handle h, const char *k, const char *v);
extern char *aether_vcr_embed_static_content(sv_handle h, const char *mount, const char *dir);
extern char *aether_vcr_embed_untaped(sv_handle h, const char *path);
extern char *aether_vcr_embed_match_header(sv_handle h, const char *name);
extern void  aether_vcr_embed_strict_ignore_common_headers(sv_handle h);
extern void  aether_vcr_embed_ignore_volatile_headers(sv_handle h);
extern void  aether_vcr_embed_set_strict_headers(sv_handle h, int on);
extern void  aether_vcr_embed_set_match_json_body(sv_handle h, int on);
extern void  aether_vcr_embed_set_match_xml_body(sv_handle h, int on);
extern void  aether_vcr_embed_set_match_multiple(sv_handle h, int on);
extern void  aether_vcr_embed_indent_code_blocks(sv_handle h);
extern void  aether_vcr_embed_emphasize_http_verbs(sv_handle h);
extern void  aether_vcr_embed_set_pretty_xml(sv_handle h, int indent);
extern void  aether_vcr_embed_set_pretty_json(sv_handle h, int indent);
extern int   aether_vcr_embed_get_pretty_json(sv_handle h);
extern char *aether_vcr_embed_remove_transport_headers(sv_handle h);
extern char *aether_vcr_embed_remove_cloud_headers(sv_handle h, const char *vendor);
extern char *aether_vcr_embed_redact_credentials(sv_handle h);
extern char *aether_vcr_embed_redact_credential_header(sv_handle h, const char *name);
extern char *aether_vcr_embed_set_upstream_cafile(sv_handle h, const char *path);
extern char *aether_vcr_embed_add_license_notice(sv_handle h, const char *text);
extern void  aether_vcr_embed_set_sort_json_keys(sv_handle h, int on);
extern int   aether_vcr_embed_get_sort_json_keys(sv_handle h);
extern char *aether_vcr_embed_sort_json_array(sv_handle h, const char *path, const char *by);
extern char *aether_vcr_embed_sort_json_array_at(sv_handle h, const char *request, const char *path, const char *by);
extern void  aether_vcr_embed_set_sort_response_headers(sv_handle h, int on);
extern int   aether_vcr_embed_get_sort_response_headers(sv_handle h);
extern char *aether_vcr_embed_sort_header_value(sv_handle h, const char *name);
extern void  aether_vcr_embed_clear_stable_order(sv_handle h);
extern char *aether_vcr_embed_set_playback_range(sv_handle h, int from, int to);
extern void  aether_vcr_embed_clear_playback_range(sv_handle h);
extern int   aether_vcr_embed_get_playback_range_from(sv_handle h);
extern int   aether_vcr_embed_get_playback_range_to(sv_handle h);
extern void  aether_vcr_embed_clear_redactions(sv_handle h);
extern void  aether_vcr_embed_clear_unredactions(sv_handle h);
extern void  aether_vcr_embed_clear_header_removals(sv_handle h);
extern void  aether_vcr_embed_clear_match_headers(sv_handle h);
extern void  aether_vcr_embed_clear_static_content(sv_handle h);
extern void  aether_vcr_embed_clear_untaped(sv_handle h);
extern void  aether_vcr_embed_clear_format_options(sv_handle h);

extern char *aether_vcr_embed_har_import(const char *har_path, const char *tape_path);
extern char *aether_vcr_embed_har_export(const char *tape_path, const char *har_path);

extern void  aether_vcr_embed_free_string(char *s);

/* ---- the running server ------------------------------------------------ */

extern char *aether_vcr_embed_secret_begin(sv_handle, int);
extern int aether_vcr_embed_secret_next(sv_handle);
extern char *aether_vcr_embed_secret_get(sv_handle, int);
extern int aether_vcr_embed_secret_interaction(sv_handle);
extern char *aether_vcr_embed_secret_apply(sv_handle, const char *);
extern char *aether_vcr_embed_secret_finish(sv_handle);
extern void aether_vcr_embed_secret_abort(sv_handle);

struct sv_vcr {
    sv_handle h;
    sv_secret_redactor_fn secret_redactor;
    void *secret_context;
    char *host;   /* owned; base_url needs it after open */
    char *tape;   /* owned; the flush default */
};

/* Duplicate a NUL-terminated string with malloc. NOT strdup: strdup is POSIX,
 * not ISO C99, so under a strict -std=c99 it isn't declared (and on MSVC it is
 * spelled _strdup). This header advertises plain C99 with no dependencies
 * beyond the libservirtium_vcr.so, so the four lines are cheaper than a feature macro. */
static char *dup_string(const char *s) {
    size_t n;
    char *out;
    if (s == NULL) return NULL;
    n = strlen(s) + 1;
    out = (char *)malloc(n);
    if (out != NULL) memcpy(out, s, n);
    return out;
}

/* Adopt an libservirtium_vcr char* as an sv_str. NULL becomes an empty (but valid) one. */
static sv_str adopt(char *raw) {
    sv_str s;
    if (raw == NULL) {
        s.ptr = NULL;
        s.len = 0;
        return s;
    }
    s.ptr = raw;
    s.len = strlen(raw);
    return s;
}

/* An sv_str carrying nothing — what every void-ish config call yields. */
static sv_str empty_str(void) {
    sv_str s;
    s.ptr = NULL;
    s.len = 0;
    return s;
}

void sv_free(sv_str s) {
    if (s.ptr != NULL) aether_vcr_embed_free_string(s.ptr);
}

/* Hand the caller an open-failure reason through the per-call `error`
 * out-parameter (NULL allowed). Owned by the caller; release with sv_free. */
static void set_error(sv_str *error, char *owned) {
    if (error != NULL) {
        *error = adopt(owned);
    } else if (owned != NULL) {
        aether_vcr_embed_free_string(owned);
    }
}

static void set_error_msg(sv_str *error, const char *msg) {
    set_error(error, dup_string(msg));
}

/* Every open returns a handle (NULL only when out of memory); a failed open
 * is a dead handle carrying its reason. Returns 1 if the open succeeded.
 * On failure the reason goes to *error and the handle is destroyed. */
static int open_ok(sv_handle h, sv_str *error, const char *fail_msg) {
    char *why;
    if (error != NULL) *error = empty_str();
    if (h == NULL) {
        set_error_msg(error, fail_msg);
        return 0;
    }
    why = aether_vcr_embed_open_error(h);
    if (why != NULL && why[0] != '\0') {
        set_error(error, why);
        aether_vcr_embed_destroy(h);
        return 0;
    }
    if (why != NULL) aether_vcr_embed_free_string(why);
    return 1;
}

static char *secret_stage(sv_handle h, sv_secret_redactor_fn redactor,
                          sv_secret_resolver_fn resolver, void *context) {
    char *error = aether_vcr_embed_secret_begin(h, resolver != NULL);
    int next, i;
    if (error && error[0]) goto failed;
    aether_vcr_embed_free_string(error);
    while ((next = aether_vcr_embed_secret_next(h)) > 0) {
        char *parts[7];
        const char *value;
        sv_secret_request request;
        for (i = 0; i < 7; ++i) parts[i] = aether_vcr_embed_secret_get(h, i + 1);
        request.method = parts[2]; request.path = parts[3]; request.location = parts[4];
        request.format = parts[5]; request.field_path = parts[6];
        request.interaction = aether_vcr_embed_secret_interaction(h);
        value = resolver ? resolver(parts[1], context) : redactor(parts[0], &request, context);
        error = value ? aether_vcr_embed_secret_apply(h, value) : NULL;
        for (i = 0; i < 7; ++i) aether_vcr_embed_free_string(parts[i]);
        if (error && error[0]) goto failed;
        aether_vcr_embed_free_string(error);
    }
    error = aether_vcr_embed_secret_finish(h);
    if (error && error[0]) goto failed;
    return error;
failed:
    aether_vcr_embed_secret_abort(h);
    aether_vcr_embed_stop(h);
    return error;
}

void sv_secret_redactor(sv_vcr *vcr, sv_secret_redactor_fn callback, void *context) {
    if (vcr) { vcr->secret_redactor = callback; vcr->secret_context = context; }
}

static void free_wrapper(struct sv_vcr *vcr);

/* Wrap an opened handle WITHOUT starting it, owning a copy of host + tape. On
 * any failure the handle is destroyed and NULL returned, with the reason in
 * *error. */
static sv_vcr *wrap_unstarted(sv_handle h, const char *host, const char *tape,
                              const char *fail_msg, sv_str *error) {
    struct sv_vcr *vcr;

    if (!open_ok(h, error, fail_msg)) return NULL;
    vcr = (struct sv_vcr *)calloc(1, sizeof(*vcr));
    if (vcr == NULL) {
        set_error_msg(error, "out of memory");
        aether_vcr_embed_destroy(h);
        return NULL;
    }
    vcr->h = h;
    vcr->host = dup_string(host);
    vcr->tape = dup_string(tape);
    return vcr;
}

/* Start serving; "" on success, else the core's reason (last_error). */
sv_str sv_start(sv_vcr *vcr) {
    char *why;
    if (vcr == NULL) return empty_str();
    if (aether_vcr_embed_start(vcr->h) >= 0) return empty_str();
    why = aether_vcr_embed_last_error(vcr->h);
    if (why != NULL && why[0] != '\0') return adopt(why);
    if (why != NULL) aether_vcr_embed_free_string(why);
    return adopt(dup_string("start failed"));
}

/* Wrap an opened handle: start it, and on success own a copy of host + tape.
 * On any failure the handle is destroyed and NULL returned, with the reason in
 * *error, so a caller never has to clean up after a failed open. */
static sv_vcr *wrap_started(sv_handle h, const char *host, const char *tape,
                            const char *fail_msg, sv_str *error) {
    sv_vcr *vcr = wrap_unstarted(h, host, tape, fail_msg, error);
    sv_str why;
    if (vcr == NULL) return NULL;
    why = sv_start(vcr);
    if (why.len > 0) {
        set_error(error, why.ptr);
        free_wrapper(vcr);
        return NULL;
    }
    sv_free(why);
    return vcr;
}

sv_vcr *sv_playback_unstarted(const char *tape_path, sv_str *error) {
    sv_handle h = aether_vcr_embed_open_playback("", tape_path, "127.0.0.1", 0);
    return wrap_unstarted(h, "127.0.0.1", tape_path, "playback open failed", error);
}

sv_vcr *sv_playback_on(const char *tape_path, const char *host, int port, sv_str *error) {
    sv_handle h = aether_vcr_embed_open_playback("", tape_path, host, port);
    return wrap_started(h, host, tape_path, "playback open failed", error);
}

sv_vcr *sv_playback_with_secrets(const char *tape, const char *host, int port,
                                 sv_secret_resolver_fn resolver, void *context,
                                 sv_str *error) {
    sv_handle h = aether_vcr_embed_open_playback("", tape, host, port);
    char *staged;
    if (!open_ok(h, error, "playback open failed")) return NULL;
    if (resolver) {
        staged = secret_stage(h, NULL, resolver, context);
        if (staged && staged[0]) {
            set_error(error, staged);
            aether_vcr_embed_destroy(h);
            return NULL;
        }
        if (staged) aether_vcr_embed_free_string(staged);
    }
    return wrap_started(h, host, tape, "playback open failed", error);
}

sv_vcr *sv_playback(const char *tape_path, sv_str *error) {
    return sv_playback_on(tape_path, "127.0.0.1", 0, error);
}

sv_vcr *sv_playback_url(const char *tape_url, sv_str *error) {
    sv_handle h = aether_vcr_embed_open_playback_url("", tape_url, "127.0.0.1", 0);
    /* No local tape path: a URL-sourced tape has nothing to flush back to. */
    return wrap_started(h, "127.0.0.1", NULL, "playback-url open failed", error);
}

sv_vcr *sv_record_on(const char *tape_path, const char *upstream_base,
                     const char *host, int port, sv_str *error) {
    sv_handle h = aether_vcr_embed_open_record("", tape_path, upstream_base, host, port);
    return wrap_started(h, host, tape_path, "record open failed", error);
}

sv_vcr *sv_record(const char *tape_path, const char *upstream_base, sv_str *error) {
    return sv_record_on(tape_path, upstream_base, "127.0.0.1", 0, error);
}

/* ---- introspection ----------------------------------------------------- */

sv_str sv_base_url(sv_vcr *vcr) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_base_url(vcr->h,
                                           vcr->host ? vcr->host : "127.0.0.1"));
}

int sv_port(sv_vcr *vcr) {
    return (vcr == NULL) ? -1 : aether_vcr_embed_port(vcr->h);
}

int sv_tape_length(sv_vcr *vcr) {
    return (vcr == NULL) ? -1 : aether_vcr_embed_tape_length(vcr->h);
}

void sv_reset_cursor(sv_vcr *vcr) {
    if (vcr != NULL) aether_vcr_embed_reset_cursor(vcr->h);
}

/* ---- diagnostics ------------------------------------------------------- */

sv_outcome sv_last_kind(sv_vcr *vcr) {
    if (vcr == NULL) return SV_OK;
    return (sv_outcome)aether_vcr_embed_last_kind(vcr->h);
}

sv_str sv_last_error_ex(sv_vcr *vcr, int consume) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_last_error_ex(vcr->h, consume));
}
sv_str sv_diagnostics_json(sv_vcr *vcr, int consume) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_diagnostics_json(vcr->h, consume));
}
sv_str sv_assert_no_mismatches(sv_vcr *vcr) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_assert_no_mismatches(vcr->h));
}
void sv_test_context(sv_vcr *vcr, const char *name, const char *file, int line) {
    if (vcr != NULL) aether_vcr_embed_test_context(vcr->h, name, file, line);
}

sv_str sv_last_error(sv_vcr *vcr) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_last_error(vcr->h));
}

int sv_last_index(sv_vcr *vcr) {
    return (vcr == NULL) ? -1 : aether_vcr_embed_last_index(vcr->h);
}

void sv_clear_last_error(sv_vcr *vcr) {
    if (vcr != NULL) aether_vcr_embed_clear_last_error(vcr->h);
}

/* ---- configuration ----------------------------------------------------- */

sv_str sv_redact(sv_vcr *vcr, sv_field field, const char *pattern,
                 const char *replacement) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_redact(vcr->h, (int)field, pattern, replacement));
}

sv_str sv_redact_header(sv_vcr *vcr, const char *name) {
    return sv_redact_header_with(vcr, (sv_field)3, name, "[REDACTED]");
}
sv_str sv_redact_header_with(sv_vcr *vcr, sv_field field, const char *name, const char *replacement) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_redact_header(vcr->h, (int)field, name, replacement));
}

sv_str sv_redact_query_param(sv_vcr *vcr, const char *name) {
    return sv_redact_query_param_with(vcr, (sv_field)1, name, "[REDACTED]");
}
sv_str sv_redact_query_param_with(sv_vcr *vcr, sv_field field, const char *name, const char *replacement) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_redact_query_param(vcr->h, (int)field, name, replacement));
}

sv_str sv_redact_json_field(sv_vcr *vcr, const char *name) {
    return sv_redact_json_field_with(vcr, (sv_field)4, name, "[REDACTED]");
}
sv_str sv_redact_json_field_with(sv_vcr *vcr, sv_field field, const char *name, const char *replacement) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_redact_json_field(vcr->h, (int)field, name, replacement));
}

sv_str sv_unredact(sv_vcr *vcr, sv_field field, const char *pattern,
                   const char *replacement) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_unredact(vcr->h, (int)field, pattern, replacement));
}

sv_str sv_volatile_markers(sv_vcr *vcr, sv_markers style) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_set_volatile_markers(vcr->h, (int)style));
}

sv_str sv_volatile_rule(sv_vcr *vcr, const char *scope, const char *pattern) {
    return sv_volatile_rule_kind(vcr, scope, pattern, "template");
}

sv_str sv_volatile_rule_kind(sv_vcr *vcr, const char *scope, const char *pattern, const char *kind) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_volatile_rule(vcr->h, scope, kind, pattern));
}

sv_str sv_bind(sv_vcr *vcr, const char *name_or_token, const char *value) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_volatile_bind(vcr->h, name_or_token, value));
}

sv_str sv_volatile_profile(sv_vcr *vcr, const char *path) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_volatile_profile(vcr->h, path));
}

sv_str sv_volatile_report(sv_vcr *vcr) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_volatile_report(vcr->h));
}

sv_str sv_redact_whole_tape(sv_vcr *vcr, const char *pattern, const char *replacement) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_redact_whole_tape(vcr->h, pattern, replacement));
}

sv_str sv_remove_header(sv_vcr *vcr, sv_field field, const char *name) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_remove_header(vcr->h, (int)field, name));
}

sv_str sv_note(sv_vcr *vcr, const char *title, const char *body) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_note(vcr->h, title, body));
}

sv_str sv_static_content(sv_vcr *vcr, const char *mount_path, const char *fs_dir) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_static_content(vcr->h, mount_path, fs_dir));
}

sv_str sv_untaped(sv_vcr *vcr, const char *path) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_untaped(vcr->h, path));
}

sv_str sv_match_header(sv_vcr *vcr, const char *name) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_match_header(vcr->h, name));
}

void sv_strict_ignore_common_headers(sv_vcr *vcr) {
    if (vcr != NULL) aether_vcr_embed_strict_ignore_common_headers(vcr->h);
}

void sv_ignore_volatile_headers(sv_vcr *vcr) {
    if (vcr != NULL) aether_vcr_embed_ignore_volatile_headers(vcr->h);
}

void sv_set_strict_headers(sv_vcr *vcr, int on) {
    if (vcr != NULL) aether_vcr_embed_set_strict_headers(vcr->h, on);
}

void sv_set_match_json_body(sv_vcr *vcr, int on) {
    if (vcr != NULL) aether_vcr_embed_set_match_json_body(vcr->h, on);
}

void sv_set_match_xml_body(sv_vcr *vcr, int on) {
    if (vcr != NULL) aether_vcr_embed_set_match_xml_body(vcr->h, on);
}

void sv_set_match_multiple(sv_vcr *vcr, int on) {
    if (vcr != NULL) aether_vcr_embed_set_match_multiple(vcr->h, on);
}

void sv_indent_code_blocks(sv_vcr *vcr) {
    if (vcr != NULL) aether_vcr_embed_indent_code_blocks(vcr->h);
}

void sv_emphasize_http_verbs(sv_vcr *vcr) {
    if (vcr != NULL) aether_vcr_embed_emphasize_http_verbs(vcr->h);
}

void sv_set_pretty_xml(sv_vcr *vcr, int indent) {
    if (vcr != NULL) aether_vcr_embed_set_pretty_xml(vcr->h, indent);
}

void sv_set_pretty_json(sv_vcr *vcr, int indent) {
    if (vcr != NULL) aether_vcr_embed_set_pretty_json(vcr->h, indent);
}

int sv_get_pretty_json(sv_vcr *vcr) {
    return vcr != NULL ? aether_vcr_embed_get_pretty_json(vcr->h) : 0;
}

sv_str sv_remove_transport_headers(sv_vcr *vcr) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_remove_transport_headers(vcr->h));
}

sv_str sv_remove_cloud_headers(sv_vcr *vcr, const char *vendor) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_remove_cloud_headers(vcr->h, vendor));
}

sv_str sv_redact_credentials(sv_vcr *vcr) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_redact_credentials(vcr->h));
}

sv_str sv_redact_credential_header(sv_vcr *vcr, const char *name) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_redact_credential_header(vcr->h, name));
}

sv_str sv_set_upstream_cafile(sv_vcr *vcr, const char *path) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_set_upstream_cafile(vcr->h, path));
}

sv_str sv_add_license_notice(sv_vcr *vcr, const char *text) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_add_license_notice(vcr->h, text));
}

void sv_set_sort_json_keys(sv_vcr *vcr, int on) {
    if (vcr != NULL) aether_vcr_embed_set_sort_json_keys(vcr->h, on);
}

int sv_get_sort_json_keys(sv_vcr *vcr) {
    return vcr != NULL ? aether_vcr_embed_get_sort_json_keys(vcr->h) : 0;
}

sv_str sv_sort_json_array(sv_vcr *vcr, const char *path, const char *by) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_sort_json_array(vcr->h, path, by));
}

sv_str sv_sort_json_array_at(sv_vcr *vcr, const char *request, const char *path, const char *by) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_sort_json_array_at(vcr->h, request, path, by));
}

void sv_set_sort_response_headers(sv_vcr *vcr, int on) {
    if (vcr != NULL) aether_vcr_embed_set_sort_response_headers(vcr->h, on);
}

int sv_get_sort_response_headers(sv_vcr *vcr) {
    return vcr != NULL ? aether_vcr_embed_get_sort_response_headers(vcr->h) : 0;
}

sv_str sv_sort_header_value(sv_vcr *vcr, const char *name) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_sort_header_value(vcr->h, name));
}

void sv_clear_stable_order(sv_vcr *vcr) {
    if (vcr != NULL) aether_vcr_embed_clear_stable_order(vcr->h);
}

sv_str sv_set_playback_range(sv_vcr *vcr, int from, int to) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_set_playback_range(vcr->h, from, to));
}

void sv_clear_playback_range(sv_vcr *vcr) {
    if (vcr != NULL) aether_vcr_embed_clear_playback_range(vcr->h);
}

int sv_get_playback_range_from(sv_vcr *vcr) {
    return vcr != NULL ? aether_vcr_embed_get_playback_range_from(vcr->h) : -1;
}

int sv_get_playback_range_to(sv_vcr *vcr) {
    return vcr != NULL ? aether_vcr_embed_get_playback_range_to(vcr->h) : -1;
}

void sv_clear_redactions(sv_vcr *vcr) {
    if (vcr != NULL) aether_vcr_embed_clear_redactions(vcr->h);
}

void sv_clear_unredactions(sv_vcr *vcr) {
    if (vcr != NULL) aether_vcr_embed_clear_unredactions(vcr->h);
}

void sv_clear_header_removals(sv_vcr *vcr) {
    if (vcr != NULL) aether_vcr_embed_clear_header_removals(vcr->h);
}

void sv_clear_match_headers(sv_vcr *vcr) {
    if (vcr != NULL) aether_vcr_embed_clear_match_headers(vcr->h);
}

void sv_clear_static_content(sv_vcr *vcr) {
    if (vcr != NULL) aether_vcr_embed_clear_static_content(vcr->h);
}

void sv_clear_untaped(sv_vcr *vcr) {
    if (vcr != NULL) aether_vcr_embed_clear_untaped(vcr->h);
}

void sv_clear_format_options(sv_vcr *vcr) {
    if (vcr != NULL) aether_vcr_embed_clear_format_options(vcr->h);
}

/* ---- shutdown ---------------------------------------------------------- */

/* Release the wrapper itself and destroy the libservirtium_vcr handle (already
 * stopped by the caller). */
static void free_wrapper(struct sv_vcr *vcr) {
    aether_vcr_embed_destroy(vcr->h);
    free(vcr->host);
    free(vcr->tape);
    free(vcr);
}

void sv_close(sv_vcr *vcr) {
    if (vcr == NULL) return;
    aether_vcr_embed_stop(vcr->h);
    free_wrapper(vcr);
}

/* The three flush variants differ only in which ABI entry point they call, so
 * they share one body. `which`: 0 = plain, 1 = fail_if_changed, 2 = or_check. */
static sv_str close_flushing(sv_vcr *vcr, const char *tape_path, int which) {
    const char *tape;
    char *err;

    if (vcr == NULL) return empty_str();
    tape = (tape_path != NULL) ? tape_path : vcr->tape;
    if (tape == NULL) tape = "";

    if (vcr->secret_redactor) {
        err = secret_stage(vcr->h, vcr->secret_redactor, NULL, vcr->secret_context);
        if (err && err[0]) { free_wrapper(vcr); return adopt(err); }
        aether_vcr_embed_free_string(err);
    }
    if (which == 1) {
        err = aether_vcr_embed_stop_and_flush_fail_if_changed(vcr->h, tape);
    } else if (which == 2) {
        err = aether_vcr_embed_stop_and_flush_or_check(vcr->h, tape);
    } else {
        err = aether_vcr_embed_stop_and_flush(vcr->h, tape);
    }
    free_wrapper(vcr);
    return adopt(err);
}

sv_str sv_close_and_flush(sv_vcr *vcr, const char *tape_path) {
    return close_flushing(vcr, tape_path, 0);
}

sv_str sv_close_and_flush_fail_if_changed(sv_vcr *vcr, const char *tape_path) {
    return close_flushing(vcr, tape_path, 1);
}

sv_str sv_close_and_flush_or_check(sv_vcr *vcr, const char *tape_path) {
    return close_flushing(vcr, tape_path, 2);
}

void sv_discard(sv_vcr *vcr, const char *tape_path) {
    const char *tape;
    if (vcr == NULL) return;
    tape = (tape_path != NULL) ? tape_path : vcr->tape;
    if (tape == NULL) tape = "";
    aether_vcr_embed_free_string(aether_vcr_embed_discard(vcr->h, tape));
    free_wrapper(vcr);
}

/* ---- converters -------------------------------------------------------- */

sv_str sv_har_import(const char *har_path, const char *tape_path) {
    return adopt(aether_vcr_embed_har_import(har_path, tape_path));
}

sv_str sv_har_export(const char *tape_path, const char *har_path) {
    return adopt(aether_vcr_embed_har_export(tape_path, har_path));
}
