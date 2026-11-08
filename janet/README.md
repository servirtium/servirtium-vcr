# servirtium-janet

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format, for **Janet**.

You point your system-under-test at a local URL. In **playback** it replays a
recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```janet
(import servirtium)

(servirtium/with-playback [vcr "tapes/single_get.md"]
  # drive your SUT at (servirtium/base-url vcr) ...
  (assert (= :ok (servirtium/last-kind vcr))))   # optional: assert a clean match
                                                 # the server is stopped on every path
```

## What this is, and why the built-in FFI

A thin Janet layer over the **Aether VCR** core. All record/replay machinery
(markdown parse/emit, the HTTP server, request matching, redactions, notes,
drift detection, static bypass, gzip/chunked handling) lives in the in-repo,
pure-Aether `core/vcr.ae`, compiled once to `libservirtium_vcr`. This binding
does not reimplement Servirtium in Janet.

**Decision: Janet's built-in FFI, not a native module.** Janet can reach C two
ways: a native module (`declare-native` in jpm, C compiled against `janet.h`,
the route the Lua binding takes) and the built-in FFI (`ffi/native`,
`ffi/lookup`, `ffi/signature`, `ffi/call`, since Janet 1.23). The FFI expresses
this ABI cleanly, so the binding is **pure Janet**: no C extension, no compiler
or `janet.h` on the consumer's machine, nothing to build per Janet version. What
the ABI needs, and how the FFI covers it:

- strings in: `:string` (Janet strings are NUL-terminated);
- ints and bools in and out: `:int32`;
- the opaque handle, and every caller-owned `char*` out: `:ptr`, with a NULL
  return arriving as `nil`. The string is measured with libc `strlen`, copied
  through `ffi/pointer-buffer`, then released with
  `aether_vcr_embed_free_string`. That rule lives in one function (`take`);
  declaring the return `:string` would copy too but lose the pointer and leak;
- no callbacks cross the boundary (named secrets are a loop of calls), so none
  of the FFI's weaker spots (trampolines) is touched.

The price is that a wrong signature is a runtime fault, not a compile error. The
signatures are one table (`abi` in `servirtium/init.janet`), copied from
`core/embed.ae`, and the suite calls every function in it. Details:
[docs/architecture.md](docs/architecture.md).

### What Janet adds

- **`with-playback` / `with-record` macros**: the server is stopped on every
  path; a record block flushes the tape when it ends normally and **discards**
  the recording if it raised, so a failed test cannot overwrite a good tape.
- **Options structs and keywords**: `{:strict-headers true :redact [[:response-body "tok" "X"]]}`,
  fields as `:request-headers`, outcomes as `:ok` / `:body-diff`. Unknown option
  keys raise, so a typo is not silently ignored.
- **Structured errors**: `(error {:error :servirtium :op "playback" :message "..."})`.
- **Lazy, discoverable library loading** (below).

## API at a glance

```janet
(servirtium/playback tape &opt opts)              # started server; (servirtium/stop vcr)
(servirtium/playback-url url &opt opts)
(servirtium/record tape upstream &opt opts)       # (servirtium/flush-tape vcr) / (servirtium/discard vcr)
(servirtium/with-playback [vcr tape opts?] body...)
(servirtium/with-record   [vcr tape upstream opts?] body...)

(servirtium/base-url vcr) (servirtium/port vcr) (servirtium/tape-length vcr)
(servirtium/last-kind vcr) (servirtium/last-index vcr) (servirtium/last-error vcr)
(servirtium/matched-cleanly? vcr) (servirtium/reset-cursor vcr)
(servirtium/diagnostics-json vcr) (servirtium/assert-no-mismatches vcr) (servirtium/test-context vcr "name")
(servirtium/har-import har tape) (servirtium/har-export tape har)
# configuration, as options or as functions: redact, unredact, substitute, remove-header,
# match-header, set-strict-headers, set-match-json-body, set-match-multiple, static-content,
# untaped, note, normalize-whole-tape, redact-whole-tape, add-license-notice,
# set-pretty-json, remove-transport-headers, remove-cloud-headers, redact-credentials,
# redact-credential-header, set-upstream-cafile, set-tls, ...
```

Every function has a docstring (`(doc servirtium/playback)`). Full tour and the
options table: [docs/usage.md](docs/usage.md); capability matrix:
[docs/features.md](docs/features.md).

## Layout

- `servirtium/init.janet`: the module (`(import servirtium)`): the FFI seam and the idiomatic surface.
- `project.janet`: the jpm manifest (a copy sits at the repository root so `jpm install <git url>` works).
- `test/`: `playback.janet`, `record.janet`, `helpers.janet`, `run_all.janet`.
- `example/`: a consumer project (`consumer_example.janet`), run by `aeb janet/.example.ae` against an installed copy.
- `tapes/`: the canonical `single_get.md` (`GET /ok` -> `200 text/plain` / `ok-body`, byte-identical to every other binding's copy) plus a strict and a substitution tape.

## Getting it

Nothing is published to the Janet package registry. The package is one `jpm`
project, installed from the repository at a release tag, plus the native library
from the same release, which the module loads at run time (`SERVIRTIUM_VCR_LIB`). You
need **Janet 1.23 or newer**, `jpm` and `git`; no C compiler. In your own
project directory:

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
cp "$LIBDIR/$LIB" "$LIBDIR/libservirtium_vcr.$EXT"     # the loader wants the plain name

# 2. the package, into ./jpm_tree (the tag is pinned in the bundle string)
jpm --tree=jpm_tree install "git::https://github.com/servirtium/servirtium-vcr.git::$TAG"

# 3. check it: replay a recorded tape
export JANET_PATH="$PWD/jpm_tree/lib"                           # and set both of these wherever your tests run
export SERVIRTIUM_VCR_LIB="$LIBDIR/libservirtium_vcr.$EXT"
mkdir -p tapes
curl -fsSL -o tapes/single_get.md $RAW/janet/example/tapes/single_get.md
janet -e '
(import servirtium)
(servirtium/with-playback [vcr "tapes/single_get.md"]
  (os/execute ["curl" "-fsS" (string (servirtium/base-url vcr) "/ok")] :p)
  (print " " (servirtium/last-kind vcr)))'                      # -> ok-body :ok
```

In a project of your own, the dependency is a line in `project.janet`:
`:dependencies [{:url "https://github.com/servirtium/servirtium-vcr.git" :tag "v2.0.0-alpha.13"}]`.
`jpm deps` then installs it, and `JANET_PATH` / `SERVIRTIUM_VCR_LIB` are the only
other moving parts.

### Notes for coding agents

- The repository root has a `project.janet` that points into `janet/`: that is why
  the bundle string is the repo URL with no subdirectory. A clone of `janet/` alone
  also installs (`cd janet && jpm --tree=... install`).
- **Library lookup order**, first hit wins: `(servirtium/set-library! path)` or the
  `:native-lib` option; `SERVIRTIUM_VCR_LIB`; `native/` inside the installed
  `servirtium/` directory (what `aeb janet/.package.ae` stages; empty in a git
  install); the bare file name through the OS loader. Loading is lazy, so
  `(import servirtium)` succeeds without the library; the first call that needs it
  raises `{:error :servirtium :op "load" ...}` saying what to download.
- `could not load the native library` with `no such file`: `SERVIRTIUM_VCR_LIB` is unset
  or is not an absolute path to the file. Wrong libc or arch (`-musl` on Alpine; the
  `.dylib` on macOS) shows as the `dlopen` error appended in that message.
- `error: could not find module servirtium`: `JANET_PATH` does not point at the
  `jpm_tree/lib` the install wrote. `jpm` installs to `JANET_MODPATH` (often a system
  directory needing sudo) unless `--tree=DIR` or `--local` is given.
- `unknown symbol ffi/native`: Janet is older than 1.23, or
  was built without the FFI.
- `aether_vcr_embed_...: ... no such symbol` (as `the native library has no ...`):
  the library is older than this binding. Use the same tag for both.
- Janet names are kebab-case (`last-kind`, not `last_kind`); `servirtium/flush` does
  not exist (Janet has its own `flush`): the tape is written by `flush-tape`.
- A failing option or call raises a **struct**, so `(string e)` prints
  `<struct 0x...>`; use `(string/format "%q" e)` or read `(e :message)`.
- The bundle string `git::URL::TAG` is jpm's form for a pinned tag. The version
  `2.0.0-alpha.13` is accepted by jpm as written; no respelling is needed.
- Windows: use the `.dll` asset and its full path. Untested here.

## Run the tests

```sh
aeb janet/.tests.ae
```

or by hand, with the library from `aeb core/.build.ae core_tests/.fixtures.ae`:

```sh
cd janet
SERVIRTIUM_VCR_LIB=$PWD/../target/build/core/lib/libservirtium_vcr.so janet test/run_all.janet
```

The suite: playback (the canonical tape, a path mismatch, strict matching with
and without the header, unredaction, static content, untaped paths, two servers
on two ports, cursor reset, `match-multiple`, substitution with
`assert-all-consumed`, `playback-url`, structured errors, TLS rejection,
retained diagnostics) and record (record then replay incl. a chunked upstream
and a POST, license notice, pretty JSON, header and credential presets,
redaction, notes, header removal, whole-tape normalize/redact, state not leaking
between fixtures, drift with `:fail-if-changed` and `:or-check`, discard,
HAR round trip, structured redaction and named secrets through the shared
`core_tests` fixtures). The HTTP client is Janet's own `net/*`; the record
upstream is the compiled Aether `test_upstream`. `.tests.ae` uses aeb's
Janet SDK (`janet.test()`, aeb v0.343+), gated by `bootstrap.sh` on `janet`
being on PATH.

## Concurrency: one server per port

Each `playback` / `record` owns its own native handle with its own tape, cursor,
mutations and diagnostics, so N servers run concurrently in one process without
interfering. Open each on port `0` and read the port back with
`(servirtium/port vcr)`.

## License

Licensed under the MIT License (see the repository root `LICENSE`), or
http://opensource.org/licenses/MIT.
