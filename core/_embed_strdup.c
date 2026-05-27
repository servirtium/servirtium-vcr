/* core/_embed_strdup.c — the embed ABI's caller-owned-string bridge.
 *
 * The Servirtium VCR engine is now PURE AETHER (core/vcr.ae). This is the
 * ONE irreducible scrap of C: vcr_embed_dup() hands the FFI host a plain
 * malloc'd, NUL-terminated C string it owns and later frees via
 * vcr_embed_free(). Aether's stdlib has no "malloc a C string" primitive
 * (std.mem is access-only, no allocation), and the language bindings free
 * returned pointers with C free() — so this can't be Aether.
 *
 * Linked into the .so via `--extra` from core/.build.ae ONLY (embed.ae
 * declares these extern). The Aether probes in core_tests/ and the
 * integration modules import `core.vcr`, never the embed ABI, so they need
 * neither this file nor --extra. Previously these symbols resolved from the
 * Aether stdlib's bundled VCR runtime; defining them here makes the engine
 * self-contained (and survives that bundle's removal). */
#include <stdlib.h>
#include <string.h>

char* vcr_embed_dup(const char* s) {
    if (!s) s = "";
    size_t n = strlen(s) + 1;
    char* d = (char*)malloc(n);
    if (d) memcpy(d, s, n);
    return d;
}

void vcr_embed_free(char* s) {
    free(s);
}
