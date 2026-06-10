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

- `c_src/servirtium_nif.c` — the C NIF over the engine's C-ABI (links
  `core/native/libservirtium_vcr.so`, embedding its dir as an rpath).
- `src/servirtium_nif.erl` — the loader/stub module the NIF replaces at load
  time; one `erlang:nif_error(not_loaded)` body per `nif_funcs[]` entry.
- `src/servirtium_nif.app` — the OTP app resource, so `code:priv_dir/1` resolves
  the `.so` when the app is on the path (via ERL_LIBS) for any BEAM consumer.
- `src/servirtium.erl` — the idiomatic wrapper: `playback/1,2`, `record/2,3`,
  `base_url/1`, `port/1`, `tape_length/1`, `last_kind/1`, `last_error/1`,
  `last_index/1`, `close/1`.
- `.build.ae` — compiles the shared `servirtium_nif` OTP app into `_build/`.
- `test/playback.escript` — smoke test (curls the VCR, asserts the body).
- `tapes/` — sample markdown tapes.

## Building and testing

`.build.ae` builds the shared `servirtium_nif` OTP app once: `cc` compiles the
C NIF `.so` (linking the engine, rpath-embedding `core/native`), `erlc` compiles
the `.erl` modules, and the `.app` resource is staged — all under
`_build/servirtium_nif/{ebin,priv}`. Consumers (this binding, plus Elixir and
Gleam) put that app on the code path with **ERL_LIBS** so `code:priv_dir` finds
the `.so`. Run it through the monorepo build (which also builds the engine):

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
