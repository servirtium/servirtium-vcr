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

### Consumes the shared Erlang NIF (over the BEAM)

Gleam compiles to Erlang and runs on the BEAM, so it consumes the **one**
canonical Servirtium NIF — the `servirtium_nif` OTP app the Erlang binding
builds once (`erlang/_build/servirtium_nif`). Gleam ships **no** C source and
**no** NIF module of its own: `src/servirtium.gleam` binds straight to the
shared module with `@external(erlang, "servirtium_nif", ...)`, and the app is
put on the BEAM code path at test time via **ERL_LIBS** (so the module and its
`priv/servirtium_nif.so` resolve the standard OTP way). Gleam `String`s are
Erlang binaries on the Erlang target — exactly the term type the NIF takes and
returns.

## Layout

- `src/servirtium.gleam` — the idiomatic Gleam API: `playback`, `record`,
  `base_url`, `port`, `tape_length`, `last_kind`, `last_error`, `last_index`,
  `close`, plus a `curl` test helper.
- `test/servirtium_gleam_test.gleam` — gleeunit smoke test (curls the VCR,
  asserts the body + a clean match).
- `tapes/` — sample markdown tapes.

## Building and testing

The dev box has `gleam` (1.17.0), `erl`/Erlang OTP 27, and `cc`. There is no
C step here — the shared `servirtium_nif` app is built by the Erlang binding.

```sh
aeb gleam/.tests.ae    # deps erlang/.build.ae + core; ERL_LIBS=_build gleam test
```

By hand, after the Erlang binding's `.build.ae` has produced the shared app:

```sh
# from gleam/
ERL_LIBS=../erlang/_build gleam test
```

`gleam test` honors `ERL_LIBS`, so the `servirtium_nif` module and its
`priv/servirtium_nif.so` load over the BEAM the standard OTP way.

## Concurrency: one server per port

The Aether VCR runs **one server per port**: each handle owns its own tape,
cursor, mutations, and diagnostics, so **N independent servers can run
concurrently in one process** without interfering. Every config / diagnostic /
lifecycle function takes the handle.

## License

Licensed under the MIT License ([LICENSE](LICENSE) or
http://opensource.org/licenses/MIT).
