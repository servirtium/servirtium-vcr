# Building & running the tests

## Turnkey: `./bootstrap.sh`

From the repo root, `bootstrap.sh` installs the pinned `ae` (0.944.0) and `aeb`
via their official installers to a user prefix (`$HOME/.local`, no sudo; needs
`curl`) if they are missing, then runs `aeb` on the leaf you name:

```sh
./bootstrap.sh pharo/.tests.ae     # builds libservirtium_vcr, then runs the headless SUnit suite
```

It does not install Pharo; a VM + image must already be present (`PHARO_DIR`, default `$HOME/.local/pharo`). Override `PREFIX` / `AETHER_REF` / `AEB_REF` / `MIN_AE` via env.

Everything from here down is what that leaf automates.

## Prerequisites

- **A Pharo VM + image** (developed against Pharo 10). `pharo/run-tests.sh` looks
  for `pharo` + `Pharo.image` under `$HOME/.local/pharo` (override with
  `PHARO_DIR`); nothing installs it for you. Get one with:

  ```sh
  mkdir -p ~/.local/pharo && cd ~/.local/pharo && curl -fsSL https://get.pharo.org/64/100 | bash
  ```

- **The Aether toolchain (`ae`) on PATH** — only needed to build the *native*
  library; `bootstrap.sh` installs it via aether's `get.sh` if absent
  (`curl -sSL https://raw.githubusercontent.com/aether-lang-dev/aether/main/get.sh | sh`).

## Build the native library

libservirtium_vcr is built from the in-repo pure-Aether VCR module and its
C-ABI seam, `core/vcr.ae` + `core/embed.ae`:

```sh
aeb core/.build.ae      # from the repo root
```

This produces the **host platform's** library into `core/native/`. libservirtium_vcr lives
in this repo (no Aether source checkout needed beyond the `ae` toolchain
itself, which supplies the stdlib primitives `core/vcr.ae` builds on). Under
the hood:

```sh
ae build --emit=lib --with=fs,net,extern core/embed.ae --extra core/_embed_strdup.c \
   -o core/native/libservirtium_vcr.<ext>
```

- `--emit=lib` produces a shared library with `aether_*` exports.
- `--with=fs,net,extern` grants `extern` (required since ae 0.801: libservirtium_vcr declares C externs) plus the filesystem + networking capabilities the VCR
  needs (tape I/O + the embedded HTTP server). This requires a `-fPIC` Aether
  runtime; the whole-tape regex scrubbers need `std.regex` — **Aether
  0.944.0**, the version `bootstrap.sh` pins.

The native lib is a **git-ignored build artifact** — run `aeb core/.build.ae`
after cloning (or `aeb pharo/.tests.ae`, which builds it and runs the suite), or
let CI build it. `run-tests.sh` finds it through `SERVIRTIUM_VCR_LIB`.

## Run the headless SUnit suite

```sh
./run-tests.sh
```

`run-tests.sh`:

1. copies the dev `Pharo.image` to `build/Servirtium.image` (it never mutates
   your base image);
2. exports `SERVIRTIUM_VCR_LIB` (→ `native/libservirtium_vcr.so`) and
   `SERVIRTIUM_TAPES_DIR` (→ the committed test tapes) so the binding finds
   them regardless of where the repo lives;
3. loads `src/` into the image copy via the Metacello baseline
   (`load: 'tests'`);
4. builds a `TestSuite` of every concrete `TestCase` in the `Servirtium-Tests`
   category, runs it, prints a `TESTS run=… passed=… failures=… errors=…`
   line, and **exits non-zero on any failure or error** (`Smalltalk
   exitFailure`).

Expected output on success:

```
TESTS run=11 passed=11 failures=0 errors=0
ALL GREEN
==> all tests passed
```

Override `PHARO_DIR` to point at a different VM/image.

## Loading into your own image (consumers)

```smalltalk
Metacello new
    baseline: 'Servirtium';
    repository: 'tonel://', '/abs/path/to/servirtium-pharo/src';
    load.

ServirtiumLibrary libPath: '/abs/path/to/servirtium-pharo/native/libservirtium_vcr.so'.
```

(Or export `SERVIRTIUM_VCR_LIB` before launching the image instead of calling
`libPath:`.)

## Platform matrix

| Platform | Built by | Status |
|---|---|---|
| linux-x86_64 | local / ubuntu runner | ✅ |
| osx-x86_64 | macos runner | `core/.build.ae` supports it |
| osx-arm64 | macos runner | `core/.build.ae` supports it |
| win-x64 | — | TODO (MSYS2/MINGW Aether build) |

Each arch is a distinct binary. `ServirtiumLibrary` returns the same absolute
path for `unixLibraryName` and `macLibraryName`; set `SERVIRTIUM_VCR_LIB` or
`libPath:` to select the right artifact per platform.
