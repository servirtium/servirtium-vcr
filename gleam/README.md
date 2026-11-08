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

## Getting it

Hex package: **`servirtium_gleam`** (module `servirtium`). It binds to the shared native OTP
app **`servirtium_nif`** with `@external(erlang, "servirtium_nif", ...)`; that app is built from
a prebuilt release library by `erlang/build-nif-app.sh` (needs `erl`, `erlc`, `cc`, `curl`; no
Aether). Nothing is on Hex yet: once published it is `gleam add servirtium_gleam --dev`. Gleam's
git dependencies cannot point at a subdirectory of a repository, and this package lives in
`gleam/` of a monorepo, so until then it is a `path` dependency onto a checkout of the tag.
In your Gleam project:

```sh
VER=v2.0.0-alpha.13                      # a release tag of servirtium-vcr
RAW=https://raw.githubusercontent.com/servirtium/servirtium-vcr

# 1. a checkout of that tag (only gleam/ and erlang/ are used)
git clone --depth 1 --branch $VER https://github.com/servirtium/servirtium-vcr.git vendor-src/servirtium-vcr

# 2. the native app (SRC=main until a release tag contains erlang/build-nif-app.sh)
mkdir -p beam-libs
curl -fsSL $RAW/main/erlang/build-nif-app.sh | SRC=main VER=$VER sh -s -- ./beam-libs

# 3. the dependency: a path dependency in gleam.toml, then resolve
perl -pi -e 's|^\[dependencies\]|[dependencies]\nservirtium_gleam = { path = "vendor-src/servirtium-vcr/gleam" }|' gleam.toml
gleam deps download

# 4. check it: the repo's consumer program replays a recorded tape (gleam honours ERL_LIBS)
mkdir -p tapes
curl -fsSL -o tapes/single_get.md $RAW/$VER/gleam/example/tapes/single_get.md
curl -fsSL -o src/consumer_check.gleam $RAW/$VER/gleam/example/src/consumer_example.gleam
ERL_LIBS=$PWD/beam-libs gleam run -m consumer_check      # -> PASS ...
rm src/consumer_check.gleam
```

### Notes for coding agents

- Package `servirtium_gleam`, import `servirtium`. `target = "erlang"` is required; the
  JavaScript target is not supported (NIF).
- `gleam add servirtium_gleam` fails today (not on Hex) and so does a `git = ...` dependency
  (no subdirectory support); use the `path` dependency above. Do not edit `manifest.toml`
  by hand; run `gleam deps download`.
- **`undef` / `module servirtium_nif is not available`** at runtime means `ERL_LIBS` was not
  exported in the shell that runs `gleam run` / `gleam test`, or it names `beam-libs/servirtium_nif`
  instead of `beam-libs` (it must be the directory that *contains* the app directory).
- A `load_failed` / `cannot open shared object file` error means `priv/` lost the library next
  to `servirtium_nif.so`; move the app directory whole (`$ORIGIN` rpath). Do not set
  `SERVIRTIUM_VCR_LIB`.
- Keep `VER` (library) and the checkout tag the same release; the NIF source and the library
  must match.
- In-repo development: `aeb gleam/.tests.ae`.

## Building and testing

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

## Stable ordering and playback range

Opt-in, off by default. Stable ordering is record side, for a service that sends
the same response in a different order every run; the tape is byte-exact without it.

```gleam
let rec = servirtium.record("tapes/data.tape.md", upstream)
servirtium.set_pretty_json(rec, 2)               // sorted JSON is only written pretty-printed
servirtium.set_sort_json_keys(rec, True)         // object keys sorted at every depth
let assert Ok(_) = servirtium.sort_json_array(rec, "/items", "/id")            // path, by
let assert Ok(_) = servirtium.sort_json_array_at(rec, "^/users", "", "name")   // request regex, path, by
servirtium.set_sort_response_headers(rec, True)
let assert Ok(_) = servirtium.sort_header_value(rec, "Allow")
// ... drive the system under test ...
let assert servirtium.Closed = servirtium.close(rec)
```

A rule the core refuses comes back as `Error(reason)`. Sorting JSON without
`set_pretty_json` is refused when the tape is written, so `close` returns
`CloseError("sort_json_keys needs pretty_json: ...")` and writes nothing.
`get_sort_json_keys` / `get_sort_response_headers` read the switches back;
`clear_stable_order` turns every rule off.

Replay only a slice of a tape, by the tape's `## Interaction N` number (0-based,
inclusive; `to < 0` = through the last):

```gleam
let vcr = servirtium.playback("tapes/journey.md")
let assert Ok(_) = servirtium.set_playback_range(vcr, 4, 6)   // Error(reason) if refused
servirtium.get_playback_range_from(vcr)                       // -1 when none is set
servirtium.clear_playback_range(vcr)
```

A record handle refuses a range, so a test cannot overwrite a journey's tape with a slice.
## Concurrency: one server per port

The Aether VCR runs **one server per port**: each handle owns its own tape,
cursor, mutations, and diagnostics, so **N independent servers can run
concurrently in one process** without interfering. Every config / diagnostic /
lifecycle function takes the handle.

## License

Licensed under the MIT License ([LICENSE](LICENSE) or
http://opensource.org/licenses/MIT).
