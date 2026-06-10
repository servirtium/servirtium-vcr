# Building

This binding links the shared native engine at **build time** through Nim's C
backend (`importc` + a `{.passL.}` link directive), so building is just
`nim c` with the engine `.so` reachable.

## Prerequisites

- **Nim** ≥ 2.0 (developed against 2.2.4) with a C compiler (Nim compiles to C).
- The native engine `core/native/libservirtium_vcr.so`. It is git-ignored build
  output produced from the in-repo Aether engine (`core/vcr.ae` +
  `core/embed.ae`) by `core/.build.ae`, which shells out to
  `ae build --emit=lib --with=fs,net core/embed.ae … -o core/native/libservirtium_vcr.so`.
  - The Aether toolchain (`ae`) must be **≥ 0.227.0** (`std.regex` for the
    engine's whole-tape rewrites, the `-fPIC` runtime that `--emit=lib --with=net`
    needs, and chunked de-chunking on record).
- No Aether source checkout is needed — the engine lives in this repo.

## Pointing Nim at the engine

`src/servirtium/native.nim` resolves the link directory at compile time:

- **`SERVIRTIUM_VCR_LIB`** — if set to the absolute path of the `.so`, its
  parent directory is used for `-L`/`-rpath`. This is how the tests and
  `.tests.ae` pin the engine.
- otherwise it falls back to `core/native` relative to this source tree.

The baked-in `-rpath` means the produced binary loads the `.so` at runtime
without `LD_LIBRARY_PATH`.

## Running the tests (without aeb)

The tests are plain Nim, so you can drive them directly. The record-mode suite
uses threads (the upstream's async accept loop runs on its own thread), so pass
`--threads:on`:

```sh
cd nim
LIB=../core/native/libservirtium_vcr.so
for t in tests/playback.nim tests/playback_test.nim \
         tests/record_test.nim tests/mutation_test.nim; do
  SERVIRTIUM_VCR_LIB="$LIB" \
    nim c -r --hints:off --threads:on --path:src --path:tests "$t" || break
done
```

Each file is a `std/unittest` suite and exits non-zero if any check fails.

## With aeb

The whole monorepo builds with **[aeb](https://github.com/aether-lang-org/aeb)**.
This binding's leaf is `nim/.tests.ae`:

| Node | Class | What it does |
|---|---|---|
| `core/.build.ae` | build | builds the shared engine `.so` (once for every binding) |
| `nim/.tests.ae` | test | `build.dep`s the engine, then compiles + runs all four Nim test files with `SERVIRTIUM_VCR_LIB` pointed at the freshly built `.so` |

```sh
aeb nim/.tests.ae      # native lib + the full Nim suite
```

`aeb` is not on `PATH` in a fresh shell — it lives at `~/.local/bin/aeb`
(`export PATH="$HOME/.local/bin:$PATH"`). Per-node stdout lands in
`target/.aeb/logs/<label>.log`.

> Note: do not run two top-level `aeb` invocations concurrently — they share
> the `target/_ae_build_all` workspace.

## Linking, the short version

```nim
# src/servirtium/native.nim
{.passL: "-L<dir> -lservirtium_vcr -Wl,-rpath,<dir>".}
proc open_playback(...): Handle {.importc: "aether_vcr_embed_open_playback", cdecl.}
# … one importc per aether_vcr_embed_* symbol …
```

That's the entire native integration: a link directive plus one `importc`
declaration per C-ABI symbol. No code generation, no runtime `dlopen`.
