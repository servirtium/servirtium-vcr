# Servirtium Ruby → Aether VCR migration

**Status (2026-05-24):** DONE. servirtium-ruby is now a thin Ruby (Fiddle /
stdlib FFI) wrapper over the Aether VCR core. The previous Ruby
reimplementation of Servirtium is deleted, replaced by Fiddle bindings to the
native VCR library built from `std/http/server/vcr/embed.ae`. Playback,
mismatch diagnostics, record→replay, redaction, and notes are proven
end-to-end by `spec/` against the real native lib.

This mirrors the same rewrite already done for the .NET, Go, Java, Rust, and
Python bindings; the canonical reference is the .NET binding.

## Why

The old repo was a Ruby *reimplementation* of Servirtium: a markdown
reader/writer, a WEBrick/Rack record-replay server and proxy, a
recorder/replayer, plus demo and compatibility-suite servlets. All of that
logic now exists — tested and maintained — in the Aether standard library at
`std/http/server/vcr`, shared across every language binding.

The new shape: **this repo wholly depends on the Aether VCR for core
record/replay** and keeps only Ruby-flavored glue — a Fiddle binding to a
precompiled native VCR library plus an idiomatic builder/server API. No
backwards compatibility with the old API.

## What changed

| Before (0.x) | After (2.0) |
|---|---|
| `Servirtium::ServirtiumServlet`, WEBrick/Rack server, proxy | `Servirtium.playback` / `Servirtium.record` builders → `Servirtium::Server` |
| Ruby markdown parse/emit, recorder/replayer | the Aether VCR core (native lib) |
| `faraday`, `faraday_middleware`, `gyoku` runtime deps | none (stdlib `fiddle`) |
| Ruby ≥ 2.5 | Ruby ≥ 3.3 |
| demo_server / compatibility_suite_server / Dockerfile / docker-compose | removed (native lib is the server) |

The tape **format** is unchanged, so existing tapes replay as-is.

## API

```ruby
# playback
Servirtium.playback('spec/tapes/my_api.md').port(0).start do |server|
  res = Net::HTTP.get_response(URI.join(server.base_url, '/path'))
  raise server.last_error unless server.last_kind == :ok
end

# record
Servirtium.record('spec/tapes/my_api.md', 'https://api.example.com')
          .remove_header(Servirtium::Field::RESPONSE_HEADERS, 'Set-Cookie')
          .redact(Servirtium::Field::REQUEST_HEADERS, real_token, 'Bearer REDACTED')
          .port(0)
          .start do |server|
  # ... drive the SUT ...  (block exit flushes the tape)
end
```

Full surface in [docs/usage.md](docs/usage.md).

## Compatibility suite

`COMPATIBILITY_SUITE.md` and `todobackend_compatibility_test.rb` predate this
rewrite and reference the deleted Ruby server/standalone-server. They need
rework to drive record/playback through the new gem API (mirroring the other
bindings' compatibility tests) and are left in place, unported, as a TODO.
