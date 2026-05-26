# Servirtium Elixir → Aether VCR migration

**Status:** DONE. The previous Elixir *reimplementation* of Servirtium is
deleted and replaced by a thin wrapper over the Aether VCR core, reached through
a hand-written **C NIF**. Playback, mismatch diagnostics, record → replay,
redaction, and notes are proven end-to-end by the ExUnit suite against the real
native library. This mirrors the seven already-shipped bindings (the canonical
reference is the .NET binding, `servirtium-dotnet`).

## Why

The old repo was an Elixir reimplementation: a Plug/Cowboy reverse-proxy server
(`reverse_proxy_plug`, `plug_cowboy`, `httpoison`) plus a markdown
recorder/replayer (`Servirtium.Markdown`, `ServirtiumPlayback`,
`ServirtiumRecorder`). All of that logic now exists — tested and maintained — in
the Aether standard library at `std/http/server/vcr`.

The new shape: **this repo wholly depends on the Aether VCR for core
record/replay** and keeps only Elixir-flavored glue — a C NIF binding to a
precompiled native VCR library plus an idiomatic ExUnit fixture. No backwards
compatibility with the old API.

## What changed

| Before (1.x) | After (2.0) |
|---|---|
| `plug_cowboy` + `reverse_proxy_plug` HTTP proxy | the embedded Aether HTTP server (in the engine) |
| `Servirtium.Markdown` parse/emit | Aether core markdown parse/emit |
| `ServirtiumPlayback` / `ServirtiumRecorder` | Aether core dispatch/record |
| `httpoison` for forwarding | Aether core forwarding (record mode) |
| `app: :servirtium_elixir`, module `ServirtiumElixir` | `app: :servirtium`, module `Servirtium` |
| — | C NIF `c_src/servirtium_nif.c` + `native/libservirtium_vcr.so` |

Deleted deps: `plug_cowboy`, `reverse_proxy_plug` (and their transitive
`httpoison`/`hackney`/`cowboy`/`plug` trees). Added: `elixir_make` (build-time),
`ex_doc` (dev). The SUT client in the tests is `:httpc`/`:inets` — Erlang
built-ins, no runtime dep.

## Architecture (target — achieved)

```
ExUnit test
   │  Servirtium.playback(tape, port: 0)  /  Servirtium.record(tape, upstream)
   ▼
Servirtium (this repo)               ── thin Elixir ──
   │  NIF  → Servirtium.Native → c_src/servirtium_nif.c
   ▼
libservirtium_vcr.so                 ── ae build --emit=lib --with=fs,net
   │  (the Aether VCR core: parse, dispatch, record, mutate, emit)
   ▼
SUT  ⇄  http://127.0.0.1:<port>      ── the SUT talks HTTP to the VCR
```

The system-under-test only ever sees an HTTP base URL — exactly the server-first
model the Aether VCR is designed around.

## New API (replaces the old one wholesale)

```elixir
# playback
{:ok, srv} = Servirtium.playback("tapes/my_api.md", port: 0)
{:ok, {{_, 200, _}, _h, body}} =
  :httpc.request(:get, {~c"#{Servirtium.base_url(srv)}/ok", []}, [], [])
:ok = Servirtium.stop(srv)

# record
Servirtium.with_record("tapes/my_api.md", "https://api.example.com",
    [remove_header: [{:response_headers, "Set-Cookie"}],
     redact: [{:request_headers, real_token, "Bearer REDACTED"}],
     port: 0], fn srv ->
  # ... drive the SUT ...  (with_record flushes the tape on exit)
end)
```

The tape *format* is unchanged, so existing tapes replay as-is.

## Aether-core gaps (beyond the known ones)

None new surfaced during this binding. The two known `embed.ae` omissions still
apply (both small additions if wanted): `flush_or_check` (the `.actual`-sibling
drift variant) and `load_url` (replay a tape fetched over HTTP). And the
strict-match default-headers interaction (a SUT client's default headers can
flag a mismatch under `strict_headers: true`) is a client-side concern, handled
with `remove_header`.
