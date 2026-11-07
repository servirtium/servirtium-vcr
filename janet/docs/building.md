# Building and testing

## Prerequisites

- **Janet >= 1.23** (the built-in FFI). `brew install janet`, `pacman -S janet`,
  or the release tarballs at https://github.com/janet-lang/janet/releases.
  `jpm` (bundled with Homebrew's janet; a separate package elsewhere) is only
  needed to install the package, not to run the binding.
- libservirtium_vcr, built once from the in-repo Aether core by
  `core/.build.ae` (needs the Aether toolchain `ae` and `aeb`; see the repo
  root `bootstrap.sh`), or a release asset (see the README, "Getting it").
- A C compiler is **not** needed by this binding.

## Run the tests

```sh
aeb janet/.tests.ae        # builds the library and test tools, runs the suite
```

By hand, after `aeb core/.build.ae core_tests/.fixtures.ae`:

```sh
cd janet
SERVIRTIUM_VCR_LIB=$PWD/../target/build/core/lib/libservirtium_vcr.so janet test/run_all.janet
```

The suite is plain Janet scripts that exit non-zero on failure:
`test/playback.janet` (replay, strict matching, unredaction, static content,
untaped paths, two concurrent servers, reset, match-multiple, substitution,
playback-url, errors, diagnostics), `test/record.janet` (record/replay incl.
chunked and POST, license notice, pretty JSON, presets, credentials,
redaction, notes, header removal, whole-tape rewrites, drift, discard, HAR,
structured redaction and named secrets through the shared fixtures).
`test/helpers.janet` holds the assertions, an HTTP client over Janet's own
`net/*` (no curl) and the throwaway Aether upstream (`target/test-tools/`).

## Package and consume

```sh
aeb janet/.package.ae      # stages the library into janet/servirtium/native/
aeb janet/.example.ae      # jpm-installs a copy into a throwaway tree and runs
                           # example/consumer_example.janet with SERVIRTIUM_VCR_LIB unset
```
