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

## Getting it

The Composer name is **`servirtium/vcr`** (Packagist vendor = the GitHub org `servirtium`),
namespace `Servirtium\`, `require php >=8.2` and `ext-ffi`. It is **not on Packagist yet**.

**Why there is no one-line `composer require` from GitHub:** this repo is a monorepo and
`composer.json` lives in `php/`, not at the root. Composer's `vcs` repository type reads
`composer.json` at the repository root only (it has no subdirectory option), so
`{"type":"vcs","url":"https://github.com/servirtium/servirtium-vcr"}` finds no package.
Packagist has the same limit: it needs the package at a repo root, i.e. a split repo
(a read-only mirror of `php/`, for example via `git subtree split`) registered as
`servirtium/vcr`. None exists yet. The honest route today is a `path` repository onto a
checkout of the tag, with the native library placed in that checkout's `php/native/`.
Run this in your own PHP project:

```sh
VER=v2.0.0-alpha.15                      # a release tag of servirtium-vcr
REL=https://github.com/servirtium/servirtium-vcr/releases/download/$VER

# 1. a checkout of that tag (only php/ is used)
git clone --depth 1 --branch $VER https://github.com/servirtium/servirtium-vcr.git vendor-src/servirtium-vcr

# 2. the native library for this OS/arch, checksum-verified, into php/native/
case "$(uname -s)-$(uname -m)" in
  Linux-x86_64)  P=linux-x86_64;  E=so ;;
  Linux-aarch64) P=linux-arm64;   E=so ;;
  Darwin-arm64)  P=macos-arm64;   E=dylib ;;
  Darwin-x86_64) P=macos-x86_64;  E=dylib ;;
  *) echo "see the release assets for your platform"; exit 1 ;;
esac
LIB=libservirtium_vcr-$VER-$P.$E
N=vendor-src/servirtium-vcr/php/native
mkdir -p $N
curl -fsSL -o $N/$LIB $REL/$LIB
curl -fsSL -o $N/$LIB.sha256 $REL/$LIB.sha256
( cd $N && { sha256sum -c $LIB.sha256 2>/dev/null || shasum -a 256 -c $LIB.sha256; } )
cp $N/$LIB $N/libservirtium_vcr.$E

# 3. a path repository onto php/ (symlinked, so native/ comes along), then require it
composer config repositories.servirtium path vendor-src/servirtium-vcr/php
composer require --dev servirtium/vcr:@dev

# 4. check it: replay a tape through the library
mkdir -p tapes
curl -fsSL -o tapes/single_get.md https://raw.githubusercontent.com/servirtium/servirtium-vcr/$VER/php/example/tapes/single_get.md
php -d ffi.enable=1 -r 'require "vendor/autoload.php";
  $v = Servirtium\Vcr::playback("tapes/single_get.md")->port(0)->start();
  echo file_get_contents($v->baseUrl()."/ok"), "\n"; $v->stop();'   # -> ok-body
```

(Alternatively skip step 3's `composer config` and put
`"repositories":[{"type":"path","url":"vendor-src/servirtium-vcr/php"}]` in your
`composer.json`. Do not use `"options":{"symlink":false}` unless the library is already in
`php/native/`: it copies the directory into `vendor/` at install time.)

Windows (x86_64, arm64) and FreeBSD (x86_64) assets exist too; the Windows file name the
loader wants is `servirtium_vcr.dll`.

### Notes for coding agents

- The package name is `servirtium/vcr` (not `servirtium/servirtium-php`, which never
  existed on Packagist). `Could not find a matching version of package servirtium/vcr` or
  `could not find package` means the path repository is not configured (or points at the repo
  root instead of its `php/` subdirectory); do not try to fix it with a `vcs` repository, it
  cannot work for a subdirectory.
- `FFI` must be on: `ext-ffi` is a hard requirement and `ffi.enable` must allow it. In CLI,
  `ffi.enable=preload` (the php.ini default) still permits `FFI::cdef`; under php-fpm / Apache
  it does not, so set `ffi.enable=1`. `Class "FFI" not found` means the extension is not
  loaded: some distros (Arch) ship it as a shared module that php.ini does not enable, so add
  `extension=ffi` to php.ini or pass `-d extension=ffi` on the command line.
- `could not find native VCR library 'libservirtium_vcr.so'` means `php/native/` of the
  checkout the path repo points at lacks that exact file name. Alternatively set
  `SERVIRTIUM_VCR_LIB` to an absolute path, or call `->nativeLib($path)` on the builder.
- Do not put the library in `vendor/`: `composer install` can wipe it. Do not commit
  `vendor-src/`.
- In-repo development: `aeb php/.tests.ae` from the repo root.

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
