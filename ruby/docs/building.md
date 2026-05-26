# Building

## Using the gem

You do **not** need the Aether toolchain to *use* servirtium-ruby: the native
library for your platform ships inside the gem under `lib/servirtium/native/`
and is loaded automatically by `Servirtium::Native.open_library`.

## Building the native library

The engine is built from the Aether VCR embedding module
(`std/http/server/vcr/embed.ae`) with the Aether toolchain (`ae` on PATH):

```sh
./build-native.sh
```

This writes `lib/servirtium/native/libservirtium_vcr.{so,dylib}` for the host
platform. Under the hood:

```sh
ae build --emit=lib --with=fs,net \
  "$AETHER_REPO/std/http/server/vcr/embed.ae" \
  -o lib/servirtium/native/libservirtium_vcr.so
```

Point `AETHER_REPO` at an Aether checkout if the embed module isn't installed
under `ae`'s share dir. Requires Aether ≥ 0.183.0 (for chunked-body
de-chunking in record mode).

Cross-platform builds happen in CI (one runner per OS/arch). `build-native.sh`
only ever produces the host's library; Windows builds run in CI.

## Pointing at a fresh build during development

Set `SERVIRTIUM_VCR_LIB` to an absolute path and it takes precedence over the
bundled copy:

```sh
SERVIRTIUM_VCR_LIB=/abs/path/libservirtium_vcr.so bundle exec rspec
```

## Running the tests

```sh
bundle exec rspec     # or: rspec -Ilib
bundle exec rubocop
```

Keep the suite sequential (RSpec's default) — see
[architecture.md](architecture.md#one-server-per-process).
