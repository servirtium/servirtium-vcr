# Servirtium Dart

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for **Dart and Flutter**.

Point your system-under-test at a local URL. In **playback** it replays a
recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape.

```dart
import 'package:servirtium/servirtium.dart';

final vcr = Vcr.playback('tapes/climate_api.md').port(0).start();   // 0 = OS-assigned
try {
  // point the SUT at vcr.baseUrl, drive it ...
  expect(vcr.lastKind, VcrOutcome.ok);
} finally {
  vcr.close();
}
```

## What this is

A thin **`dart:ffi`** wrapper over the **Aether VCR** core: markdown
parse/emit, the HTTP server, request matching, redactions, notes, drift
detection, static-content bypass, gzip/chunked handling all live in the
in-repo pure-Aether engine (`core/vcr.ae`, with the C-ABI wrapper in
`core/embed.ae`), built on Aether stdlib primitives and shipped as a
precompiled native library (`core/native/libservirtium_vcr.so`). This package
opens that library with `DynamicLibrary.open` and presents an idiomatic Dart
fixture; it does **not** reimplement Servirtium in Dart. The same binding
serves Flutter.

## Install

```sh
dart pub add --dev servirtium
```

The native engine ships with the package (`native/`); consumers do **not**
need the Aether toolchain — only contributors rebuilding the engine do
(see [docs/building.md](docs/building.md)).

## Usage

Full surface in **[docs/usage.md](docs/usage.md)** — playback, record,
redactions, unredactions, header removal, notes, strict matching, static
content, drift, diagnostics.

## Concurrency: one server per port

The binding uses a **one server per port** (handle-based ABI): N independent VCR
servers can run concurrently in one process, each keyed by its own handle.
A fixture's config, diagnostics, and tape are scoped to its handle, so two
`Vcr.playback(...).start()` (or `.record(...)`) servers can be alive at once
without their cursors or mutations bleeding into each other.

## Docs

- [docs/usage.md](docs/usage.md) — full API surface and examples
- [docs/features.md](docs/features.md) — capability matrix vs. the core
- [docs/architecture.md](docs/architecture.md) — FFI layering
- [docs/building.md](docs/building.md) — building the native engine from source

## Building from source

```sh
./bootstrap.sh        # installs `ae` via get.sh if missing, builds the native lib, runs dart test
```

Details in [docs/building.md](docs/building.md).
