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
detection, static-content bypass, gzip/chunked handling all live in and are
maintained as the Aether standard library (`std/http/server/vcr`), shipped as
a precompiled native library (`libservirtium_vcr.so`). This package
`FFI::cdef`s that library and presents an idiomatic PHP fixture; it does
**not** reimplement Servirtium in PHP.

Requires **PHP 8.4+ with the `FFI` extension** (`ext-ffi`).

## Install

```sh
composer require --dev servirtium/servirtium-php
```

The native engine ships with the package (under `native/`); consumers do
**not** need the Aether toolchain — only contributors rebuilding the engine
do (see [docs/building.md](docs/building.md)).

## Usage

See **[docs/usage.md](docs/usage.md)** for the full surface — playback,
record, redactions, unredactions, header removal, notes, strict matching,
static content, drift, diagnostics — with code. The capability matrix is in
[docs/features.md](docs/features.md); the FFI layering in
[docs/architecture.md](docs/architecture.md).

## One hard rule: run tests serially

The Aether VCR is **one active server per process** in v1 (its tape / cursor /
mutation state is process-global). Run PHPUnit serially (the default — don't
enable parallel runners). `start()` resets all process-global mutation/strict/
format state first, so a setting from a previous test never leaks forward.

## Building from source

```sh
./bootstrap.sh        # installs `ae` via get.sh if missing, builds the native lib, runs PHPUnit
```

`bootstrap.sh` installs the Aether toolchain via its official `get.sh` to
`~/.local` (no sudo, no tests, no contrib) if it's missing, checks PHP+FFI,
runs `build-native.sh`, then PHPUnit. Details in
[docs/building.md](docs/building.md).
