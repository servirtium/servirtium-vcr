# Building & running the tests

## Turnkey: `./bootstrap.sh`

For a casual dev, the repo-root `bootstrap.sh` encodes the steps below as one
idempotent command:

```sh
./bootstrap.sh
```

It checks for `ae` (≥ 0.183) and installs it via aether's official `get.sh`
remote installer to a user prefix (`$HOME/.local` — **no sudo, no Aether test
suite, no contrib**; needs `curl`, no build-from-source fallback) if it's
missing/too old; checks a Pharo VM + image is present (it does **not**
auto-install Pharo); then runs `build-native.sh` and `run-tests.sh`. No-op for
the toolchain when `ae` is already good; on failure it prints the `-fPIC`
re-install triage. Override `PREFIX` / `AETHER_REF` (pin in CI) / `MIN_AE` /
`PHARO_DIR` via env.

Everything from here down is what `bootstrap.sh` automates — useful when you
already have both toolchains.

## Prerequisites

- **A Pharo VM + image** (developed against Pharo 10). `bootstrap.sh` checks
  for `pharo` + `Pharo.image` under `$HOME/.local/pharo` (override with
  `PHARO_DIR`) but does not install it. Get one with:

  ```sh
  mkdir -p ~/.local/pharo && cd ~/.local/pharo && curl -fsSL https://get.pharo.org/64/100 | bash
  ```

- **The Aether toolchain (`ae`) on PATH** — only needed to build the *native*
  library; `bootstrap.sh` installs it via aether's `get.sh` if absent
  (`curl -sSL https://raw.githubusercontent.com/aether-lang-org/aether/main/get.sh | sh`).

## Build the native library

The native engine is built from the Aether std VCR embedding module,
`std/http/server/vcr/embed.ae`:

```sh
./build-native.sh
```

This produces the **host platform's** library into `native/`. `embed.ae` is
sourced from the **installed** toolchain (the stdlib that ships next to `ae`)
— no Aether source checkout needed; engine devs can point at a local HEAD with
`AETHER_REPO=/path/to/aether`. Under the hood:

```sh
ae build --emit=lib --with=fs,net <prefix>/share/aether/std/http/server/vcr/embed.ae \
   -o native/libservirtium_vcr.<ext>
```

- `--emit=lib` produces a shared library with `aether_*` exports.
- `--with=fs,net` grants the filesystem + networking capabilities the VCR
  needs (tape I/O + the embedded HTTP server). This requires a `-fPIC` Aether
  runtime — **Aether ≥ 0.182.0**; chunked de-chunking needs **≥ 0.183.0**.

The native lib is a **git-ignored build artifact** — run `build-native.sh`
after cloning, or let CI build it.

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
| osx-x86_64 | macos runner | build-native supports it |
| osx-arm64 | macos runner | build-native supports it |
| win-x64 | — | TODO (MSYS2/MINGW Aether build) |

Each arch is a distinct binary. `ServirtiumLibrary` returns the same absolute
path for `unixLibraryName` and `macLibraryName`; set `SERVIRTIUM_VCR_LIB` or
`libPath:` to select the right artifact per platform.
