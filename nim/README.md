# servirtium-nim

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for Nim.

You point your system-under-test at a local URL. In **playback** it replays
a recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```nim
import servirtium

let vcr = playback("tapes/climate_api.md")
doAssert vcr.start()

# ... point your HTTP client at vcr.baseUrl() & "/api/v1/countries" ...

doAssert vcr.lastKind() == Ok   # optional: assert a clean match
vcr.close()                     # playback stops; a record server flushes the tape
```

## What this is (and isn't)

This is a thin Nim layer over the **Aether VCR** core. All record/replay
machinery — markdown parse/emit, the HTTP server, request matching,
redactions, notes, drift detection, static bypass, gzip/chunked handling —
lives in the in-repo, pure-Aether `core/vcr.ae` module (built on Aether stdlib
primitives, with the Servirtium logic in this repo, *not* the Aether standard
library). This binding links a precompiled native build of that core (the
`aether_vcr_embed_*` C-ABI exported by `core/embed.ae`); it does **not**
reimplement Servirtium in Nim.

## Layout

- `src/servirtium.nim` — the idiomatic wrapper: `playback` / `record` returning
  a `VcrServer` configured open → set → `start`, with `baseUrl`, `port`,
  `tapeLength`, `lastKind`/`lastError`/`lastIndex`, `resetCursor`,
  `clearLastError`, `close`, plus the full mutation/format set (`redact`,
  `unredact`, `removeHeader`, `normalizeWholeTape`, `redactWholeTape`,
  `staticContent`, `untaped`, `note`, `setStrictHeaders`, `setMatchJsonBody`,
  `setMatchMultiple`, `matchHeader`,
  `indentCodeBlocks`,
  `emphasizeHttpVerbs`, `failIfChanged`).
- `src/servirtium/native.nim` — the raw FFI surface, 1:1 with the
  `aether_vcr_embed_*` C-ABI, bound with `{.importc, cdecl.}` and linked via
  `{.passL.}`.
- `tests/` — the suite (see below). `tests/upstream.nim` is a throwaway
  `std/asynchttpserver` upstream used by the record/mutation suites.
- `docs/` — [architecture](docs/architecture.md), [building](docs/building.md),
  [features](docs/features.md), [usage](docs/usage.md).

## What's tested

Full feature/test parity with the Go binding — 15 cases across four files,
all run against the real native libservirtium_vcr:

- **`tests/playback_test.nim`** — replays a recorded GET; flags a path mismatch
  via diagnostics; unredaction lets a scrubbed tape match (secure_get +
  `unredact` Authorization); strict matching flags a missing request header;
  static content served from disk; untaped path 404s without consuming the
  cursor; two playback servers at once (one server per port).
- **`tests/record_test.nim`** — record then replay the same interaction;
  record + replay a POST with a body.
- **`tests/mutation_test.nim`** — redacts a response body before it lands on the
  tape; attaches a note; removes a named response header; mutation state does
  not leak between fixtures; `failIfChanged` raises on drift.
- **`tests/playback.nim`** — the original curl-driven playback smoke test.

## Getting it

There is no nimble package and none is published: take the release tag as source on the
`--path`, and link the native library from the same release. The library is **linked at
compile time** (`{.passL.}`), with its directory baked in as an rpath, so the binary then
needs no `LD_LIBRARY_PATH`. In your own project:

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

# 2. the Nim sources of that tag
git clone --depth 1 --branch $TAG https://github.com/servirtium/servirtium-vcr.git third_party/servirtium-vcr

# 3. check it: compile and run a replay of a recorded tape
export SERVIRTIUM_VCR_LIB="$LIBDIR/libservirtium_vcr.$EXT"      # needed at COMPILE time, not at run time
mkdir -p tapes
curl -fsSL -o tapes/single_get.md $RAW/nim/example/tapes/single_get.md
cat > servirtium_check.nim <<'NIM'
import servirtium
import std/httpclient
let vcr = playback("tapes/single_get.md")
doAssert vcr.start()
echo newHttpClient().getContent(vcr.baseUrl() & "/ok"), " ", vcr.lastKind()   # -> ok-body Ok
vcr.close()
NIM
nim c -r --hints:off --path:third_party/servirtium-vcr/nim/src servirtium_check.nim
```

In `config.nims` / the command line the dependency is `--path:third_party/servirtium-vcr/nim/src`
(or `switch("path", ...)`). A future nimble form would be `requires "servirtium >= 2.0.0-alpha.13"`;
there is none today.

### Notes for coding agents

- `SERVIRTIUM_VCR_LIB` is read **when `nim c` runs** (`staticExec`), and it is the path of the
  **file** `libservirtium_vcr.<so|dylib>`: Nim takes its directory for `-L` and the rpath. The
  file must be named exactly `libservirtium_vcr.so`/`.dylib` (the versioned release name will not
  satisfy `-lservirtium_vcr`; step 1 copies it). A directory path is wrong: Nim takes *its* parent (`-L ~/.servirtium-vcr`) and the link fails
  with `cannot find -lservirtium_vcr`.
  Changing the variable later does not rebuild: delete `nimcache` or pass `-f`.
- If it is unset, the sources fall back to `core/native` beside the clone (does not exist in a
  release checkout), then `<clone>/nim/../native`. A missing library shows as
  `cannot find -lservirtium_vcr` at link time.
- The library must be at least as new as the Nim source: use the same tag for both. An older
  library fails the link with `undefined reference to 'aether_vcr_embed_...'`.
- The binary records the library's directory as an rpath: do not delete `~/.servirtium-vcr/$TAG`
  while binaries built against it are in use; rebuild if you move it.
- Needs `--threads:on` only if your own code uses threads (the upstream test suites do).
- Windows: use the `.dll` asset (`servirtium_vcr.dll`) by hand.

## Building / testing from source

```sh
# build libservirtium_vcr from core/, then run the whole suite against it.
# --threads:on is required: the record/mutation suites run their throwaway
# upstream's async accept loop on a dedicated thread.
cd nim
LIB=../core/native/libservirtium_vcr.so
for t in tests/playback.nim tests/playback_test.nim \
         tests/record_test.nim tests/mutation_test.nim; do
  SERVIRTIUM_VCR_LIB="$LIB" \
    nim c -r --hints:off --threads:on --path:src --path:tests "$t" || break
done
```

Or via aeb: `aeb nim/.tests.ae` (builds `libservirtium_vcr.so` first, then runs all
four files). The playback suite drives requests with `curl` via `osproc` (no
HTTP-client dependency); the record/mutation suites use `std/httpclient` from
the main thread, since forking `curl` while the async upstream thread is live
is unreliable on this stdlib. See [docs/building.md](docs/building.md).

## Concurrency: one server per port

The Aether VCR runs **one server per port**: each `VcrServer` owns its own
native handle with its own tape, cursor, mutations, and diagnostics, so **N
independent servers can run concurrently in one process** without interfering.
Lifecycle is open -> configure(handle) -> start.

## License

Licensed under the MIT License ([LICENSE](../LICENSE) or
http://opensource.org/licenses/MIT).
