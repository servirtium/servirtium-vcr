/* servirtium.c — the C client's implementation: the aether_vcr_embed_* ABI
 * declared once, plus the ergonomic layer servirtium.h promises.
 *
 * Carries NO record/replay logic. Every function here either forwards to the
 * engine, converts an integer, or handles string ownership. If you find
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
extern int   aether_vcr_embed_start(sv_handle h);
extern void  aether_vcr_embed_stop(sv_handle h);
extern char *aether_vcr_embed_stop_and_flush(sv_handle h, const char *tape);
extern char *aether_vcr_embed_stop_and_flush_fail_if_changed(sv_handle h, const char *tape);
extern char *aether_vcr_embed_stop_and_flush_or_check(sv_handle h, const char *tape);

extern int   aether_vcr_embed_port(sv_handle h);
extern char *aether_vcr_embed_base_url(sv_handle h, const char *host);
extern int   aether_vcr_embed_tape_length(sv_handle h);
extern void  aether_vcr_embed_reset_cursor(sv_handle h);

extern char *aether_vcr_embed_last_error(sv_handle h);
extern int   aether_vcr_embed_last_kind(sv_handle h);
extern int   aether_vcr_embed_last_index(sv_handle h);
extern void  aether_vcr_embed_clear_last_error(sv_handle h);

extern char *aether_vcr_embed_redact(sv_handle h, int field, const char *pat, const char *repl);
extern char *aether_vcr_embed_unredact(sv_handle h, int field, const char *pat, const char *repl);
extern char *aether_vcr_embed_normalize_whole_tape(sv_handle h, const char *pat, const char *name);
extern char *aether_vcr_embed_redact_whole_tape(sv_handle h, const char *pat, const char *repl);
extern char *aether_vcr_embed_remove_header(sv_handle h, int field, const char *name);
extern char *aether_vcr_embed_note(sv_handle h, const char *k, const char *v);
extern char *aether_vcr_embed_static_content(sv_handle h, const char *mount, const char *dir);
extern char *aether_vcr_embed_untaped(sv_handle h, const char *path);
extern char *aether_vcr_embed_match_header(sv_handle h, const char *name);
extern void  aether_vcr_embed_strict_ignore_common_headers(sv_handle h);
extern void  aether_vcr_embed_set_strict_headers(sv_handle h, int on);
extern void  aether_vcr_embed_set_match_json_body(sv_handle h, int on);
extern void  aether_vcr_embed_set_match_multiple(sv_handle h, int on);
extern void  aether_vcr_embed_indent_code_blocks(sv_handle h);
extern void  aether_vcr_embed_emphasize_http_verbs(sv_handle h);
extern void  aether_vcr_embed_clear_redactions(sv_handle h);
extern void  aether_vcr_embed_clear_unredactions(sv_handle h);
extern void  aether_vcr_embed_clear_normalizations(sv_handle h);
extern void  aether_vcr_embed_clear_header_removals(sv_handle h);
extern void  aether_vcr_embed_clear_match_headers(sv_handle h);
extern void  aether_vcr_embed_clear_static_content(sv_handle h);
extern void  aether_vcr_embed_clear_untaped(sv_handle h);
extern void  aether_vcr_embed_clear_format_options(sv_handle h);

extern char *aether_vcr_embed_har_import(const char *har_path, const char *tape_path);
extern char *aether_vcr_embed_har_export(const char *tape_path, const char *har_path);

extern void  aether_vcr_embed_free_string(char *s);

/* ---- the running server ------------------------------------------------ */

struct sv_vcr {
    sv_handle h;
    char *host;   /* owned; base_url needs it after open */
    char *tape;   /* owned; the flush default */
};

/* Why the last open failed. Static, per the header's contract. */
static char sv_open_err[512] = "";

static void set_open_error(const char *msg) {
    if (msg == NULL) msg = "";
    strncpy(sv_open_err, msg, sizeof(sv_open_err) - 1);
    sv_open_err[sizeof(sv_open_err) - 1] = '\0';
}

const char *sv_open_error(void) { return sv_open_err; }

/* Duplicate a NUL-terminated string with malloc. NOT strdup: strdup is POSIX,
 * not ISO C99, so under a strict -std=c99 it isn't declared (and on MSVC it is
 * spelled _strdup). This header advertises plain C99 with no dependencies
 * beyond the engine .so, so the four lines are cheaper than a feature macro. */
static char *dup_string(const char *s) {
    size_t n;
    char *out;
    if (s == NULL) return NULL;
    n = strlen(s) + 1;
    out = (char *)malloc(n);
    if (out != NULL) memcpy(out, s, n);
    return out;
}

/* Adopt an engine char* as an sv_str. NULL becomes an empty (but valid) one. */
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

/* Copy the engine's last_error for the static open-error slot, then release
 * it — the caller of an open gets a const char*, not an owned string. */
static void capture_open_error(sv_handle h, const char *fallback) {
    char *raw = (h == NULL) ? NULL : aether_vcr_embed_last_error(h);
    if (raw != NULL && raw[0] != '\0') {
        set_open_error(raw);
    } else {
        set_open_error(fallback);
    }
    if (raw != NULL) aether_vcr_embed_free_string(raw);
}

/* Wrap an opened handle: start it, and on success own a copy of host + tape.
 * On any failure the handle is stopped and NULL returned, so a caller never
 * has to clean up after a failed open. */
static sv_vcr *wrap_started(sv_handle h, const char *host, const char *tape,
                            const char *fail_msg) {
    struct sv_vcr *vcr;

    if (h == NULL) {
        set_open_error(fail_msg);
        return NULL;
    }
    if (aether_vcr_embed_start(h) < 0) {
        capture_open_error(h, fail_msg);
        aether_vcr_embed_stop(h);
        return NULL;
    }
    vcr = (struct sv_vcr *)calloc(1, sizeof(*vcr));
    if (vcr == NULL) {
        set_open_error("out of memory");
        aether_vcr_embed_stop(h);
        return NULL;
    }
    vcr->h = h;
    vcr->host = dup_string(host);
    vcr->tape = dup_string(tape);
    set_open_error("");
    return vcr;
}

sv_vcr *sv_playback_on(const char *tape_path, const char *host, int port) {
    sv_handle h = aether_vcr_embed_open_playback("", tape_path, host, port);
    return wrap_started(h, host, tape_path, "playback open failed");
}

sv_vcr *sv_playback(const char *tape_path) {
    return sv_playback_on(tape_path, "127.0.0.1", 0);
}

sv_vcr *sv_playback_url(const char *tape_url) {
    sv_handle h = aether_vcr_embed_open_playback_url("", tape_url, "127.0.0.1", 0);
    /* No local tape path: a URL-sourced tape has nothing to flush back to. */
    return wrap_started(h, "127.0.0.1", NULL, "playback-url open failed");
}

sv_vcr *sv_record_on(const char *tape_path, const char *upstream_base,
                     const char *host, int port) {
    sv_handle h = aether_vcr_embed_open_record("", tape_path, upstream_base, host, port);
    return wrap_started(h, host, tape_path, "record open failed");
}

sv_vcr *sv_record(const char *tape_path, const char *upstream_base) {
    return sv_record_on(tape_path, upstream_base, "127.0.0.1", 0);
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

sv_str sv_unredact(sv_vcr *vcr, sv_field field, const char *pattern,
                   const char *replacement) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_unredact(vcr->h, (int)field, pattern, replacement));
}

sv_str sv_normalize_whole_tape(sv_vcr *vcr, const char *pattern, const char *name) {
    if (vcr == NULL) return empty_str();
    return adopt(aether_vcr_embed_normalize_whole_tape(vcr->h, pattern, name));
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

void sv_set_strict_headers(sv_vcr *vcr, int on) {
    if (vcr != NULL) aether_vcr_embed_set_strict_headers(vcr->h, on);
}

void sv_set_match_json_body(sv_vcr *vcr, int on) {
    if (vcr != NULL) aether_vcr_embed_set_match_json_body(vcr->h, on);
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

void sv_clear_redactions(sv_vcr *vcr) {
    if (vcr != NULL) aether_vcr_embed_clear_redactions(vcr->h);
}

void sv_clear_unredactions(sv_vcr *vcr) {
    if (vcr != NULL) aether_vcr_embed_clear_unredactions(vcr->h);
}

void sv_clear_normalizations(sv_vcr *vcr) {
    if (vcr != NULL) aether_vcr_embed_clear_normalizations(vcr->h);
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

/* Release the wrapper itself. The engine handle is already stopped by the
 * caller; this frees only what the C layer owns. */
static void free_wrapper(struct sv_vcr *vcr) {
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

/* ---- converters -------------------------------------------------------- */

sv_str sv_har_import(const char *har_path, const char *tape_path) {
    return adopt(aether_vcr_embed_har_import(har_path, tape_path));
}

sv_str sv_har_export(const char *tape_path, const char *har_path) {
    return adopt(aether_vcr_embed_har_export(tape_path, har_path));
}
