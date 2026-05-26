# Architecture

## The layering

```
your test (ExUnit)
   │   Servirtium.playback(tape, ...)  /  Servirtium.record(tape, upstream, ...)
   ▼
Servirtium                ── thin Elixir, this repo ──
   │   • Servirtium                 — idiomatic API (lib/servirtium.ex)
   │   • Servirtium.Server / .Error — handle struct + exception
   │   • Servirtium.Native          — raw NIF stubs (lib/servirtium/native.ex)
   ▼   NIF call
priv/servirtium_nif.so    ── hand-written C NIF (c_src/servirtium_nif.c) ──
   │   erl_nif bindings to aether_vcr_embed_*; links the engine below.
   ▼   C-ABI
native/libservirtium_vcr.so
   │   built: ae build --emit=lib --with=fs,net std/http/server/vcr/embed.ae
   │   • embed.ae  — thin Aether wrapper exposing the C-ABI
   │   • std/http/server/vcr  — the actual VCR (parse, dispatch, record,
   │     mutate, emit, match) + the embedded Aether HTTP server
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The Elixir side owns **none** of the Servirtium semantics. It starts/stops the
server, marshals strings, and presents an idiomatic fixture. Everything that
defines Servirtium behaviour is the Aether core, shared with every other
language binding built on the same `embed.ae`.

## Why a C NIF (and not ctypes)

Elixir/Erlang has no ctypes/Fiddle equivalent for calling a C-ABI at runtime, so
the FFI is a small hand-written **NIF** (`erl_nif`) compiled by
[`elixir_make`](https://hex.pm/packages/elixir_make):

- `c_src/servirtium_nif.c` declares the `aether_vcr_embed_*` symbols `extern`
  and registers one NIF per function (`ERL_NIF_INIT(Elixir.Servirtium.Native,
  …)`).
- The opaque server handle is passed back to Elixir as a **64-bit integer**
  (`uintptr_t` → `enif_make_uint64`); `0` means failure. (A NIF resource would
  also work; an integer is simplest for a one-server-per-process model.)
- String **in**: an Elixir binary is copied to a NUL-terminated C string
  (`enif_inspect_binary` / iolist) and freed after the call.
- String **out**: the caller-owned `char*` is copied into an Erlang binary, then
  freed with `aether_vcr_embed_free_string` — per the ABI's ownership rule.
  Mutation calls return `""` for success or an error message.
- `start_playback` / `start_record` **return fast** — the engine binds the
  socket synchronously (so an OS-assigned port is resolved before the call
  returns) and runs its accept loop on a detached pthread *inside the engine*.
  No NIF here does blocking I/O, so none stalls a BEAM scheduler thread.

### How the NIF builds and links the engine

`mix compile` runs `elixir_make`, which invokes the `Makefile`:

```
cc -O2 -std=c11 -fPIC -I$(ERLANG_PATH)/usr/include \
   c_src/servirtium_nif.c \
   -shared -fPIC \
   -L./native -lservirtium_vcr -Wl,-rpath,./native \
   -o priv/servirtium_nif.so
```

- `-I$(ERLANG_PATH)/usr/include` finds `erl_nif.h` (Erlang root from
  `code:root_dir()`).
- `-L./native -lservirtium_vcr` links the engine shared library.
- `-Wl,-rpath,<abs native dir>` bakes the engine's directory into the NIF, so
  the dynamic loader finds `libservirtium_vcr.so` at runtime **without**
  `LD_LIBRARY_PATH`.

`Servirtium.Native` loads the NIF via `:erlang.load_nif/2` from
`:code.priv_dir/1` in an `@on_load` hook.

## The C-ABI

`embed.ae` exports `aether_vcr_embed_*` C symbols (the `vcr_embed_` prefix
avoids colliding with the core's own `vcr_*` runtime symbols). It adds only the
*embedding seam* the raw VCR module lacks:

- **starts the accept loop on a background thread** — the core's `load()`
  deliberately doesn't listen, leaving that to a caller, which an FFI host can't
  wire;
- **binds synchronously first** so an OS-assigned port (port 0) is resolved
  before the start call returns and `Servirtium.port/1` can report it;
- **returns caller-owned, NUL-terminated C strings** (freed via
  `aether_vcr_embed_free_string`) rather than the core's borrowed TLS/arena
  strings.

`Servirtium.Native` mirrors these 1:1; the NIF's `take_cstr` marshals and frees
each returned `char*`.

## One server per process

v1 keeps the VCR's tape, replay cursor, mutations, static mounts, pending note,
and diagnostics as **process-global** state (the documented v1 contract on the
Aether side). The BEAM is one OS process, so:

- You cannot run two servers simultaneously in one BEAM.
- **Run tests serially** — never set `async: true`; `test/test_helper.exs`
  starts ExUnit with `max_cases: 1` to enforce it. Parallel cases would stomp
  each other's state (it shows up as spurious mismatch outcomes).
- `Servirtium.playback/2` / `record/3` call `reset_global_state/0` first —
  clearing redactions, unredactions, header removals, static mounts, format
  options, strict-headers, and the last-error slot — then apply the current
  fixture's config. So a setting from a previous test never leaks forward, even
  within one BEAM.

Per-server isolation (a real handle owning its own state) is on the Aether
roadmap; when it lands, the wrapper drops the serial constraint without an API
change.

## A subtle ordering rule (notes)

Redactions / unredactions / header-removals / static-mounts are separate global
lists, registered before the server starts. A **note**, however, is stored
alongside the tape and is cleared when `start_record` (re)loads the tape — so
the wrapper stages the builder's note *after* `start_record` returns, attaching
it to the first interaction. (See `Servirtium.record/3`.)
