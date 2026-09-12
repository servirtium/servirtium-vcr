# Servirtium.jl

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for **Julia**.

```julia
using Servirtium

playback("tapes/single_get.md") do vcr
    body = chomp(read(`curl -s "$(base_url(vcr))/ok"`, String))
    @test body == "ok-body"
    @test last_kind(vcr) == Ok
end   # <- the do-block closes the server on every path
```

## What this is (and isn't)

A thin Julia layer over the **Aether VCR** core. All record/replay machinery —
markdown parse/emit, the HTTP server, request matching, redactions, notes, drift
detection, static bypass, gzip/chunked handling — lives in the in-repo,
pure-Aether `core/vcr.ae` module. This binding does **not** reimplement
Servirtium in Julia.

Julia's built-in `ccall` invokes the engine's flat C ABI (`aether_vcr_embed_*`)
**directly** — no glue, no second copy of the marshalling rules. There is
nothing to build and nothing to stage: the `.so` is located by absolute path
from `SERVIRTIUM_VCR_LIB`, which is `ccall`'s library handle.

### What Julia adds

- **do-block forms** — `playback(tape) do vcr … end` closes on every path;
  `record(tape, upstream) do vcr … end` flushes when the block ends normally
  and **discards** the recording if it threw, so a failed test can't overwrite
  a good tape.
- **`@enum Field` / `@enum Outcome`** mirroring the engine constants, and a
  typed `VcrError`.
- **Caller-owned-string handling** in exactly one place (`take`).

## Layout

- `src/Servirtium.jl` — the module: the `ccall` seam plus the `Vcr` struct and
  the exported function surface.
- `test/playback_test.jl` — 24 assertions across 9 testsets over the canonical
  tape: body, clean match, tape length + bound port, an off-tape path, cursor
  reset, a typed error on a missing tape, do-block close, idempotent `close!`,
  two concurrent servers, and the enum values.
- `tapes/single_get.md` — the canonical sample tape (`GET /ok` → `200
  text/plain` / `ok-body`), byte-identical to every other binding's copy.

## Building and testing

```sh
aeb julia/.tests.ae   # hands the engine .so in via SERVIRTIUM_VCR_LIB
```

By hand:

```sh
cd julia
SERVIRTIUM_VCR_LIB=$PWD/../target/build/core/lib/libservirtium_vcr.so \
  julia --color=no test/playback_test.jl
```

### One Julia-specific note

The test's `http_status` helper keeps curl's `%{http_code}` format string in a
**variable**, not inline in the backtick command: Julia's command literal
brace-expands `{...}`, so a literal `%{http_code}` inside backticks is a parse
error. Interpolating a `String` passes it through verbatim.
