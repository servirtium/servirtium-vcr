# Changelog for `servirtium-haskell`

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to the
[Haskell Package Versioning Policy](https://pvp.haskell.org/).

## 2.0.0 - 2026-05-25

### Changed (breaking)

- **Complete rewrite as a thin Haskell FFI wrapper over the Aether VCR core.**
  The previous pure-Haskell reimplementation of Servirtium (markdown
  parse/emit, the HTTP proxy/server, recorder/replayer) is **deleted**. All
  record/replay machinery now lives in and is maintained as the Aether
  standard library (`std/http/server/vcr`); this package links a precompiled
  native build of that core (`libservirtium_vcr.so`) via
  `foreign import ccall` and presents an idiomatic Haskell fixture.
- **New API, no backwards compatibility.** The old modules (`Run`, `Types`,
  `Util`, the standalone executable) are gone. The public surface is now
  `Servirtium.Vcr`: `playbackOptions` / `recordOptions` records,
  `withPlayback` / `withRecord` (bracket-style, auto-stop) plus
  `startPlayback` / `startRecord` / `stop`, the `VcrServer` handle, IO
  accessors (`baseUrl`, `port`, `tapeLength`, `lastError`, `lastKind`,
  `lastIndex`, `note`, `resetCursor`, `clearLastError`), and the `Field`,
  `Outcome`, and `VcrException` types.
- Mirrors the other Aether VCR bindings (.NET/Go/Java/Rust/Ruby/JS/Python).
  The Servirtium markdown tape *format* is unchanged, so existing tapes
  replay as-is.

### Added

- `build-native.sh` — builds `native/libservirtium_vcr.so` from the installed
  Aether toolchain's `embed.ae` (or `AETHER_REPO` override) and generates
  `cabal.project.local` with the native lib dir + an rpath.
- `bootstrap.sh` — one-command casual-dev bootstrap (installs `ae` if missing,
  checks GHC/cabal, builds the native lib, runs `cabal test`).
- `docs/` — usage, architecture, features, building — and `MIGRATION.md`.

### Known limitations (inherited from the Aether core)

- **One active VCR server per process** in v1 — run tests serially.
- `flush_or_check` (the `.actual`-sibling drift variant) and `load_url`
  (replay a tape fetched over HTTP) are present in the Aether VCR module but
  not surfaced by `embed.ae`, so not exposed here.

## 0.1.0.0

- Initial pure-Haskell Servirtium implementation (removed in 2.0.0).
