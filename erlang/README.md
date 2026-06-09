# servirtium-erlang

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for Erlang.

You point your system-under-test at a local URL. In **playback** it replays
a recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```erlang
Vcr = servirtium:playback("tapes/single_get.md"),
Body = os:cmd("curl -s " ++ servirtium:base_url(Vcr) ++ "/ok"),
ok = (servirtium:last_kind(Vcr) =:= ok),   %% optional: assert a clean match
ok = servirtium:close(Vcr).
```

## What this is (and isn't)

This is a thin Erlang layer over the **Aether VCR** core. All record/replay
machinery — markdown parse/emit, the HTTP server, request matching, redactions,
notes, drift detection, static bypass, gzip/chunked handling — lives in the
in-repo, pure-Aether `core/vcr.ae` module (built on Aether stdlib primitives,
with the Servirtium logic in this repo, *not* the Aether standard library).
This binding drives a precompiled native build of that core through a C NIF;
it does **not** reimplement Servirtium in Erlang.

### Reuses the Elixir C NIF

The C NIF (`c_src/servirtium_nif.c`) is the **same** NIF as the Elixir binding,
copied verbatim except for one line: `ERL_NIF_INIT` is retargeted from the
`Elixir.Servirtium.Native` module to the `servirtium_nif` module, so
`erlang:load_nif/2` finds the funcs under this binding's stub module. Everything
else — the `aether_vcr_embed_*` FFI seam, string marshalling, the per-listener
handle contract — is identical.

## Layout

- `c_src/servirtium_nif.c` — the C NIF over the engine's C-ABI (links
  `core/native/libservirtium_vcr.so`, embedding its dir as an rpath).
- `src/servirtium_nif.erl` — the stub module the NIF replaces at load time;
  one `erlang:nif_error(not_loaded)` body per `nif_funcs[]` entry.
- `src/servirtium.erl` — the idiomatic wrapper: `playback/1,2`, `record/2,3`,
  `base_url/1`, `port/1`, `tape_length/1`, `last_kind/1`, `last_error/1`,
  `last_index/1`, `close/1`.
- `test/playback.escript` — smoke test (curls the VCR, asserts the body).
- `tapes/` — sample markdown tapes.

## Building and testing (no erlc / rebar3)

The dev box has `erl`/`escript` (Erlang/OTP 27) and `cc`, but **not** `erlc`
or `rebar3`. So the `.erl` modules are compiled with the Erlang `compile`
module rather than `erlc`, and there is no build tool config.

```sh
# from erlang/

# 1. build the C NIF .so (links the engine; rpath-embeds core/native):
cc -O2 -std=c11 -fPIC -Wno-unused-parameter \
   -I/usr/lib/erlang/usr/include \
   -shared c_src/servirtium_nif.c \
   -L../core/native -lservirtium_vcr -Wl,-rpath,../core/native \
   -o priv/servirtium_nif.so

# 2. compile the two .erl modules into ebin/ via the compile module:
erl -noshell -eval \
  'compile:file("src/servirtium_nif.erl",[{outdir,"ebin"},report]), \
   compile:file("src/servirtium.erl",[{outdir,"ebin"},report]), halt().'

# 3. run the smoke test:
SERVIRTIUM_VCR_LIB=../core/native/libservirtium_vcr.so escript test/playback.escript
```

The NIF loads from `./priv/servirtium_nif.so` when run loose from the source
tree (the stub's `init/0` falls back to that path when no OTP app `priv_dir`
is resolvable). Build the shared engine from `core/` (needs the Aether `ae`
toolchain), or point `SERVIRTIUM_VCR_LIB` at a prebuilt copy.

## Concurrency: one server per port

The Aether VCR runs **one server per port**: each handle owns its own tape,
cursor, mutations, and diagnostics, so **N independent servers can run
concurrently in one process** without interfering. Every config / diagnostic /
lifecycle function takes the handle.

## License

Licensed under the MIT License ([LICENSE](LICENSE) or
http://opensource.org/licenses/MIT).
