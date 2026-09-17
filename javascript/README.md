# Servirtium JavaScript

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for Node.js / TypeScript.

You point your system-under-test at a local URL. In **playback** it replays a
recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```ts
import { Vcr, VcrOutcome } from '@servirtium/vcr'

const vcr = Vcr.playback('tapes/climate_api.md').port(0).start()
try {
  const res = await fetch(`${vcr.baseUrl}/api/v1/countries`)
  expect(vcr.lastKind).toBe(VcrOutcome.Ok) // optional: assert a clean match
} finally {
  vcr.close()
}
```

## What this is (and isn't)

Since **2.0**, this is a thin Node.js layer over the **Aether VCR** core. All
record/replay machinery — markdown parse/emit, the HTTP server, request
matching, redactions, notes, drift detection, static bypass, gzip/chunked
handling — lives in this repo as a pure-Aether module (`core/vcr.ae`, with the
C-ABI seam in `core/embed.ae`), built on Aether stdlib primitives, with the
Servirtium logic maintained in-repo. This package uses
[koffi](https://koffi.dev) (a modern Node FFI with prebuilt binaries, no
node-gyp) to call a precompiled native build of that core
(`core/native/libservirtium_vcr.so`); it does **not** reimplement Servirtium in
TypeScript.

> **Breaking from 1.x:** the old `@servirtium/recorder` Express/markdown API is
> gone, with no shim. The new API is below / in [docs/usage.md](docs/usage.md).
> The tape *format* is unchanged, so existing tapes replay as-is.

## Install

> **Note:** the `@servirtium/vcr` npm package is **not published yet**, so
> `npm install @servirtium/vcr` does **not** give you this library. Get the
> native library from GitHub releases instead (below).

**Get the native library** (`libservirtium_vcr`) for your OS/arch from the
[GitHub releases](https://github.com/servirtium/servirtium-vcr/releases) — one
prebuilt shared library per platform, each with a `.sha256` — and (optionally)
verify it:

```sh
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v0.1.0/libservirtium_vcr-v0.1.0-linux-x86_64.so
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v0.1.0/libservirtium_vcr-v0.1.0-linux-x86_64.so.sha256
sha256sum -c libservirtium_vcr-v0.1.0-linux-x86_64.so.sha256   # -> OK
```

Available platforms: linux (x86_64, arm64), macOS (x86_64, arm64), Windows
(x86_64, arm64), FreeBSD (x86_64). No Aether toolchain is needed to *use* the
library. (For macOS use the `.dylib`, for Windows the `.dll` — adjust the
filename accordingly.)

Then point the binding at it via `SERVIRTIUM_VCR_LIB`:

```sh
export SERVIRTIUM_VCR_LIB=$PWD/libservirtium_vcr-v0.1.0-linux-x86_64.so
```

koffi loads the library from that path at runtime.

**Build the package locally.** Nothing is published to npm yet, so build the
tarball yourself — stage the downloaded lib at the fixed path, run `npm pack`,
then install the produced `.tgz`:

```sh
# from the javascript/ binding directory, with the .so downloaded here:
mkdir -p native && cp libservirtium_vcr-v0.1.0-linux-x86_64.so native/libservirtium_vcr.so
npm install && npm pack
# -> then install the produced artifact locally: npm install ./servirtium-vcr-*.tgz
```

## Docs

- **[docs/usage.md](docs/usage.md)** — playback, record, redactions,
  unredactions, header removal, notes, strict matching, static content, drift,
  diagnostics — with code.
- **[docs/features.md](docs/features.md)** — Servirtium capability matrix and
  what's covered by tests.
- **[docs/architecture.md](docs/architecture.md)** — how the FFI layering works
  (TS → koffi → `core/embed.ae` → `core/vcr.ae`), the native loader, and the
  handle-based one server per port model.
- **[docs/building.md](docs/building.md)** — building the native library, the
  RID matrix, CI, and releasing to npm.
- **[MIGRATION.md](MIGRATION.md)** — the 1.x → 2.0 rewrite story.

## Concurrency: one server per port

The core is **one server per port** (handle-based): N independent VCR servers can run
concurrently in one process, each keyed by its own opaque handle, with its own
tape / cursor / mutations / diagnostics — so two `.start()` servers can be alive
at once without bleeding into each other. The bundled `jest.config.js` still
pins `maxWorkers: 1` (= `jest --runInBand`), but only because the suite shares a
fixed test port across files, not because libservirtium_vcr is single-server. See
[docs/architecture.md](docs/architecture.md#concurrency-one-server-per-port).

## Building from source

The whole repo is built with [`aeb`](https://github.com/aether-lang-dev/aeb),
which builds the `core/` native lib once and then runs this binding's tests:

```sh
aeb javascript/.tests.ae   # builds core/native/libservirtium_vcr.so, then npm test
```

Details in [docs/building.md](docs/building.md).
