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
detection, static-content bypass, gzip/chunked handling all live in and are
maintained as the Aether standard library (`std/http/server/vcr`), shipped as
a precompiled native library (`libservirtium_vcr.so`). This package opens that
library with `DynamicLibrary.open` and presents an idiomatic Dart fixture; it
does **not** reimplement Servirtium in Dart. The same binding serves Flutter.

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
content, drift, diagnostics. Capability matrix:
[docs/features.md](docs/features.md). FFI layering:
[docs/architecture.md](docs/architecture.md).

## One hard rule: run tests serially

The Aether VCR is **one active server per process** in v1 (its state is
process-global, shared across Dart isolates). Run `dart test` with
`concurrency: 1` (set in `dart_test.yaml`) so suites don't run in parallel.
`start()` resets all process-global mutation/strict/format state first, so a
setting from a previous test never leaks forward.

## Building from source

```sh
./bootstrap.sh        # installs `ae` via get.sh if missing, builds the native lib, runs dart test
```

Details in [docs/building.md](docs/building.md).
