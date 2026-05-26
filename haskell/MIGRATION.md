# servirtium-haskell → Aether VCR migration

**Status (2026-05-25):** DONE. This repo is now a thin Haskell **FFI** wrapper
over the Aether VCR core. The previous pure-Haskell Servirtium
reimplementation is deleted, replaced by `Servirtium.Vcr` — a
`foreign import ccall` binding to the native VCR library built from
`std/http/server/vcr/embed.ae`. Playback, mismatch diagnostics, record→replay,
and redaction are proven end-to-end by `servirtium-haskell-test` against the
real native lib.

## Why

The repo used to be a pure-Haskell *reimplementation* of Servirtium: a
markdown reader/writer, the HTTP proxy/server, and the recorder/replayer. All
of that logic now exists — tested and maintained — in the Aether standard
library at `std/http/server/vcr`, shared by every language binding
(.NET/Go/Java/Rust/Ruby/JS/Python and now Haskell).

The new shape: **this repo wholly depends on the Aether VCR for core
record/replay** and keeps only Haskell-flavored glue — an FFI binding to a
precompiled native VCR library plus an idiomatic test fixture. No backwards
compatibility with the old API.

## Architecture (target / current)

```
hspec / tasty test
   │  withPlayback (playbackOptions tape) ...  /  withRecord (recordOptions tape upstream) ...
   ▼
servirtium-haskell (this repo)        ── thin Haskell ──
   │  foreign import ccall  aether_vcr_embed_*()
   ▼
libservirtium_vcr.{so,dylib,dll}      ── ae build --emit=lib --with=fs,net
   │  (the Aether VCR core: parse, dispatch, record, mutate, emit)
   ▼
SUT  ⇄  http://127.0.0.1:<port>       ── the SUT talks HTTP to the VCR
```

The system-under-test only ever sees an HTTP base URL — exactly the
server-first model the Aether VCR is designed around.

## What was deleted

- `src/Run.hs`, `src/Types.hs`, `src/Util.hs`, `src/Import.hs`,
  `src/Test.hs`, `src/scratch.hs` — the pure-Haskell markdown/interaction/
  proxy logic.
- `app/Main.hs` — the standalone executable (the native lib is the server).
- `Setup.hs`, `stack.yaml`, `stack.yaml.lock` — replaced by a plain
  cabal + `cabal.project` flow.
- The old `test/Spec.hs` / `test/UtilSpec.hs`.

## What is new

- `src/Servirtium/Vcr/Native.hs` — the `foreign import ccall` block (1:1 with
  the `aether_vcr_embed_*` C-ABI) plus `takeString` (peek + free).
- `src/Servirtium/Vcr.hs` — the idiomatic API: `PlaybackOptions` /
  `RecordOptions` records with defaults (`playbackOptions` / `recordOptions`),
  `withPlayback` / `withRecord` (bracket-style auto-stop), explicit
  `startPlayback` / `startRecord` / `stop`, IO accessors, and the `Field`,
  `Outcome`, `VcrException` types.
- `build-native.sh` + `bootstrap.sh`, `docs/`, and the test-suite.

## API (new)

```haskell
-- playback
withPlayback (playbackOptions "tapes/my_api.md") { pbPort = 0 } $ \vcr -> do
  url <- baseUrl vcr
  -- ... drive the SUT ...
  lastKind vcr >>= (`shouldBe` Ok)

-- record
withRecord (recordOptions "tapes/my_api.md" "https://api.example.com")
  { recRemoveHeaders = [(RequestHeaders, "Host")]
  , recRedactions    = [(RequestHeaders, realToken, "Bearer REDACTED")]
  } $ \vcr -> do
    url <- baseUrl vcr
    -- ... drive the SUT ...   (withRecord's teardown flushes the tape)
    pure ()
```

The Servirtium markdown tape *format* is unchanged — existing tapes replay
as-is.
