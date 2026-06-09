# Building & releasing

## Prerequisites

- **A current Rust toolchain** (edition 2021; tested with cargo 1.94).
- **The Aether toolchain (`ae`) on PATH** — only needed to build the
  *native* library (**≥ 0.227.0**, the engine's `std.regex` floor). Consumers
  who ship a prebuilt `.so`/`.dylib` (or point `SERVIRTIUM_VCR_LIB` at one)
  don't need it.

## Build the native library

The native library is the shared engine for the whole monorepo, built from
the in-repo Aether VCR embedding module, `core/embed.ae` (which imports the
pure-Aether engine `core/vcr.ae`). The Servirtium logic lives in this repo,
not the Aether standard library. The repo's build (`core/.build.ae`, run via
`aeb`) produces it once into `core/native/`:

```sh
ae build --emit=lib --with=fs,net core/embed.ae \
   --extra core/_embed_strdup.c -o core/native/libservirtium_vcr.so
```

- `--emit=lib` produces a shared library with `aether_vcr_embed_*` exports.
- `--with=fs,net` grants the filesystem + networking capabilities the VCR
  needs (tape I/O + the embedded HTTP server). This requires a `-fPIC`
  Aether runtime — **Aether ≥ 0.182.0**; chunked de-chunking needs
  **≥ 0.183.0**; the whole-tape `std.regex` normalize/redact path needs
  **≥ 0.227.0**, which is the current floor for the engine.
- `--extra core/_embed_strdup.c` links the ~12-line caller-owned-string
  bridge (`vcr_embed_dup`/`free`) — the one malloc/free FFI primitive the
  Aether stdlib can't express; everything else is pure Aether.

## Build & test

```sh
SERVIRTIUM_VCR_LIB=../core/native/libservirtium_vcr.so cargo test
```

`cargo test` is safe under the default parallel runner: the core is
one-server-per-port (each `VcrServer` owns its own handle), and the crate also takes
one process-wide lock per `VcrServer` as belt-and-braces (see
[architecture.md](architecture.md#concurrency-one-server-per-port)).

`SERVIRTIUM_VCR_LIB=/path/to/libservirtium_vcr.so` points the loader at the
native lib (handy when iterating on `core/embed.ae`) — the repo's
`rust/.tests.ae` sets it to the just-built `core/native/libservirtium_vcr.so`.
Otherwise the loader finds `native/libservirtium_vcr.{so,dylib}` next to the
crate.

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

A per-OS matrix should build the Aether toolchain, build the native lib from
`core/embed.ae`, then `cargo test`, and upload each platform's native lib as
an artifact — mirroring the .NET binding's `dotnetcore.yml`. (Not yet wired
in this repo.)

## Supply-chain notes

- Native builds are reproducible from `core/embed.ae` + `core/vcr.ae` + a
  pinned Aether toolchain version — record the `ae --version` used so a hash
  can be verified from source.
- Distribute the native binaries as discrete files (the `native/` layout)
  rather than embedding them inside the Rust artifact: discrete files stay
  visible to SCA/SBOM tooling and are individually signable.
