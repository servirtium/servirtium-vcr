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
handling — lives in and is maintained as the Aether standard library
(`std/http/server/vcr`). This gem loads a precompiled native build of that
core via Ruby's stdlib [Fiddle](https://docs.ruby-lang.org/en/master/Fiddle.html);
it does **not** reimplement Servirtium in Ruby.

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
to *use* it. (Currently linux-x64 ships prebuilt; build others with
`build-native.sh`, see [docs/building.md](docs/building.md).)

## Docs

- **[docs/usage.md](docs/usage.md)** — playback, record, redactions,
  unredactions, header removal, notes, strict matching, static content, drift,
  diagnostics — with code.
- **[docs/architecture.md](docs/architecture.md)** — how the FFI layering works
  (Ruby → Fiddle → `embed.ae` → Aether VCR), the native loader, and the v1
  one-server-per-process model.
- **[docs/building.md](docs/building.md)** — building the native library and
  releasing.
- **[MIGRATION.md](MIGRATION.md)** — the 0.x → 2.0 rewrite story.

## One hard rule: run tests serially

The Aether VCR is **one active server per process** in v1 (its tape / cursor /
mutation state is process-global). RSpec runs examples sequentially by default
— keep it that way; do **not** put a parallel test runner in front of this
suite. `.start` resets all process-global mutation/strict/format state first,
so settings from a prior fixture never leak forward.

See [docs/architecture.md](docs/architecture.md#one-server-per-process) for why,
and `spec/` for worked examples.

## Building from source

```sh
./build-native.sh     # builds the native lib for your platform (needs `ae`)
bundle exec rspec
```

Details in [docs/building.md](docs/building.md).
