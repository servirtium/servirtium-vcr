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
`core/native/libservirtium_vcr.so`. The engine is *built on* Aether's stdlib
primitives (`std.http` server, `std.regex`, `std.zlib`, `std.cryptography`), but
the Servirtium logic is in-repo, not in the stdlib. This package cgo-binds that
precompiled native build; it does **not** reimplement Servirtium in Go.

> **Breaking from v1:** the old `Impl` type and its `StartPlayback` /
> `StartRecord` / `Set*` API are gone, with no shim. The new API is below /
> in [docs/usage.md](docs/usage.md). The tape *format* is unchanged, so
> existing tapes replay as-is.

## Install

```sh
go get github.com/servirtium/servirtium-go
```

This package uses **cgo**, so `CGO_ENABLED=1` (the default on most platforms)
and a C toolchain are required to build. The native library
(`native/libservirtium_vcr.so`) is linked with an embedded rpath, so
`go test` finds it at runtime with no `LD_LIBRARY_PATH` needed.

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
