# Servirtium Ruby

![](Servirtium-Square.png?raw=true)

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for Ruby.

You point your system-under-test at a local URL. In **playback** it replays a
recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```ruby
require 'servirtium'
require 'net/http'

Servirtium.playback('spec/tapes/climate_api.md').port(0).start do |server|
  res = Net::HTTP.get_response(URI.join(server.base_url, '/api/v1/countries'))
  # ... assert on res ...
  raise server.last_error unless server.last_kind == :ok   # optional: assert a clean match
end
```

## What this is (and isn't)

Since **2.0**, this is a thin Ruby layer over the **Aether VCR** core. All
record/replay machinery — markdown parse/emit, the HTTP server, request
matching, redactions, notes, drift detection, static bypass, gzip/chunked
handling — lives in the in-repo pure-Aether engine (`core/vcr.ae`, with the
`core/embed.ae` C-ABI), built on Aether's standard-library primitives (its
HTTP server, regex, zlib, …) and built once to `core/native/libservirtium_vcr.so`.
This gem loads that precompiled native build via Ruby's stdlib
[Fiddle](https://docs.ruby-lang.org/en/master/Fiddle.html); it does **not**
reimplement Servirtium in Ruby.

> **Breaking from 0.x:** the old Ruby Servirtium server/recorder/replayer and
> their API are gone, with no shim. The new API is below / in
> [docs/usage.md](docs/usage.md). The tape *format* is unchanged, so existing
> tapes replay as-is.

## Install

```ruby
# Gemfile
gem 'servirtium'
```

The native library for your OS/arch is bundled in the gem under
`lib/servirtium/native/` and loaded automatically — no Aether toolchain needed
to *use* it. (Currently linux-x64 ships prebuilt; build others with `aeb`, see
[docs/building.md](docs/building.md).)

## Docs

- **[docs/usage.md](docs/usage.md)** — playback, record, redactions,
  unredactions, whole-tape normalization, header removal, notes, strict
  matching, static content, drift, diagnostics — with code.
- **[docs/features.md](docs/features.md)** — capability matrix mapping each
  Servirtium feature to the Ruby API and its test.
- **[docs/architecture.md](docs/architecture.md)** — how the FFI layering works
  (Ruby → Fiddle → `core/embed.ae` → `core/vcr.ae`), the native loader, and the
  one-server-per-port (handle-based) model.
- **[docs/building.md](docs/building.md)** — building the native engine (via
  `aeb`) and releasing.
- **[MIGRATION.md](MIGRATION.md)** — the 0.x → 2.0 rewrite story.

## Concurrency: one server per port

The engine uses a **one server per port** ABI: N independent VCR servers
can run concurrently in one process, each keyed by its own handle, with its own
tape, replay cursor, mutations, and diagnostics — nothing is process-global.
Two `Servirtium.playback(...).start` servers can be alive at once without their
cursors or mutations bleeding into each other.

See [docs/architecture.md](docs/architecture.md#concurrency-one-server-per-port) and
`spec/` for worked examples.

## Building from source

```sh
aeb ruby/.tests.ae    # builds the engine it deps, then runs rspec (needs `ae` ≥ 0.227.0 + `aeb`)
```

Details in [docs/building.md](docs/building.md).
