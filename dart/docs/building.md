# Building

## Turnkey: `./bootstrap.sh`

```sh
./bootstrap.sh        # extra args pass through to `dart test`
```

Installs `ae` (≥ 0.227.0, for `std.regex`) via aether's official `get.sh` to `$HOME/.local` if
missing (no sudo, no Aether test suite, no contrib; needs `curl`, no
build-from-source fallback); checks the Dart SDK is present (does **not**
auto-install it); runs `build-native.sh`; then `dart pub get && dart test`.
Override `PREFIX` / `AETHER_REF` (pin in CI) / `MIN_AE` via env.

## Prerequisites

- **Dart SDK 3.x** (`dart` on PATH). `bootstrap.sh` checks for it but does not
  install it.
- **The Aether toolchain (`ae`)** — only to build the native library;
  `bootstrap.sh` installs it via `get.sh` if absent. Consumers of the pub
  package don't need it. From-source/HEAD flow: aether's
  `docs/bootstrap-from-source.md`.

## Build the native library

```sh
./build-native.sh
```

Builds `core/native/libservirtium_vcr.so` from the in-repo `core/embed.ae`
(C-ABI wrapper) and `core/vcr.ae` (the pure-Aether engine) using the
**installed** toolchain — no Aether source checkout needed. `--with=fs,net`
needs a `-fPIC` Aether runtime, and the engine uses `std.regex`, so **ae ≥
0.227.0** is required. The native lib is a git-ignored build artifact.

## Test

```sh
dart test        # one server per port — independent servers per process
```

`DynamicLibrary.open` loads `core/native/libservirtium_vcr.so` at runtime;
`SERVIRTIUM_VCR_LIB` overrides the path (handy when iterating on `core/embed.ae`).

## Distributing to consumers (incl. Flutter)

The native engine should ship inside the pub package (per-platform libs under
`native/`, or via Flutter's plugin native-asset mechanism) so a `dart pub add`
/ Flutter consumer never needs the Aether toolchain. Multi-platform packaging
(`.so`/`.dylib`/`.dll` + Android/iOS for Flutter) is the same concern every
native-lib binding has.
