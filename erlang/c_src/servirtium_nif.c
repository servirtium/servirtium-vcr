/*
 * servirtium_nif.c — Erlang NIF over the Aether VCR core's C-ABI
 * (the aether_vcr_embed_* symbols from core/embed.ae,
 * linked from core/native/libservirtium_vcr.so).
 *
 * This is the thin FFI seam: the engine, once started, is an HTTP server
 * the system-under-test talks to over HTTP; the NIF only drives the
 * control surface (open/configure/start/stop/diagnostics/mutations). All
 * record/replay semantics live in the Aether core, not here.
 *
 * The opaque server handle is passed back to Elixir as a 64-bit integer
 * (uintptr_t). open_* run fast (binding only), start_* spawn a detached
 * pthread inside the engine, so no NIF here blocks the scheduler.
 *
 * PER-LISTENER: N independent servers can run concurrently in one process,
 * each keyed by its handle; every config / diagnostic / lifecycle NIF takes
 * the handle. Lifecycle is open -> configure(handle) -> start.
 *
 * String ownership: every char* the ABI returns is caller-owned and
 * NUL-terminated; we copy it into an Erlang binary, then free it with
 * aether_vcr_embed_free_string.
 */
#include <erl_nif.h>
#include <stdint.h>
#include <string.h>

/* Most NIFs ignore some of (env, argc, argv); quiet -Wunused-parameter. */
#define UNUSED(x) ((void)(x))

/* ---- the engine's C-ABI (libservirtium_vcr.so) ------------------------- */

extern void *aether_vcr_embed_open_playback(const char *label, const char *tape_path, const char *host, int port);
extern void *aether_vcr_embed_open_playback_url(const char *label, const char *tape_url, const char *host, int port);
extern void *aether_vcr_embed_open_record(const char *label, const char *tape_path, const char *upstream_base, const char *host, int port);
extern int   aether_vcr_embed_start(void *server);
extern void  aether_vcr_embed_stop(void *server);
extern char *aether_vcr_embed_stop_and_flush(void *server, const char *tape_path);
extern char *aether_vcr_embed_stop_and_flush_fail_if_changed(void *server, const char *tape_path);
extern char *aether_vcr_embed_stop_and_flush_or_check(void *server, const char *tape_path);

extern int   aether_vcr_embed_port(void *server);
extern char *aether_vcr_embed_base_url(void *server, const char *host);
extern int   aether_vcr_embed_tape_length(void *server);
extern void  aether_vcr_embed_reset_cursor(void *server);

extern char *aether_vcr_embed_last_error(void *server);
extern int   aether_vcr_embed_last_kind(void *server);
extern int   aether_vcr_embed_last_index(void *server);
extern void  aether_vcr_embed_clear_last_error(void *server);

extern char *aether_vcr_embed_redact(void *server, int field, const char *pattern, const char *replacement);
extern char *aether_vcr_embed_unredact(void *server, int field, const char *pattern, const char *replacement);
extern char *aether_vcr_embed_remove_header(void *server, int field, const char *name);
extern void  aether_vcr_embed_match_header(void *server, const char *name);
extern void  aether_vcr_embed_clear_match_headers(void *server);
extern char *aether_vcr_embed_strict_ignore_common_headers(void *server);
extern char *aether_vcr_embed_normalize_whole_tape(void *server, const char *pattern, const char *name);
extern char *aether_vcr_embed_redact_whole_tape(void *server, const char *pattern, const char *replacement);
extern char *aether_vcr_embed_note(void *server, const char *title, const char *body);
extern char *aether_vcr_embed_static_content(void *server, const char *mount_path, const char *fs_dir);
extern char *aether_vcr_embed_untaped(void *server, const char *path);
extern void  aether_vcr_embed_set_strict_headers(void *server, int on);
extern void  aether_vcr_embed_set_match_json_body(void *server, int on);
extern void  aether_vcr_embed_set_match_multiple(void *server, int on);
extern void  aether_vcr_embed_indent_code_blocks(void *server);
extern void  aether_vcr_embed_emphasize_http_verbs(void *server);
extern void  aether_vcr_embed_clear_redactions(void *server);
extern void  aether_vcr_embed_clear_unredactions(void *server);
extern void  aether_vcr_embed_clear_header_removals(void *server);
extern void  aether_vcr_embed_clear_static_content(void *server);
extern void  aether_vcr_embed_clear_untaped(void *server);
extern void  aether_vcr_embed_clear_format_options(void *server);
extern void  aether_vcr_embed_free_string(char *s);

/* ---- string marshalling helpers --------------------------------------- */

/* Copy an Elixir binary argument into a freshly-malloc'd NUL-terminated C
 * string. Caller must enif_free() it. Returns 0 on failure. */
static char *term_to_cstr(ErlNifEnv *env, ERL_NIF_TERM term)
{
    ErlNifBinary bin;
    if (!enif_inspect_binary(env, term, &bin)) {
        /* allow iolists / charlists too */
        if (!enif_inspect_iolist_as_binary(env, term, &bin)) {
            return NULL;
        }
    }
    char *out = enif_alloc(bin.size + 1);
    if (!out) return NULL;
    memcpy(out, bin.data, bin.size);
    out[bin.size] = '\0';
    return out;
}

/* Build an Erlang binary term from a NUL-terminated C string, then free the
 * source via the engine's allocator. A NULL pointer yields an empty binary. */
static ERL_NIF_TERM take_cstr(ErlNifEnv *env, char *s)
{
    if (s == NULL) {
        ERL_NIF_TERM empty;
        enif_make_new_binary(env, 0, &empty);
        return empty;
    }
    size_t len = strlen(s);
    ERL_NIF_TERM bin;
    unsigned char *buf = enif_make_new_binary(env, len, &bin);
    memcpy(buf, s, len);
    aether_vcr_embed_free_string(s);
    return bin;
}

static int get_handle(ErlNifEnv *env, ERL_NIF_TERM term, void **out)
{
    ErlNifUInt64 v;
    if (!enif_get_uint64(env, term, &v)) return 0;
    *out = (void *)(uintptr_t)v;
    return 1;
}

static ERL_NIF_TERM make_handle(ErlNifEnv *env, void *p)
{
    return enif_make_uint64(env, (ErlNifUInt64)(uintptr_t)p);
}

/* ---- lifecycle: open -> start ----------------------------------------- */

static ERL_NIF_TERM nif_open_playback(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    char *label = term_to_cstr(env, argv[0]);
    char *tape  = term_to_cstr(env, argv[1]);
    char *host  = term_to_cstr(env, argv[2]);
    int   port;
    if (!label || !tape || !host || !enif_get_int(env, argv[3], &port)) {
        if (label) enif_free(label);
        if (tape)  enif_free(tape);
        if (host)  enif_free(host);
        return enif_make_badarg(env);
    }
    void *h = aether_vcr_embed_open_playback(label, tape, host, port);
    enif_free(label); enif_free(tape); enif_free(host);
    return make_handle(env, h);   /* 0 == NULL == failure, surfaced in Elixir */
}

static ERL_NIF_TERM nif_open_record(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    char *label    = term_to_cstr(env, argv[0]);
    char *tape     = term_to_cstr(env, argv[1]);
    char *upstream = term_to_cstr(env, argv[2]);
    char *host     = term_to_cstr(env, argv[3]);
    int   port;
    if (!label || !tape || !upstream || !host || !enif_get_int(env, argv[4], &port)) {
        if (label) enif_free(label);
        if (tape)  enif_free(tape);
        if (upstream) enif_free(upstream);
        if (host)  enif_free(host);
        return enif_make_badarg(env);
    }
    void *h = aether_vcr_embed_open_record(label, tape, upstream, host, port);
    enif_free(label); enif_free(tape); enif_free(upstream); enif_free(host);
    return make_handle(env, h);
}

static ERL_NIF_TERM nif_start(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    return enif_make_int(env, aether_vcr_embed_start(h));
}

static ERL_NIF_TERM nif_stop(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    aether_vcr_embed_stop(h);
    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_stop_and_flush(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    char *tape = term_to_cstr(env, argv[1]);
    if (!tape) return enif_make_badarg(env);
    char *res = aether_vcr_embed_stop_and_flush(h, tape);
    enif_free(tape);
    return take_cstr(env, res);
}

static ERL_NIF_TERM nif_stop_and_flush_fail_if_changed(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    char *tape = term_to_cstr(env, argv[1]);
    if (!tape) return enif_make_badarg(env);
    char *res = aether_vcr_embed_stop_and_flush_fail_if_changed(h, tape);
    enif_free(tape);
    return take_cstr(env, res);
}

/* ---- introspection ----------------------------------------------------- */

static ERL_NIF_TERM nif_port(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    return enif_make_int(env, aether_vcr_embed_port(h));
}

static ERL_NIF_TERM nif_base_url(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    char *host = term_to_cstr(env, argv[1]);
    if (!host) return enif_make_badarg(env);
    char *res = aether_vcr_embed_base_url(h, host);
    enif_free(host);
    return take_cstr(env, res);
}

static ERL_NIF_TERM nif_tape_length(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    return enif_make_int(env, aether_vcr_embed_tape_length(h));
}

static ERL_NIF_TERM nif_reset_cursor(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    aether_vcr_embed_reset_cursor(h);
    return enif_make_atom(env, "ok");
}

/* ---- diagnostics ------------------------------------------------------- */

static ERL_NIF_TERM nif_last_error(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    return take_cstr(env, aether_vcr_embed_last_error(h));
}

static ERL_NIF_TERM nif_last_kind(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    return enif_make_int(env, aether_vcr_embed_last_kind(h));
}

static ERL_NIF_TERM nif_last_index(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    return enif_make_int(env, aether_vcr_embed_last_index(h));
}

static ERL_NIF_TERM nif_clear_last_error(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    aether_vcr_embed_clear_last_error(h);
    return enif_make_atom(env, "ok");
}

/* ---- mutations / config (handle 1st arg; return "" on success) --------- */

/* A char*-returning mutation with (handle, int, str, str) args. */
typedef char *(*mut3_fn)(void *, int, const char *, const char *);

static ERL_NIF_TERM mut3(ErlNifEnv *env, const ERL_NIF_TERM argv[], mut3_fn fn)
{
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    int field;
    if (!enif_get_int(env, argv[1], &field)) return enif_make_badarg(env);
    char *a = term_to_cstr(env, argv[2]);
    char *b = term_to_cstr(env, argv[3]);
    if (!a || !b) {
        if (a) enif_free(a);
        if (b) enif_free(b);
        return enif_make_badarg(env);
    }
    char *res = fn(h, field, a, b);
    enif_free(a); enif_free(b);
    return take_cstr(env, res);
}

static ERL_NIF_TERM nif_redact(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    return mut3(env, argv, aether_vcr_embed_redact);
}

static ERL_NIF_TERM nif_unredact(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    return mut3(env, argv, aether_vcr_embed_unredact);
}

static ERL_NIF_TERM nif_remove_header(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    int field;
    if (!enif_get_int(env, argv[1], &field)) return enif_make_badarg(env);
    char *name = term_to_cstr(env, argv[2]);
    if (!name) return enif_make_badarg(env);
    char *res = aether_vcr_embed_remove_header(h, field, name);
    enif_free(name);
    return take_cstr(env, res);
}

static ERL_NIF_TERM nif_match_header(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    char *name = term_to_cstr(env, argv[1]);
    if (!name) return enif_make_badarg(env);
    aether_vcr_embed_match_header(h, name);
    enif_free(name);
    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_note(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    char *title = term_to_cstr(env, argv[1]);
    char *body  = term_to_cstr(env, argv[2]);
    if (!title || !body) {
        if (title) enif_free(title);
        if (body)  enif_free(body);
        return enif_make_badarg(env);
    }
    char *res = aether_vcr_embed_note(h, title, body);
    enif_free(title); enif_free(body);
    return take_cstr(env, res);
}

static ERL_NIF_TERM nif_normalize_whole_tape(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    char *pattern = term_to_cstr(env, argv[1]);
    char *name    = term_to_cstr(env, argv[2]);
    if (!pattern || !name) {
        if (pattern) enif_free(pattern);
        if (name)    enif_free(name);
        return enif_make_badarg(env);
    }
    char *res = aether_vcr_embed_normalize_whole_tape(h, pattern, name);
    enif_free(pattern); enif_free(name);
    return take_cstr(env, res);
}

static ERL_NIF_TERM nif_redact_whole_tape(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    char *pattern     = term_to_cstr(env, argv[1]);
    char *replacement = term_to_cstr(env, argv[2]);
    if (!pattern || !replacement) {
        if (pattern)     enif_free(pattern);
        if (replacement) enif_free(replacement);
        return enif_make_badarg(env);
    }
    char *res = aether_vcr_embed_redact_whole_tape(h, pattern, replacement);
    enif_free(pattern); enif_free(replacement);
    return take_cstr(env, res);
}

static ERL_NIF_TERM nif_static_content(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    char *mount = term_to_cstr(env, argv[1]);
    char *dir   = term_to_cstr(env, argv[2]);
    if (!mount || !dir) {
        if (mount) enif_free(mount);
        if (dir)   enif_free(dir);
        return enif_make_badarg(env);
    }
    char *res = aether_vcr_embed_static_content(h, mount, dir);
    enif_free(mount); enif_free(dir);
    return take_cstr(env, res);
}

static ERL_NIF_TERM nif_untaped(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    char *path = term_to_cstr(env, argv[1]);
    if (!path) return enif_make_badarg(env);
    char *res = aether_vcr_embed_untaped(h, path);
    enif_free(path);
    return take_cstr(env, res);
}

static ERL_NIF_TERM nif_set_strict_headers(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    int on;
    if (!enif_get_int(env, argv[1], &on)) return enif_make_badarg(env);
    aether_vcr_embed_set_strict_headers(h, on);
    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_set_match_json_body(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    int on;
    if (!enif_get_int(env, argv[1], &on)) return enif_make_badarg(env);
    aether_vcr_embed_set_match_json_body(h, on);
    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_set_match_multiple(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    int on;
    if (!enif_get_int(env, argv[1], &on)) return enif_make_badarg(env);
    aether_vcr_embed_set_match_multiple(h, on);
    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_indent_code_blocks(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    aether_vcr_embed_indent_code_blocks(h);
    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_emphasize_http_verbs(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    UNUSED(argc);
    void *h;
    if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);
    aether_vcr_embed_emphasize_http_verbs(h);
    return enif_make_atom(env, "ok");
}

/* A handle-taking void clear function. */
#define CLEAR_NIF(NAME, FN)                                                  \
    static ERL_NIF_TERM NAME(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[]) \
    {                                                                        \
        UNUSED(argc);                                                        \
        void *h;                                                             \
        if (!get_handle(env, argv[0], &h)) return enif_make_badarg(env);     \
        FN(h);                                                               \
        return enif_make_atom(env, "ok");                                    \
    }

CLEAR_NIF(nif_clear_redactions,      aether_vcr_embed_clear_redactions)
CLEAR_NIF(nif_clear_unredactions,    aether_vcr_embed_clear_unredactions)
CLEAR_NIF(nif_clear_header_removals, aether_vcr_embed_clear_header_removals)
CLEAR_NIF(nif_clear_match_headers,   aether_vcr_embed_clear_match_headers)
CLEAR_NIF(nif_clear_static_content,  aether_vcr_embed_clear_static_content)
CLEAR_NIF(nif_clear_untaped,         aether_vcr_embed_clear_untaped)
CLEAR_NIF(nif_clear_format_options,  aether_vcr_embed_clear_format_options)

/* ---- registration ------------------------------------------------------ */

static ErlNifFunc nif_funcs[] = {
    {"open_playback", 4, nif_open_playback, 0},
    {"open_record",   5, nif_open_record,   0},
    {"start",         1, nif_start,         0},
    {"stop",          1, nif_stop,          0},
    {"stop_and_flush", 2, nif_stop_and_flush, 0},
    {"stop_and_flush_fail_if_changed", 2, nif_stop_and_flush_fail_if_changed, 0},

    {"port",          1, nif_port,         0},
    {"base_url",      2, nif_base_url,     0},
    {"tape_length",   1, nif_tape_length,  0},
    {"reset_cursor",  1, nif_reset_cursor, 0},

    {"last_error",       1, nif_last_error,       0},
    {"last_kind",        1, nif_last_kind,        0},
    {"last_index",       1, nif_last_index,       0},
    {"clear_last_error", 1, nif_clear_last_error, 0},

    {"redact",         4, nif_redact,         0},
    {"unredact",       4, nif_unredact,       0},
    {"normalize_whole_tape", 3, nif_normalize_whole_tape, 0},
    {"redact_whole_tape",    3, nif_redact_whole_tape,    0},
    {"remove_header",  3, nif_remove_header,  0},
    {"match_header",   2, nif_match_header,   0},
    {"note",           3, nif_note,           0},
    {"static_content", 3, nif_static_content, 0},
    {"untaped",        2, nif_untaped,        0},
    {"set_strict_headers",   2, nif_set_strict_headers,   0},
    {"set_match_json_body",  2, nif_set_match_json_body,  0},
    {"set_match_multiple",   2, nif_set_match_multiple,   0},
    {"indent_code_blocks",   1, nif_indent_code_blocks,   0},
    {"emphasize_http_verbs", 1, nif_emphasize_http_verbs, 0},

    {"clear_redactions",      1, nif_clear_redactions,      0},
    {"clear_unredactions",    1, nif_clear_unredactions,    0},
    {"clear_header_removals", 1, nif_clear_header_removals, 0},
    {"clear_match_headers",   1, nif_clear_match_headers,   0},
    {"clear_static_content",  1, nif_clear_static_content,  0},
    {"clear_untaped",         1, nif_clear_untaped,         0},
    {"clear_format_options",  1, nif_clear_format_options,  0},
};

ERL_NIF_INIT(servirtium_nif, nif_funcs, NULL, NULL, NULL, NULL)
