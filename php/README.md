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

Requires **PHP 8.2+ with the `FFI` extension** (`ext-ffi`).

## Install

> **Note:** the `servirtium/servirtium-php` package is **not published to
> Packagist yet**, so `composer require --dev servirtium/servirtium-php` does
> **not** give you this library. Get the native library from GitHub releases
> instead (below).

**Get the native library** (`libservirtium_vcr`) for your OS/arch from the
[GitHub releases](https://github.com/servirtium/servirtium-vcr/releases) — one
prebuilt shared library per platform, each with a `.sha256` — and (optionally)
verify it:

```sh
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v2.0.0-alpha.1/libservirtium_vcr-v2.0.0-alpha.1-linux-x86_64.so
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v2.0.0-alpha.1/libservirtium_vcr-v2.0.0-alpha.1-linux-x86_64.so.sha256
sha256sum -c libservirtium_vcr-v2.0.0-alpha.1-linux-x86_64.so.sha256   # -> OK
```

**Build the package locally**

Nothing is published to a registry yet, so you assemble the package yourself:
drop the downloaded library at the package-relative path below, then consume it
from source (a `path` repository in your `composer.json`).

```sh
# from the php binding directory, with libservirtium_vcr-v2.0.0-alpha.1-linux-x86_64.so downloaded:
mkdir -p native
cp libservirtium_vcr-v2.0.0-alpha.1-linux-x86_64.so native/libservirtium_vcr.so
# the package now carries the native library; consume it from source (see this README's usage/examples).
```

Available platforms: linux (x86_64, arm64), macOS (x86_64, arm64), Windows
(x86_64, arm64), FreeBSD (x86_64). No Aether toolchain is needed to *use* the
library. (For macOS use the `.dylib`, for Windows the `.dll` — adjust the
filename accordingly.)

Then point the binding at it via `SERVIRTIUM_VCR_LIB`:

```sh
export SERVIRTIUM_VCR_LIB=$PWD/libservirtium_vcr-v2.0.0-alpha.1-linux-x86_64.so
```

ext-ffi loads the library from that path at runtime.

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
