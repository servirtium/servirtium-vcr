# servirtium-rust

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

## Use

```toml
[dev-dependencies]
servirtium = { git = "https://github.com/servirtium/servirtium-rust" }
```

The native library is loaded at runtime. The crate looks for it (in order)
at `$SERVIRTIUM_VCR_LIB`, then `native/libservirtium_vcr.{so,dylib}` next to
the crate, then via the OS loader. Build the shared engine from `core/`
(needs the Aether `ae` toolchain — see [docs/building.md](docs/building.md))
or set `SERVIRTIUM_VCR_LIB` to a prebuilt copy.

## Docs

- **[docs/usage.md](docs/usage.md)** — playback, record, redactions,
  whole-tape normalize/redact, unredactions, header removal, notes, strict
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
# build the shared engine from core/, then point tests at it:
SERVIRTIUM_VCR_LIB=../core/native/libservirtium_vcr.so cargo test
```

Details (including the `ae build --emit=lib` invocation and the ≥ 0.227.0
toolchain floor) in [docs/building.md](docs/building.md).

## License

Licensed under the MIT License ([LICENSE](LICENSE) or
http://opensource.org/licenses/MIT).
