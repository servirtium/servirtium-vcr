# Servirtium-ruby Changelog

## v2.0.0

**Breaking rewrite.** servirtium-ruby is now a thin Ruby (Fiddle/stdlib FFI)
wrapper over the **Aether VCR** core — the same precompiled native engine
(`std/http/server/vcr`) used by the .NET, Go, Java, Rust, and Python bindings.

- Deleted the Ruby reimplementation of Servirtium: the markdown reader/writer,
  the WEBrick/Rack record-replay server and proxy, the recorder/replayer, and
  the demo/compatibility servlets.
- New API: `Servirtium.playback(tape)` / `Servirtium.record(tape, upstream)`
  return fluent builders that `.start` a `Servirtium::Server` (with an optional
  auto-closing block form). The SUT only ever talks HTTP to `server.base_url`.
- The record/replay engine — markdown parse/emit, request matching, redaction,
  unredaction, header removal, notes, drift detection, static content,
  gzip/chunked handling — now lives in (and is maintained as) the Aether
  standard library. This gem marshals strings and presents an idiomatic API.
- No backwards compatibility with the old API; no shim. The tape *format* is
  unchanged, so existing tapes replay as-is.
- Runtime gem dependencies removed (`faraday`, `faraday_middleware`, `gyoku`);
  loading uses the Ruby stdlib `fiddle`. Requires Ruby >= 3.3.
- The native library (`libservirtium_vcr.so`) is bundled under
  `lib/servirtium/native/`; `build-native.sh` rebuilds it from the Aether
  toolchain.

## v0.1.0
