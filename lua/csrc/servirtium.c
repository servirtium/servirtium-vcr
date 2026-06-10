/*
 * servirtium.c — a Lua 5.4 C extension binding the shared Aether VCR engine.
 *
 * This is the PORTABLE binding path for Lua: a hand-written C extension module
 * using the Lua 5.4 C API (NOT LuaJIT FFI). It links the single shared engine
 * artifact (core/native/libservirtium_vcr.so) at build time via -L/-l and an
 * embedded rpath, then exposes an idiomatic Lua surface via require("servirtium").
 *
 * The engine's opaque server handle (void*) is carried across the Lua boundary
 * as a light userdata. Caller-owned char* returns from the engine are copied
 * into a Lua string and then freed with aether_vcr_embed_free_string per the
 * ABI's ownership rule.
 *
 * The externs below mirror the aether_vcr_embed_* C ABI exported by
 * core/embed.ae (see rust/src/native.rs and go/servirtium.go for the full
 * table). We declare them here rather than depending on an engine header.
 */

#include <lua.h>
#include <lauxlib.h>
#include <stddef.h>

/* ---- engine C ABI (aether_vcr_embed_*) ---------------------------------- */

/* lifecycle */
extern void *aether_vcr_embed_open_playback(const char *label,
                                            const char *tape_path,
                                            const char *host, int port);
extern void *aether_vcr_embed_open_playback_url(const char *label,
                                                const char *tape_url,
                                                const char *host, int port);
extern void *aether_vcr_embed_open_record(const char *label,
                                          const char *tape_path,
                                          const char *upstream_base,
                                          const char *host, int port);
extern int   aether_vcr_embed_start(void *handle);          /* < 0 fail */
extern void  aether_vcr_embed_stop(void *handle);
extern char *aether_vcr_embed_stop_and_flush(void *handle, const char *tape_path);
extern char *aether_vcr_embed_stop_and_flush_fail_if_changed(void *handle,
                                                             const char *tape_path);
extern char *aether_vcr_embed_stop_and_flush_or_check(void *handle,
                                                      const char *tape_path);

/* introspection */
extern int   aether_vcr_embed_port(void *handle);
extern char *aether_vcr_embed_base_url(void *handle, const char *host);
extern int   aether_vcr_embed_tape_length(void *handle);
extern void  aether_vcr_embed_reset_cursor(void *handle);

/* diagnostics */
extern char *aether_vcr_embed_last_error(void *handle);
extern int   aether_vcr_embed_last_kind(void *handle);       /* 0 == Ok */
extern int   aether_vcr_embed_last_index(void *handle);
extern void  aether_vcr_embed_clear_last_error(void *handle);

/* config / mutation */
extern char *aether_vcr_embed_redact(void *h, int field, const char *pat,
                                     const char *repl);
extern char *aether_vcr_embed_unredact(void *h, int field, const char *pat,
                                       const char *repl);
extern char *aether_vcr_embed_remove_header(void *h, int field, const char *name);
extern char *aether_vcr_embed_normalize_whole_tape(void *h, const char *pat,
                                                   const char *name);
extern char *aether_vcr_embed_redact_whole_tape(void *h, const char *pat,
                                                const char *repl);
extern char *aether_vcr_embed_strict_ignore_common_headers(void *h);
extern char *aether_vcr_embed_note(void *h, const char *title, const char *body);
extern char *aether_vcr_embed_static_content(void *h, const char *mount,
                                             const char *dir);
extern char *aether_vcr_embed_untaped(void *h, const char *path);
extern void  aether_vcr_embed_set_strict_headers(void *h, int on);
extern void  aether_vcr_embed_indent_code_blocks(void *h);
extern void  aether_vcr_embed_emphasize_http_verbs(void *h);
extern void  aether_vcr_embed_clear_redactions(void *h);
extern void  aether_vcr_embed_clear_unredactions(void *h);
extern void  aether_vcr_embed_clear_header_removals(void *h);
extern void  aether_vcr_embed_clear_static_content(void *h);
extern void  aether_vcr_embed_clear_untaped(void *h);
extern void  aether_vcr_embed_clear_format_options(void *h);

extern void  aether_vcr_embed_free_string(char *s);

/* ---- helpers ------------------------------------------------------------ */

/* Pull a non-NULL handle (light userdata) from the given stack slot. */
static void *check_handle(lua_State *L, int idx)
{
    if (lua_islightuserdata(L, idx)) {
        void *h = lua_touserdata(L, idx);
        if (h != NULL) {
            return h;
        }
    }
    luaL_argerror(L, idx, "expected a servirtium server handle");
    return NULL; /* unreachable */
}

/* Push a caller-owned engine char* as a Lua string, then free it. A NULL
 * pointer becomes an empty string. Returns 1 (one value pushed). */
static int push_owned_string(lua_State *L, char *s)
{
    if (s == NULL) {
        lua_pushliteral(L, "");
    } else {
        lua_pushstring(L, s);
        aether_vcr_embed_free_string(s);
    }
    return 1;
}

/* ---- low-level bindings (1:1 with the ABI) ------------------------------ */

/* open_playback(tapePath [, host="127.0.0.1"] [, port=0] [, label="servirtium"]) */
static int l_open_playback(lua_State *L)
{
    const char *tape  = luaL_checkstring(L, 1);
    const char *host  = luaL_optstring(L, 2, "127.0.0.1");
    int         port  = (int)luaL_optinteger(L, 3, 0);
    const char *label = luaL_optstring(L, 4, "servirtium");
    void *h = aether_vcr_embed_open_playback(label, tape, host, port);
    if (h == NULL) {
        lua_pushnil(L);
        lua_pushliteral(L, "open_playback failed");
        return 2;
    }
    lua_pushlightuserdata(L, h);
    return 1;
}

/* open_playback_url(tapeUrl [, host] [, port] [, label]) */
static int l_open_playback_url(lua_State *L)
{
    const char *url   = luaL_checkstring(L, 1);
    const char *host  = luaL_optstring(L, 2, "127.0.0.1");
    int         port  = (int)luaL_optinteger(L, 3, 0);
    const char *label = luaL_optstring(L, 4, "servirtium");
    void *h = aether_vcr_embed_open_playback_url(label, url, host, port);
    if (h == NULL) {
        lua_pushnil(L);
        lua_pushliteral(L, "open_playback_url failed");
        return 2;
    }
    lua_pushlightuserdata(L, h);
    return 1;
}

/* open_record(tapePath, upstream [, host="127.0.0.1"] [, port=0] [, label]) */
static int l_open_record(lua_State *L)
{
    const char *tape     = luaL_checkstring(L, 1);
    const char *upstream = luaL_checkstring(L, 2);
    const char *host     = luaL_optstring(L, 3, "127.0.0.1");
    int         port     = (int)luaL_optinteger(L, 4, 0);
    const char *label    = luaL_optstring(L, 5, "servirtium");
    void *h = aether_vcr_embed_open_record(label, tape, upstream, host, port);
    if (h == NULL) {
        lua_pushnil(L);
        lua_pushliteral(L, "open_record failed");
        return 2;
    }
    lua_pushlightuserdata(L, h);
    return 1;
}

/* start(handle) -> rc (int; < 0 fail) */
static int l_start(lua_State *L)
{
    void *h = check_handle(L, 1);
    lua_pushinteger(L, aether_vcr_embed_start(h));
    return 1;
}

/* port(handle) -> int */
static int l_port(lua_State *L)
{
    void *h = check_handle(L, 1);
    lua_pushinteger(L, aether_vcr_embed_port(h));
    return 1;
}

/* base_url(handle [, host="127.0.0.1"]) -> string */
static int l_base_url(lua_State *L)
{
    void *h = check_handle(L, 1);
    const char *host = luaL_optstring(L, 2, "127.0.0.1");
    return push_owned_string(L, aether_vcr_embed_base_url(h, host));
}

/* tape_length(handle) -> int */
static int l_tape_length(lua_State *L)
{
    void *h = check_handle(L, 1);
    lua_pushinteger(L, aether_vcr_embed_tape_length(h));
    return 1;
}

/* reset_cursor(handle) */
static int l_reset_cursor(lua_State *L)
{
    void *h = check_handle(L, 1);
    aether_vcr_embed_reset_cursor(h);
    return 0;
}

/* last_kind(handle) -> int (0 == Ok) */
static int l_last_kind(lua_State *L)
{
    void *h = check_handle(L, 1);
    lua_pushinteger(L, aether_vcr_embed_last_kind(h));
    return 1;
}

/* last_index(handle) -> int */
static int l_last_index(lua_State *L)
{
    void *h = check_handle(L, 1);
    lua_pushinteger(L, aether_vcr_embed_last_index(h));
    return 1;
}

/* last_error(handle) -> string */
static int l_last_error(lua_State *L)
{
    void *h = check_handle(L, 1);
    return push_owned_string(L, aether_vcr_embed_last_error(h));
}

/* clear_last_error(handle) */
static int l_clear_last_error(lua_State *L)
{
    void *h = check_handle(L, 1);
    aether_vcr_embed_clear_last_error(h);
    return 0;
}

/* stop(handle) */
static int l_stop(lua_State *L)
{
    void *h = check_handle(L, 1);
    aether_vcr_embed_stop(h);
    return 0;
}

/* stop_and_flush(handle [, tapePath]) -> string (empty == ok / no error) */
static int l_stop_and_flush(lua_State *L)
{
    void *h = check_handle(L, 1);
    const char *tape = luaL_optstring(L, 2, NULL);
    return push_owned_string(L, aether_vcr_embed_stop_and_flush(h, tape));
}

/* stop_and_flush_fail_if_changed(handle [, tapePath]) -> string
 * (empty == ok; non-empty == drift / error message) */
static int l_stop_and_flush_fail_if_changed(lua_State *L)
{
    void *h = check_handle(L, 1);
    const char *tape = luaL_optstring(L, 2, NULL);
    return push_owned_string(L,
        aether_vcr_embed_stop_and_flush_fail_if_changed(h, tape));
}

/* stop_and_flush_or_check(handle [, tapePath]) -> string */
static int l_stop_and_flush_or_check(lua_State *L)
{
    void *h = check_handle(L, 1);
    const char *tape = luaL_optstring(L, 2, NULL);
    return push_owned_string(L,
        aether_vcr_embed_stop_and_flush_or_check(h, tape));
}

/* redact(handle, field, pat, repl) -> string (empty == ok) */
static int l_redact(lua_State *L)
{
    void *h = check_handle(L, 1);
    int field = (int)luaL_checkinteger(L, 2);
    const char *pat  = luaL_checkstring(L, 3);
    const char *repl = luaL_checkstring(L, 4);
    return push_owned_string(L, aether_vcr_embed_redact(h, field, pat, repl));
}

/* unredact(handle, field, pat, repl) -> string (empty == ok) */
static int l_unredact(lua_State *L)
{
    void *h = check_handle(L, 1);
    int field = (int)luaL_checkinteger(L, 2);
    const char *pat  = luaL_checkstring(L, 3);
    const char *repl = luaL_checkstring(L, 4);
    return push_owned_string(L, aether_vcr_embed_unredact(h, field, pat, repl));
}

/* remove_header(handle, field, name) -> string (empty == ok) */
static int l_remove_header(lua_State *L)
{
    void *h = check_handle(L, 1);
    int field = (int)luaL_checkinteger(L, 2);
    const char *name = luaL_checkstring(L, 3);
    return push_owned_string(L, aether_vcr_embed_remove_header(h, field, name));
}

/* static_content(handle, mount, dir) -> string (empty == ok) */
static int l_static_content(lua_State *L)
{
    void *h = check_handle(L, 1);
    const char *mount = luaL_checkstring(L, 2);
    const char *dir   = luaL_checkstring(L, 3);
    return push_owned_string(L, aether_vcr_embed_static_content(h, mount, dir));
}

/* normalize_whole_tape(handle, pat, name) -> string (empty == ok) */
static int l_normalize_whole_tape(lua_State *L)
{
    void *h = check_handle(L, 1);
    const char *pat  = luaL_checkstring(L, 2);
    const char *name = luaL_checkstring(L, 3);
    return push_owned_string(L, aether_vcr_embed_normalize_whole_tape(h, pat, name));
}

/* redact_whole_tape(handle, pat, repl) -> string (empty == ok) */
static int l_redact_whole_tape(lua_State *L)
{
    void *h = check_handle(L, 1);
    const char *pat  = luaL_checkstring(L, 2);
    const char *repl = luaL_checkstring(L, 3);
    return push_owned_string(L, aether_vcr_embed_redact_whole_tape(h, pat, repl));
}

/* note(handle, title, body) -> string (empty == ok) */
static int l_note(lua_State *L)
{
    void *h = check_handle(L, 1);
    const char *title = luaL_checkstring(L, 2);
    const char *body  = luaL_checkstring(L, 3);
    return push_owned_string(L, aether_vcr_embed_note(h, title, body));
}

/* untaped(handle, path) -> string (empty == ok) */
static int l_untaped(lua_State *L)
{
    void *h = check_handle(L, 1);
    const char *path = luaL_checkstring(L, 2);
    return push_owned_string(L, aether_vcr_embed_untaped(h, path));
}

/* set_strict_headers(handle, on) */
static int l_set_strict_headers(lua_State *L)
{
    void *h = check_handle(L, 1);
    int on = lua_toboolean(L, 2);
    aether_vcr_embed_set_strict_headers(h, on);
    return 0;
}

/* indent_code_blocks(handle) */
static int l_indent_code_blocks(lua_State *L)
{
    void *h = check_handle(L, 1);
    aether_vcr_embed_indent_code_blocks(h);
    return 0;
}

/* emphasize_http_verbs(handle) */
static int l_emphasize_http_verbs(lua_State *L)
{
    void *h = check_handle(L, 1);
    aether_vcr_embed_emphasize_http_verbs(h);
    return 0;
}

/* ---- module registration ------------------------------------------------ */

static const luaL_Reg servirtium_funcs[] = {
    {"open_playback",                   l_open_playback},
    {"open_playback_url",               l_open_playback_url},
    {"open_record",                     l_open_record},
    {"start",                           l_start},
    {"port",                            l_port},
    {"base_url",                        l_base_url},
    {"tape_length",                     l_tape_length},
    {"reset_cursor",                    l_reset_cursor},
    {"last_kind",                       l_last_kind},
    {"last_index",                      l_last_index},
    {"last_error",                      l_last_error},
    {"clear_last_error",                l_clear_last_error},
    {"stop",                            l_stop},
    {"stop_and_flush",                  l_stop_and_flush},
    {"stop_and_flush_fail_if_changed",  l_stop_and_flush_fail_if_changed},
    {"stop_and_flush_or_check",         l_stop_and_flush_or_check},
    {"redact",                          l_redact},
    {"unredact",                        l_unredact},
    {"remove_header",                   l_remove_header},
    {"static_content",                  l_static_content},
    {"normalize_whole_tape",            l_normalize_whole_tape},
    {"redact_whole_tape",               l_redact_whole_tape},
    {"note",                            l_note},
    {"untaped",                         l_untaped},
    {"set_strict_headers",              l_set_strict_headers},
    {"indent_code_blocks",              l_indent_code_blocks},
    {"emphasize_http_verbs",            l_emphasize_http_verbs},
    {NULL, NULL},
};

/* require("servirtium_native") entry point. The idiomatic Lua surface in
 * servirtium.lua wraps this low-level module. */
int luaopen_servirtium_native(lua_State *L)
{
    luaL_newlib(L, servirtium_funcs);

    /* Field selectors (mirror FIELD_* in core/vcr.ae). */
    lua_pushinteger(L, 1); lua_setfield(L, -2, "FIELD_PATH");
    lua_pushinteger(L, 2); lua_setfield(L, -2, "FIELD_RESPONSE_BODY");
    lua_pushinteger(L, 3); lua_setfield(L, -2, "FIELD_REQUEST_HEADERS");
    lua_pushinteger(L, 4); lua_setfield(L, -2, "FIELD_REQUEST_BODY");
    lua_pushinteger(L, 5); lua_setfield(L, -2, "FIELD_RESPONSE_HEADERS");

    /* Outcome / last_kind values (mirror VCR_KIND_* in core/vcr.ae). */
    lua_pushinteger(L, 0); lua_setfield(L, -2, "OK");
    lua_pushinteger(L, 1); lua_setfield(L, -2, "PATH_OR_METHOD_DIFF");
    lua_pushinteger(L, 2); lua_setfield(L, -2, "HEADER_MISSING");
    lua_pushinteger(L, 3); lua_setfield(L, -2, "HEADER_VALUE_DIFF");
    lua_pushinteger(L, 4); lua_setfield(L, -2, "HEADER_UNEXPECTED");
    lua_pushinteger(L, 5); lua_setfield(L, -2, "TAPE_EXHAUSTED");
    lua_pushinteger(L, 6); lua_setfield(L, -2, "BODY_DIFF");
    lua_pushinteger(L, 7); lua_setfield(L, -2, "RECORD_ERROR");

    return 1;
}
