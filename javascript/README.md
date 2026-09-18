# Servirtium JavaScript

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for Node.js / TypeScript.

You point your system-under-test at a local URL. In **playback** it replays a
recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```js
import assert from 'node:assert/strict'
import { Vcr, VcrOutcome } from '@servirtium/vcr'

const vcr = Vcr.playback('tapes/climate_api.md').port(0).start()
try {
  const res = await fetch(`${vcr.baseUrl}/api/v1/countries`)
  const body = await res.text()
  assert.equal(vcr.lastKind, VcrOutcome.Ok, vcr.lastError)
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
> `npm install @servirtium/vcr` does **not** give you this library. Build a local
> npm tarball from the source and a downloaded native library as shown below.

You need **Node.js 22+**, npm, Git, and a native library matching your OS and
CPU architecture. The following commands use a POSIX shell on Linux x86_64.
No Aether compiler or build runner is needed for this path.

**1. Get the JavaScript package source.** Start in a scratch directory:

```sh
mkdir servirtium-try
cd servirtium-try
git clone --depth 1 https://github.com/servirtium/servirtium-vcr.git
cd servirtium-vcr/javascript
```

**2. Get the native library** (`libservirtium_vcr`) for your OS/arch from the
[GitHub releases](https://github.com/servirtium/servirtium-vcr/releases) — one
prebuilt shared library per platform, each with a `.sha256`. Download and verify
the Linux x86_64 library in the `javascript/` directory:

```sh
curl -fLO https://github.com/servirtium/servirtium-vcr/releases/download/v0.1.0/libservirtium_vcr-v0.1.0-linux-x86_64.so
curl -fLO https://github.com/servirtium/servirtium-vcr/releases/download/v0.1.0/libservirtium_vcr-v0.1.0-linux-x86_64.so.sha256
sha256sum -c libservirtium_vcr-v0.1.0-linux-x86_64.so.sha256   # -> OK
```

Available platforms: linux (x86_64, arm64), macOS (x86_64, arm64), Windows
(x86_64, arm64), FreeBSD (x86_64). No Aether toolchain is needed to *use* the
library. These download URLs are specifically for Linux x86_64; choose the
matching release asset on other machines. When staging it below, use
`native/libservirtium_vcr.dylib` on macOS or `native/servirtium_vcr.dll` on Windows.

**3. Build a tarball with the native library bundled inside.** Still in
`servirtium-vcr/javascript`:

```sh
mkdir -p native
cp libservirtium_vcr-v0.1.0-linux-x86_64.so native/libservirtium_vcr.so
npm ci
npm pack
# Produces servirtium-vcr-2.0.0.tgz (for this OS/architecture).
```

`npm ci` installs the build tools and runs the TypeScript build automatically.
The resulting package contains compiled JavaScript, TypeScript declarations,
and the native library. Your app does not need a TypeScript compiler.

**4. Install into a separate app.** Move back to the scratch directory and
create a consumer project:

```sh
cd ../..
mkdir app
cd app
npm init -y
npm install ../servirtium-vcr/javascript/servirtium-vcr-2.0.0.tgz
```

The installed package finds its bundled library automatically. If you need to
use a different native build, set `SERVIRTIUM_VCR_LIB` to its **absolute path**
before starting Node, or call `.nativeLib('/absolute/path/to/library')` on the
builder before its first `.start()`. An existing `SERVIRTIUM_VCR_LIB` setting
overrides the bundled library; unset it to try automatic discovery.

## Record and replay a local service

In the `app` directory above, save this as **`try-servirtium.mjs`** and run
`node try-servirtium.mjs`. The `.mjs` extension enables `import` and top-level
`await` without changing `package.json`. This example uses Node's built-in
HTTP server, `fetch`, and assertions; it needs no test framework.

```js
import assert from 'node:assert/strict'
import { once } from 'node:events'
import { readFileSync } from 'node:fs'
import { createServer } from 'node:http'
import { Vcr, VcrOutcome } from '@servirtium/vcr'

const upstream = createServer((req, res) => {
  if (req.method !== 'GET' || req.url !== '/hello?name=README') {
    res.writeHead(404).end()
    return
  }
  const body = JSON.stringify({ message: 'Hello, README!' })
  res.writeHead(200, {
    'Content-Type': 'application/json',
    'Content-Length': Buffer.byteLength(body),
  })
  res.end(body)
})

async function getGreeting(vcr) {
  const response = await fetch(`${vcr.baseUrl}/hello?name=README`, {
    signal: AbortSignal.timeout(10000),
  })
  assert.equal(response.status, 200)
  assert.deepEqual(await response.json(), { message: 'Hello, README!' })
  assert.equal(vcr.lastKind, VcrOutcome.Ok, vcr.lastError)
}

upstream.listen(0, '127.0.0.1')
await once(upstream, 'listening')
try {
  const upstreamUrl = `http://127.0.0.1:${upstream.address().port}`
  const recorder = Vcr.record('hello.md', upstreamUrl).port(0).start()
  try {
    await getGreeting(recorder)
  } finally {
    recorder.close() // Writes hello.md, including the query string and JSON body.
  }
} finally {
  await new Promise((resolve, reject) => {
    upstream.close(error => error ? reject(error) : resolve())
  })
}

// The upstream is stopped: replay now uses only the recorded tape.
const playback = Vcr.playback('hello.md').port(0).start()
try {
  await getGreeting(playback)
} finally {
  playback.close()
}

console.log(readFileSync('hello.md', 'utf8'))
console.log('Recorded hello.md and replayed it with the upstream stopped.')
```

The recording is written to `hello.md` in your current directory; rerunning
overwrites it. In your own tests, replace `upstreamUrl` with your service's URL
and point your application's HTTP client at `vcr.baseUrl`. Always consume the
response body before closing the recorder, and use `finally` to flush the tape
and stop the server even if an assertion fails.

## Docs

- **[docs/usage.md](docs/usage.md)** — playback, record, redactions,
  unredactions, header removal, notes, strict matching, static content, drift,
  diagnostics — with code.
- **[docs/features.md](docs/features.md)** — Servirtium capability matrix and
  what's covered by tests.
- **[docs/architecture.md](docs/architecture.md)** — how the FFI layering works
  (TS → koffi → `core/embed.ae` → `core/vcr.ae`), the native loader, and the
  handle-based one server per port model.
- **[docs/building.md](docs/building.md)** — building the native library,
  testing, and packaging for npm.
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
