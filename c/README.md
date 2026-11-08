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

Every other binding in this repo bridges a runtime to libservirtium_vcr — ctypes,
Fiddle, koffi, cgo, a NIF, P/Invoke, Panama. C needs none of that: **the
libservirtium_vcr's ABI is already C.** So what this binding adds is exactly three things:

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
- `src/servirtium.c` — the implementation: forwards to libservirtium_vcr, converts
  integers, handles string ownership. Nothing else.
- `test/playback_test.c` — 17 facts over the canonical tape, plus the layer's
  own contracts (owned strings, a failed open reporting why, cursor reset).
- `tapes/single_get.md` — the canonical sample tape (`GET /ok` → `200
  text/plain` / `ok-body`), byte-identical to every other binding's copy.

## Getting it

There is no package: the binding is one header and one source file, and the native library
is **linked** (no `dlopen`). Vendor `servirtium.h` and `servirtium.c` from the release tag
into your project, fetch the library from the same release, and compile the `.c` with your
own sources. In your own project:

```sh
set -eu
TAG=v2.0.0-alpha.13                      # a release tag of servirtium-vcr; nothing else to edit
REL=https://github.com/servirtium/servirtium-vcr/releases/download/$TAG
RAW=https://raw.githubusercontent.com/servirtium/servirtium-vcr/$TAG
# 1. the native library for this OS/arch, checksum-verified, into ~/.servirtium-vcr/$TAG
case "$(uname -s)" in
  Linux)   OS=linux;   EXT=so;    ldd --version 2>&1 | grep -qi musl && LIBC=-musl || LIBC= ;;
  Darwin)  OS=macos;   EXT=dylib; LIBC= ;;
  FreeBSD) OS=freebsd; EXT=so;    LIBC= ;;
  *) echo "unsupported OS (Windows: take the .dll asset by hand)"; exit 1 ;;
esac
case "$(uname -m)" in x86_64|amd64) ARCH=x86_64 ;; arm64|aarch64) ARCH=arm64 ;; *) echo "unsupported arch"; exit 1 ;; esac
LIBDIR="$HOME/.servirtium-vcr/$TAG"        # keep it OUT of your git tree
mkdir -p "$LIBDIR"
LIB=libservirtium_vcr-$TAG-$OS-$ARCH$LIBC.$EXT
curl -fsSL -o "$LIBDIR/$LIB" "$REL/$LIB"
curl -fsSL -o "$LIBDIR/$LIB.sha256" "$REL/$LIB.sha256"
( cd "$LIBDIR" && { sha256sum -c "$LIB.sha256" 2>/dev/null || shasum -a 256 -c "$LIB.sha256"; } )
cp "$LIBDIR/$LIB" "$LIBDIR/libservirtium_vcr.$EXT"     # the loader/linker want the plain name

# 2. the binding sources (vendor these two files; or keep them under third_party/)
mkdir -p third_party/servirtium
curl -fsSL -o third_party/servirtium/servirtium.h $RAW/c/include/servirtium.h
curl -fsSL -o third_party/servirtium/servirtium.c $RAW/c/src/servirtium.c

# 3. check it: build and run a replay of a recorded tape
mkdir -p tapes
curl -fsSL -o tapes/single_get.md $RAW/c/example/tapes/single_get.md
curl -fsSL -o servirtium_check.c $RAW/c/example/consumer.c        # a complete main(); needs curl on PATH
cc -std=gnu99 -Ithird_party/servirtium servirtium_check.c third_party/servirtium/servirtium.c \
   -L"$LIBDIR" -lservirtium_vcr -Wl,-rpath,"$LIBDIR" -o servirtium_check
./servirtium_check                  # -> PASS[discovery]: consumer replayed the canonical tape ...
```

Link line for your own program: `cc -std=c99 -Ithird_party/servirtium yours.c third_party/servirtium/servirtium.c
-L<dir> -lservirtium_vcr -Wl,-rpath,<dir>`, where `<dir>` holds a file named exactly
`libservirtium_vcr.so` / `.dylib`. Nothing to `pkg-config` unless you build the prefix
yourself (`aeb c/.package.ae` writes a `servirtium.pc`; no release asset carries it).

### Notes for coding agents

- `-lservirtium_vcr` needs the **plain** file name; the release asset's versioned name does
  not satisfy it (`cannot find -lservirtium_vcr` / `library 'servirtium_vcr' not found`).
  Step 1 copies it to the plain name.
- `error while loading shared libraries: libservirtium_vcr.so` at run time means the binary
  has no rpath to the directory (or you moved it); add `-Wl,-rpath,<dir>` or set `LD_LIBRARY_PATH`
  (`DYLD_LIBRARY_PATH` on macOS) for a quick test. The library must be at least as new as
  `servirtium.c`: same tag for both, or the link fails with `undefined reference to 'aether_vcr_embed_...'`.
- The binding itself is plain C99; the check program uses POSIX `popen`, hence `-std=gnu99` there
  (`-std=c99` alone gives `implicit declaration of function 'popen'`).
- Compile `servirtium.c` as C (`cc`), never with a C++ compiler (the symbols would be mangled);
  C++ users see `cpp/README.md`.
- Do not vendor the library into git; do keep the two source files at one tag.
- Windows: use the `.dll` asset with its `.dll.lib` import library by hand.

### Stable ordering and playback range

Both are opt-in and one call each; strings come back `""` on success, else the reason
(release with `sv_free`).

- **Stable order (record side):** `sv_set_sort_json_keys(vcr, 1)` (and `sv_get_sort_json_keys`),
  `sv_sort_json_array(vcr, path, by)`, `sv_sort_json_array_at(vcr, request_regex, path, by)`,
  `sv_set_sort_response_headers(vcr, 1)` (and `sv_get_sort_response_headers`),
  `sv_sort_header_value(vcr, "Allow")`, `sv_clear_stable_order(vcr)`. Sorted JSON is only
  written pretty-printed: with a JSON sort rule and no `sv_set_pretty_json`, `sv_close_and_flush`
  returns `sort_json_keys needs pretty_json: ...` and writes nothing.
- **Playback range (playback only):** `sv_set_playback_range(vcr, from, to)` replays only the
  tape's `## Interaction N` headings `from`..`to` (0-based, inclusive; `to < 0` = through the last);
  a record handle or a bad range is refused. `sv_clear_playback_range`,
  `sv_get_playback_range_from` / `_to` (-1 when none).

## Building and testing

**Get the native library** (`libservirtium_vcr`) for your OS/arch from the
[GitHub releases](https://github.com/servirtium/servirtium-vcr/releases) — one
prebuilt shared library per platform, each with a `.sha256` — and (optionally)
verify it:

```sh
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v2.0.0-alpha.13/libservirtium_vcr-v2.0.0-alpha.13-linux-x86_64.so
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v2.0.0-alpha.13/libservirtium_vcr-v2.0.0-alpha.13-linux-x86_64.so.sha256
sha256sum -c libservirtium_vcr-v2.0.0-alpha.13-linux-x86_64.so.sha256   # -> OK
```

Available platforms: linux (x86_64, arm64), macOS (x86_64, arm64), Windows
(x86_64, arm64), FreeBSD (x86_64). No Aether toolchain is needed to *use* the
library. (For macOS use the `.dylib`, for Windows the `.dll`.)

**Build the package locally.** Nothing is published to a package registry yet,
so you compile this binding's bridge library (`libservirtium_c.so`) yourself
against the downloaded lib. Needs a C compiler (`cc`). Building the whole
relocatable prefix a C consumer points `-I`/`-L` at — from the repo root, with
the downloaded library:

```sh
mkdir -p dist/include dist/lib/pkgconfig
cp c/include/servirtium.h dist/include/
cp libservirtium_vcr-v2.0.0-alpha.13-linux-x86_64.so dist/lib/libservirtium_vcr.so
cc -O2 -std=c99 -fPIC -shared -I c/include c/src/servirtium.c \
   -L dist/lib -lservirtium_vcr -Wl,-rpath,'$ORIGIN' \
   -o dist/lib/libservirtium_c.so
```

That gives you a `dist/` tree (`include/` + `lib/`, both `.so` side by side, the
`$ORIGIN` rpath letting `libservirtium_c.so` find `libservirtium_vcr.so` beside
it) that your own program links against — `-lservirtium_c -lservirtium_vcr` plus
an rpath to `dist/lib`. (The `aeb c/.package.ae` build does exactly this and also
writes a `pkg-config` `servirtium.pc`.)

The lib is resolved at **link time**: put the downloaded `libservirtium_vcr`
where the linker's `-L`/rpath finds it (see the by-hand link below), and
`-lservirtium_vcr` plus an rpath to its directory picks it up.

Contributors who want to build the lib from source instead (Aether toolchain
required) can use `aeb`:

C99, no dependencies beyond `libservirtium_vcr.so`. Needs a C compiler.

```sh
aeb c/.tests.ae     # builds libservirtium_vcr, compiles src/ to an object,
                    # links + runs the test binary
```

Three leaves, because the object is shared:

- `c/.objects.ae` — compiles `src/servirtium.c` and publishes it as the
  `c_objects` artifact, so a dependent links it **without recompiling**. Used
  by the C test binary *and* by `cpp/`, whose C++ compiler must not recompile
  `servirtium.c` (its `extern "C"` symbols would come out mangled).
- `c/.build.ae` — links the test binary against that object + `libservirtium_vcr.so`
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
