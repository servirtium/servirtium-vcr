# servirtium-gleam

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for Gleam.

You point your system-under-test at a local URL. In **playback** it replays
a recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```gleam
import servirtium

pub fn example_test() {
  let vcr = servirtium.playback("tapes/single_get.md")
  let body = servirtium.curl(servirtium.base_url(vcr) <> "/ok")
  let assert servirtium.Ok = servirtium.last_kind(vcr)  // optional: clean match
  servirtium.close(vcr)
}
```

## What this is (and isn't)

This is a thin Gleam layer over the **Aether VCR** core. All record/replay
machinery — markdown parse/emit, the HTTP server, request matching, redactions,
notes, drift detection, static bypass, gzip/chunked handling — lives in the
in-repo, pure-Aether `core/vcr.ae` module (built on Aether stdlib primitives,
with the Servirtium logic in this repo, *not* the Aether standard library).
This binding drives a precompiled native build of that core through a C NIF;
it does **not** reimplement Servirtium in Gleam.

### Reuses the Erlang C NIF (over the BEAM)

Gleam compiles to Erlang and runs on the BEAM, so it reuses the **same** C NIF
as the Erlang binding: `c_src/servirtium_nif.c` is copied verbatim, keeping
`ERL_NIF_INIT(servirtium_nif, ...)`. Gleam compiles the `.erl` stub module
placed in `src/` and copies `priv/` into the build, so the cc-built
`priv/servirtium_nif.so` loads from this app's (`servirtium_gleam`) priv dir
via `erlang:load_nif/2`. The Gleam API reaches the NIF with `@external`
FFI declarations to the `servirtium_nif` module; Gleam `String`s are Erlang
binaries on the Erlang target, which is exactly the term type the NIF
takes and returns.

## Layout

- `c_src/servirtium_nif.c` — the C NIF over the engine's C-ABI (copied from
  the Erlang binding; links `core/native/libservirtium_vcr.so` via rpath).
- `src/servirtium_nif.erl` — the stub module the NIF replaces at load time;
  its `-on_load` loads `servirtium_nif.so` from `servirtium_gleam`'s priv dir.
- `src/servirtium.gleam` — the idiomatic Gleam API: `playback`, `record`,
  `base_url`, `port`, `tape_length`, `last_kind`, `last_error`, `last_index`,
  `close`, plus a `curl` test helper.
- `test/servirtium_gleam_test.gleam` — gleeunit smoke test (curls the VCR,
  asserts the body + a clean match).
- `tapes/` — sample markdown tapes.

## Building and testing

The dev box has `gleam` (1.17.0), `erl`/Erlang OTP 27, and `cc`.

```sh
# from gleam/

# 1. build the C NIF .so into priv/ (links the engine; rpath-embeds core/native):
mkdir -p priv
cc -O2 -std=c11 -fPIC -Wno-unused-parameter \
   -I/usr/lib/erlang/usr/include \
   -shared c_src/servirtium_nif.c \
   -L../core/native -lservirtium_vcr -Wl,-rpath,../core/native \
   -o priv/servirtium_nif.so

# 2. run the test (gleam fetches gleeunit from Hex on first run):
SERVIRTIUM_VCR_LIB=../core/native/libservirtium_vcr.so gleam test
```

Build the shared engine from `core/` (needs the Aether `ae` toolchain), or
point `SERVIRTIUM_VCR_LIB` at a prebuilt copy.

## Concurrency: one server per port

The Aether VCR runs **one server per port**: each handle owns its own tape,
cursor, mutations, and diagnostics, so **N independent servers can run
concurrently in one process** without interfering. Every config / diagnostic /
lifecycle function takes the handle.

## License

Licensed under the MIT License ([LICENSE](LICENSE) or
http://opensource.org/licenses/MIT).
