# Building & releasing

## Prerequisites

- **Python 3.9+** (developed/tested on 3.13). The binding uses only the
  standard library (`ctypes`).
- **The Aether toolchain (`ae`) on PATH** — only needed to build the *native*
  library. Consumers of the wheel don't need it.

## Build the native library

The native library is built from the in-repo VCR embedding module,
`core/embed.ae` (which wraps `core/vcr.ae`). The whole monorepo is built with
`aeb`, which builds the `core/` node once and links/loads the resulting
`libservirtium_vcr.so` into every binding:

```sh
aeb python/.tests.ae    # builds the engine it deps, then the Python tests
```

Under the hood the engine build is:

```sh
ae build --emit=lib --with=fs,net core/embed.ae \
   -o core/native/libservirtium_vcr.<ext>
```

- `--emit=lib` produces a shared library with `aether_*` exports.
- `--with=fs,net` grants the filesystem + networking capabilities the VCR needs
  (tape I/O + the embedded HTTP server). The engine uses `std.regex`, so the
  current toolchain floor is **Aether ≥ v0.227.0** (chunked de-chunking was
  introduced at ≥ 0.183.0).

## Build & test

```sh
python -m pip install -e .[dev]
python -m pytest
```

`SERVIRTIUM_VCR_LIB=/path/to/libservirtium_vcr.so` overrides the native-lib
location (handy when iterating on `embed.ae`).

## Platform matrix

| Platform | Built by | Status |
|---|---|---|
| linux-x64 | this repo / ubuntu runner | ✅ |
| osx-x64 | macos runner | TODO |
| osx-arm64 | macos runner | TODO |
| win-x64 | — | TODO (MSYS2/MINGW Aether build) |

Each arch is a distinct binary (no shared code between x64 and arm64). A
complete wheel for a platform bundles that platform's library under
`servirtium/native/`.

## Supply-chain notes

- Native builds are reproducible from `core/embed.ae` + `core/vcr.ae` + a pinned
  Aether toolchain version — record the `ae --version` used so a hash can be
  verified from source.
- The bundled binary stays a discrete file (visible to SCA/SBOM tooling,
  individually signable) rather than being embedded inside Python bytecode.
