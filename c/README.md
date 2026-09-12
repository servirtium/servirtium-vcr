# servirtium-c

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for **C**.

You point your system-under-test at a local URL. In **playback** it replays
a recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```c
#include <servirtium.h>

sv_vcr *vcr = sv_playback("tapes/single_get.md");
if (vcr == NULL) { fprintf(stderr, "%s\n", sv_open_error()); return 1; }

sv_str base = sv_base_url(vcr);        /* "http://127.0.0.1:54213" */
/* ... point the system-under-test at base.ptr and drive it ... */
assert(sv_last_kind(vcr) == SV_OK);    /* optional: assert a clean match */

sv_free(base);
sv_close(vcr);
```

## What this is (and isn't)

This is the thinnest possible ergonomic layer over the **Aether VCR** core's
flat C ABI (`aether_vcr_embed_*`, from `core/embed.ae`). All record/replay
machinery — markdown parse/emit, the HTTP server, request matching, redactions,
notes, drift detection, static bypass, gzip/chunked handling — lives in the
in-repo, pure-Aether `core/vcr.ae` module. This binding does **not**
reimplement Servirtium in C.

### The one binding with no FFI bridge

Every other binding in this repo bridges a runtime to the engine — ctypes,
Fiddle, koffi, cgo, a NIF, P/Invoke, Panama. C needs none of that: **the
engine's ABI is already C.** So what this binding adds is exactly three things:

1. **the ABI declared once**, so a consumer doesn't hand-write 42 externs;
2. **the Field and Outcome integers as real enums** (`sv_field`, `sv_outcome`);
3. **the caller-owned-string discipline made safe** — every ABI `char*` comes
   back as an `sv_str` you release with `sv_free` — plus open+start+error
   reporting folded into one call per mode, so a failed open returns `NULL`
   with the reason in `sv_open_error()` and never leaves a half-started server
   behind.

This header is **also** the substrate the C++ client (`cpp/`) wraps in RAII.

## Layout

- `include/servirtium.h` — the public header: `sv_playback`, `sv_playback_on`,
  `sv_playback_url`, `sv_record`, `sv_record_on`, the introspection and
  diagnostic calls, the full config surface (redactions, normalizations,
  header removals, the three opt-in matchers, notes, static content, untaped
  paths), the three flush variants, and the HAR converters.
- `src/servirtium.c` — the implementation: forwards to the engine, converts
  integers, handles string ownership. Nothing else.
- `test/playback_test.c` — 17 facts over the canonical tape, plus the layer's
  own contracts (owned strings, a failed open reporting why, cursor reset).
- `tapes/single_get.md` — the canonical sample tape (`GET /ok` → `200
  text/plain` / `ok-body`), byte-identical to every other binding's copy.

## Building and testing

C99, no dependencies beyond the engine `.so`. Needs a C compiler.

```sh
aeb c/.tests.ae     # builds the engine, compiles src/ to an object,
                    # links + runs the test binary
```

Three leaves, because the object is shared:

- `c/.objects.ae` — compiles `src/servirtium.c` and publishes it as the
  `c_objects` artifact, so a dependent links it **without recompiling**. Used
  by the C test binary *and* by `cpp/`, whose C++ compiler must not recompile
  `servirtium.c` (its `extern "C"` symbols would come out mangled).
- `c/.build.ae` — links the test binary against that object + the engine `.so`
  (with an rpath, so it runs without `LD_LIBRARY_PATH`).
- `c/.tests.ae` — runs it, passing the tape by absolute path.

By hand:

```sh
cc -Ic/include -c c/src/servirtium.c -o /tmp/servirtium.o
cc -Ic/include c/test/playback_test.c /tmp/servirtium.o \
   target/build/core/lib/libservirtium_vcr.so \
   -Wl,-rpath,$PWD/target/build/core/lib -o /tmp/sv_c_test
/tmp/sv_c_test c/tapes/single_get.md
```

Link your own program the same way: `-lservirtium_vcr` plus an rpath to its
directory.
