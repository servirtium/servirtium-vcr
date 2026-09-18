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

Julia's built-in `ccall` invokes libservirtium_vcr's flat C ABI (`aether_vcr_embed_*`)
**directly** — no glue, no second copy of the marshalling rules. There is
nothing to build and nothing to stage: the `.so` is located by absolute path
from `SERVIRTIUM_VCR_LIB`, which is `ccall`'s library handle.

### What Julia adds

- **do-block forms** — `playback(tape) do vcr … end` closes on every path;
  `record(tape, upstream) do vcr … end` flushes when the block ends normally
  and **discards** the recording if it threw, so a failed test can't overwrite
  a good tape.
- **`@enum Field` / `@enum Outcome`** mirroring libservirtium_vcr constants, and a
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

## Getting the native library

**Get the native library** (`libservirtium_vcr`) for your OS/arch from the
[GitHub releases](https://github.com/servirtium/servirtium-vcr/releases) — one
prebuilt shared library per platform, each with a `.sha256` — and (optionally)
verify it:

```sh
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v0.1.1/libservirtium_vcr-v0.1.1-linux-x86_64.so
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v0.1.1/libservirtium_vcr-v0.1.1-linux-x86_64.so.sha256
sha256sum -c libservirtium_vcr-v0.1.1-linux-x86_64.so.sha256   # -> OK
```

**Build the package locally**

Nothing is published to a registry yet, so you assemble the package yourself:
drop the downloaded library at the package-relative path below, then consume it
from source (`Pkg.develop` on this local checkout).

```sh
# from the julia binding directory, with libservirtium_vcr-v0.1.1-linux-x86_64.so downloaded:
mkdir -p native
cp libservirtium_vcr-v0.1.1-linux-x86_64.so native/libservirtium_vcr.so
# the package now carries the native library; consume it from source (see this README's usage/examples).
```

Available platforms: linux (x86_64, arm64), macOS (x86_64, arm64), Windows
(x86_64, arm64), FreeBSD (x86_64). No Aether toolchain is needed to *use* the
library. (For macOS use the `.dylib`, for Windows the `.dll`.)

`ccall` reads its library handle from `SERVIRTIUM_VCR_LIB` at runtime — point
it at the downloaded lib by absolute path:

```sh
export SERVIRTIUM_VCR_LIB=$PWD/libservirtium_vcr-v0.1.1-linux-x86_64.so
```

Contributors can instead build the `.so` from source with `aeb` (needs the
Aether `ae` toolchain), as below.

## Building and testing

```sh
aeb julia/.tests.ae   # hands the libservirtium_vcr.so in via SERVIRTIUM_VCR_LIB
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
