# Servirtium JavaScript → Aether VCR migration

**Status (2026-05-24):** DONE. The old TypeScript reimplementation of Servirtium
(the `@servirtium/recorder` Express/markdown record-replay server) is deleted
and replaced by `@servirtium/vcr` — a thin [koffi](https://koffi.dev) FFI
wrapper over the native VCR library built from `std/http/server/vcr/embed.ae`.
Playback, mismatch diagnostics, record→replay (including chunked de-chunk),
redaction, and notes are proven end-to-end by `src/*.test.ts` against the real
native lib.

## Why

The repo used to be a TypeScript *reimplementation* of Servirtium: a markdown
reader/writer, an Express + `http-proxy-middleware` record/replay server, a
recorder, a replayer, EJS templating, and mock tapes. All of that logic now
exists — tested and maintained — in the Aether standard library at
`std/http/server/vcr`, shared by every language binding.

The new shape: **this repo wholly depends on the Aether VCR for core
record/replay** and keeps only JS-flavored glue — a koffi binding to a
precompiled native VCR library plus an idiomatic TypeScript test fixture. No
backwards compatibility with the previously published `@servirtium/recorder`
API.

## Architecture (target)

```
jest / vitest test
   │  Vcr.playback(tape).port(0).start()  /  Vcr.record(tape, upstream).start()
   ▼
@servirtium/vcr (this repo)          ── thin TypeScript ──
   │  koffi FFI  aether_vcr_embed_*()
   ▼
libservirtium_vcr.{so,dylib,dll}     ── ae build --emit=lib --with=fs,net
   │  (the Aether VCR core: parse, dispatch, record, mutate, emit)
   ▼
SUT  ⇄  http://127.0.0.1:<port>      ── the SUT talks HTTP to the VCR
```

The system-under-test only ever sees an HTTP base URL — exactly the server-first
model the Aether VCR is designed around. This mirrors the .NET/Go/Java/Rust
bindings; canonical reference is `servirtium-dotnet`.

## What got deleted

- `src/servirtium.ts` — the Express/`http-proxy-middleware` record-replay server
  + markdown parse/emit + recorder/replayer (~560 lines).
- `src/index.ts` (old re-export), `src/servirtium.test.ts`,
  `src/todobackend_compatibility_test.js`, `src/challenge.js`,
  `src/chllenge_tests.js`, `src/template.ejs`.
- `mocks/*.md` — the old in-repo mock tapes.
- `compatibility-suite.py`, `Pipfile`, `jest.setup.js` (jasmine reporter shim).
- Dead deps: `express`, `cors`, `http-proxy-middleware`, `ejs`,
  `xml-formatter`, and their `@types`.

## What's new

- `src/native.ts` — centralized koffi bindings to the `aether_vcr_embed_*`
  C-ABI + the native-lib resolver + the decode-and-free string helper.
- `src/vcr.ts` — the idiomatic API: `Vcr.playback` / `Vcr.record` builders and
  `VcrServer`, plus `VcrField`, `VcrOutcome`, `VcrError`.
- `build-native.sh` — builds the host's native lib from `embed.ae`.
- `tapes/` — `single_get.md`, `secure_get.md` fixtures (from the .NET suite).
- `docs/` — usage, architecture, features, building.

## Public API

```ts
import { Vcr, VcrField, VcrOutcome } from '@servirtium/vcr'

// playback
const vcr = Vcr.playback('tapes/my_api.md').port(0).start()
const res = await fetch(`${vcr.baseUrl}/path`)
expect(vcr.lastKind).toBe(VcrOutcome.Ok)
vcr.close()

// record
const rec = Vcr.record('tapes/my_api.md', 'https://api.example.com')
  .removeHeader(VcrField.ResponseHeaders, 'Set-Cookie')
  .redact(VcrField.RequestHeaders, realToken, 'Bearer REDACTED')
  .port(0)
  .start()
await fetch(`${rec.baseUrl}/path`)
rec.close() // flushes the tape
```

The tape *format* is unchanged — format interop is the whole point — so existing
Servirtium tapes replay as-is.
