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
   │   built: ae build --emit=lib --with=fs,net core/embed.ae --extra core/_embed_strdup.c
   │   • core/embed.ae  — thin Aether wrapper exposing the C-ABI
   │   • core/vcr.ae    — the actual VCR (parse, dispatch, record, mutate,
   │     emit, match) + the embedded Aether HTTP server, a pure-Aether module
   │     in this repo on top of std.http / std.regex / std.zlib /
   │     std.cryptography
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The Rust side owns **none** of the Servirtium semantics. It starts/stops the
server, marshals strings, and presents an idiomatic fixture. Everything that
defines Servirtium behaviour is the Aether core — the in-repo `core/vcr.ae`
module, shared with every other language binding built on the same
`core/embed.ae`. The Servirtium logic lives in this repo, not the Aether
standard library; it only *uses* stdlib primitives.

## The C-ABI

`core/embed.ae` exports `aether_vcr_embed_*` C symbols (the `vcr_embed_`
prefix avoids colliding with the core's own `vcr_*` runtime symbols). It adds
only the *embedding seam* the raw VCR module lacks:

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
   (the dev layout for a copied-in artifact);
3. the bare file name, so the OS loader (`LD_LIBRARY_PATH`, system paths)
   can resolve it.

The file name is computed per-platform: `libservirtium_vcr.so` /
`.dylib` / `servirtium_vcr.dll`. Every symbol is resolved up front, so a
missing export fails loudly at load time rather than at the first dispatch.

## Concurrency: one server per port

The core runs **one server per port**: each `open_playback` / `open_record` returns an
opaque handle that owns *its own* tape, replay cursor, mutations, static
mounts, pending note, and diagnostics. Every config / lifecycle / diagnostic
call takes that handle (see `src/native.rs`). So **N independent VCR servers
can run concurrently in one process**, each keyed by its own handle — two
playback servers on two ports replaying two different tapes at once, each with
independent cursors and `last_*` slots. (`core_tests/.concurrent.ae` proves
this.) Consequences:

- A `VcrServer` is just a Rust handle wrapper. Holding several at once is
  fine; each is isolated from the others.
- `start()` applies *this* fixture's config to *this* handle. Nothing is
  shared between handles, so a setting from one server never leaks into
  another — no global reset is needed.
- As a belt-and-braces measure the current wrapper still takes one
  process-wide `Mutex` for the life of each `VcrServer` (so `cargo test`'s
  parallel runner is safe with no `--test-threads=1`); the one-server-per-port core
  means this is a wrapper policy, not an engine constraint. Tests in
  *separate* integration-test binaries are separate processes anyway.

## A subtle ordering rule (notes)

Redactions / unredactions / header-removals / static-mounts are per-handle
lists, registered before the server starts. A **note**, however, is stored
alongside the tape and is cleared when `open_record` (re)loads the tape — so
the wrapper stages the builder's note *after* `open_record` returns,
attaching it to the first interaction. (See `RecordBuilder::start`.)
