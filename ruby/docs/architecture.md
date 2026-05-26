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
libservirtium_vcr.{so,dylib,dll}
   │   built: ae build --emit=lib --with=fs,net std/http/server/vcr/embed.ae
   │   • embed.ae  — thin Aether wrapper exposing the C-ABI
   │   • std/http/server/vcr  — the actual VCR (parse, dispatch, record,
   │     mutate, emit, match) + the embedded Aether HTTP server
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The Ruby side owns **none** of the Servirtium semantics. It starts/stops the
server, marshals strings, and presents an idiomatic builder/server. Everything
that defines Servirtium behaviour is the Aether core, shared with every other
language binding built on the same `embed.ae`.

## The C-ABI

`embed.ae` exports `aether_vcr_embed_*` C symbols (the `vcr_embed_` prefix
avoids colliding with the core's own `vcr_*` runtime symbols). It adds only the
*embedding seam* the raw VCR module lacks:

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

## One server per process

v1 keeps the VCR's tape, replay cursor, mutations, static mounts, pending note,
and diagnostics as **process-global** state (the documented v1 contract on the
Aether side). Consequences:

- You cannot run two `Servirtium::Server`s simultaneously in one process.
- **Run tests serially.** RSpec is sequential by default — keep it so; don't put
  a parallel runner in front of this suite. Parallel examples would stomp each
  other's state (it shows up as spurious mismatches).
- `PlaybackBuilder#start` / `RecordBuilder#start` call `reset_global_state`
  first — clearing redactions, unredactions, header removals, static mounts,
  format options, strict-headers, and the last-error slot — then apply the
  current fixture's config. So a setting from a previous test never leaks
  forward, even within one process.

Per-server isolation (a real handle owning its own state) is on the Aether
roadmap; when it lands, the wrapper drops the serial constraint without an API
change.

## A subtle ordering rule (notes)

Redactions / unredactions / header-removals / static-mounts are separate global
lists, registered before the server starts. A **note**, however, is stored
alongside the tape and is cleared when `start_record` (re)loads the tape — so
the wrapper stages the builder's note *after* `start_record` returns, attaching
it to the first interaction. (See `RecordBuilder#start`.)
