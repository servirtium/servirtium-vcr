# servirtium-rust 1.x → 2.0 (Aether VCR) migration

**Status (2026-05-24):** DONE. This crate is now a thin Rust FFI wrapper
over the Aether VCR core. The previous Rust *reimplementation* of Servirtium
(~1,900 lines across `servirtium/` + `servirtium-codegen/` + the integration
`tests/` crate) is deleted, replaced by `servirtium` — a `libloading` binding
to the native VCR library built from `std/http/server/vcr/embed.ae`.
Playback, mismatch diagnostics, record→replay, redaction, header removal,
notes, strict matching, static content, and drift detection are proven
end-to-end by `tests/` against the real native lib.

## Why

The 1.x repo was a Rust reimplementation of Servirtium: a markdown
reader/writer (`markdown/`), an interaction model and manager
(`interaction_manager.rs`, `data.rs`), a hyper-based record/replay HTTP
server and proxy (`servirtium_server.rs`, `http_client.rs`, `runner.rs`),
mutation transforms (`mutations/`), and a proc-macro test-attribute crate
(`servirtium-codegen`). All of that logic now exists — tested and maintained
— in the Aether standard library at `std/http/server/vcr`.

The new shape: **this repo wholly depends on the Aether VCR for core
record/replay** and keeps only Rust-flavored glue — an FFI binding to a
precompiled native VCR library plus an idiomatic test fixture. No backwards
compatibility with the previous attribute-macro API.

## Architecture (target)

```
#[test]  (cargo test)
   │  Vcr::playback(tape).port(0).start()  /  Vcr::record(tape, upstream).start()
   ▼
servirtium (this crate)              ── thin Rust ──
   │  libloading → aether_vcr_embed_*()
   ▼
libservirtium_vcr.{so,dylib,dll}     ── ae build --emit=lib --with=fs,net
   │  (the Aether VCR core: parse, dispatch, record, mutate, emit)
   ▼
SUT  ⇄  http://127.0.0.1:<port>      ── the SUT talks HTTP to the VCR
```

## API change

Old (1.x) — attribute macros on test functions, single fixed port 61417:

```rust
#[servirtium_playback_test("path_to_markdown.md", "https://exampleapi.org")]
fn playback_test() { /* call localhost:61417 ... */ }

#[servirtium_record_test("path_to_markdown.md", configure)]
fn record_test() { /* ... */ }
```

New (2.0) — a fluent builder returning a `VcrServer`, OS-assigned ports:

```rust
use servirtium::{Vcr, Field, Outcome};

// playback
let vcr = Vcr::playback("tapes/my_api.md").port(0).start().unwrap();
let body = ureq::get(&format!("{}/x", vcr.base_url())).call().unwrap();
assert_eq!(Outcome::Ok, vcr.last_kind());

// record
let rec = Vcr::record("tapes/my_api.md", "https://api.example.com")
    .remove_header(Field::ResponseHeaders, "Set-Cookie")
    .redact(Field::RequestHeaders, real_token, "Bearer REDACTED")
    .port(0)
    .start().unwrap();
// ... drive the SUT ...
rec.finish().unwrap();   // flush the tape (or just drop `rec`)
```

The Servirtium markdown tape *format* is unchanged, so existing tapes
replay as-is.

## What was deleted

- `servirtium/src/markdown/*` — markdown reader/writer (Aether owns parse/emit).
- `servirtium/src/{servirtium_server,http_client,runner,interaction_manager,
  data,test_session}.rs` — the hyper record/replay server, proxy client, and
  interaction model (Aether owns forwarding + dispatch).
- `servirtium/src/mutations/*` — add/remove-header and body-replace transforms
  (Aether owns mutations via redact/unredact/remove-header).
- `servirtium-codegen/` — the proc-macro test attributes (replaced by the
  explicit builder API).
- The `tests/` integration crate and the cargo workspace wrapper.

## What stays / is new

- `src/lib.rs` — **new**: the idiomatic builders/fixture
  (`Vcr` / `PlaybackBuilder` / `RecordBuilder` / `VcrServer` / `Field` /
  `Outcome` / `VcrError`).
- `src/native.rs` — **new**: the `libloading` FFI binding to the
  `aether_vcr_embed_*` C-ABI.
- `build-native.sh` — **new**: builds the native lib into `native/`.
- `tests/` — **new** integration tests driving record/playback through the
  native lib.
- `LICENSE` (MIT) — unchanged. The Servirtium markdown tape format and the
  compatibility-suite concept — unchanged; format interop is the whole point.

## Follow-up

- `compatibility-suite.py` drove a now-deleted standalone server and needs
  rework against an `ae`-built standalone host (see the note at the top of
  that file).
