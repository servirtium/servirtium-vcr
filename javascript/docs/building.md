# Building & releasing

## Prerequisites

- **Node.js 22+** (the package uses the global `fetch` and modern koffi; the
  `engines` field pins `>=22`).
- **The Aether toolchain (`ae`) on PATH** — only needed to build the *native*
  library. Consumers of the published package on a covered platform don't need
  it.

## Build the native library

The native library is built from the Aether std VCR embedding module,
`std/http/server/vcr/embed.ae`:

```sh
./build-native.sh
```

This produces the **host platform's** binary into `native/`. It defaults to
`../aether` for the Aether checkout; override with `AETHER_REPO=/path/to/aether`.
Under the hood:

```sh
ae build --emit=lib --with=fs,net <aether>/std/http/server/vcr/embed.ae \
   -o native/libservirtium_vcr.<ext>
```

- `--emit=lib` produces a shared library with `aether_*` exports.
- `--with=fs,net` grants the filesystem + networking capabilities the VCR needs
  (tape I/O + the embedded HTTP server). This requires a `-fPIC` Aether runtime
  — **Aether ≥ 0.182.0**; chunked de-chunking needs **≥ 0.183.0**.

`SERVIRTIUM_VCR_LIB=/path/to/libservirtium_vcr.so` overrides the resolved
location at runtime (handy when iterating on `embed.ae`).

## Build & test

```sh
npm install
npm run build   # tsc -> dist/ (with .d.ts declarations)
npm test        # jest --runInBand (serial; see architecture.md)
```

## Platform matrix

| Platform | Built by | Status |
|---|---|---|
| linux-x64 | ubuntu runner | ✅ (prebuilt `.so` committed) |
| osx-x64 | macos-13 runner | build locally with `./build-native.sh` |
| osx-arm64 | macos-14 runner | build locally with `./build-native.sh` |
| linux-arm64 | — | TODO (cross-compile or arm runner) |
| win-x64 | — | TODO (MSYS2/MINGW Aether build) |

Each arch is a distinct binary (no shared code between x64 and arm64).

## CI

`.github/workflows/cd.yaml` runs on push/PR: it builds the native lib with
`build-native.sh` (the runner must provide `ae` + an Aether checkout pointed to
by `AETHER_REPO`), installs deps, builds, and runs `npm test`.

## Releasing to npm

`npm run build` emits `dist/` (JS + `.d.ts`); `package.json` `files` ships
`dist/`, `native/`, and `build-native.sh`. For a multi-platform release, build
each platform's native lib on its own runner and stage all of them under
`native/` before `npm publish`, mirroring the per-RID native layout the .NET
package uses.

## Supply-chain notes

- Native builds are reproducible from `embed.ae` + a pinned Aether toolchain
  version — record the `ae --version` used so a hash can be verified from
  source.
- The committed `native/libservirtium_vcr.so` is a build artifact; rebuild it
  from source with `./build-native.sh` rather than trusting the checked-in copy
  for production.
