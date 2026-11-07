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

## Getting it

`@servirtium/vcr` is **not on the npm registry yet**. Each release attaches a
multi-platform tarball with the native libraries inside (linux x64/arm64 glibc and musl,
macOS x64/arm64, Windows x64/arm64), so one `npm install <url>` is the whole job. Run this
in your own project directory (Node 22+):

```sh
set -eu
VER=2.0.0-alpha.12                       # a release version of servirtium-vcr; nothing else to edit
REL=https://github.com/servirtium/servirtium-vcr/releases/download/v$VER

# 1. install the tarball (adds "@servirtium/vcr" to package.json; koffi comes from the registry).
#    npm 12 refuses URL dependencies by default, so allow them for direct dependencies of this project.
[ -f package.json ] || npm init -y
grep -qs '^allow-remote' .npmrc || echo 'allow-remote=root' >> .npmrc      # so `npm ci` works later too
npm install $REL/servirtium-vcr-$VER.tgz

# 2. check it: replay a recorded tape through the bundled library
mkdir -p tapes
curl -fsSL -o tapes/single_get.md https://raw.githubusercontent.com/servirtium/servirtium-vcr/v$VER/javascript/example/tapes/single_get.md
node -e '
const { Vcr, VcrOutcome } = require("@servirtium/vcr");
const vcr = Vcr.playback("tapes/single_get.md").port(0).start();
fetch(vcr.baseUrl + "/ok").then(r => r.text()).then(t => {
  console.log(t.trim(), vcr.lastKind === VcrOutcome.Ok ? "(clean match)" : "(MISMATCH)");   // -> ok-body (clean match)
  vcr.close();
});'
```

The same thing as a `package.json` dependency:
`"@servirtium/vcr": "https://github.com/servirtium/servirtium-vcr/releases/download/v2.0.0-alpha.12/servirtium-vcr-2.0.0-alpha.12.tgz"`.
Once published it will be `npm install @servirtium/vcr@2.0.0-alpha.12`; that does not work today.
A `.sha256` sits beside the tarball on the release page if you want to verify it first.

### Notes for coding agents

- **npm 12** fails a URL dependency with `EALLOWREMOTE ... Fetching packages of type "remote"
  have been disabled`. The fix is `allow-remote=root` in the project's `.npmrc` (step 1 writes it)
  or `--allow-remote=root` on the command; do not set `all`. It is needed again by every
  `npm ci` on a machine without that `.npmrc`, so commit the `.npmrc`. Older npm ignores the key.
- npm 12 also prints `install scripts blocked ... @servirtium/vcr (prepare ...)` and the same for
  `koffi`. It is harmless here: the tarball is prebuilt and koffi ships prebuilt binaries. Do not
  approve or `--dangerously-allow-all-scripts` to silence it.
- Needs **Node 22+** (`engines`); on an older Node npm warns `EBADENGINE` and the package may
  fail at run time. Use a newer Node, not a polyfill.
- `npm install @servirtium/vcr` (registry form) fails with `E404`: not published. Do not
  substitute another package, and do not `npm install github:servirtium/servirtium-vcr`: that
  is a monorepo whose root has no package and no native library.
- A release older than the one that first attached `servirtium-vcr-<ver>.tgz` has no such
  asset (`curl`/`npm` report 404). Use a later tag, or build the tarball yourself: in a copy
  of `javascript/`, stage the library as
  `native/<process.platform>-<process.arch>[-musl]/libservirtium_vcr.so` (`.dylib`; `servirtium_vcr.dll`
  on Windows), then `npm ci && npm pack`.
- FreeBSD is not in the tarball: fetch that release asset and set `SERVIRTIUM_VCR_LIB` to its
  absolute path. Loader order: `.nativeLib(path)`, `SERVIRTIUM_VCR_LIB`, the package's `native/`,
  then the OS loader. Do not set `SERVIRTIUM_VCR_LIB` otherwise: it overrides the bundled library.
- The package is CommonJS with bundled `.d.ts`; `import { Vcr } from '@servirtium/vcr'` works
  too. You need no TypeScript compiler, and do not copy `javascript/src/*.ts` into your project.
- Tape paths are relative to the process working directory, not to the test file.
- A library that cannot be opened makes koffi throw `Error: Failed to load shared library: cannot
  open shared object file: No such file or directory` at the first `.start()`, not at `require`.
  Check `process.platform`/`process.arch` and whether the machine is musl (Alpine).

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
