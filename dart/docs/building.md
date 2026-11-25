# Building

## Turnkey: `./bootstrap.sh`

From the repo root, `bootstrap.sh` installs the pinned `ae` (0.944.0) and `aeb`
via their official installers to a user prefix (`$HOME/.local`, no sudo; needs
`curl`) if they are missing, then runs `aeb` on the leaf you name:

```sh
./bootstrap.sh dart/.tests.ae     # builds libservirtium_vcr, then runs `dart test`
```

It does not install the Dart SDK; it must already be present. Override `PREFIX` / `AETHER_REF` / `AEB_REF` / `MIN_AE` via env.

Everything from here down is what that leaf automates.

## Prerequisites

- **Dart SDK 3.8.0 or newer** (`dart` on PATH; `pubspec.yaml` requires `sdk: ^3.8.0`). `bootstrap.sh` does not install it.
- **The Aether toolchain (`ae`)** — only to build the native library;
  `bootstrap.sh` installs it via `get.sh` if absent. Consumers of the pub
  package don't need it. From-source/HEAD flow: aether's
  `docs/bootstrap-from-source.md`.

## Build the native library

```sh
aeb core/.build.ae      # from the repo root
```

Builds `core/native/libservirtium_vcr.so` from the in-repo `core/embed.ae`
(C-ABI wrapper) and `core/vcr.ae` (libservirtium_vcr) using the
**installed** toolchain — no Aether source checkout needed. `--with=fs,net,extern`
needs a `-fPIC` Aether runtime, and libservirtium_vcr uses `std.regex`, so **ae 0.944.0** is required. The native lib is a git-ignored build artifact.

## Test

```sh
dart test        # one server per port — independent servers per process
```

`DynamicLibrary.open` loads `core/native/libservirtium_vcr.so` at runtime;
`SERVIRTIUM_VCR_LIB` overrides the path (handy when iterating on `core/embed.ae`).

## Distributing to consumers (incl. Flutter)

libservirtium_vcr should ship inside the pub package (per-platform libs under
`native/`, or via Flutter's plugin native-asset mechanism) so a `dart pub add`
/ Flutter consumer never needs the Aether toolchain. Multi-platform packaging
(`.so`/`.dylib`/`.dll` + Android/iOS for Flutter) is the same concern every
native-lib binding has.
