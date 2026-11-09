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
detection, static-content bypass, gzip/chunked handling all live in the
in-repo pure-Aether libservirtium_vcr (`core/vcr.ae`, with the C-ABI wrapper in
`core/embed.ae`), built on Aether stdlib primitives and shipped as a
precompiled native library (`core/native/libservirtium_vcr.so`). This package
opens that library with `DynamicLibrary.open` and presents an idiomatic Dart
fixture; it does **not** reimplement Servirtium in Dart. The same binding
serves Flutter.

## Getting it

The package is **not on pub.dev yet**. Use a pub git dependency on the release tag
(`path: dart`, because the package is in a subdirectory), and fetch the native library from the
same release; `dart:ffi` loads it through `SERVIRTIUM_VCR_LIB`. Run this in your own package directory (the `dart create` line makes a throwaway one; skip it to use yours):

```sh
set -eu
TAG=v2.0.0-alpha.14                      # a release tag of servirtium-vcr; nothing else to edit
REL=https://github.com/servirtium/servirtium-vcr/releases/download/$TAG
RAW=https://raw.githubusercontent.com/servirtium/servirtium-vcr/$TAG
# 1. the native library for this OS/arch, checksum-verified, into ~/.servirtium-vcr/$TAG
case "$(uname -s)" in
  Linux)   OS=linux;   EXT=so;    ldd --version 2>&1 | grep -qi musl && LIBC=-musl || LIBC= ;;
  Darwin)  OS=macos;   EXT=dylib; LIBC= ;;
  FreeBSD) OS=freebsd; EXT=so;    LIBC= ;;
  *) echo "unsupported OS (Windows: take the .dll asset by hand)"; exit 1 ;;
esac
case "$(uname -m)" in x86_64|amd64) ARCH=x86_64 ;; arm64|aarch64) ARCH=arm64 ;; *) echo "unsupported arch"; exit 1 ;; esac
LIBDIR="$HOME/.servirtium-vcr/$TAG"        # keep it OUT of your git tree
mkdir -p "$LIBDIR"
LIB=libservirtium_vcr-$TAG-$OS-$ARCH$LIBC.$EXT
curl -fsSL -o "$LIBDIR/$LIB" "$REL/$LIB"
curl -fsSL -o "$LIBDIR/$LIB.sha256" "$REL/$LIB.sha256"
( cd "$LIBDIR" && { sha256sum -c "$LIB.sha256" 2>/dev/null || shasum -a 256 -c "$LIB.sha256"; } )
cp "$LIBDIR/$LIB" "$LIBDIR/libservirtium_vcr.$EXT"     # the loader/linker want the plain name

# 2. the dependency
dart create -t console --force servirtium_check && cd servirtium_check   # skip: use your own package
dart pub add servirtium --git-url https://github.com/servirtium/servirtium-vcr.git --git-ref $TAG --git-path dart

# 3. check it: replay a recorded tape
export SERVIRTIUM_VCR_LIB="$LIBDIR/libservirtium_vcr.$EXT"      # set this wherever dart test/run runs
mkdir -p tapes bin
curl -fsSL -o tapes/single_get.md $RAW/dart/example/tapes/single_get.md
cat > bin/servirtium_check.dart <<'DART'
import 'dart:io';
import 'package:servirtium/servirtium.dart';

Future<void> main() async {
  final vcr = Vcr.playback('tapes/single_get.md').port(0).start();
  final c = HttpClient();
  final body = await (await (await c.getUrl(Uri.parse('${vcr.baseUrl}/ok'))).close())
      .transform(const SystemEncoding().decoder).join();
  print('${body.trim()} ${vcr.lastKind}');   // -> ok-body VcrOutcome.ok
  c.close();
  vcr.close();
}
DART
dart run bin/servirtium_check.dart
```

`pubspec.yaml` after step 2:

```yaml
dependencies:
  servirtium:
    git:
      url: https://github.com/servirtium/servirtium-vcr.git
      ref: v2.0.0-alpha.14
      path: dart
```

The future registry form is `servirtium: 2.0.0-alpha.14` (pub treats the prerelease as exact
when written that way); it does not resolve today.

### Notes for coding agents

- Do not write `servirtium: ^2.0.0` or `dart pub add servirtium` with no `--git-*`: it is not on
  pub.dev (`Because ... depends on servirtium any which doesn't exist`). Do not omit `path: dart`: the
  repo root has no `pubspec.yaml` (`Could not find a file named "pubspec.yaml"`). The repository
  URL in `dart/pubspec.yaml` is informational only.
- Use `ref:` set to a tag, not `main`: the library must be at least as new as the Dart source;
  an older library fails with an error naming a missing `aether_vcr_embed_...` symbol.
- `could not load native VCR library 'libservirtium_vcr.so'` means `SERVIRTIUM_VCR_LIB` is
  unset in the process that runs the code, is not a path to an existing file, or is for the wrong
  libc/arch (`-musl` on Alpine). `nativeLib:` on `Vcr.playback` is the in-code alternative. Do not
  put the library in the pub cache (`~/.pub-cache/git/...`): it is a cache.
- Flutter: the library must be reachable by the process that runs the tests (host VM
  `flutter test`, not a device). The path must be absolute.
- Windows: use the `.dll` asset and its full path in `SERVIRTIUM_VCR_LIB`.

## Usage

Full surface in **[docs/usage.md](docs/usage.md)** — playback, record,
redactions, unredactions, header removal, notes, strict matching, static
content, drift, diagnostics.

### Stable ordering and playback range

Both are opt-in builder options; a refused rule or range throws `VcrException` from `start()`
(or `close()` for the pretty-JSON rule below).

- **Stable order (record builder):** `.sortJsonKeys()`, `.sortJsonArray(path, by)`,
  `.sortJsonArrayAt(requestRegex, path, by)`, `.sortResponseHeaders()`, `.sortHeaderValue(name)`;
  `server.sortJsonKeys` / `server.sortResponseHeaders` read the state back and
  `clearStableOrder()` turns it off. Sorted JSON is only written pretty-printed: without
  `.prettyJson(2)`, `close()` throws `sort_json_keys needs pretty_json: ...` and writes nothing.
- **Playback range (playback only):** `Vcr.playback(tape).playbackRange(from, to)` replays only the
  tape's `## Interaction N` headings `from`..`to` (0-based, inclusive; `to < 0` = through the last);
  a bad range makes `start()` throw. On a running server, `setPlaybackRange` (throws on a record
  server), `clearPlaybackRange()` and `playbackRange` (null when the whole tape plays).

## Concurrency: one server per port

The binding uses a **one server per port** (handle-based ABI): N independent VCR
servers can run concurrently in one process, each keyed by its own handle.
A fixture's config, diagnostics, and tape are scoped to its handle, so two
`Vcr.playback(...).start()` (or `.record(...)`) servers can be alive at once
without their cursors or mutations bleeding into each other.

## Docs

- [docs/usage.md](docs/usage.md) — full API surface and examples
- [docs/features.md](docs/features.md) — capability matrix vs. the core
- [docs/architecture.md](docs/architecture.md) — FFI layering
- [docs/building.md](docs/building.md) — building libservirtium_vcr from source

## Building from source

```sh
./bootstrap.sh        # installs `ae` via get.sh if missing, builds the native lib, runs dart test
```

Details in [docs/building.md](docs/building.md).
