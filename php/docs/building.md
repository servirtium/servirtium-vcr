# Building

## Turnkey: `./bootstrap.sh`

```sh
./bootstrap.sh        # extra args pass through to PHPUnit
```

Installs `ae` (≥ 0.183) via aether's official `get.sh` to `$HOME/.local` if
missing (no sudo, no Aether test suite, no contrib; needs `curl`, no
build-from-source fallback); checks PHP 8.4+ with the FFI extension (does
**not** auto-install it); runs `build-native.sh`; then runs PHPUnit (using
`vendor/bin/phpunit` if present, else a fetched `phpunit.phar`). Override
`PREFIX` / `AETHER_REF` (pin in CI) / `MIN_AE` via env.

## Prerequisites

- **PHP 8.4+ with `ext-ffi`** (Debian/Ubuntu: `php-cli php-ffi`). `bootstrap.sh`
  checks for it but does not install it.
- **The Aether toolchain (`ae`)** — only to build the native library;
  `bootstrap.sh` installs it via `get.sh` if absent. Consumers of the Composer
  package don't need it. From-source/HEAD flow: aether's
  `docs/bootstrap-from-source.md`.

## Build the native library

```sh
./build-native.sh
```

Builds `native/libservirtium_vcr.so` from the **installed** toolchain's
`embed.ae` (`ae build --emit=lib --with=fs,net …/share/aether/std/http/server/vcr/embed.ae`)
— no Aether source checkout needed; `AETHER_REPO` overrides for engine devs.
`--with=fs,net` needs a `-fPIC` Aether runtime (**≥ 0.182**; chunked de-chunk
**≥ 0.183**). The native lib is a git-ignored build artifact.

## Test

```sh
php phpunit.phar --configuration phpunit.xml      # or: composer test
```

PHP FFI loads `native/libservirtium_vcr.so` at runtime; `SERVIRTIUM_VCR_LIB`
overrides the path (handy when iterating on `embed.ae`).

## Distributing to consumers

The native engine should ship inside the Composer package (commit/pack
`native/<platform>` libs, or build on install) so a `composer require`
consumer never needs the Aether toolchain. Multi-platform packaging (per-OS
`.so`/`.dylib`/`.dll`) is the same concern every native-lib binding has.
