# Servirtium Pharo

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for **Pharo Smalltalk**.

You point your system-under-test at a local URL. In **playback** it replays
a recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```smalltalk
| server body |
server := (Servirtium playback: 'tapes/climate_api.md') port: 0; start.
body := ZnClient new get: server baseUrl , '/api/v1/countries'.
self assert: server lastKind equals: #ok.   "optional: assert a clean match"
server stop.
```

Or auto-closing (always stops the server, flushing the tape in record mode):

```smalltalk
(Servirtium playback: 'tapes/climate_api.md') startThenDo: [ :server |
    | body |
    body := ZnClient new get: server baseUrl , '/api/v1/countries'.
    self assert: server lastKind equals: #ok ].
```

## What this is (and isn't)

This is a thin **UnifiedFFI (uFFI)** layer over the **Aether VCR** core. All
record/replay machinery — markdown parse/emit, the HTTP server, request
matching, redactions, notes, drift detection, static bypass, gzip/chunked
handling — lives in this repo as a pure-Aether module (`core/vcr.ae`, with the
C-ABI seam in `core/embed.ae`), built on Aether stdlib primitives. This binding
FFI-calls a precompiled native build of that core
(`native/libservirtium_vcr.so`); it does **not** reimplement Servirtium in
Smalltalk.

## Getting it

Not on a Pharo catalog. Load the Tonel sources of the release tag with Metacello straight from
GitHub, and fetch the native library from the same release; the binding reads
`SERVIRTIUM_VCR_LIB` from the process environment **when the image starts**. You need a Pharo 12
VM and image on `PATH`/in `$PHARO_DIR` (the `pharo` launcher below is the VM executable):

```sh
set -eu
TAG=v2.0.0-alpha.12                      # a release tag of servirtium-vcr; nothing else to edit
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

# 2. load the project into a copy of your image, with the library in the environment
export SERVIRTIUM_VCR_LIB="$LIBDIR/libservirtium_vcr.$EXT"      # must be set before the image starts
PHARO_IMAGE=${PHARO_IMAGE:-Pharo.image}                        # your image (the VM loads and saves it)
pharo --headless "$PHARO_IMAGE" eval --save "
Metacello new
  baseline: 'Servirtium';
  repository: 'github://servirtium/servirtium-vcr:$TAG/pharo/src';
  load."

# 3. check it: replay a recorded tape
mkdir -p tapes
curl -fsSL -o tapes/single_get.md $RAW/pharo/src/Servirtium-Tests/tapes/single_get.md
pharo --headless "$PHARO_IMAGE" eval "
| s | s := (Servirtium playback: 'tapes/single_get.md') port: 0; start.
[ (ZnClient new get: s baseUrl , '/ok') displayString , ' ' , s lastKind printString ] ensure: [ s stop ]"   "-> 'ok-body' #ok"
```

The Metacello dependency, in your own baseline:
`spec baseline: 'Servirtium' with: [ spec repository: 'github://servirtium/servirtium-vcr:v2.0.0-alpha.12/pharo/src' ]`.
There is no registry or catalog form yet.

### Notes for coding agents

- **Unverified recipe**: this was written from the loader source and not run (no Pharo VM was
  available when it was written). If a step differs in your Pharo version, trust the
  mechanism (the Metacello repository string, the environment variable) over the exact
  command line, and tell the maintainers.
- The repository string is `github://<owner>/<repo>:<tag>/<subdirectory>`: the Tonel
  sources are in `pharo/src`, not at the repo root. `load: 'tests'` (instead of `load`) also
  loads the SUnit suite.
- `SERVIRTIUM_VCR_LIB` is read from the OS environment when the library name is resolved: set
  it before launching the image, or call `ServirtiumLibrary libPath: '/abs/path/libservirtium_vcr.so'`
  in the image before the first server starts. It must be an absolute path to an existing file.
- The library must be at least as new as the Smalltalk source: same tag for both. An older
  library fails at the first call with a `FFIExternalReferenceNotFound`-style error naming an
  `aether_vcr_embed_...` symbol. Use `-musl` assets on Alpine.
- Do not commit the library into the image's directory tree or the git-ignored `native/` of a clone.
- Windows: use the `.dll` asset and its full path.

## Docs

- **[docs/usage.md](docs/usage.md)** — playback, record, redactions,
  unredactions, header removal, notes, strict matching, static content,
  drift, diagnostics — with code.
- **[docs/features.md](docs/features.md)** — Servirtium capability matrix and
  what's covered by tests.
- **[docs/architecture.md](docs/architecture.md)** — how the uFFI layering
  works (Smalltalk → uFFI → `core/embed.ae` → `core/vcr.ae`), how the `.so`
  loads, string ownership/freeing, and the one-server-per-port (handle-based) model.
- **[docs/building.md](docs/building.md)** — building the native library and
  running the headless SUnit suite.

## Concurrency: one server per port

The ABI runs **one server per port**: each `start` opens an independent VCR keyed by its
own native handle, so **N VCR servers can run concurrently in one image**
without their tapes, replay cursors, mutations, or diagnostics bleeding into
each other. Every config / diagnostic call is scoped to a single handle. You
don't have to serialize fixtures — two `(Servirtium playback: …) start` servers
can be alive at once. (The core's `core_tests/.concurrent.ae` probe proves two
playback VCRs on two ports replaying their own tapes side by side.) See
[docs/architecture.md](docs/architecture.md#concurrency-one-server-per-port).

## Building from source

**Casual dev, one command** (installs the Aether toolchain via its official
`get.sh` to `~/.local` if missing — no sudo, no tests; needs `curl` — then
builds the native lib and runs the headless SUnit suite; needs a Pharo VM +
image already present, default `$HOME/.local/pharo`):

```sh
./bootstrap.sh
```

Already have `ae` (≥ 0.227.0, for `std.regex`) and a Pharo VM/image? Drive the
two steps directly:

```sh
./build-native.sh     # builds native/libservirtium_vcr.so (needs `ae`)
./run-tests.sh        # loads src/ into a fresh image copy, runs SUnit headless
```

`run-tests.sh` exits non-zero on any SUnit failure or error. Details in
[docs/building.md](docs/building.md).
