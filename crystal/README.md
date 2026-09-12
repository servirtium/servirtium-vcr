# servirtium-crystal

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for **Crystal**.

```crystal
require "servirtium"

Servirtium.playback("tapes/single_get.md") do |vcr|
  body = HTTP::Client.get("#{vcr.base_url}/ok").body
  body.should eq("ok-body")
  vcr.last_kind.should eq(Servirtium::Outcome::Ok)
end   # <- the block form closes the server on every path
```

## What this is (and isn't)

A thin Crystal layer over the **Aether VCR** core. All record/replay machinery —
markdown parse/emit, the HTTP server, request matching, redactions, notes, drift
detection, static bypass, gzip/chunked handling — lives in the in-repo,
pure-Aether `core/vcr.ae` module. This binding does **not** reimplement
Servirtium in Crystal.

Crystal binds the engine's flat C ABI (`aether_vcr_embed_*`) **directly** via a
`lib`/`fun` block under `@[Link]` — no glue `.c`, no second copy of the
marshalling rules to drift from `core/embed.ae`.

### What Crystal adds

- **Block forms** — `Servirtium.playback(tape) { |vcr| … }` closes on every
  path; `Servirtium.record(tape, upstream) { |vcr| … }` flushes the tape when
  the block ends normally and **discards** it if the block raised, so a failed
  test can't overwrite a good tape.
- **Typed enums** (`Field`, `Outcome`) and a typed `Servirtium::Error`.
- **Caller-owned-string handling** in exactly one place (`take`), so no ABI
  `char*` reaches user code.

## Layout

- `src/servirtium.cr` — the `LibVcr` binding + the idiomatic `Servirtium`
  module and `Vcr` class.
- `spec/playback_spec.cr` — 9 examples over the canonical tape: body, clean
  match, tape length + bound port, an off-tape path, cursor reset, a typed
  error on a missing tape, block-form close, idempotent close, and two servers
  running concurrently on separate handles.
- `tapes/single_get.md` — the canonical sample tape (`GET /ok` → `200
  text/plain` / `ok-body`), byte-identical to every other binding's copy.
- `native/` — where the leaf stages the engine `.so` (git-ignored).

## Building and testing

```sh
aeb crystal/.tests.ae   # stages the engine .so into native/, runs `crystal spec`
```

The leaf copies the engine's `shared_lib` artifact to
`native/libservirtium_vcr.so` and points `CRYSTAL_LIBRARY_PATH` there so
`-lservirtium_vcr` resolves. The `@[Link]` ldflags additionally carry a
self-locating `-L`/`-rpath` off `__DIR__`, so a compiled binary runs without
`LD_LIBRARY_PATH`.

By hand:

```sh
cd crystal
cp ../target/build/core/lib/libservirtium_vcr.so native/
CRYSTAL_LIBRARY_PATH=native crystal spec
```
