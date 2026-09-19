# servirtium-crystal

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for **Crystal**.

```crystal
require "servirtium"

Servirtium.playback("tapes/single_get.md") do |vcr|
  body = HTTP::Client.get("#{vcr.base_url}/ok").body
  body.should eq("ok-body")
  vcr.last_kind.should eq(Servirtium::Outcome::Ok)
end   # <- the block form closes the server on every path
```

## What this is (and isn't)

A thin Crystal layer over the **Aether VCR** core. All record/replay machinery —
markdown parse/emit, the HTTP server, request matching, redactions, notes, drift
detection, static bypass, gzip/chunked handling — lives in the in-repo,
pure-Aether `core/vcr.ae` module. This binding does **not** reimplement
Servirtium in Crystal.

Crystal binds libservirtium_vcr's flat C ABI (`aether_vcr_embed_*`) **directly** via a
`lib`/`fun` block under `@[Link]` — no glue `.c`, no second copy of the
marshalling rules to drift from `core/embed.ae`.

### What Crystal adds

- **Block forms** — `Servirtium.playback(tape) { |vcr| … }` closes on every
  path; `Servirtium.record(tape, upstream) { |vcr| … }` flushes the tape when
  the block ends normally and **discards** it if the block raised, so a failed
  test can't overwrite a good tape.
- **Typed enums** (`Field`, `Outcome`) and a typed `Servirtium::Error`.
- **Caller-owned-string handling** in exactly one place (`take`), so no ABI
  `char*` reaches user code.

## Layout

- `src/servirtium.cr` — the `LibVcr` binding + the idiomatic `Servirtium`
  module and `Vcr` class.
- `spec/playback_spec.cr` — 9 examples over the canonical tape: body, clean
  match, tape length + bound port, an off-tape path, cursor reset, a typed
  error on a missing tape, block-form close, idempotent close, and two servers
  running concurrently on separate handles.
- `tapes/single_get.md` — the canonical sample tape (`GET /ok` → `200
  text/plain` / `ok-body`), byte-identical to every other binding's copy.
- `native/` — where the leaf stages `libservirtium_vcr.so` (git-ignored).

## Building and testing

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
from source (a git or path shard dependency).

```sh
# from the crystal binding directory, with libservirtium_vcr-v2.0.0-alpha.1-linux-x86_64.so downloaded:
mkdir -p native
cp libservirtium_vcr-v2.0.0-alpha.1-linux-x86_64.so native/libservirtium_vcr.so
# the package now carries the native library; consume it from source (see this README's usage/examples).
```

Then point your own `shard.yml` at it. **You must state the version explicitly**:

```yaml
dependencies:
  servirtium:
    path: ../path/to/servirtium-vcr/crystal
    version: 2.0.0-alpha.1      # REQUIRED — see below
```

The `version:` line is not optional while this is a prerelease. Omit it and
shards defaults the requirement to `*`, which **does not match a prerelease**,
so resolution fails with:

```
E: Unable to satisfy the following requirements:
- `servirtium (*)` required by `shard.yml`
```

— which does not mention prereleases and reads like the shard is missing
entirely. Naming `2.0.0-alpha.1` resolves it. This goes away once a non-
prerelease version ships.

Available platforms: linux (x86_64, arm64), macOS (x86_64, arm64), Windows
(x86_64, arm64), FreeBSD (x86_64). No Aether toolchain is needed to *use* the
library. (For macOS use the `.dylib`, for Windows the `.dll`.)

The `@[Link]` binding resolves the lib at **link time**: drop the downloaded
`libservirtium_vcr` into `native/` (as `native/libservirtium_vcr.so`) where the
self-locating `-L`/`-rpath` and `CRYSTAL_LIBRARY_PATH` find it — the same place
the `aeb` leaf stages it (see the by-hand build below).

Contributors who want to build the lib from source instead (Aether toolchain
required) can use `aeb`:

```sh
aeb crystal/.tests.ae   # stages the libservirtium_vcr.so into native/, runs `crystal spec`
```

The leaf copies libservirtium_vcr's `shared_lib` artifact to
`native/libservirtium_vcr.so` and points `CRYSTAL_LIBRARY_PATH` there so
`-lservirtium_vcr` resolves. The `@[Link]` ldflags additionally carry a
self-locating `-L`/`-rpath` off `__DIR__`, so a compiled binary runs without
`LD_LIBRARY_PATH`.

By hand:

```sh
cd crystal
cp ../target/build/core/lib/libservirtium_vcr.so native/
CRYSTAL_LIBRARY_PATH=native crystal spec
```
