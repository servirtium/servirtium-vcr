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

Since **v2**, this is a thin Go (cgo) layer over the **Aether VCR** core. All
record/replay machinery — markdown parse/emit, the HTTP server, request
matching, redactions, notes, drift detection, static-content bypass,
gzip/chunked handling — lives in and is maintained as the Aether standard
library (`std/http/server/vcr`). This package cgo-binds a precompiled native
build of that core; it does **not** reimplement Servirtium in Go.

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
  unredactions, header removal, notes, strict matching, static content,
  drift, diagnostics — with code.
- **[docs/architecture.md](docs/architecture.md)** — how the FFI layering
  works (Go → cgo → `embed.ae` → Aether VCR), and the v1
  one-server-per-process model.
- **[docs/building.md](docs/building.md)** — building with **aeb** (the
  Aether build system).
- **[MIGRATION.md](MIGRATION.md)** — the v1 → v2 rewrite story.

## One hard rule: run tests serially

The Aether VCR is **one active server per process** in v1 (its tape, cursor,
and mutation state are process-global). **Do not call `t.Parallel()`** in
tests that drive the VCR — Go test functions within a package run serially by
default, which is exactly what's needed. Two servers in one process would
stomp each other's state (it shows up as spurious `599` mismatches).

`Start()` resets all process-global mutation/strict/format state first, so a
setting from a prior fixture never leaks forward, even within one process.
See [docs/architecture.md](docs/architecture.md#one-server-per-process).

## Building

This binding is built with **[aeb](https://github.com/aether-lang-org/aeb)**,
the Aether build system — it's the only Servirtium binding wholly on aeb, as
a showcase.

**Casual dev, one command** (installs the Aether toolchain + aeb via their
official `get.sh` / `install.sh` to `~/.local` if missing — no sudo, no tests,
no contrib; needs `curl` — then builds everything):

```sh
./bootstrap.sh
```

Already have `ae` (≥ 0.183) and `aeb` on PATH? Just run the build runner from
the repo root:

```sh
aeb        # builds the whole DAG, in dependency order:
           #   .native.ae            -> native/libservirtium_vcr.so (ae build --emit=lib)
           #   cmd/vcrdemo/.build.ae -> the lifecycle demo binary (cgo links the .so)
           #   .tests.ae             -> go test (the binding's suite)
           #   demo/.up_poke_down.ae -> UP/POKE/DOWN lifecycle demo (the boast)
```

The `up_poke_down` step (modeled on aeb's `docs/examples/container-lifecycle`)
brings up a VCR playback server, GETs a recorded path, asserts the recorded
body replays, and tears down — gating the build on a live record/replay
exercise. Details in [docs/building.md](docs/building.md).
