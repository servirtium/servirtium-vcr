# Architecture

## The layering

```
your spec (RSpec / Minitest)
   │   Servirtium.playback(tape).start  /  Servirtium.record(tape, upstream).start
   ▼
servirtium gem            ── thin Ruby, this repo ──
   │   • Servirtium / PlaybackBuilder / RecordBuilder / Server  (vcr.rb, server.rb)
   │   • Fiddle bindings to aether_vcr_embed_*                   (native.rb)
   │   • Field / Outcome constants                              (field.rb)
   ▼   Fiddle (stdlib FFI)
core/native/libservirtium_vcr.{so,dylib,dll}
   │   built once by the core/ aeb node: ae build --emit=lib
   │   • core/embed.ae  — thin Aether wrapper exposing the C-ABI
   │   • core/vcr.ae    — the actual VCR (parse, dispatch, record, mutate,
   │     emit, match), on Aether stdlib primitives (HTTP server, regex, zlib, …)
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The Ruby side owns **none** of the Servirtium semantics. It starts/stops the
server, marshals strings, and presents an idiomatic builder/server. Everything
that defines Servirtium behaviour is the in-repo Aether engine (`core/vcr.ae` +
`core/embed.ae`), shared with every other language binding built on the same
`core/embed.ae`.

## The C-ABI

`core/embed.ae` exports `aether_vcr_embed_*` C symbols (the `vcr_embed_` prefix
avoids colliding with the core's own `vcr_*` runtime symbols). Each export
takes a **handle** as its first argument, so config / diagnostics / tape are
scoped to one listener. It adds only the *embedding seam* the raw VCR module
lacks:

- **starts the accept loop on a background thread** — the core's `load()`
  deliberately doesn't listen, leaving that to a caller, which an FFI host can't
  wire;
- **binds synchronously first** so an OS-assigned port (port 0) is resolved
  before `start` returns and `server.port` can report it;
- **returns caller-owned, NUL-terminated C strings** (freed via
  `aether_vcr_embed_free_string`) rather than the core's borrowed TLS/arena
  strings.

`lib/servirtium/native.rb` mirrors these 1:1 with `Fiddle::Function`s.
`Native.take_string` copies each returned `char*` into a Ruby `String` (via
`Fiddle::Pointer#to_s`, which reads to the NUL) and then frees the original
pointer — the only safe way to read a returned string under the ABI's ownership
rule.

## Native-library resolution

`Servirtium::Native.open_library` calls `Fiddle.dlopen` on the first candidate
that loads, in order:

1. `SERVIRTIUM_VCR_LIB` (explicit path — point it at a fresh
   `ae build --emit=lib` artifact during development);
2. the bundled `lib/servirtium/native/<file>`;
3. the bare library name (OS loader: `LD_LIBRARY_PATH`, system paths).

The file name is computed per-platform: `libservirtium_vcr.so` / `.dylib` /
`servirtium_vcr.dll` (from `RbConfig::CONFIG['host_os']`).

## Concurrency: one server per port

The ABI is **handle-based**: every `Servirtium::Server` owns a handle returned
by `open_playback` / `open_record`, and the VCR's tape, replay cursor,
mutations, static mounts, pending note, and diagnostics are all scoped to that
handle on the Aether side. Nothing is process-global. Consequences:

- You **can** run two (or N) `Servirtium::Server`s simultaneously in one
  process — each binds its own port and keeps its own tape and cursor.
- Two fixtures' cursors, mutations, and diagnostics never bleed into each other,
  so RSpec examples don't have to run serially on this binding's account.
- `PlaybackBuilder#start` / `RecordBuilder#start` `open` a fresh handle and then
  apply that fixture's config to it; a prior fixture's settings live on its own
  (now-closed) handle, so they cannot leak forward.

The one-server-per-port contract is proven at the engine level by
`core_tests/concurrent_probe.ae`, which drives several independent listeners at
once.

## A subtle ordering rule (notes)

Redactions / unredactions / header-removals / static-mounts are registered on
the handle before the server starts. A **note**, however, is stored alongside
the tape and is cleared when `open_record` (re)loads the tape — so the wrapper
stages the builder's note *after* `open_record` returns, attaching it to the
first interaction. (See `RecordBuilder#start`.)
