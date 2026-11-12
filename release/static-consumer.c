/* Link and exercise the same self-contained archive a SwiftPM consumer gets.
 * Calling the Bruno converter keeps its QuickJS dependency live at link time.
 */
#include "servirtium_vcr.h"
#include <stdio.h>

/* This converter is in the core ABI, but not the Swift wrapper's header yet. */
extern char *aether_vcr_embed_convert_bru(const char *, const char *, const char *);

static int check_error(char *error) {
    int failed = error == NULL || error[0] != '\0';
    if (failed) fprintf(stderr, "static consumer: %s\n", error ? error : "no error string returned");
    aether_vcr_embed_free_string(error);
    return failed;
}

int main(int argc, char **argv) {
    if (argc != 4) {
        fprintf(stderr, "usage: static-consumer <tape> <bruno-collection> <output-dir>\n");
        return 2;
    }
    void *handle = aether_vcr_embed_open_playback("static consumer", argv[1], "127.0.0.1", 0);
    if (handle == NULL) return 1;
    int failed = check_error(aether_vcr_embed_open_error(handle));
    if (aether_vcr_embed_tape_length(handle) != 1) failed = 1;
    aether_vcr_embed_destroy(handle);
    if (failed) return 1;
    if (check_error(aether_vcr_embed_convert_bru(argv[2], argv[3], ""))) return 1;
    puts("static consumer: tape loaded and Bruno conversion passed");
    return 0;
}
