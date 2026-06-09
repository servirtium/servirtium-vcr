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

```sh
npm install @servirtium/vcr
```

The native library for your OS/arch lives in `native/`. For published packages
the host's prebuilt `linux-x64` `.so` ships in the box; on other platforms (or
to iterate on the core) build it from `core/` with the Aether toolchain (`ae`
≥ v0.227.0, driven by `aeb`). See [docs/building.md](docs/building.md).

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
fixed test port across files, not because the engine is single-server. See
[docs/architecture.md](docs/architecture.md#concurrency-one-server-per-port).

## Building from source

The whole repo is built with [`aeb`](https://github.com/aether-lang-org/aeb),
which builds the `core/` native lib once and then runs this binding's tests:

```sh
aeb javascript/.tests.ae   # builds core/native/libservirtium_vcr.so, then npm test
```

Details in [docs/building.md](docs/building.md).
