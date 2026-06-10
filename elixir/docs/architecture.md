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
core/native/libservirtium_vcr.so
   │   built from core/embed.ae (with the Aether stdlib's fs/net/regex)
   │   • core/embed.ae  — thin Aether wrapper exposing the C-ABI
   │   • core/vcr.ae    — the actual VCR (parse, dispatch, record,
   │     mutate, emit, match) + the embedded Aether HTTP server,
   │     a pure-Aether module on stdlib primitives
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The Elixir side owns **none** of the Servirtium semantics. It starts/stops the
server, marshals strings, and presents an idiomatic fixture. Everything that
defines Servirtium behaviour is the Aether core (`core/vcr.ae`), shared with
every other language binding built on the same `core/embed.ae`.

## Why a C NIF (and not ctypes)

Elixir/Erlang has no ctypes/Fiddle equivalent for calling a C-ABI at runtime, so
the FFI is a small hand-written **NIF** (`erl_nif`). Elixir does not compile its
own — the canonical NIF is the `servirtium_nif` OTP app owned by the **Erlang**
binding (the BEAM's lingua franca owns the shared binding, as the one Java jar
backs the JVM four); `Servirtium.Native` `defdelegate`s onto `:servirtium_nif`.
The shared NIF:

- declares the `aether_vcr_embed_*` symbols `extern` and registers one NIF per
  function (`ERL_NIF_INIT(servirtium_nif, …)`).
- The opaque server handle is passed back to Elixir as a **64-bit integer**
  (`uintptr_t` → `enif_make_uint64`); `0` means failure. Each call returns a
  distinct handle, and N handles can be live at once — `%Servirtium.Server{}`
  carries the one it owns. (A NIF resource would also work; an integer is
  simplest.)
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

The Erlang binding's `.build.ae` compiles it once (Elixir just consumes the
result over the BEAM):

```
cc -O2 -std=c11 -fPIC -I$(ERLANG_PATH)/usr/include \
   erlang/c_src/servirtium_nif.c \
   -shared -fPIC \
   -L core/native -lservirtium_vcr -Wl,-rpath,core/native \
   -o erlang/_build/servirtium_nif/priv/servirtium_nif.so
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

`core/embed.ae` exports `aether_vcr_embed_*` C symbols (the `vcr_embed_` prefix
avoids colliding with the core's own `vcr_*` runtime symbols). Each
`open_*` returns a fresh handle that keys all subsequent calls. It adds only the
*embedding seam* the raw VCR module (`core/vcr.ae`) lacks:

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

## Concurrency: one server per port

The VCR is **one server per port** (handle-based): each `open_playback` /
`open_record` returns its own handle, and the VCR keeps that handle's tape,
replay cursor, mutations, static mounts, pending note, and diagnostics scoped
to it. So:

- N independent servers can run concurrently in one BEAM, each addressed by the
  handle inside its `%Servirtium.Server{}`. Two live fixtures never bleed into
  each other's cursors or mutations. The engine's `core_tests/concurrent_probe.ae`
  proves this contract.
- `Servirtium.playback/2` / `record/3` apply the fixture's config to *that
  handle* between `open_*` and `start` (see `apply_shared_config/2`,
  `apply_playback_config/2`, `apply_record_config/2`) — no global state, nothing
  to reset, no leak between servers by construction.
- The included `test/test_helper.exs` still starts ExUnit with `max_cases: 1`,
  but that is a choice of this suite, not a constraint of the engine — `async`
  is left off the cases for the same reason, not because two servers would
  collide.

## A subtle ordering rule (notes)

Redactions / unredactions / header-removals / static-mounts are per-handle
lists, registered before the server starts. A **note**, however, is stored
alongside the tape and is cleared when `start_record` (re)loads the tape — so
the wrapper stages the builder's note *after* `open_record` clears the tape but
*before* serving begins, attaching it to the first interaction. (See
`Servirtium.record/3`.)
