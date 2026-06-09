# Building & releasing

## Prerequisites

- **Node.js 22+** (the package uses the global `fetch` and modern koffi; the
  `engines` field pins `>=22`).
- **The Aether toolchain (`ae` ≥ v0.227.0, plus `aeb`) on PATH** — only needed
  to build the *native* library (the floor is `std.regex`, used by the
  whole-tape mutations). Consumers of the published package on a covered
  platform don't need it.

## Build the native library

The native library is built from the in-repo Aether VCR core — `core/vcr.ae`
with its C-ABI seam `core/embed.ae` — into `core/native/`. The whole repo is
driven by [`aeb`](https://github.com/aether-lang-org/aeb); building this binding
builds the engine once first:

```sh
aeb javascript/.tests.ae   # builds core/native/libservirtium_vcr.so, then runs the JS tests
```

Under the hood the engine compiles to a shared library:

```sh
ae build --emit=lib --with=fs,net \
   core/embed.ae --extra core/_embed_strdup.c \
   -o core/native/libservirtium_vcr.<ext>
```

- `--emit=lib` produces a shared library with `aether_*` exports.
- `--with=fs,net` grants the filesystem + networking capabilities the VCR needs
  (tape I/O + the embedded HTTP server). This requires a `-fPIC` Aether runtime
  and `std.regex` — **Aether ≥ v0.227.0**.

`SERVIRTIUM_VCR_LIB=/path/to/libservirtium_vcr.so` overrides the resolved
location at runtime (handy when iterating on `core/embed.ae`); `javascript/.tests.ae`
sets it to the freshly built `core/native/` artifact.

## Build & test

```sh
npm install
npm run build   # tsc -> dist/ (with .d.ts declarations)
npm test        # jest --runInBand (shared fixed test port; see architecture.md)
```

## Platform matrix

| Platform | Built by | Status |
|---|---|---|
| linux-x64 | ubuntu runner | ✅ (prebuilt `.so` committed) |
| osx-x64 | macos-13 runner | build locally with `aeb javascript/.tests.ae` |
| osx-arm64 | macos-14 runner | build locally with `aeb javascript/.tests.ae` |
| linux-arm64 | — | TODO (cross-compile or arm runner) |
| win-x64 | — | TODO (MSYS2/MINGW Aether build) |

Each arch is a distinct binary (no shared code between x64 and arm64).

## CI

`.github/workflows/cd.yaml` runs on push/PR: the runner must provide the Aether
toolchain (`ae` ≥ v0.227.0 and `aeb`); it builds the `core/` native lib, installs
deps, builds, and runs the tests via `aeb javascript/.tests.ae` (which points
`SERVIRTIUM_VCR_LIB` at the freshly built `core/native/` artifact).

## Releasing to npm

`npm run build` emits `dist/` (JS + `.d.ts`); `package.json` `files` ships
`dist/` and `native/`. For a multi-platform release, build each platform's
native lib from `core/` on its own runner and stage all of them under `native/`
before `npm publish`, mirroring the per-RID native layout the .NET package uses.

## Supply-chain notes

- Native builds are reproducible from `core/embed.ae` + `core/vcr.ae` + a pinned
  Aether toolchain version — record the `ae --version` used so a hash can be
  verified from source.
- The committed `native/libservirtium_vcr.so` is a build artifact; rebuild it
  from source (`core/`, via `aeb`) rather than trusting the checked-in copy
  for production.
