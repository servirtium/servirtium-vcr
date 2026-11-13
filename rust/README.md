# Servirtium Rust

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for Rust.

You point your system-under-test at a local URL. In **playback** it replays
a recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```rust
use servirtium::{Vcr, Outcome};

let vcr = Vcr::playback("tapes/climate_api.md").port(0).start().unwrap();
let body: String = ureq::get(&format!("{}/api/v1/countries", vcr.base_url()))
    .call().unwrap().into_string().unwrap();

assert_eq!(Outcome::Ok, vcr.last_kind());   // optional: assert a clean match
// `vcr` stops on drop.
```

## What this is (and isn't)

Since **2.0**, this is a thin Rust layer over the **Aether VCR** core. All
record/replay machinery — markdown parse/emit, the HTTP server, request
matching, redactions, notes, drift detection, static bypass, gzip/chunked
handling — lives in the in-repo, pure-Aether `core/vcr.ae` module (built on
Aether stdlib primitives, with the Servirtium logic in this repo, *not* the
Aether standard library). This crate `dlopen`s a precompiled native build of
that core (via [`libloading`](https://crates.io/crates/libloading)); it does
**not** reimplement Servirtium in Rust.

> **Breaking from 1.x:** the old `servirtium` / `servirtium-codegen` crates
> and their attribute-macro API (`#[servirtium_playback_test(...)]`) are gone,
> with no shim. The new builder API is below / in [docs/usage.md](docs/usage.md).
> The tape *format* is unchanged, so existing tapes replay as-is.

## Getting it

The crate is **not on crates.io yet**, and the repo has no root `Cargo.toml`, but Cargo finds
a package by name inside a git dependency, so the release tag is enough. The native library
is loaded at run time (`libloading`): fetch it from the same release and point
`SERVIRTIUM_VCR_LIB` at it. In your own crate:

```sh
set -eu
TAG=v2.0.0-alpha.17                      # a release tag of servirtium-vcr; nothing else to edit
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

# 2. the dependency (dev-dependency here; drop --dev to use it from src/)
[ -f Cargo.toml ] || cargo init --lib --name servirtium_check      # skip: use your own crate
cargo add --dev servirtium --git https://github.com/servirtium/servirtium-vcr --tag $TAG

# 3. check it: replay a recorded tape from an integration test
export SERVIRTIUM_VCR_LIB="$LIBDIR/libservirtium_vcr.$EXT"      # set this wherever cargo test runs
mkdir -p tests tapes
curl -fsSL -o tapes/single_get.md $RAW/rust/example/tapes/single_get.md
cat > tests/servirtium_check.rs <<'RS'
use std::io::{Read, Write};
#[test]
fn replays_a_tape() {
    let vcr = servirtium::Vcr::playback("tapes/single_get.md").port(0).start().unwrap();
    let addr = vcr.base_url().trim_start_matches("http://").to_string();
    let mut s = std::net::TcpStream::connect(&addr).unwrap();
    write!(s, "GET /ok HTTP/1.0\r\nHost: {addr}\r\n\r\n").unwrap();
    let mut out = String::new();
    s.read_to_string(&mut out).unwrap();
    assert!(out.contains("ok-body"), "{out}");
    assert_eq!(vcr.last_kind(), servirtium::Outcome::Ok);
}
RS
cargo test --test servirtium_check          # -> test replays_a_tape ... ok
```

`Cargo.toml` after step 2:
`servirtium = { git = "https://github.com/servirtium/servirtium-vcr", tag = "v2.0.0-alpha.17" }`
under `[dev-dependencies]`. The future registry form is `servirtium = "=2.0.0-alpha.17"`
(a prerelease needs the exact requirement); it does not resolve today.

### Notes for coding agents

- Do not use `servirtium = "2"` or any bare version: nothing is on crates.io, and the
  1.x `servirtium` crate (with `#[servirtium_playback_test]` macros) that may appear there is
  a different, removed API. Do not use `git = ".../servirtium-rust"`: that is the old 1.x repository, a
  different API (the crate's `repository` field used to point there; it now names this repo).
- Use `tag = "..."`, not `branch`: the library must be at least as new as the Rust source,
  and `main` can be ahead of the last release. A library older than the crate fails at the
  first call with a `libloading` error naming the missing `aether_vcr_embed_...` symbol.
- `could not load the native VCR library (tried: ...)` means `SERVIRTIUM_VCR_LIB` is not
  set in the process running the test, or points at the wrong file, or the wrong libc/arch
  (`-musl` on Alpine). `.native_lib(path)` on the builder is the in-code alternative.
  Cargo does not pass your shell's variable to a different user or a container.
- Do not put the library in `native/` inside `~/.cargo/git/checkouts/...`: that is a cache,
  and the crate's own `native/` fallback is relative to it.
- Tape paths are relative to the working directory of the test binary, which `cargo test` sets to
  the package root.
- Windows: use the `.dll` asset and its full path in `SERVIRTIUM_VCR_LIB`.

## Stable ordering and playback range

Both are opt-in builder options; a refused rule or range comes back as a `VcrError`.

- **Stable order (record builder):** `.sort_json_keys()`, `.sort_json_array(path, by)`,
  `.sort_json_array_at(request_regex, path, by)`, `.sort_response_headers()`,
  `.sort_header_value(name)`; `VcrServer::sort_json_keys()` / `sort_response_headers()` read the
  state back and `clear_stable_order()` turns it off. Sorted JSON is only written
  pretty-printed: without `.pretty_json(2)`, `finish()` returns
  `sort_json_keys needs pretty_json: ...` and writes nothing. A refused rule (a bad path)
  makes `start()` return the error.
- **Playback range (playback only):** `Vcr::playback(tape).playback_range(from, to)` replays only
  the tape's `## Interaction N` headings `from`..=`to` (0-based; `to < 0` = through the last); a bad
  range makes `start()` fail. On a running server, `set_playback_range` (an error on a record
  server), `clear_playback_range()` and `playback_range()` (`None` when the whole tape plays).

## Docs

- **[docs/usage.md](docs/usage.md)** — playback, record, redactions,
  volatile values, whole-tape redact, unredactions, header removal, notes, strict
  matching, static content, drift, diagnostics — with code.
- **[docs/features.md](docs/features.md)** — Servirtium capability matrix
  and what's covered by tests.
- **[docs/architecture.md](docs/architecture.md)** — how the FFI layering
  works (Rust → `libloading` → `core/embed.ae` → `core/vcr.ae`), the native
  loader, and the one server per port model.
- **[docs/building.md](docs/building.md)** — building the native library and CI.
- **[MIGRATION.md](MIGRATION.md)** — the 1.x → 2.0 rewrite story.

## Concurrency: one server per port

The Aether VCR runs **one server per port**: each `VcrServer` owns its own native
handle with its own tape, cursor, mutations, and diagnostics, so **N
independent servers can run concurrently in one process** without
interfering. The crate also takes one process-wide lock for each
`VcrServer`'s lifetime as belt-and-braces, so a plain parallel `cargo test`
is safe with no `--test-threads=1` needed.

See [docs/architecture.md](docs/architecture.md#concurrency-one-server-per-port)
for the model, and `tests/` for worked examples.

## Building from source

```sh
# build libservirtium_vcr from core/, then point tests at it:
SERVIRTIUM_VCR_LIB=../core/native/libservirtium_vcr.so cargo test
```

Details (including the `ae build --emit=lib` invocation and the ≥ 0.227.0
toolchain floor) in [docs/building.md](docs/building.md).

## License

Licensed under the MIT License ([LICENSE](LICENSE) or
http://opensource.org/licenses/MIT).
