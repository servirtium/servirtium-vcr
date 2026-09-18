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

**Get the native library** (`libservirtium_vcr`) for your OS/arch from the
[GitHub releases](https://github.com/servirtium/servirtium-vcr/releases) — one
prebuilt shared library per platform, each with a `.sha256` — and (optionally)
verify it:

```sh
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v0.1.1/libservirtium_vcr-v0.1.1-linux-x86_64.so
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v0.1.1/libservirtium_vcr-v0.1.1-linux-x86_64.so.sha256
sha256sum -c libservirtium_vcr-v0.1.1-linux-x86_64.so.sha256   # -> OK
```

Available platforms: linux (x86_64, arm64), macOS (x86_64, arm64), Windows
(x86_64, arm64), FreeBSD (x86_64). No Aether toolchain is needed to *use* the
library. (For macOS use the `.dylib`, for Windows the `.dll`.)

**Build the package locally.** Nothing is published to a package registry
(Hex) yet, so you build the native side yourself. Gleam ships **no** C source of
its own — the native side is the shared `servirtium_nif` OTP app owned by the
Erlang binding, which `src/servirtium.gleam` binds to with
`@external(erlang, "servirtium_nif", ...)`. So:

1. Build the shared Erlang NIF first, per the [Erlang README's "Build the
   package locally"](../erlang/README.md) (needs a C compiler + Erlang/OTP) —
   this produces the `servirtium_nif` app.
2. `gleam` honors `ERL_LIBS`, so point it at the app's parent dir and build/run
   the Gleam sources normally:

   ```sh
   # from gleam/
   ERL_LIBS=/path/to/servirtium_nif/.. gleam test
   ```

   (`ERL_LIBS` names the directory *containing* `servirtium_nif/`, so its module
   and `priv/servirtium_nif.so` load the standard OTP way.)

(The `aeb gleam/.package.ae` build stages the shared `servirtium_nif` app beside
the gleam source; the Gleam modules are compiled by the consumer's own `gleam`.)

Gleam doesn't link this lib directly — it loads the shared Erlang NIF, and it's
that NIF (`servirtium_nif`) which needs `libservirtium_vcr` present. So the
download matters one layer down: obtaining/building the Erlang `servirtium_nif`
app (which links the lib) is the prerequisite here. Drop the downloaded lib
where the NIF build finds it and build that app the way the
[erlang README](../erlang/README.md) describes; then `ERL_LIBS` puts it on the
BEAM code path for `gleam test`.

Contributors who want to build the lib from source instead (Aether toolchain
required) can use `aeb`:

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
