# servirtium-cpp

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for **C++** (header-only, C++17).

You point your system-under-test at a local URL. In **playback** it replays
a recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```cpp
#include <servirtium.hpp>

{
    auto vcr = servirtium::Vcr::playback("tapes/single_get.md");
    auto body = http_get(vcr.base_url() + "/ok");   // your HTTP client
    assert(body == "ok-body");
    assert(vcr.last_kind() == servirtium::Outcome::Ok);
}   // <- destructor stops the server
```

## What this is (and isn't)

This is a **header-only RAII wrapper over the C client**
(`c/include/servirtium.h`), which is itself the ergonomic layer over the
libservirtium_vcr's flat C ABI. All record/replay machinery — markdown parse/emit, the
HTTP server, request matching, redactions, notes, drift detection, static
bypass, gzip/chunked handling — lives in the in-repo, pure-Aether
`core/vcr.ae` module. This binding does **not** reimplement Servirtium in C++.

There is **no second FFI**: C++ links the C client's object (compiled *as C*,
so its `extern "C"` symbols aren't mangled) and `libservirtium_vcr.so`.

### What C++ adds over the C client

- **RAII** — the server is stopped by the destructor, on every path including
  an exception, so a test can't leak a listener.
- **`std::string` in, `std::string` out** — the ABI's caller-owned `char*`
  discipline never reaches user code; there is no `sv_free` to forget.
- **Exceptions** (`servirtium::Error`) instead of `NULL` handles and
  error-string returns.
- **`enum class`** for `Field` and `Outcome`, and a `matched_cleanly()`
  shorthand for the assertion most tests actually want.
- **Move-only ownership** — one owner per handle, so the destructor runs once.

## Layout

- `include/servirtium.hpp` — the whole client (header-only): `Vcr` with
  `playback` / `playback_on` / `playback_url` / `record` / `record_on`
  factories, introspection and diagnostics, the full config surface, the three
  `flush*` variants, and the free-function HAR converters.
- `test/playback_test.cpp` — 20 facts over the canonical tape plus the C++
  specifics: RAII shutdown, a fresh bind after scope exit, move semantics,
  idempotent close, exception on a failed open.
- `tapes/single_get.md` — the canonical sample tape (`GET /ok` → `200
  text/plain` / `ok-body`), byte-identical to every other binding's copy.

## Getting it

There is no package: the binding is a header-only C++17 layer (`servirtium.hpp`) over the
C client (`servirtium.h` and `servirtium.c`), and the native library is **linked** (no
`dlopen`). Vendor the three files from the release tag, fetch the library from the same
release, compile the `.c` with the C compiler and your code with the C++ one. In your own
project:

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

# 2. the binding sources (vendor these three files; or keep them under third_party/)
mkdir -p third_party/servirtium
curl -fsSL -o third_party/servirtium/servirtium.h   $RAW/c/include/servirtium.h
curl -fsSL -o third_party/servirtium/servirtium.c   $RAW/c/src/servirtium.c
curl -fsSL -o third_party/servirtium/servirtium.hpp $RAW/cpp/include/servirtium.hpp

# 3. check it: build and run a replay of a recorded tape
mkdir -p tapes
curl -fsSL -o tapes/single_get.md $RAW/cpp/tapes/single_get.md
curl -fsSL -o servirtium_check.cpp $RAW/cpp/example/consumer.cpp   # a complete main(); needs curl on PATH
cc  -std=c99 -fPIC -Ithird_party/servirtium -c third_party/servirtium/servirtium.c -o servirtium_c.o
c++ -std=c++17 -Ithird_party/servirtium servirtium_check.cpp servirtium_c.o \
    -L"$LIBDIR" -lservirtium_vcr -Wl,-rpath,"$LIBDIR" -o servirtium_check
./servirtium_check                  # -> PASS[discovery]: consumer replayed the canonical tape ...
```

Link line for your own program: `c++ -std=c++17 -Ithird_party/servirtium yours.cpp servirtium_c.o -L<dir>
-lservirtium_vcr -Wl,-rpath,<dir>`, where `<dir>` holds a file named exactly `libservirtium_vcr.so` / `.dylib`.

### Notes for coding agents

- `servirtium.c` is C: compile it with `cc`, not `c++` (a C++ compiler mangles its symbols
  and the link fails with `undefined reference to 'sv_...'`). Hence the two compile steps.
- `-lservirtium_vcr` needs the **plain** file name; the release asset's versioned name does
  not satisfy it (`cannot find -lservirtium_vcr` / `library 'servirtium_vcr' not found`).
  Step 1 copies it.
- `error while loading shared libraries: libservirtium_vcr.so` at run time means no rpath to
  the directory (or you moved it): add `-Wl,-rpath,<dir>`, or `LD_LIBRARY_PATH` for a quick test.
- The library must be at least as new as the sources: same tag for all four files, or the
  link fails with `undefined reference to 'aether_vcr_embed_...'`.
- Errors are `servirtium::Error` exceptions; the check program catches them.
- Windows: use the `.dll` asset with its `.dll.lib` import library by hand.

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
so you build the native pieces yourself. This client is header-only over the C
client, so its package is exactly the C prefix plus `cpp/include/servirtium.hpp`:
first build the C prefix as in the [C README's "Build the package
locally"](../c/README.md) (needs a C compiler), then drop the header-only C++
layer beside its headers:

```sh
cp cpp/include/servirtium.hpp dist/include/
```

There is no separate compile step — `servirtium.hpp` is header-only C++17 over
the C ABI, so a consumer just adds `-I dist/include -std=c++17` and links the
same two `.so` from `dist/lib`. (The `aeb cpp/.package.ae` build reuses the C
prefix and adds this header, plus a `pkg-config` `servirtium-cpp.pc`.)

The lib is resolved at **link time**: this binding links the C client's object
plus `libservirtium_vcr.so`, so put the downloaded `libservirtium_vcr` where the
linker's `-L`/rpath finds it (see the by-hand link below).

Contributors who want to build the lib from source instead (Aether toolchain
required) can use `aeb`:

C++17, no dependencies beyond the C client + `libservirtium_vcr.so`. Needs a C++
compiler (and a C compiler for the C client's object).

```sh
aeb cpp/.tests.ae   # builds libservirtium_vcr + the C object, compiles and runs the
                    # C++ test binary
```

Include both header dirs and link the C object:

```sh
c++ -std=c++17 -Icpp/include -Ic/include cpp/test/playback_test.cpp \
    /tmp/servirtium.o target/build/core/lib/libservirtium_vcr.so \
    -Wl,-rpath,$PWD/target/build/core/lib -o /tmp/sv_cpp_test
/tmp/sv_cpp_test cpp/tapes/single_get.md
```

### A note on the test runner

`cpp/.tests.ae` uses **`c.tests`**, not `cpp.tests`, to run the binary — now
for one reason: `c.tests` documents itself as a generic binary runner
(`bldr.program_binary_of` — "prog may be a `c.program` OR an `aether.program`
(or any future binary builder)") and takes `run(leaf, args)`, so the tape path
is passed as `argv[1]` instead of being baked into the binary with a
compile-time `-D` define. `cpp.tests` passes no argv and no env.

It used to be for two reasons. `cpp.tests` also ran `binary 2>&1 | tee log`,
and a shell pipeline reports the status of its *last* command — so `tee`'s 0
masked a failing test binary and this leaf went green on a red suite. That was
observed here: a genuinely failing assertion printed `FAILED: 1 cpp test(s)`
and the leaf still reported PASS. **That is now fixed upstream**: aeb's
cpp/d/swift/dart/gleam/jest/moonbit/java test runners go through
`bldr._sh_tee`, which captures the command's real exit status in an rc file
(aeb `2734bf5`). Re-checked afterwards: `cpp.tests` exits 1 with `0/1 FAIL` on
the same failing assertion. Either runner is honest now; this one is still the
more convenient.
