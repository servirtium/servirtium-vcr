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

### Owns the canonical NIF for the whole BEAM family

Erlang is the BEAM's lingua franca, so it owns the **one** Servirtium NIF that
Elixir and Gleam also use — exactly as the single Java jar backs the
Kotlin/Scala/Clojure/Groovy bindings. The C NIF (`c_src/servirtium_nif.c`) and
the `servirtium_nif` loader module are compiled **once** (by `.build.ae`) into
the OTP app `servirtium_nif` (`_build/servirtium_nif/{ebin,priv}`); the Elixir
and Gleam bindings load that **same** compiled module over the BEAM rather than
each compiling their own copy of the C source. There is exactly one
`servirtium_nif.c` and one `servirtium_nif.so` in the monorepo, both here.

## Layout

- `c_src/servirtium_nif.c` — the C NIF over libservirtium_vcr's C-ABI (links
  `core/native/libservirtium_vcr.so`, embedding its dir as an rpath).
- `src/servirtium_nif.erl` — the loader/stub module the NIF replaces at load
  time; one `erlang:nif_error(not_loaded)` body per `nif_funcs[]` entry.
- `src/servirtium_nif.app` — the OTP app resource, so `code:priv_dir/1` resolves
  the `.so` when the app is on the path (via ERL_LIBS) for any BEAM consumer.
- `src/servirtium_erl.app` — the OTP app resource of the Hex package `servirtium_erl`
  (module `servirtium`, depends on `servirtium_nif`).
- `src/servirtium.erl` — the idiomatic wrapper: `playback/1,2`, `record/2,3`,
  `base_url/1`, `port/1`, `tape_length/1`, `last_kind/1`, `last_error/1`,
  `last_index/1`, `close/1`.
- `.build.ae` — compiles the shared `servirtium_nif` and the `servirtium_erl` OTP apps into `_build/`.
- `build-nif-app.sh` — builds both apps from a prebuilt release library (no Aether).
- `test/playback.escript` — smoke test (curls the VCR, asserts the body).
- `tapes/` — sample markdown tapes.

## Getting it

Hex package and OTP application: **`servirtium_erl`** (module `servirtium`). It runs on the
shared native OTP app **`servirtium_nif`** (the C NIF plus `libservirtium_vcr`), which Elixir,
Gleam and LFE use too. Neither is on Hex yet, so the sources come from this repo and
`erlang/build-nif-app.sh` builds both apps from a prebuilt release library (no Aether needed;
needs `erl`, `erlc`, `cc`, `curl`). Once published, a rebar3 project will just say
`{deps, [{servirtium_erl, "2.0.0-alpha.13"}]}.` in `rebar.config`. Run this in your project:

```sh
VER=v2.0.0-alpha.13                      # a release tag of servirtium-vcr
RAW=https://raw.githubusercontent.com/servirtium/servirtium-vcr

# 1. build servirtium_nif + servirtium_erl into ./beam-libs
#    (SRC=main until a release tag contains erlang/build-nif-app.sh; then SRC=$VER)
mkdir -p beam-libs
curl -fsSL $RAW/main/erlang/build-nif-app.sh | SRC=main VER=$VER sh -s -- ./beam-libs

# 2. put them on the code path: erl, escript and rebar3 shells honour ERL_LIBS
export ERL_LIBS=$PWD/beam-libs

# 3. check it: replay a recorded tape
mkdir -p tapes
curl -fsSL -o tapes/single_get.md $RAW/$VER/erlang/example/tapes/single_get.md
curl -fsSL -o consumer.escript    $RAW/$VER/erlang/example/consumer.escript
escript consumer.escript                  # -> PASS ...
```

Under rebar3, either keep `ERL_LIBS` exported, or copy the two app directories into
`_checkouts/` of your project and list `servirtium_erl` in your app's `applications`.
Windows is not covered by the script; FreeBSD and musl builds need the matching release
asset (`freebsd-x86_64.so`, `linux-<arch>-musl.so`) passed as `LIB=`.

### Notes for coding agents

- Two OTP apps, one native: `servirtium_erl` (Erlang module `servirtium`, depends on
  `servirtium_nif`) and `servirtium_nif` (module `servirtium_nif` + `priv/servirtium_nif.so`
  + `priv/libservirtium_vcr.so`). Both directories must be on the code path. The app was
  previously a single `servirtium_nif` containing module `servirtium`; that is gone.
- `{error,{bad_name,servirtium_nif}}`, `undef` on `servirtium_nif:...` or `module servirtium
  not available` means `ERL_LIBS` does not name the directory that *contains* the app
  directories (`beam-libs`, not `beam-libs/servirtium_nif`), or the shell that runs the
  tests did not inherit it.
- `{error,{load_failed,...}}` / `cannot open shared object file` from the NIF load means
  `priv/` lost the `libservirtium_vcr` file that sits beside `servirtium_nif.so`; the NIF finds
  it through a `$ORIGIN` rpath (`@loader_path` on macOS), so move the whole app directory,
  never one file. `SERVIRTIUM_NIF_DIR` overrides the `priv` lookup if you must.
- Do not compile `c_src/servirtium_nif.c` against a library from a different release: the NIF
  and `libservirtium_vcr` must be the same version (the script uses `VER` for the library and
  `SRC` for the sources; keep them matched). Do not set `SERVIRTIUM_VCR_LIB`.
- In-repo development: `aeb erlang/.tests.ae` from the repo root.

## Building and testing

Contributors who want to build the lib from source instead (Aether toolchain
required) can use `aeb`:

`.build.ae` builds the shared `servirtium_nif` OTP app once: `cc` compiles the
C NIF `.so` (linking libservirtium_vcr, rpath-embedding `core/native`), `erlc` compiles
the `.erl` modules, and the `.app` resource is staged — all under
`_build/servirtium_nif/{ebin,priv}`. Consumers (this binding, plus Elixir and
Gleam) put that app on the code path with **ERL_LIBS** so `code:priv_dir` finds
the `.so`. Run it through the monorepo build (which also builds libservirtium_vcr):

```sh
aeb erlang/.tests.ae      # deps erlang/.build.ae + core; ERL_LIBS=_build escript
```

By hand, from `erlang/` after a `.build.ae` build:

```sh
ERL_LIBS=_build escript test/playback.escript
```

The loader resolves the `.so` via `code:priv_dir(servirtium_nif)` (the app on
the path), or a `SERVIRTIUM_NIF_DIR` override, falling back to `./priv`.

## Concurrency: one server per port

The Aether VCR runs **one server per port**: each handle owns its own tape,
cursor, mutations, and diagnostics, so **N independent servers can run
concurrently in one process** without interfering. Every config / diagnostic /
lifecycle function takes the handle.

## License

Licensed under the MIT License ([LICENSE](LICENSE) or
http://opensource.org/licenses/MIT).
