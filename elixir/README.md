# Servirtium for Elixir

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for Elixir.

You point your system-under-test at a local URL. In **playback** it replays a
recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```elixir
{:ok, srv} = Servirtium.playback("tapes/climate_api.md", port: 0)

{:ok, {{_, 200, _}, _headers, body}} =
  :httpc.request(:get, {~c"#{Servirtium.base_url(srv)}/api/v1/countries", []}, [], [])

:ok = Servirtium.last_kind(srv) == :ok && Servirtium.stop(srv)
```

…or, auto-stopping:

```elixir
Servirtium.with_playback("tapes/climate_api.md", [port: 0], fn srv ->
  # ... drive the SUT against Servirtium.base_url(srv) ...
  assert Servirtium.last_kind(srv) == :ok
end)
```

## What this is (and isn't)

Since **2.0**, this is a thin Elixir layer over the **Aether VCR** core. All
record/replay machinery — markdown parse/emit, the HTTP server, request
matching, redactions, notes, drift detection, static bypass, gzip/chunked
handling — lives in this repo as a pure-Aether module at `core/vcr.ae` (with
the C-ABI embedding seam in `core/embed.ae`), built on Aether stdlib
primitives and compiled to `core/native/libservirtium_vcr.so`. This package
drives that native build through a **C NIF** (`erl_nif`); it does **not**
reimplement Servirtium in Elixir, and does **not** compile its own NIF — it
loads the shared `servirtium_nif` NIF owned by the Erlang binding (below).

> **Breaking from 1.x:** the previous Elixir reimplementation (the Plug/Cowboy
> proxy server and the markdown recorder/replayer) and its API are gone, with no
> shim. The new API is below / in [docs/usage.md](docs/usage.md). The tape
> *format* is unchanged, so existing tapes replay as-is.

## One shared NIF for the whole BEAM family

Elixir/Erlang has no ctypes/Fiddle equivalent, so the FFI to libservirtium_vcr's
`aether_vcr_embed_*` C-ABI is a small hand-written NIF. There is exactly **one**
such NIF in the monorepo — the `servirtium_nif` OTP app, owned and built by the
**Erlang** binding (Erlang is the BEAM's lingua franca, so it owns the shared
binding, exactly as the one Java jar backs the Kotlin/Scala/Clojure/Groovy
bindings). Elixir does not compile its own copy: `Servirtium.Native`
`defdelegate`s onto `:servirtium_nif`, which loads `priv/servirtium_nif.so` over
the BEAM. The NIF only drives libservirtium_vcr's *control surface*
(start/stop/diagnostics/mutations) — libservirtium_vcr itself is the HTTP server the
SUT talks to over plain HTTP. The `start_*` calls return immediately (the accept
loop runs on a detached pthread inside libservirtium_vcr), so no NIF blocks the BEAM
scheduler. See [docs/architecture.md](docs/architecture.md).

## Docs

- **[docs/usage.md](docs/usage.md)** — playback, record, redactions,
  unredactions, header removal, notes, strict matching, static content, drift,
  diagnostics — with code.
- **[docs/features.md](docs/features.md)** — Servirtium capability matrix and
  what's covered by tests.
- **[docs/architecture.md](docs/architecture.md)** — how the FFI layering works
  (Elixir → C NIF → `core/embed.ae` → `core/vcr.ae`), and the handle-based
  one-server-per-port model.
- **[docs/building.md](docs/building.md)** — building libservirtium_vcr + the shared
  Erlang NIF, and how Elixir loads it.
- **[MIGRATION.md](MIGRATION.md)** — the 1.x → 2.0 rewrite story.

## Volatile values

Values that change run to run (ids, timestamps) are declared as volatile
values, in playback and record alike; a bad rule fails the start with the
core's message.

```elixir
{:ok, srv} = Servirtium.playback("tapes/create_case.md",
  pretty_xml: 2,
  volatile_rule: [
    {"request body", "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>"},
    {"response body", "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>"}
  ])
# ... drive the system under test ...
IO.puts(Servirtium.volatile_report(srv))   # rules and token bindings
```

Guide: [`docs/volatile-values.md`](../docs/volatile-values.md).

## Concurrency: one server per port

The Aether VCR is **one server per port** (handle-based): `Servirtium.playback/2`
and `Servirtium.record/3` each return a `%Servirtium.Server{}` carrying its own
opaque handle, and N such servers can run concurrently in one BEAM. Each
server's tape, replay cursor, mutations, static mounts, pending note, and
diagnostics are scoped to its handle, so two live fixtures never bleed into
each other's state. See
[docs/architecture.md](docs/architecture.md#concurrency-one-server-per-port).

The included `test/test_helper.exs` still starts ExUnit with `max_cases: 1`,
but that is a property of this suite, not a constraint of libservirtium_vcr.

## Getting it

Hex package and OTP application: **`servirtium`** (modules `Servirtium.*`). It delegates to the
shared native OTP app **`servirtium_nif`**, which is built from a prebuilt release library by
`erlang/build-nif-app.sh` (needs `erl`, `erlc`, `cc`, `curl`; no Aether). Nothing is on Hex
yet. Once published it is `{:servirtium, "~> 2.0.0-alpha.16", only: :test}` in `mix.exs` deps.
Until then, in your Mix project:

```sh
VER=v2.0.0-alpha.16                      # a release tag of servirtium-vcr
RAW=https://raw.githubusercontent.com/servirtium/servirtium-vcr

# 1. the native app (SRC=main until a release tag contains erlang/build-nif-app.sh)
mkdir -p beam-libs
curl -fsSL $RAW/main/erlang/build-nif-app.sh | SRC=main VER=$VER sh -s -- ./beam-libs

# 2. the dependency: the repo's elixir/ subdirectory, straight from GitHub
#    mix.exs deps:  {:servirtium, github: "servirtium/servirtium-vcr", tag: "<VER>", sparse: "elixir", only: :test}
perl -0pi -e "s|(defp deps do\s*\[)|\$1\n      {:servirtium, github: \"servirtium/servirtium-vcr\", tag: \"$VER\", sparse: \"elixir\", only: :test},|" mix.exs
mix deps.get

# 3. mix ignores ERL_LIBS: put the NIF app on the code path in test/test_helper.exs
cat > test/test_helper.exs <<'EOF'
Code.append_path(System.get_env("SERVIRTIUM_NIF_EBIN") || "beam-libs/servirtium_nif/ebin")
ExUnit.start()
EOF

# 4. check it: the repo's consumer test replays a recorded tape
mkdir -p tapes
curl -fsSL -o tapes/single_get.md $RAW/$VER/elixir/example/tapes/single_get.md
curl -fsSL -o test/consumer_test.exs $RAW/$VER/elixir/example/test/consumer_test.exs
SERVIRTIUM_NIF_EBIN=$PWD/beam-libs/servirtium_nif/ebin mix test
```

(`sparse: "elixir"` makes Mix check out only that subdirectory of the monorepo; Mix
supports it for `git`/`github` deps.) A local checkout works too:
`{:servirtium, path: "/path/to/servirtium-vcr/elixir"}`.

### Notes for coding agents

- The Hex name is `servirtium` and the OTP app is `:servirtium`; the native app is the
  separate `:servirtium_nif` (not an Elixir package, not yet on Hex). The Erlang wrapper
  `servirtium_erl` has a module named `servirtium`; do not add it to the same project.
- **`module :servirtium_nif is not available`** means the NIF app is not on the code path.
  `mix` ignores `ERL_LIBS` and `SERVIRTIUM_NIF_EBIN` alone does nothing: the
  `Code.append_path/1` line in `test/test_helper.exs` (or your app's startup) is what makes
  it work. It must point at `.../servirtium_nif/ebin`, not at `beam-libs`.
- `could not find application file: servirtium_nif.app` means the path points at the
  wrong directory; the `.app` file is in `ebin/`.
- A NIF load error (`load_failed`, `cannot open shared object file`) means the library that
  sits next to `servirtium_nif.so` in `priv/` is gone; the app directory is relocatable only
  as a whole, via its `$ORIGIN`/`@loader_path` rpath. Do not set `SERVIRTIUM_VCR_LIB`.
- Do not vendor the sources by copying `lib/`; use the git dep or a path dep so
  `mix.exs`, docs and version stay consistent.
- In-repo development: `aeb elixir/.tests.ae`.

## Building from source

**Casual dev, one command** (installs the Aether toolchain via its official
`get.sh` to `~/.local` if missing — no sudo, no tests, no contrib; needs `curl`
— then builds the native lib + NIF and runs the tests; needs Elixir/Mix already
present):

```sh
./bootstrap.sh        # extra args pass through to `mix test`
```

Through the monorepo build (recommended — builds libservirtium_vcr and the shared
Erlang NIF, then runs the suite with the NIF on the code path):

```sh
aeb elixir/.tests.ae   # deps erlang/.build.ae + core; passes SERVIRTIUM_NIF_EBIN
```

By hand, once libservirtium_vcr and the Erlang binding's shared app are built
(`aeb erlang/.build.ae` → `erlang/_build/servirtium_nif`):

```sh
mix deps.get
# mix doesn't fold ERL_LIBS in, so point test_helper.exs at the shared app:
SERVIRTIUM_NIF_EBIN=../erlang/_build/servirtium_nif/ebin mix test
```

Details in [docs/building.md](docs/building.md).
