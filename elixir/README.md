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

Elixir/Erlang has no ctypes/Fiddle equivalent, so the FFI to the engine's
`aether_vcr_embed_*` C-ABI is a small hand-written NIF. There is exactly **one**
such NIF in the monorepo — the `servirtium_nif` OTP app, owned and built by the
**Erlang** binding (Erlang is the BEAM's lingua franca, so it owns the shared
binding, exactly as the one Java jar backs the Kotlin/Scala/Clojure/Groovy
bindings). Elixir does not compile its own copy: `Servirtium.Native`
`defdelegate`s onto `:servirtium_nif`, which loads `priv/servirtium_nif.so` over
the BEAM. The NIF only drives the engine's *control surface*
(start/stop/diagnostics/mutations) — the engine itself is the HTTP server the
SUT talks to over plain HTTP. The `start_*` calls return immediately (the accept
loop runs on a detached pthread inside the engine), so no NIF blocks the BEAM
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
- **[docs/building.md](docs/building.md)** — building the engine + the shared
  Erlang NIF, and how Elixir loads it.
- **[MIGRATION.md](MIGRATION.md)** — the 1.x → 2.0 rewrite story.

## Concurrency: one server per port

The Aether VCR is **one server per port** (handle-based): `Servirtium.playback/2`
and `Servirtium.record/3` each return a `%Servirtium.Server{}` carrying its own
opaque handle, and N such servers can run concurrently in one BEAM. Each
server's tape, replay cursor, mutations, static mounts, pending note, and
diagnostics are scoped to its handle, so two live fixtures never bleed into
each other's state. See
[docs/architecture.md](docs/architecture.md#concurrency-one-server-per-port).

The included `test/test_helper.exs` still starts ExUnit with `max_cases: 1`,
but that is a property of this suite, not a constraint of the engine.

## Building from source

**Casual dev, one command** (installs the Aether toolchain via its official
`get.sh` to `~/.local` if missing — no sudo, no tests, no contrib; needs `curl`
— then builds the native lib + NIF and runs the tests; needs Elixir/Mix already
present):

```sh
./bootstrap.sh        # extra args pass through to `mix test`
```

Through the monorepo build (recommended — builds the engine and the shared
Erlang NIF, then runs the suite with the NIF on the code path):

```sh
aeb elixir/.tests.ae   # deps erlang/.build.ae + core; passes SERVIRTIUM_NIF_EBIN
```

By hand, once the engine and the Erlang binding's shared app are built
(`aeb erlang/.build.ae` → `erlang/_build/servirtium_nif`):

```sh
mix deps.get
# mix doesn't fold ERL_LIBS in, so point test_helper.exs at the shared app:
SERVIRTIUM_NIF_EBIN=../erlang/_build/servirtium_nif/ebin mix test
```

Details in [docs/building.md](docs/building.md).
