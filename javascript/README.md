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
handling — lives in and is maintained as the Aether standard library
(`std/http/server/vcr`). This package uses [koffi](https://koffi.dev) (a modern
Node FFI with prebuilt binaries, no node-gyp) to call a precompiled native
build of that core; it does **not** reimplement Servirtium in TypeScript.

> **Breaking from 1.x:** the old `@servirtium/recorder` Express/markdown API is
> gone, with no shim. The new API is below / in [docs/usage.md](docs/usage.md).
> The tape *format* is unchanged, so existing tapes replay as-is.

## Install

```sh
npm install @servirtium/vcr
```

The native library for your OS/arch lives in `native/`. For published packages
the host's prebuilt `linux-x64` `.so` ships in the box; on other platforms (or
to iterate on the core) build it yourself with `./build-native.sh` (needs the
Aether toolchain `ae`). See [docs/building.md](docs/building.md).

## Docs

- **[docs/usage.md](docs/usage.md)** — playback, record, redactions,
  unredactions, header removal, notes, strict matching, static content, drift,
  diagnostics — with code.
- **[docs/features.md](docs/features.md)** — Servirtium capability matrix and
  what's covered by tests.
- **[docs/architecture.md](docs/architecture.md)** — how the FFI layering works
  (TS → koffi → `embed.ae` → Aether VCR), the native loader, and the v1
  one-server-per-process model.
- **[docs/building.md](docs/building.md)** — building the native library, the
  RID matrix, CI, and releasing to npm.
- **[MIGRATION.md](MIGRATION.md)** — the 1.x → 2.0 rewrite story.

## One hard rule: run tests serially

The Aether VCR is **one active server per process** in v1 (its tape / cursor /
mutation state is process-global). Jest runs test *files* in separate worker
processes (each loads its own copy of the `.so`, so files are isolated), but to
stay deterministic the bundled `jest.config.js` pins `maxWorkers: 1`
(equivalently `jest --runInBand`). See
[docs/architecture.md](docs/architecture.md#one-server-per-process).

## Building from source

```sh
./build-native.sh     # builds the native lib for your platform (needs `ae`)
npm install
npm test
```

Details in [docs/building.md](docs/building.md).
