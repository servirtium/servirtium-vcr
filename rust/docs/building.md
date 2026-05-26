# Building & releasing

## Prerequisites

- **A current Rust toolchain** (edition 2021; tested with cargo 1.94).
- **The Aether toolchain (`ae`) on PATH** — only needed to build the
  *native* library. Consumers who ship a prebuilt `.so`/`.dylib` (or point
  `SERVIRTIUM_VCR_LIB` at one) don't need it.

## Build the native library

The native library is built from the Aether std VCR embedding module,
`std/http/server/vcr/embed.ae`:

```sh
./build-native.sh
```

This produces the **host platform's** library into `native/`. It defaults
to `../aether` for the Aether checkout; override with
`AETHER_REPO=/path/to/aether`. Under the hood:

```sh
ae build --emit=lib --with=fs,net <aether>/std/http/server/vcr/embed.ae \
   -o native/libservirtium_vcr.<ext>
```

- `--emit=lib` produces a shared library with `aether_*` exports.
- `--with=fs,net` grants the filesystem + networking capabilities the VCR
  needs (tape I/O + the embedded HTTP server). This requires a `-fPIC`
  Aether runtime — **Aether ≥ 0.182.0**; chunked de-chunking needs
  **≥ 0.183.0**. (Verified building with `ae` 0.183.0 / 0.184.0.)

## Build & test

```sh
cargo test
```

`cargo test` is safe under the default parallel runner: the crate serializes
VCR fixtures through a process-global lock (see
[architecture.md](architecture.md#one-server-per-process)).

`SERVIRTIUM_VCR_LIB=/path/to/libservirtium_vcr.so` overrides the native-lib
location (handy when iterating on `embed.ae`). Otherwise the loader finds
`native/libservirtium_vcr.{so,dylib}` next to the crate.

## RID matrix

| Target | Built by | Status |
|---|---|---|
| linux-x64 | linux runner | ✅ |
| osx-x64 | macos-13 runner | TODO |
| osx-arm64 | macos-14 runner | TODO |
| linux-arm64 | — | TODO (cross-compile or arm runner) |
| win-x64 | — | TODO (MSYS2/MINGW Aether build) |

Each arch is a distinct binary (no shared code between x64 and arm64).

## CI

A per-OS matrix should build the Aether toolchain, run `build-native.sh`,
then `cargo test`, and upload each platform's native lib as an artifact —
mirroring the .NET binding's `dotnetcore.yml`. (Not yet wired in this repo.)

## Supply-chain notes

- Native builds are reproducible from `embed.ae` + a pinned Aether toolchain
  version — record the `ae --version` used so a hash can be verified from
  source.
- Distribute the native binaries as discrete files (the `native/` layout)
  rather than embedding them inside the Rust artifact: discrete files stay
  visible to SCA/SBOM tooling and are individually signable.
