# Building

## Turnkey: `./bootstrap.sh`

From the repo root, `bootstrap.sh` installs the pinned `ae` (0.945.0) and `aeb`
via their official installers to a user prefix (`$HOME/.local`, no sudo; needs
`curl`) if they are missing, then runs `aeb` on the leaf you name:

```sh
./bootstrap.sh php/.tests.ae     # builds libservirtium_vcr, then runs PHPUnit
```

It does not install PHP; PHP 8.2+ with the FFI extension must already be present. Override `PREFIX` / `AETHER_REF` / `AEB_REF` / `MIN_AE` via env.

Everything from here down is what that leaf automates.

## Prerequisites

- **PHP 8.2+ with `ext-ffi`** (`composer.json` requires `php >=8.2`) (Debian/Ubuntu: `php-cli php-ffi`). `bootstrap.sh`
  does not install it.
- **The Aether toolchain (`ae`)** — only to build the native library;
  `bootstrap.sh` installs it via `get.sh` if absent. Consumers of the Composer
  package don't need it. From-source/HEAD flow: aether's
  `docs/bootstrap-from-source.md`.

## Build the native library

```sh
aeb core/.build.ae      # from the repo root
```

Builds `core/native/libservirtium_vcr.so` from this repo's in-repo libservirtium_vcr
`core/embed.ae` (the C-ABI wrapper) + `core/vcr.ae` (the pure-Aether VCR), on
top of Aether stdlib primitives (`std.http`, `std.regex`, `std.zlib`,
`std.cryptography`) — no Aether source checkout needed. The `--with=fs,net,extern`
build needs a `-fPIC` Aether runtime; the `std.regex` whole-tape mutations
require **Aether 0.945.0**. The native lib is a git-ignored build artifact.

## Test

```sh
php phpunit.phar --configuration phpunit.xml      # or: composer test
```

PHP FFI loads `native/libservirtium_vcr.so` at runtime; `SERVIRTIUM_VCR_LIB`
overrides the path (handy when iterating on `embed.ae`).

## Distributing to consumers

libservirtium_vcr should ship inside the Composer package (commit/pack
`native/<platform>` libs, or build on install) so a `composer require`
consumer never needs the Aether toolchain. Multi-platform packaging (per-OS
`.so`/`.dylib`/`.dll`) is the same concern every native-lib binding has.
