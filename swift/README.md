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

## What this is (and isn't)

A thin Swift layer over the **Aether VCR** core. All record/replay machinery —
markdown parse/emit, the HTTP server, request matching, redactions, notes, drift
detection, static bypass, gzip/chunked handling — lives in the in-repo,
pure-Aether `core/vcr.ae` module. This binding does **not** reimplement
Servirtium in Swift.

Swift calls the engine's flat C ABI (`aether_vcr_embed_*`) **directly** through
a clang module map (`CServirtiumVcr`) — no glue `.c`, no second copy of the
marshalling rules to drift from `core/embed.ae`.

### What Swift adds

- **Scoped forms** — `Vcr.withPlayback(tape) { … }` closes on every path;
  `Vcr.withRecord(tape, upstreamBase:) { … }` flushes when the body returns and
  **discards** the recording if it threw, so a failed test can't overwrite a
  good tape.
- **`throws` instead of NULL/error strings** — a failed open or a rejected
  config call raises `VcrError`, never hands back a dead handle.
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
- `native/` — where the leaf stages the engine `.so` (git-ignored).

## Building and testing

```sh
aeb swift/.tests.ae   # stages the engine .so into native/, then
                      # swift build + swift test
```

The leaf copies the engine's `shared_lib` artifact to
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
