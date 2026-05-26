# Servirtium Java → Aether VCR migration

**Status (2026-05-24):** DONE. The Java reimplementation of Servirtium
(~6,400 lines across `core/`, `jetty/`, and `undertow/`) is deleted, replaced
by `servirtium-vcr` — a Java **FFM (java.lang.foreign / Project Panama)**
wrapper over the native VCR library built from
`std/http/server/vcr/embed.ae`. Playback, mismatch diagnostics, record→replay,
redaction, unredaction, header removal, notes, strict matching, static
content, and drift detection are proven end-to-end by the `src/test` suite
(12 tests, all green) against the real native lib. This mirrors the prior
`servirtium-dotnet` rewrite.

## Why

The repo was a ~6,400-line Java *reimplementation* of Servirtium: markdown
reader/writer (`MarkdownRecorder`, `MarkdownReplayer`), interaction model,
body formatters, the `InteractionManipulations` transform pipeline, the
`ServirtiumServer` abstraction, and two pluggable HTTP server modules
(`jetty`, `undertow`). All of that logic now exists — tested and maintained —
in the Aether standard library at `std/http/server/vcr`.

The new shape: **this repo wholly depends on the Aether VCR for core
record/replay** and keeps only Java-flavored glue — an FFM binding to a
precompiled native VCR library plus an idiomatic JUnit fixture. No backwards
compatibility with the previously published `com.paulhammant.servirtium` API.

## Architecture (target)

```
JUnit 5 test
   │  Vcr.playback(tape).port(0).start()  /  Vcr.record(tape, upstream).start()
   ▼
servirtium-vcr (this repo)           ── thin Java, java.lang.foreign ──
   │  FFM downcall  aether_vcr_embed_*()
   ▼
libservirtium_vcr.{so,dylib,dll}     ── ae build --emit=lib --with=fs,net
   │  (the Aether VCR core: parse, dispatch, record, mutate, emit)
   ▼
SUT  ⇄  http://127.0.0.1:<port>      ── the SUT talks HTTP to the VCR
```

The system-under-test only ever sees an HTTP base URL — exactly the
server-first model the Aether VCR is designed around.

## What got deleted

- `core/src/main/java/com/paulhammant/servirtium/*` — `MarkdownRecorder`,
  `MarkdownReplayer`, `ServirtiumServer`, `ServiceResponse`,
  `InteractionMonitor`, `InteractionManipulations` +
  `SimpleInteractionManipulations`, `ServiceInteroperation` /
  `ServiceInteropViaOkHttp`, `NonRecordingPassThrough`, `JsonAndXmlUtilities`,
  the `logging/` and `svn/` helpers. (Aether owns markdown parse/emit +
  record/replay + forwarding.)
- `jetty/` and `undertow/` modules entirely — the embedded Aether HTTP server
  inside the native lib is the server now.
- All the old `*Test` / `*Tests` classes and their fixture resources.
- The multi-module parent `pom.xml`, collapsed to a **single module**.

## What's new

- `src/main/java/com/paulhammant/servirtium/vcr/`:
  - `Vcr` — entry: `playback(tape)` / `record(tape, upstream)`.
  - `PlaybackBuilder` / `RecordBuilder` — fluent config (`host`, `port`,
    `label`, `redact`/`unredact`, `removeHeader`, `note`, `staticContent`,
    `strictHeaders`, `indentCodeBlocks`, `emphasizeHttpVerbs`, `failIfChanged`),
    `start()` → `VcrServer`.
  - `VcrServer` (`AutoCloseable`) — `baseUrl()`, `port()`, `tapeLength()`,
    `lastError()`, `lastKind()` → `Outcome`, `lastIndex()`, `note()`,
    `resetCursor()`, `clearLastError()`, `close()`.
  - `Field`, `Outcome` enums; `VcrException` (a `RuntimeException`).
  - `NativeMethods` — centralized `java.lang.foreign` downcall `MethodHandle`s,
    1:1 with the `aether_vcr_embed_*` ABI, plus the copy-and-free string helper.
  - `NativeLoader` — `SymbolLookup.libraryLookup` over the resolved `.so`
    (env override → source tree → extracted classpath resource).
- `build-native.sh` — builds the host-RID `.so` into `src/main/resources/native/`.
- `docs/` (usage, architecture, features, building) and this file, rewritten.

## API translation (old → new)

| Old (0.x) | New (2.0) |
|---|---|
| `new MarkdownReplayer().withReplayMarkdown(...)` + `JettyServirtiumServer` | `Vcr.playback(tape).start()` |
| `new MarkdownRecorder(serviceInteropViaOkHttp(...), ...)` + server | `Vcr.record(tape, upstream).start()` |
| `ServirtiumServer.start()` / `.stop()` | `VcrServer` (`AutoCloseable`) `start()` / `close()` |
| `SimpleInteractionManipulations` redact/remove rules | `.redact(Field, …)` / `.removeHeader(Field, …)` |
| `InteractionMonitor` callbacks | passive reads: `lastKind()` / `lastError()` / `lastIndex()` |

## Requirements change

- **JDK 25** (was Java 8/11-era). `java.lang.foreign` is stable since JDK 22;
  no JNA/JNI.
- Tests pass `--enable-native-access=ALL-UNNAMED` (set in Surefire `argLine`).
- One active VCR server per process (v1) — run tests serially (JUnit 5's
  default).

## Aether-core gaps noticed (candidates to file upstream)

- `flush_or_check` (the `.actual`-sibling drift variant) and `load_url`
  (replay a tape fetched over HTTP) exist in the core but aren't surfaced by
  `embed.ae` — small additions if wanted.
