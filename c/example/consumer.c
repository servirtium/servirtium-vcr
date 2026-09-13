/* consumer.c — a third party using the packaged C client.
 *
 * Compiled against the UNPACKED tarball prefix (via its pkg-config file) with
 * no reference to this repo, and run with SERVIRTIUM_VCR_LIB and
 * LD_LIBRARY_PATH unset: only the engine .so bundled inside the prefix, found
 * through the baked rpath, can satisfy the link and the load.
 *
 * Replays the canonical tape (GET /ok -> 200 text/plain "ok-body").
 */
#include <servirtium.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    sv_vcr *vcr;
    sv_str base;
    char cmd[1024];
    char buf[4096];
    FILE *p;
    size_t n;

    vcr = sv_playback("tapes/single_get.md");
    if (vcr == NULL) {
        fprintf(stderr, "FAIL: playback open failed: %s\n", sv_open_error());
        return 1;
    }

    base = sv_base_url(vcr);
    snprintf(cmd, sizeof(cmd), "curl -s -S '%s/ok'", base.ptr);
    p = popen(cmd, "r");
    if (p == NULL) {
        fprintf(stderr, "FAIL: could not run curl\n");
        sv_free(base);
        sv_close(vcr);
        return 1;
    }
    n = fread(buf, 1, sizeof(buf) - 1, p);
    pclose(p);
    buf[n] = '\0';
    while (n > 0 && (buf[n - 1] == '\n' || buf[n - 1] == '\r')) buf[--n] = '\0';

    if (strcmp(buf, "ok-body") != 0 || sv_last_kind(vcr) != SV_OK) {
        fprintf(stderr, "FAIL: body=%s last_kind=%d\n", buf, (int)sv_last_kind(vcr));
        sv_free(base);
        sv_close(vcr);
        return 1;
    }

    printf("PASS[discovery]: consumer replayed the canonical tape from the installed prefix\n");
    sv_free(base);
    sv_close(vcr);
    return 0;
}
