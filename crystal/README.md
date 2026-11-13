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

## Getting it

Add the shard (shards needs `shard.yml` at the repo root; the root
`servirtium.cr` forwards `require "servirtium"` into `crystal/src/`):

```yaml
# shard.yml of your project
dependencies:
  servirtium:
    github: servirtium/servirtium-vcr
    version: ~> 2.0.0-alpha.16
```

Fetch the native library and build:

```sh
set -eu
TAG=v2.0.0-alpha.16                      # a release tag from the releases page; nothing else to edit
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
shards install      # SERVIRTIUM_VCR_LIB_DIR must be exported for every compile

# check: links, loads, and reports the missing tape (prints "servirtium linked and loaded: ...")
cat > check.cr <<'EOF'
require "servirtium"
begin
  Servirtium.playback("/nonexistent.md") { }
rescue ex
  puts "servirtium linked and loaded: #{ex.class}"
end
EOF
crystal run check.cr
```

### Notes for coding agents

- `SERVIRTIUM_VCR_LIB_DIR` must be the directory holding a file named exactly
  `libservirtium_vcr.<so|dylib>`. Release assets carry the tag/os/arch in the
  name, so the download is saved under the plain name (the linker looks for
  `-lservirtium_vcr`).
- Pick the asset for the machine that RUNS the tests: `-musl` on Alpine/musl,
  plain `linux-*` on glibc. A wrong-libc or wrong-arch file fails at load with
  `invalid ELF header` / `wrong ELF class` / `no such file`.
- The library must be at least as new as the binding source you depend on. The
  binding calls symbols a newer core added; an older library fails to link with
  `undefined reference to 'aether_vcr_embed_...'`. Match the tag to the binding.
- Do not vendor the `.so`/`.dylib` into git (it is git-ignored in this repo for
  that reason) and do not copy it into the dependency's checkout directory.
- Windows: use the `.dll` asset (plus its `.dll.lib`) by hand; this recipe is
  for Linux, macOS and FreeBSD.
- The variable is read at COMPILE time (a macro in `crystal/src/servirtium.cr`)
  and baked into the `-L` and rpath, so the compiled binary does not need it
  at run time. Crystal's compile cache does not track it: after changing it,
  `rm -rf ~/.cache/crystal` (or touch the source).
- Failure `ld.lld: error: unable to find library -lservirtium_vcr` means the
  variable was unset at compile time (it then falls back to the shard's own
  `crystal/native/`, empty in a `shards install`) or points at the wrong
  directory.
- If `version:` does not resolve, the repo has no matching tag with the root
  `shard.yml`; use `branch: main` instead of `version:`.

### Stable ordering and playback range

Both are opt-in; a refused rule or range raises `Servirtium::Error` (the reason is its message).

- **Stable order (record side):** `sort_json_keys = true` / `sort_json_keys?`,
  `sort_json_array(path, by)`, `sort_json_array_at(request_regex, path, by)`,
  `sort_response_headers = true` / `sort_response_headers?`, `sort_header_value(name)`,
  `clear_stable_order`. Sorted JSON is only written pretty-printed: with a JSON sort rule and no
  `pretty_json`, `flush` raises `sort_json_keys needs pretty_json: ...` and writes nothing.
- **Playback range (playback only):** `set_playback_range(from, to)` replays only the tape's
  `## Interaction N` headings `from`..`to` (0-based, inclusive; `to < 0` = through the last);
  a record handle or a bad range raises. `clear_playback_range`,
  `playback_range_from` / `playback_range_to` (-1 when none).

## Volatile values

Values that change on every run (ids, timestamps, `Date` headers) are named by
rules holding `{{name}}` placeholders; the core records them as tokens
(`{{name-N}}`) and matches and replays them on playback. Each call raises
`Servirtium::Error` with the core's message:

```crystal
vcr.volatile_rule("request body", "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>")
vcr.volatile_profile("profile.md")                              # a file of rules
vcr.volatile_markers(Servirtium::VolatileMarkers::DollarCurly)  # before any rule
vcr.volatile_report   # "binding: {{messageId-1}} = ..."
```

A response token that no request binds must be bound by the test before
start: `v = Servirtium.playback_unstarted(tape); v.bind("caseId", "42"); v.start`.

See [docs/volatile-values.md](../docs/volatile-values.md) for the rule grammar.

## Building and testing

**Get the native library** (`libservirtium_vcr`) for your OS/arch from the
[GitHub releases](https://github.com/servirtium/servirtium-vcr/releases) — one
prebuilt shared library per platform, each with a `.sha256` — and (optionally)
verify it:

```sh
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v2.0.0-alpha.16/libservirtium_vcr-v2.0.0-alpha.16-linux-x86_64.so
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v2.0.0-alpha.16/libservirtium_vcr-v2.0.0-alpha.16-linux-x86_64.so.sha256
sha256sum -c libservirtium_vcr-v2.0.0-alpha.16-linux-x86_64.so.sha256   # -> OK
```

**Build the package locally**

Nothing is published to a registry yet, so you assemble the package yourself:
drop the downloaded library at the package-relative path below, then consume it
from source (a git or path shard dependency).

```sh
# from the crystal binding directory, with libservirtium_vcr-v2.0.0-alpha.16-linux-x86_64.so downloaded:
mkdir -p native
cp libservirtium_vcr-v2.0.0-alpha.16-linux-x86_64.so native/libservirtium_vcr.so
# the package now carries the native library; consume it from source (see this README's usage/examples).
```

Then point your own `shard.yml` at it. **You must state the version explicitly**:

```yaml
dependencies:
  servirtium:
    path: ../path/to/servirtium-vcr/crystal
    version: 2.0.0-alpha.16      # REQUIRED — see below
```

The `version:` line is not optional while this is a prerelease. Omit it and
shards defaults the requirement to `*`, which **does not match a prerelease**,
so resolution fails with:

```
E: Unable to satisfy the following requirements:
- `servirtium (*)` required by `shard.yml`
```

— which does not mention prereleases and reads like the shard is missing
entirely. Naming `2.0.0-alpha.16` resolves it. This goes away once a non-
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
