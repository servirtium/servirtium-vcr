# Architecture

## The layering

```
your test (#[test], cargo test)
   │   Vcr::playback(tape).start()  /  Vcr::record(tape, upstream).start()
   ▼
servirtium (this crate)    ── thin idiomatic Rust ──
   │   • Vcr / PlaybackBuilder / RecordBuilder / VcrServer  (src/lib.rs)
   │   • libloading bindings to aether_vcr_embed_*          (src/native.rs)
   ▼   FFI (dlopen)
libservirtium_vcr.{so,dylib,dll}
   │   built: ae build --emit=lib --with=fs,net std/http/server/vcr/embed.ae
   │   • embed.ae  — thin Aether wrapper exposing the C-ABI
   │   • std/http/server/vcr  — the actual VCR (parse, dispatch, record,
   │     mutate, emit, match) + the embedded Aether HTTP server
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The Rust side owns **none** of the Servirtium semantics. It starts/stops the
server, marshals strings, and presents an idiomatic fixture. Everything that
defines Servirtium behaviour is the Aether core, shared with every other
language binding built on the same `embed.ae`.

## The C-ABI

`embed.ae` exports `aether_vcr_embed_*` C symbols (the `vcr_embed_` prefix
avoids colliding with the core's own `vcr_*` runtime symbols). It adds only
the *embedding seam* the raw VCR module lacks:

- **starts the accept loop on a background thread** — the core's `load()`
  deliberately doesn't listen, leaving that to a caller, which an FFI host
  can't wire;
- **binds synchronously first** so an OS-assigned port (port 0) is resolved
  before `start()` returns and `vcr.port()` can report it;
- **returns caller-owned, NUL-terminated C strings** (freed via
  `aether_vcr_embed_free_string`) rather than the core's borrowed
  TLS/arena strings.

`src/native.rs` mirrors these 1:1 as a resolved function-pointer table;
`take_string` copies each returned `char*` into an owned `String` and frees
it per the ABI's ownership rule.

## Native-library resolution

`src/native.rs` loads the library once into a `OnceLock<Library>` (via
[`libloading`](https://crates.io/crates/libloading) — chosen over a `build.rs`
link step so there's no link-path/rpath pain in dev or tests). It tries, in
order:

1. `SERVIRTIUM_VCR_LIB` (explicit path — point it at a fresh
   `ae build --emit=lib` artifact during development);
2. `native/libservirtium_vcr.{so,dylib,dll}` next to the crate manifest
   (where `build-native.sh` writes it);
3. the bare file name, so the OS loader (`LD_LIBRARY_PATH`, system paths)
   can resolve it.

The file name is computed per-platform: `libservirtium_vcr.so` /
`.dylib` / `servirtium_vcr.dll`. Every symbol is resolved up front, so a
missing export fails loudly at load time rather than at the first dispatch.

## One server per process

v1 keeps the VCR's tape, replay cursor, mutations, static mounts, pending
note, and diagnostics as **process-global** state (this is the documented
v1 contract on the Aether side). Consequences:

- You cannot run two `VcrServer`s simultaneously in one process.
- `cargo test` runs tests in **parallel threads** within a single process,
  which would corrupt the shared state (showing up as spurious `599`
  mismatches). This crate therefore guards every fixture with a
  **process-global `Mutex`**: `start()` acquires it and the live `VcrServer`
  holds the guard for its whole lifetime, so a second `start()` blocks until
  the first server is dropped. The result: a plain `cargo test` is safe with
  no `--test-threads=1` flag and no `serial_test` annotations — fixtures
  simply don't overlap. (Tests in *separate* integration-test binaries run
  as separate processes, each with its own `.so` state, so that's safe too.)
- `start()` calls `reset_global_state()` first — clearing redactions,
  unredactions, header removals, static mounts, format options,
  strict-headers, and the last-error slot — then applies the current
  fixture's config. So a setting from a previous test never leaks forward,
  even within one process.

Per-server isolation (a real handle owning its own state) is on the Aether
roadmap; when it lands, the wrapper drops the serial constraint without an
API change.

## A subtle ordering rule (notes)

Redactions / unredactions / header-removals / static-mounts are separate
global lists, registered before the server starts. A **note**, however, is
stored alongside the tape and is cleared when `start_record` (re)loads the
tape — so the wrapper stages the builder's note *after* `start_record`
returns, attaching it to the first interaction. (See `RecordBuilder::start`.)
