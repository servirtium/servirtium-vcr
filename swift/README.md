# servirtium-swift

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for **Swift**.

```swift
import Servirtium

try Vcr.withPlayback("tapes/single_get.md") { vcr in
    let body = try httpGet(vcr.baseUrl + "/ok")
    XCTAssertEqual(body, "ok-body")
    XCTAssertEqual(vcr.lastKind, .ok)
}   // <- the scoped form closes the server on every path, throws included
```

`httpGet` above is your own helper — the binding doesn't ship one. **On Linux,
write it against `FoundationNetworking`, not `Foundation`:**

```swift
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking   // Linux: URLSession lives here
#endif
```

Without that import, Linux Swift reports

```
error: type 'URLSession' (aka 'AnyObject') has no member 'shared'
```

which names neither the missing module nor the platform difference, and looks
like a broken toolchain rather than a missing import. On macOS `URLSession` is
in `Foundation`, so an example written there compiles and the same code fails
only on Linux. (This binding's own tests dodge it entirely by shelling out to
`curl` — synchronous and dependency-free — so they are not a worked example of
the URLSession route.)

## What this is (and isn't)

A thin Swift layer over the **Aether VCR** core. All record/replay machinery —
markdown parse/emit, the HTTP server, request matching, redactions, notes, drift
detection, static bypass, gzip/chunked handling — lives in the in-repo,
pure-Aether `core/vcr.ae` module. This binding does **not** reimplement
Servirtium in Swift.

Swift calls libservirtium_vcr's flat C ABI (`aether_vcr_embed_*`) **directly** through
a clang module map (`CServirtiumVcr`) — no glue `.c`, no second copy of the
marshalling rules to drift from `core/embed.ae`.

### What Swift adds

- **Scoped forms** — `Vcr.withPlayback(tape) { … }` closes on every path;
  `Vcr.withRecord(tape, upstreamBase:) { … }` flushes when the body returns and
  **discards** the recording if it threw, so a failed test can't overwrite a
  good tape.
- **`throws` instead of NULL/error strings** — a failed open or a rejected
  config call raises `VcrError` carrying the core's reason (`open_error`), never hands back a dead handle. `close()`/`flush()`/`discard()` free the native handle (idempotent; read diagnostics first).
- **Typed enums** (`Field`, `Outcome`) and automatic caller-owned-string
  handling in exactly one place.

## Layout

- `Sources/CServirtiumVcr/include/` — the C ABI header + `module.modulemap`:
  the one FFI declaration the binding needs.
- `Sources/Servirtium/Servirtium.swift` — the idiomatic surface (`Vcr`,
  `Field`, `Outcome`, `VcrError`, the HAR converters).
- `Tests/ServirtiumTests/PlaybackTests.swift` — 10 XCTest facts over the
  canonical tape: body, clean match, tape length + bound port, an off-tape
  path, cursor reset, a throw on a missing tape, scoped-form close, idempotent
  close, two concurrent servers, and the enum values.
- `tapes/single_get.md` — the canonical sample tape (`GET /ok` → `200
  text/plain` / `ok-body`), byte-identical to every other binding's copy.
- `native/` — where the leaf stages `libservirtium_vcr.so` (git-ignored).

## Getting it

Depend on a release by version. SwiftPM downloads the native core for you as a
binary target (a static library, checksum-verified), so there is nothing else
to fetch, set or copy:

```swift
// Package.swift of your project (swift-tools-version 5.9 or later; Swift 6.2+ to build)
platforms: [.macOS(.v13)],
dependencies: [
    .package(url: "https://github.com/servirtium/servirtium-vcr", from: "2.0.0-alpha.15"),
],
targets: [
    .target(name: "YourTarget", dependencies: [
        .product(name: "Servirtium", package: "servirtium-vcr"),
    ]),
],
```

```sh
# check: resolves, downloads the bundle, links, loads, and reports the missing
# tape (prints "servirtium linked and loaded: ...")
mkdir -p Sources/check && cat > Sources/check/main.swift <<'EOF2'
import Servirtium
do { try Vcr.withPlayback("/nonexistent.md") { _ in } } catch { print("servirtium linked and loaded: \(error)") }
EOF2
# (needs a `check` executableTarget depending on the Servirtium product)
swift run check
```

Covered by the binary: **macOS** arm64 and x86_64 (13 or later) and **Linux
glibc** x86_64 and arm64. Each release publishes
`servirtium-vcr-swift-<tag>.artifactbundle.zip`, a SwiftPM artifact bundle
holding `libservirtium_vcr.a` per platform plus the C header and module map;
the repository-root `Package.swift` names it with
`binaryTarget(url:checksum:)`. The core is linked statically into your test
binary, so nothing needs to be found at run time.

### The source form (other platforms, or main between releases)

Windows, FreeBSD and Linux musl (the Swift Static Linux SDK) are not in the
bundle. There, and for a release that predates the bundle (no
`servirtium-vcr-swift-<tag>.artifactbundle.zip` on its release page), depend on
a branch or revision and link a downloaded shared library yourself:

```swift
.package(url: "https://github.com/servirtium/servirtium-vcr", branch: "main"),
```

```sh
set -eu
TAG=v2.0.0-alpha.15                      # a release tag from the releases page; nothing else to edit
case "$(uname -s)" in
  Linux)  OS=linux;  EXT=so;    ldd --version 2>&1 | grep -qi musl && LIBC=-musl || LIBC= ;;
  Darwin) OS=macos;  EXT=dylib; LIBC= ;;
  FreeBSD) OS=freebsd; EXT=so;  LIBC= ;;
  *) echo "unsupported OS (Windows: use the .dll asset by hand)"; exit 1 ;;
esac
case "$(uname -m)" in x86_64|amd64) ARCH=x86_64 ;; arm64|aarch64) ARCH=arm64 ;; esac
export SERVIRTIUM_VCR_LIB_DIR="$HOME/.servirtium-vcr/$TAG"   # keep it OUT of your git tree
mkdir -p "$SERVIRTIUM_VCR_LIB_DIR"
curl -fsSL -o "$SERVIRTIUM_VCR_LIB_DIR/libservirtium_vcr.$EXT" \
  "https://github.com/servirtium/servirtium-vcr/releases/download/$TAG/libservirtium_vcr-$TAG-$OS-$ARCH${LIBC}.$EXT"
swift build            # SERVIRTIUM_VCR_LIB_DIR must be exported for this and for run/test
```

Setting `SERVIRTIUM_VCR_LIB_DIR` always selects the source form, which links
with `unsafeFlags` (`-L`, `-rpath`); SwiftPM accepts those only for a
`branch:` / `revision:` / path dependency, never for `from:` / `exact:`.

### How a release gets its checksum into Package.swift

`binaryTarget(url:checksum:)` needs the bundle's checksum in the manifest, but
the bundle is built by the release workflow after the release commit is
tagged, and it is not bit-reproducible. So:

1. `SVCR_RELEASE_SET=<tag> aeb release/.version.ae` (preparing the release)
   sets `binaryTag` in the root `Package.swift` to the new tag and empties
   `binaryChecksum`. The `v<version>` tag lands on that commit: its manifest is
   the source form.
2. The release workflow publishes the bundle, writes its checksum on a commit
   on top of the `v<version>` commit, tags that commit with the **bare** semver
   tag (`2.0.0-alpha.15`, no `v`) and pushes the tag. SwiftPM reads both tags as
   the same version and prefers the one without the `v`, so `from:` /
   `exact:` resolve to the commit carrying the checksum. No tag is moved.
3. It applies the same one-line change on `main`, so `branch: "main"` uses the
   released binary from then on.

A consumer resolving the new version in the minutes between the `v` tag and
the bare tag gets SwiftPM's "unsafe build flags" error (step 1's source form),
never a binary from a different release; resolving again after the release
workflow finishes picks up the bare tag.

### Notes for coding agents

- Use `from:` / `exact:` with a release that has the artifact bundle. Do not
  set `SERVIRTIUM_VCR_LIB_DIR` for it: the variable switches the manifest to
  the source form and SwiftPM then refuses the dependency with
  `error: the target 'Servirtium' in product 'Servirtium' contains unsafe build flags`.
  Setting it after a build needs `rm -rf .build` (the manifest is cached).
- The binary form needs Swift 6.2 or newer (static-library artifact bundles,
  SE-0482), on macOS 13+ or Linux glibc. An older toolchain fails to read the
  bundle; there, use the source form.
- Resolution of a version tag pins the commit with the BARE semver tag
  (`2.0.0-alpha.15`). If `Package.resolved` shows the commit of `v2.0.0-alpha.15`
  instead, the bare tag did not exist yet when you resolved:
  `swift package update` (or delete the pin) once the release workflow has
  finished.
- `error: checksum of downloaded artifact ... does not match` means the
  bundle on the release page is not the one the manifest names; report it,
  do not work around it.
- Linux musl, Windows and FreeBSD are not in the bundle: use the source form
  above. In it, `SERVIRTIUM_VCR_LIB_DIR` must hold a file named exactly
  `libservirtium_vcr.<so|dylib>` (release assets carry tag/os/arch in the
  name, so save the download under the plain name); pick the asset for the
  machine that RUNS the tests (`-musl` on Alpine; a wrong-libc or wrong-arch
  file fails at load with `invalid ELF header` / `wrong ELF class`); the
  library must be at least as new as the binding source (else
  `undefined reference to 'aether_vcr_embed_...'`); `ld: cannot find
  -lservirtium_vcr` means the variable was unset or the directory has no
  `libservirtium_vcr.<ext>`. The directory is baked in as an rpath, so the
  built binary does not need the variable at run time.
- Do not vendor the `.so`/`.dylib`/`.a` into git (natives are git-ignored in
  this repo for that reason) and do not copy anything into the dependency's
  checkout directory.

### Stable ordering and playback range

Both are opt-in; a refused rule or range throws `VcrError` (the reason is its message).

- **Stable order (record side):** `setSortJsonKeys()` / `sortJsonKeys`, `sortJsonArray(path, by:)`,
  `sortJsonArray(at: requestRegex, path, by:)`, `setSortResponseHeaders()` / `sortResponseHeaders`,
  `sortHeaderValue(name)`, `clearStableOrder()`. Sorted JSON is only written pretty-printed:
  with a JSON sort rule and no `prettyJson()`, `flush()` throws
  `sort_json_keys needs pretty_json: ...` and writes nothing.
- **Playback range (playback only):** `setPlaybackRange(from:to:)` replays only the tape's
  `## Interaction N` headings `from`...`to` (0-based, inclusive; `to < 0` = through the last);
  a record handle or a bad range throws. `clearPlaybackRange()`,
  `playbackRangeFrom` / `playbackRangeTo` (-1 when none).

## Building and testing

**Get the native library** (`libservirtium_vcr`) for your OS/arch from the
[GitHub releases](https://github.com/servirtium/servirtium-vcr/releases) — one
prebuilt shared library per platform, each with a `.sha256` — and (optionally)
verify it:

```sh
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v2.0.0-alpha.15/libservirtium_vcr-v2.0.0-alpha.15-linux-x86_64.so
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v2.0.0-alpha.15/libservirtium_vcr-v2.0.0-alpha.15-linux-x86_64.so.sha256
sha256sum -c libservirtium_vcr-v2.0.0-alpha.15-linux-x86_64.so.sha256   # -> OK
```

**Build the package locally**

Nothing is published to a registry yet, so you assemble the package yourself:
drop the downloaded library at the package-relative path below, then consume it
from source (a local/path Swift Package Manager dependency).

```sh
# from the swift binding directory, with libservirtium_vcr-v2.0.0-alpha.15-linux-x86_64.so downloaded:
mkdir -p native
cp libservirtium_vcr-v2.0.0-alpha.15-linux-x86_64.so native/libservirtium_vcr.so
# the package now carries the native library; consume it from source (see this README's usage/examples).
```

Available platforms: linux (x86_64, arm64), macOS (x86_64, arm64), Windows
(x86_64, arm64), FreeBSD (x86_64). No Aether toolchain is needed to *use* the
library. (For macOS use the `.dylib`, for Windows the `.dll`.)

`Package.swift` resolves the lib at **link time** (`-L native -lservirtium_vcr`
+ rpath, both computed against the package's own directory): drop the downloaded
`libservirtium_vcr` in as `native/libservirtium_vcr.so` where that `-L`/rpath
finds it — the same location the `aeb` leaf stages it. The C header the binding
imports (`Sources/CServirtiumVcr/include/servirtium_vcr.h`) is already in-tree,
so a downloaded lib is all you add.

Contributors who want to build the lib from source instead (Aether toolchain
required) can use `aeb`:

```sh
aeb swift/.tests.ae   # stages the libservirtium_vcr.so into native/, then
                      # swift build + swift test
```

The leaf copies libservirtium_vcr's `shared_lib` artifact to
`native/libservirtium_vcr.so`; `Package.swift` links it with
`-L native -lservirtium_vcr` and bakes an rpath, so the test binary resolves it
at run time.

### Host note (this dev box)

The Swift 6.0.3 toolchain installed here is linked against `libncurses.so.6`
and `libxml2.so.2`, neither of which Arch/CachyOS ships (it has
`libncursesw.so.6` and `libxml2.so.16`). Without shims, `swift` fails to start
at all — `error while loading shared libraries` — which is a **host packaging**
problem, not a binding one. A user-local shim directory is enough:

```sh
mkdir -p ~/.local/lib
ln -sf /usr/lib/libncursesw.so.6 ~/.local/lib/libncurses.so.6
ln -sf /usr/lib/libxml2.so.16    ~/.local/lib/libxml2.so.2
LD_LIBRARY_PATH=$HOME/.local/lib aeb swift/.tests.ae
```

That is deliberately **not** baked into `.tests.ae` — it is specific to a
broken local toolchain, and a box with a correctly packaged Swift needs none of
it. (The `libxml2` shim crosses a soname major version; it works for what
SwiftPM uses, with a harmless "no version information available" warning.)
