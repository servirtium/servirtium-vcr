# Servirtium PHP

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for PHP.

Point your system-under-test at a local URL. In **playback** it replays a
recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```php
use Servirtium\Vcr;
use Servirtium\VcrOutcome;

$vcr = Vcr::playback('tapes/climate_api.md')->port(0)->start();
try {
    // point the SUT at $vcr->baseUrl(), drive it ...
    $body = file_get_contents($vcr->baseUrl() . '/api/v1/countries');
    assert($vcr->lastKind() === VcrOutcome::Ok);
} finally {
    $vcr->stop();
}
```

## What this is

A thin **PHP FFI** layer over the **Aether VCR** core: the markdown
parse/emit, the HTTP server, request matching, redactions, notes, drift
detection, static-content bypass, gzip/chunked handling all live in a single
pure-Aether module in this repo at `core/vcr.ae` (plus the `core/embed.ae`
C-ABI), built once to `core/native/libservirtium_vcr.so` on top of Aether
stdlib primitives (`std.http`, `std.regex`, `std.zlib`, `std.cryptography`).
The Servirtium logic is in-repo, not the stdlib. This package `FFI::cdef`s
that precompiled native build and presents an idiomatic PHP fixture; it does
**not** reimplement Servirtium in PHP.

Requires **PHP 8.4+ with the `FFI` extension** (`ext-ffi`).

## Install

```sh
composer require --dev servirtium/servirtium-php
```

The native engine ships with the package (under `native/`); consumers do
**not** need the Aether toolchain — only contributors rebuilding the engine
do (see [docs/building.md](docs/building.md)).

## Docs

- **[docs/usage.md](docs/usage.md)** — playback, record, redactions,
  unredactions, whole-tape normalization, header removal, notes, strict
  matching, static content, drift, diagnostics — with code.
- **[docs/features.md](docs/features.md)** — Servirtium capability matrix and
  what's covered by tests.
- **[docs/architecture.md](docs/architecture.md)** — how the FFI layering works
  (PHP → FFI → `embed.ae` → Aether VCR), the native loader, and the
  one-server-per-port (handle-keyed) concurrency model.
- **[docs/building.md](docs/building.md)** — building the native library and CI.

## Concurrency: one server per port

The Aether VCR runs **one server per port**: N independent VCR servers can run
concurrently in one process, each keyed by its own handle, with config,
diagnostics, and tape scoped to that handle. So two
`Vcr::playback(...)->start()` servers can be alive at once on different ports
without their cursors or mutations bleeding into each other (proven by
`core_tests/concurrent_probe.ae`). PHPUnit's default serial runner is fine; the
binding does not require it.

## Building from source

```sh
./bootstrap.sh        # installs `ae` via get.sh if missing, builds the native lib, runs PHPUnit
```

`bootstrap.sh` installs the Aether toolchain via its official `get.sh` to
`~/.local` (no sudo, no tests, no contrib) if it's missing, checks PHP+FFI,
runs `build-native.sh`, then PHPUnit. Details in
[docs/building.md](docs/building.md).
