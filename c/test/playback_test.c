/* playback_test.c — playback facts for the C client.
 *
 * Replays the canonical one-interaction tape (GET /ok -> 200 text/plain
 * "ok-body") — the same tape every other binding in this repo replays
 * byte-for-byte — and asserts the body, a clean match, the diagnostics, and
 * the ergonomic layer's own contracts (owned strings, a failed open reporting
 * why, cursor reset). No test framework: a plain main() returning 0 on
 * success, which is what c.tests treats as a pass.
 *
 * The tape path comes in as argv[1] (c/.tests.ae passes the absolute path, so
 * the binary's working directory doesn't matter); it falls back to the
 * repo-relative default for a by-hand run from c/.
 */
#include "servirtium.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static int failures = 0;

static void ck(const char *label, int cond) {
    if (cond) {
        printf("  ok: %s\n", label);
    } else {
        printf("FAIL: %s\n", label);
        failures++;
    }
}

/* GET a URL with curl and return the body with any trailing newline trimmed.
 * Caller frees. NULL on a pipe failure. */
static char *http_get(const char *url) {
    char cmd[1024];
    char buf[4096];
    FILE *p;
    size_t n;

    snprintf(cmd, sizeof(cmd), "curl -s -S '%s'", url);
    p = popen(cmd, "r");
    if (p == NULL) return NULL;
    n = fread(buf, 1, sizeof(buf) - 1, p);
    pclose(p);
    buf[n] = '\0';
    while (n > 0 && (buf[n - 1] == '\n' || buf[n - 1] == '\r')) buf[--n] = '\0';
    return strdup(buf);
}

/* The HTTP status curl reports for a URL, as a string ("200", "404", ...). */
static char *http_status(const char *url) {
    char cmd[1024];
    snprintf(cmd, sizeof(cmd), "curl -s -o /dev/null -w '%%{http_code}' '%s'", url);
    {
        char buf[64];
        FILE *p = popen(cmd, "r");
        size_t n;
        if (p == NULL) return NULL;
        n = fread(buf, 1, sizeof(buf) - 1, p);
        pclose(p);
        buf[n] = '\0';
        return strdup(buf);
    }
}

int main(int argc, char **argv) {
    const char *tape = (argc > 1 && argv[1][0] != '\0')
                           ? argv[1]
                           : "tapes/single_get.md";
    sv_vcr *vcr;
    sv_str base, err;
    char *url, *body, *status, *missing;

    /* ---- a failed open reports why, and returns NULL ---- */
    /* Derived from the real tape path so this stays a genuine "not on disk"
       case wherever the binary is run from. */
    missing = malloc(strlen(tape) + 16);
    sprintf(missing, "%s.nonexistent", tape);
    vcr = sv_playback(missing);
    ck("missing tape yields NULL", vcr == NULL);
    ck("missing tape sets sv_open_error", strlen(sv_open_error()) > 0);
    if (vcr != NULL) sv_close(vcr);
    free(missing);

    /* ---- playback of the canonical tape ---- */
    vcr = sv_playback(tape);
    if (vcr == NULL) {
        fprintf(stderr, "FATAL: playback open failed: %s\n", sv_open_error());
        return 1;
    }
    ck("successful open clears sv_open_error", strlen(sv_open_error()) == 0);

    base = sv_base_url(vcr);
    ck("base_url is an owned non-empty string", base.ptr != NULL && base.len > 0);
    ck("base_url is loopback http",
       base.ptr != NULL && strncmp(base.ptr, "http://127.0.0.1:", 17) == 0);
    ck("base_url len matches strlen", base.ptr != NULL && base.len == strlen(base.ptr));
    printf("base_url = %s\n", base.ptr ? base.ptr : "(null)");

    ck("port is bound", sv_port(vcr) > 0);
    ck("tape_length is 1", sv_tape_length(vcr) == 1);

    url = malloc(base.len + 8);
    sprintf(url, "%s/ok", base.ptr);

    body = http_get(url);
    ck("body is ok-body", body != NULL && strcmp(body, "ok-body") == 0);
    ck("last_kind is SV_OK", sv_last_kind(vcr) == SV_OK);
    ck("last_index is 0", sv_last_index(vcr) == 0);

    err = sv_last_error(vcr);
    ck("last_error is empty on a clean match",
       err.ptr == NULL || err.len == 0);
    sv_free(err);

    /* ---- cursor reset replays the same tape again ---- */
    sv_reset_cursor(vcr);
    free(body);
    body = http_get(url);
    ck("replays again after reset_cursor",
       body != NULL && strcmp(body, "ok-body") == 0);
    ck("last_kind still SV_OK after reset", sv_last_kind(vcr) == SV_OK);

    /* ---- an off-tape path is flagged, not served ---- */
    {
        char *miss = malloc(base.len + 16);
        sprintf(miss, "%s/nope", base.ptr);
        status = http_status(miss);
        ck("off-tape path is not 200",
           status != NULL && strcmp(status, "200") != 0);
        ck("off-tape path flags a non-Ok outcome", sv_last_kind(vcr) != SV_OK);
        free(status);
        free(miss);
    }

    free(url);
    free(body);
    sv_free(base);
    sv_close(vcr);

    if (failures == 0) {
        printf("PASS: c servirtium playback\n");
        return 0;
    }
    printf("FAILED: %d c test(s)\n", failures);
    return 1;
}
