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

## Getting it

The package is **not in the Julia General registry**. Add it by URL at the release tag
(`subdir`, because the package lives in `julia/`), and fetch the native library from the same
release; `ccall` loads it through `SERVIRTIUM_VCR_LIB`. In your own project/environment:

```sh
set -eu
TAG=v2.0.0-alpha.17                      # a release tag of servirtium-vcr; nothing else to edit
REL=https://github.com/servirtium/servirtium-vcr/releases/download/$TAG
RAW=https://raw.githubusercontent.com/servirtium/servirtium-vcr/$TAG
# 1. the native library for this OS/arch, checksum-verified, into ~/.servirtium-vcr/$TAG
case "$(uname -s)" in
  Linux)   OS=linux;   EXT=so;    ldd --version 2>&1 | grep -qi musl && LIBC=-musl || LIBC= ;;
  Darwin)  OS=macos;   EXT=dylib; LIBC= ;;
  FreeBSD) OS=freebsd; EXT=so;    LIBC= ;;
  *) echo "unsupported OS (Windows: take the .dll asset by hand)"; exit 1 ;;
esac
case "$(uname -m)" in x86_64|amd64) ARCH=x86_64 ;; arm64|aarch64) ARCH=arm64 ;; *) echo "unsupported arch"; exit 1 ;; esac
LIBDIR="$HOME/.servirtium-vcr/$TAG"        # keep it OUT of your git tree
mkdir -p "$LIBDIR"
LIB=libservirtium_vcr-$TAG-$OS-$ARCH$LIBC.$EXT
curl -fsSL -o "$LIBDIR/$LIB" "$REL/$LIB"
curl -fsSL -o "$LIBDIR/$LIB.sha256" "$REL/$LIB.sha256"
( cd "$LIBDIR" && { sha256sum -c "$LIB.sha256" 2>/dev/null || shasum -a 256 -c "$LIB.sha256"; } )
cp "$LIBDIR/$LIB" "$LIBDIR/libservirtium_vcr.$EXT"     # the loader/linker want the plain name

# 2. the package (into the project in the current directory). SERVIRTIUM_VCR_LIB must already be
#    exported here: Julia precompiles the package at this step and bakes the library path in.
export SERVIRTIUM_VCR_LIB="$LIBDIR/libservirtium_vcr.$EXT"      # and set it wherever your tests run
TAG=$TAG julia --project=. -e 'using Pkg; Pkg.add(url="https://github.com/servirtium/servirtium-vcr", rev=ENV["TAG"], subdir="julia")'

# 3. check it: replay a recorded tape
mkdir -p tapes
curl -fsSL -o tapes/single_get.md $RAW/julia/example/tapes/single_get.md
julia --project=. -e '
using Servirtium
vcr = playback("tapes/single_get.md")
try
    println(chomp(read(`curl -s -S $(base_url(vcr))/ok`, String)), " ", last_kind(vcr))   # -> ok-body Ok
finally
    close!(vcr)
end'
```

`Project.toml` records the package as a `[deps]` entry (`Servirtium = "9b1c4d3e-5a82-4f6b-8d31-7e2a6c4f1b93"`) and
`Manifest.toml` pins the tag's commit (`repo-url`, `repo-rev`, `repo-subdir`). The future registry form
is `Pkg.add(name="Servirtium", version="2.0.0-alpha.17")`; it does not resolve today.

### Notes for coding agents

- `Pkg.add("Servirtium")` fails (`expected package Servirtium to be registered`): do not
  `Pkg.develop` a clone either, unless `SERVIRTIUM_VCR_LIB` is set first; a clone has no `native/`.
  Without `subdir="julia"` Pkg reports that there is no `Project.toml` at the repo root.
- **Order matters.** `SERVIRTIUM_VCR_LIB` is read once, in a `const` at module load, and Julia
  bakes that into the precompiled cache when `Pkg.add` precompiles. Exported later, it is ignored
  and you get `could not load library "libservirtium_vcr.so" ... cannot open shared object file`.
  Fix: export it, then force a recompile with `rm -rf ~/.julia/compiled/v*/Servirtium` (and
  `Pkg.precompile()`). Because the path is baked in, moving the library later breaks it the same way.
- A missing or wrong library shows as `could not load library "..."` from `ccall` (the wrong
  libc/arch: `-musl` on Alpine). The library must be at least as new as the Julia source: a
  library older than the binding reports an error naming the missing `aether_vcr_embed_...` symbol.
- Without the variable the module falls back to a bundled `native/libservirtium_vcr.so`
  (absent in a git checkout) and then the bare name via the OS loader; on macOS only the variable works.
- The version `2.0.0-alpha.17` is valid Julia semver as written; no respelling is needed.
- Windows: use the `.dll` asset and its full path.

## Volatile values

A rule names where a value that changes on every run sits, with a
`{{placeholder}}`; the tape holds a token (`{{messageId-1}}`) there and
playback matches any live value. Pass rules, binds, profiles and markers to
`playback`/`record`, so a bad rule fails the open with the core's message:

```julia
playback("tapes/create_case.md";
         pretty_xml=2,
         volatile_rules=[("request body", "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>"),
                         ("response body", "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>")],
         volatile_binds=["caseId" => "42"],
         volatile_profile="cas-profile.md",
         volatile_markers=DollarCurly) do vcr   # markers apply before any rule
    # ... drive the SUT ...
    println(volatile_report(vcr))
end
```

A rule is `(scope, pattern)` or `(scope, pattern, "regex")`. On an open handle
use `volatile_rule(vcr, scope, pattern, kind)`, `volatile_bind(vcr, name, value)`
(not `bind`: that is `Sockets.bind`), `volatile_profile(vcr, path)` and
`volatile_markers(vcr, style)`. Tape-declared rules need `pretty_xml` set before
start, which is why it is a keyword too. Details:
[`docs/volatile-values.md`](../docs/volatile-values.md).

## Stable ordering and playback range

Opt-in, off by default. Stable ordering is record side, for a service that sends
the same response in a different order every run; the tape is byte-exact without it.

```julia
record("tapes/data.md", upstream) do rec
    set_pretty_json(rec, 2)                    # sorted JSON is only written pretty-printed
    set_sort_json_keys(rec, true)              # object keys sorted at every depth
    sort_json_array(rec, "/items", "/id")      # path, by
    sort_json_array_at(rec, "^/users", "", "name")   # request regex, path, by
    set_sort_response_headers(rec, true)
    sort_header_value(rec, "Allow")
    # ... drive the system under test ...
end
```

A rule the core refuses throws `VcrError`. Sorting JSON without `set_pretty_json`
is refused when the tape is written, so `flush!` (and the `record do` block's
exit) throws a `VcrError` containing "sort_json_keys needs pretty_json" and
writes nothing. `get_sort_json_keys` / `get_sort_response_headers` read the
switches back; `clear_stable_order` turns every rule off.

Replay only a slice of a tape, by the tape's `## Interaction N` number (0-based,
inclusive; `to < 0` = through the last):

```julia
playback("tapes/journey.md") do vcr
    set_playback_range(vcr, 4, 6)      # throws VcrError if refused
    get_playback_range(vcr)            # (4, 6), or nothing
    clear_playback_range(vcr)
end
```

A record handle refuses a range, so a test cannot overwrite a journey's tape with a slice.
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
