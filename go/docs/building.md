# Building (with aeb)

This binding's build system is **[aeb](https://github.com/aether-lang-dev/aeb)**,
the polyglot Aether build runner — it's the one Servirtium binding wholly on
aeb, kept as a showcase of aeb driving a cross-language FFI artifact
(native Aether `--emit=lib` → cgo → Go) plus a server lifecycle demo.

## Prerequisites

- The Aether toolchain (`ae`) on PATH — **≥ 0.182** for the `-fPIC` runtime
  that `--emit=lib --with=net` needs, **≥ 0.227.0** for `std.regex` (the
  engine's whole-tape rewrites) and chunked de-chunking.
- `aeb` on PATH.
- A C toolchain (`cgo` links the native library).
- **No Aether source checkout needed** — the engine is in this repo
  (`core/vcr.ae` + `core/embed.ae`); `core/.build.ae` compiles it against the
  installed toolchain's stdlib primitives. No separate Aether checkout is
  required.

### Getting the Aether toolchain (casual dev)

`core/.build.ae` shells out to `ae build --emit=lib`, so you need the toolchain
before anything else. Install it (and `aeb`) with their canonical one-line
installers — released builds, user prefix, no sudo, no tests, no contrib:

```sh
curl -sSL https://raw.githubusercontent.com/aether-lang-dev/aether/main/get.sh | sh
curl -sSL https://raw.githubusercontent.com/aether-lang-dev/aeb/main/install.sh | sh
```

Notes for a casual servirtium-go developer:

- **Pin in CI** with `AETHER_REF=v0.227.0` / `AEB_REF=v0.NNN` in front of the
  respective installer (reproducible builds).
- **Version floor is real** — `ae` must be **≥ 0.227.0** (`std.regex` for the
  engine's whole-tape rewrites, on top of the `-fPIC` runtime + chunked
  de-chunk). The latest released tag satisfies it; `get.sh` installs that by
  default.
- **No contrib.** servirtium-go's engine imports only stdlib primitives
  (`std.http`/`std.fs`/`std.regex`/`std.zlib`/`std.cryptography`) — no
  `sqlite`/`host_*` — so there's nothing extra to install.
- **`-fPIC` triage.** If `aeb`/`core/.build.ae` fails with a link error
  mentioning `recompile with -fPIC`, you have a stale pre-0.182 `ae` — re-run
  the `get.sh` installer (optionally `AETHER_REF=v0.227.0`). This is the single
  most likely first-build failure, because `--emit=lib --with=net` is exactly
  the path that needs the PIC runtime.

## Turnkey: `./bootstrap.sh`

For a casual dev who doesn't yet have the toolchain, the repo-root
`bootstrap.sh` encodes everything below as one idempotent command:

```sh
./bootstrap.sh
```

It checks for `ae` (≥ 0.227.0) and `aeb`; if either is missing/too old it
installs them via the official `get.sh` / `install.sh` remote installers to a
user prefix (`$HOME/.local` — **no sudo, no Aether test suite, no contrib**),
then runs `aeb`. It's a no-op for the toolchain when both are already good,
needs `curl` to install them (no build-from-source fallback), and on failure
prints the `-fPIC` re-install triage. Override `PREFIX` / `AETHER_REF` /
`AEB_REF` (pin in CI) / `MIN_AE` / `AEB_TIMEOUT` via env. Extra args pass
through to `aeb` (e.g. `./bootstrap.sh .tests.ae`).

Everything from here down is what `bootstrap.sh` automates — useful when you
already have the toolchain and want to drive `aeb` directly.

## One command

```sh
aeb
```

aeb scans the dot-prefixed `.ae` files, builds the DAG from `build.dep(...)`
edges, and runs them in dependency order:

| Node | Class | What it does |
|---|---|---|
| `core/.build.ae` | build | `ae build --emit=lib --with=fs,net core/embed.ae --extra _embed_strdup.c -o core/native/libservirtium_vcr.so` (the shared engine, built once for every binding) |
| `cmd/vcrdemo/.build.ae` | build | `go build` the lifecycle demo binary (cgo links the `.so`); deps `core/.build.ae` |
| `go/.tests.ae` | test | `go test .` — the binding's suite; deps `core/.build.ae` |
| `demo/.up_poke_down.ae` | build | runs the demo: UP a playback server, POKE the recorded path, DOWN; gates the build on a live record/replay; deps the demo build |

The native library is git-ignored build output — `aeb` (re)builds it via
`core/.build.ae` from the in-repo engine (`core/vcr.ae` + `core/embed.ae`).

## The up_poke_down showcase

`demo/.up_poke_down.ae` is modeled on aeb's
`docs/examples/container-lifecycle`. Instead of `docker run caddy`, the
"thing" brought up is the Servirtium VCR itself — served by this Go binding
over the tiny Aether engine behind its cgo seam. The `vcrdemo` binary does the
whole lifecycle in one self-contained shot (start a playback server on an
OS-assigned port, issue a real HTTP GET, assert the recorded body replays,
stop), printing each phase and exiting non-zero on failure so the build gates
on it. The captured run lands at `target/demo/lifecycle.txt`.

## Targeting one node

```sh
aeb .tests.ae                 # native lib + go test only
aeb cmd/vcrdemo/.build.ae     # native lib + demo binary only
aeb demo/.up_poke_down.ae     # build the demo + run the lifecycle gate
```

## CI

The `up_poke_down` demo is a **one-shot** (start + self-probe + stop in a
single process), so it never leaves a server running — the recommended shape
for an in-tree server step (see aeb's `server-daemon-snafu.md`). For defence
in depth in CI, cap the build's wall-clock so a wedged step fails fast instead
of hanging the runner:

```sh
AEB_TIMEOUT=180 aeb        # or: aeb --timeout 180  (exits 124 on overrun)
```

aeb also group-reaps anything a build step leaves running when the build
completes, so a stray background server can't poison the build's exit code.

## Without aeb (fallback)

The pieces are plain tools, so you can drive them by hand if needed
(`embed.ae` is the in-repo `core/embed.ae`, run from the `core/` directory):

```sh
( cd core && ae build --emit=lib --with=fs,net embed.ae --extra _embed_strdup.c \
   -o native/libservirtium_vcr.so )
CGO_ENABLED=1 go test ./...
```

cgo links the native library with an absolute rpath, so no `LD_LIBRARY_PATH`
is needed at runtime.

## Distributing to downstream Go consumers

The build above produces a `.so` for *this* repo's own dev/CI. An **external**
Go project can't reliably `go get` a cgo package that needs a prebuilt native
lib (Go fetches dependencies as read-only source with no build hook). The
recommended downstream shape is the **committed C amalgamation** — a
self-contained `ccore/` of `--emit-c`/`--emit-header` output plus the
Aether runtime/std C closure (the `MANIFEST` set), which the consumer's cgo
compiles directly. See [usage.md → "Consuming this in another Go
project"](usage.md#consuming-this-in-another-go-project).

That bundle is meant to be generated by an aeb release-time exporter
(`go.cgo_dist`, sibling to aeb's `brew`/`meta` exporters): it runs
`aetherc --emit-c`/`--emit-header` on `embed.ae`, gathers the `MANIFEST` C
closure, writes `ccore/` + the cgo bridge, and stamps provenance — committed
and tagged so `go get`/vendor compiles it with no prebuilt artifact. A CI
drift guard (re-run the exporter, `git diff --exit-code`) keeps the committed
`ccore/` from drifting from the engine. (Exporter not yet wired — tracked
as the aeb-side `go.cgo_dist` ask.)
