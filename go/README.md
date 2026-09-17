# Servirtium Go

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for Go.

You point your system-under-test at a local URL. In **playback** it replays a
recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```go
import servirtium "github.com/servirtium/servirtium-go"

srv, err := servirtium.Playback("tapes/climate_api.md").Port(0).Start()
if err != nil { t.Fatal(err) }
defer srv.Close()

resp, _ := http.Get(srv.BaseURL() + "/api/v1/countries")
// optional: assert a clean match
if srv.LastKind() != servirtium.Ok { t.Fatal(srv.LastError()) }
```

## What this is (and isn't)

Since **v2**, this is a thin Go (cgo) layer over the **Servirtium VCR** core. All
record/replay machinery — markdown parse/emit, the HTTP server, request
matching, redactions, notes, drift detection, static-content bypass,
gzip/chunked handling — lives in this repo as a pure-Aether module
(`core/vcr.ae`, with the `core/embed.ae` C-ABI), built once to
`core/native/libservirtium_vcr.so`. libservirtium_vcr is *built on* Aether's stdlib
primitives (`std.http` server, `std.regex`, `std.zlib`, `std.cryptography`), but
the Servirtium logic is in-repo, not in the stdlib. This package cgo-binds that
precompiled native build; it does **not** reimplement Servirtium in Go.

> **Breaking from v1:** the old `Impl` type and its `StartPlayback` /
> `StartRecord` / `Set*` API are gone, with no shim. The new API is below /
> in [docs/usage.md](docs/usage.md). The tape *format* is unchanged, so
> existing tapes replay as-is.

## Install

> **Note:** nothing is published to the **Go module proxy** yet, so `go get
> github.com/servirtium/servirtium-go` does **not** give you this library.
> Until the module is published, vendor it locally (or use a `replace`
> directive) and supply the prebuilt native library as below.

This package uses **cgo**, so `CGO_ENABLED=1` (the default on most platforms)
and a C toolchain are required to build.

**Get the native library** (`libservirtium_vcr`) for your OS/arch from the
[GitHub releases](https://github.com/servirtium/servirtium-vcr/releases) — one
prebuilt shared library per platform, each with a `.sha256` — and (optionally)
verify it:

```sh
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v0.1.0/libservirtium_vcr-v0.1.0-linux-x86_64.so
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v0.1.0/libservirtium_vcr-v0.1.0-linux-x86_64.so.sha256
sha256sum -c libservirtium_vcr-v0.1.0-linux-x86_64.so.sha256   # -> OK
```

**Build the package locally**

Nothing is published to a registry yet, so you assemble the package yourself:
drop the downloaded library at the package-relative path below, then consume it
from source (vendored / `replace` directive — see this README's usage above).

```sh
# from the go binding directory, with libservirtium_vcr-v0.1.0-linux-x86_64.so downloaded:
mkdir -p native
cp libservirtium_vcr-v0.1.0-linux-x86_64.so native/libservirtium_vcr.so
# the package now carries the native library; consume it from source (see this README's usage/examples).
```

Available platforms: linux (x86_64, arm64), macOS (x86_64, arm64), Windows
(x86_64, arm64), FreeBSD (x86_64). No Aether toolchain is needed to *use* the
library. (For macOS use the `.dylib`, for Windows the `.dll`.)

cgo links this library at **build** time, not via a runtime `dlopen`: the
package's `#cgo LDFLAGS` carry `-L`/`-rpath` for the directory holding the
`.so` (`core/native` and the bundled `native/`). To build against the
downloaded library, drop it into that directory (or add the directory to
cgo's `-L`/rpath), so the linker resolves `-lservirtium_vcr` and bakes an
rpath into the binary — `go test` then finds it with no `LD_LIBRARY_PATH`.
The in-repo integration tests point at a specific `.so` with
`SERVIRTIUM_VCR_LIB=<path-to-libservirtium_vcr.so>`; a consumer that relies on
the module's own bundled `native/` copy needs nothing set.

## Docs

- **[docs/usage.md](docs/usage.md)** — playback, record, redactions,
  unredactions, header removal, whole-tape normalization, notes, strict
  matching, static content, drift, diagnostics — with code.
- **[docs/architecture.md](docs/architecture.md)** — how the FFI layering
  works (Go → cgo → `core/embed.ae` → `core/vcr.ae`), and the one-server-per-port
  concurrency model.
- **[docs/features.md](docs/features.md)** — the Servirtium capability matrix,
  each feature mapped to its Go API and the test that exercises it.
- **[docs/building.md](docs/building.md)** — building with **aeb** (the
  Aether build system).
- **[MIGRATION.md](MIGRATION.md)** — the v1 → v2 rewrite story.

## Concurrency: one server per port

The VCR core runs **one server per port**: N independent `*Server`s can run concurrently
in one process, each keyed by its own handle. A fixture's tape, replay cursor,
mutations, static mounts, pending note, and diagnostics are all scoped to its
handle, so two `*Server`s can be alive at once without bleeding into each
other. The lifecycle is open → configure(handle) → start. You may run VCR-driven
tests in parallel; nothing is process-global. See
[docs/architecture.md](docs/architecture.md#concurrency-one-server-per-port).

## Building

This binding is built with **[aeb](https://github.com/aether-lang-dev/aeb)**,
the Aether build system — it's the only Servirtium binding wholly on aeb, as
a showcase.

**Casual dev, one command** (installs the Aether toolchain + aeb via their
official `get.sh` / `install.sh` to `~/.local` if missing — no sudo, no tests,
no contrib; needs `curl` — then builds everything):

```sh
./bootstrap.sh
```

Already have `ae` (≥ 0.227.0) and `aeb` on PATH? Just run the build runner from
the repo root:

```sh
aeb        # builds the whole DAG, in dependency order:
           #   core/.build.ae        -> core/native/libservirtium_vcr.so (ae build --emit=lib from core/embed.ae)
           #   cmd/vcrdemo/.build.ae -> the lifecycle demo binary (cgo links the .so)
           #   .tests.ae             -> go test (the binding's suite)
           #   demo/.up_poke_down.ae -> UP/POKE/DOWN lifecycle demo (the boast)
```

The `up_poke_down` step (modeled on aeb's `docs/examples/container-lifecycle`)
brings up a VCR playback server, GETs a recorded path, asserts the recorded
body replays, and tears down — gating the build on a live record/replay
exercise. Details in [docs/building.md](docs/building.md).
