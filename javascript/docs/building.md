# Building & releasing

## Prerequisites

- **Node.js 22+** (the package uses the global `fetch` and modern koffi; the
  `engines` field pins `>=22`).
- **A native library for your OS/architecture.** Follow the
  [README install steps](../README.md#install) to download a release and build
  an npm tarball using only Node/npm. Building the native library itself needs
  the toolchains in the [repository development setup](../../docs/dev-setup.md).

## Build the native library

The native library is built from the in-repo Aether VCR core — `core/vcr.ae`
with its C-ABI seam `core/embed.ae` — into `core/native/`. The whole repo is
driven by [`aeb`](https://github.com/aether-lang-dev/aeb); building this binding
builds libservirtium_vcr once first. From the repository root:

```sh
aeb javascript/.tests.ae   # builds core/native/libservirtium_vcr.so, then runs the JS tests
```

`SERVIRTIUM_VCR_LIB=/path/to/libservirtium_vcr.so` overrides the resolved
location at runtime (handy when iterating on `core/embed.ae`); `javascript/.tests.ae`
sets it to the freshly built `core/native/` artifact.

## Build & test

To work on the JavaScript binding against a downloaded or already-built native
library, run these commands from `javascript/`:

```sh
npm ci         # installs build/test dependencies; prepare builds dist/ and .d.ts
export SERVIRTIUM_VCR_LIB="/absolute/path/to/libservirtium_vcr.so"
npm test       # jest --runInBand
```

After editing TypeScript, run `npm run build` to refresh `dist/`. Native
libraries are build/download artifacts and are not committed in this repo.

## Packaging for npm

`npm pack` runs `prepare` to rebuild `dist/` (JS + `.d.ts`). The `files` list
in `package.json` includes `dist/` and `native/`, so stage the library under
`native/` **before packing**. Setting `SERVIRTIUM_VCR_LIB` changes runtime
loading; it does not copy a library into the tarball.

The bundled filenames are `native/libservirtium_vcr.so` on Linux/FreeBSD,
`native/libservirtium_vcr.dylib` on macOS, and `native/servirtium_vcr.dll` on
Windows. A tarball built this way is for the selected OS/architecture. The
loader does not select between architecture-specific subdirectories; do not
distribute one architecture's library as a universal package.

The maintainer packaging and consumer checks can also be run from the repo root:

```sh
aeb javascript/.package.ae  # builds the library and bundled npm tarball
aeb javascript/.example.ae  # installs the tarball in a fresh consumer and replays
```

For a consumer check without the native toolchain, install the tarball in a
separate app and run the [README record/replay example](../README.md#record-and-replay-a-local-service)
with `SERVIRTIUM_VCR_LIB` unset. This exercises the installed package and its
bundled library instead of accidentally loading a build-tree artifact.

## Supply-chain notes

- Native builds are reproducible from `core/embed.ae` + `core/vcr.ae` + a pinned
  Aether toolchain version — record the `ae --version` used so a hash can be
  verified from source.
- Release downloads include checksums. Verify the matching `.sha256` before
  staging a downloaded library in `native/`.
