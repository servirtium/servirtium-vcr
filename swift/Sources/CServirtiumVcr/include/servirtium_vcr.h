/* servirtium_vcr.h — the flat C ABI of the shared Aether VCR engine.
 *
 * Declares the aether_vcr_embed_* symbols (from core/embed.ae) so Swift can
 * call them DIRECTLY via a clang module map — no glue .c, no second copy of the
 * marshalling rules. Handle-based: N independent VCR servers can run
 * concurrently in one process, each keyed by its own handle; NULL from an
 * open_* means failure. Every char* result is caller-owned and NUL-terminated;
 * free it with aether_vcr_embed_free_string. Most config setters return an
 * error string, empty meaning OK.
 *
 * This is the ONE FFI declaration the Swift binding needs; the engine .so is
 * linked via the -L/-rpath in Package.swift (the .tests.ae stages native/). */
#ifndef SERVIRTIUM_VCR_H
#define SERVIRTIUM_VCR_H

/* lifecycle */
void *aether_vcr_embed_open_playback(const char *label, const char *tape,
                                     const char *host, int port);
void *aether_vcr_embed_open_playback_url(const char *label, const char *url,
                                         const char *host, int port);
void *aether_vcr_embed_open_record(const char *label, const char *tape,
                                   const char *upstream_base, const char *host,
                                   int port);
int   aether_vcr_embed_start(void *h);
void  aether_vcr_embed_stop(void *h);
char *aether_vcr_embed_stop_and_flush(void *h, const char *tape);
char *aether_vcr_embed_stop_and_flush_fail_if_changed(void *h, const char *tape);
char *aether_vcr_embed_stop_and_flush_or_check(void *h, const char *tape);

/* introspection */
int   aether_vcr_embed_port(void *h);
char *aether_vcr_embed_base_url(void *h, const char *host);
int   aether_vcr_embed_tape_length(void *h);
void  aether_vcr_embed_reset_cursor(void *h);

/* diagnostics */
char *aether_vcr_embed_last_error(void *h);
int   aether_vcr_embed_last_kind(void *h);
int   aether_vcr_embed_last_index(void *h);
void  aether_vcr_embed_clear_last_error(void *h);

/* config */
char *aether_vcr_embed_redact(void *h, int field, const char *pat, const char *repl);
char *aether_vcr_embed_unredact(void *h, int field, const char *pat, const char *repl);
char *aether_vcr_embed_normalize_whole_tape(void *h, const char *pat, const char *name);
char *aether_vcr_embed_redact_whole_tape(void *h, const char *pat, const char *repl);
char *aether_vcr_embed_remove_header(void *h, int field, const char *name);
char *aether_vcr_embed_match_header(void *h, const char *name);
char *aether_vcr_embed_note(void *h, const char *k, const char *v);
char *aether_vcr_embed_static_content(void *h, const char *mount, const char *dir);
char *aether_vcr_embed_untaped(void *h, const char *path);
void  aether_vcr_embed_strict_ignore_common_headers(void *h);
void  aether_vcr_embed_set_strict_headers(void *h, int on);
void  aether_vcr_embed_set_match_json_body(void *h, int on);
void  aether_vcr_embed_set_match_multiple(void *h, int on);
void  aether_vcr_embed_indent_code_blocks(void *h);
void  aether_vcr_embed_emphasize_http_verbs(void *h);
void  aether_vcr_embed_clear_redactions(void *h);
void  aether_vcr_embed_clear_unredactions(void *h);
void  aether_vcr_embed_clear_normalizations(void *h);
void  aether_vcr_embed_clear_header_removals(void *h);
void  aether_vcr_embed_clear_match_headers(void *h);
void  aether_vcr_embed_clear_static_content(void *h);
void  aether_vcr_embed_clear_untaped(void *h);
void  aether_vcr_embed_clear_format_options(void *h);

/* converters (no handle) */
char *aether_vcr_embed_har_import(const char *har_path, const char *tape_path);
char *aether_vcr_embed_har_export(const char *tape_path, const char *har_path);

/* every returned char* is released with this */
void  aether_vcr_embed_free_string(char *s);

#endif /* SERVIRTIUM_VCR_H */
