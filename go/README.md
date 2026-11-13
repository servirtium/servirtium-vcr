# Servirtium Go

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for Go.

You point your system-under-test at a local URL. In **playback** it replays a
recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```go
import servirtium "github.com/servirtium/servirtium-vcr/go/v2"

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

## Getting it

The module is `github.com/servirtium/servirtium-vcr/go/v2`: it lives in the
`go/` subdirectory of this repo, with the major version in the path (`/v2`) and
no `v2/` directory. A release `vX.Y.Z` is also tagged `go/vX.Y.Z`, which is the
tag `go get` reads for a subdirectory module. Nothing is on a registry; the
module proxy fetches it from GitHub, but the native library does not come with
it, so you fetch that yourself. Run this in your own Go module:

```sh
VER=v2.0.0-alpha.16                      # a release tag of servirtium-vcr
REL=https://github.com/servirtium/servirtium-vcr/releases/download/$VER

# 1. the Go module (resolves the tag go/$VER; use @main before that tag exists)
[ -f go.mod ] || go mod init servirtium_check      # skip: use your own module
go get github.com/servirtium/servirtium-vcr/go/v2@$VER

# 2. the native library for this OS/arch, into ./native (checksum-verified)
case "$(uname -s)-$(uname -m)" in
  Linux-x86_64)  P=linux-x86_64;  E=so ;;
  Linux-aarch64) P=linux-arm64;   E=so ;;
  Darwin-arm64)  P=macos-arm64;   E=dylib ;;
  Darwin-x86_64) P=macos-x86_64;  E=dylib ;;
  *) echo "see the release assets for your platform"; exit 1 ;;
esac
LIB=libservirtium_vcr-$VER-$P.$E
mkdir -p native
curl -fsSL -o native/$LIB $REL/$LIB
curl -fsSL -o native/$LIB.sha256 $REL/$LIB.sha256
( cd native && { sha256sum -c $LIB.sha256 2>/dev/null || shasum -a 256 -c $LIB.sha256; } )
cp native/$LIB native/libservirtium_vcr.$E

# 3. tell cgo where it is (link-time -L plus a baked-in rpath; no LD_LIBRARY_PATH)
export CGO_LDFLAGS="-L$PWD/native -Wl,-rpath,$PWD/native"

# 4. check it: replay a recorded tape through the library
RAW=https://raw.githubusercontent.com/servirtium/servirtium-vcr/$VER/go
mkdir -p tapes
curl -fsSL -o tapes/single_get.md $RAW/tapes/single_get.md
curl -fsSL -o servirtium_check.go $RAW/example/main.go   # package main; delete after
go run servirtium_check.go                               # -> PASS[discovery]: ...
rm servirtium_check.go
```

Windows (x86_64, arm64) and FreeBSD (x86_64) assets exist too (`windows-<arch>.dll`,
`freebsd-x86_64.so`); musl Linux is `linux-<arch>-musl.so`. Export `CGO_LDFLAGS` in
CI wherever `go build` / `go test` runs; the built binary itself needs nothing (rpath baked in).

### Notes for coding agents

- **cgo is required**: `CGO_ENABLED=1` and a C compiler. `CGO_ENABLED=0` fails with
  `build constraints exclude all Go files` or undefined `C.` symbols.
- **Import path must end in `/go/v2`.** `github.com/servirtium/servirtium-go` (a repo
  that was never created) and `.../servirtium-vcr/go` without `/v2` are wrong.
  `module ... found, but does not contain package` means the path or tag is wrong.
- `unknown revision go/v2...` / `invalid version` means the `go/<tag>` tag has not
  been pushed for that release; use `@main` or ask the maintainers, do not invent a tag.
- Missing native library shows as `ld: library 'servirtium_vcr' not found` (macOS) or
  `cannot find -lservirtium_vcr` (Linux): `CGO_LDFLAGS` is unset in this shell, or
  `native/` lacks a file literally named `libservirtium_vcr.so` / `.dylib`. The versioned
  release asset name is not enough; copy it to the unversioned name (step 2 does).
- Go's build cache keys on `CGO_LDFLAGS`; changing the path rebuilds, which is fine.
- Do not `go mod vendor` and expect the native library to follow: vendoring copies Go
  files only. Do not write into `$GOMODCACHE` (read-only by design); `CGO_LDFLAGS` exists
  so you do not need to.
- Do not set `SERVIRTIUM_VCR_LIB`: it is for this repo's own tests, not for consumers.
- In-repo development is different: `aeb go/.tests.ae` from the repo root, using
  `core/native` and the module's `../core/native` rpath.

cgo links this library at **build** time, not via a runtime `dlopen`: the
package's `#cgo LDFLAGS` carry `-L`/`-rpath` for the directory holding the
`.so` (`core/native` and the bundled `native/`). To build against the
downloaded library, drop it into that directory (or add the directory to
cgo's `-L`/rpath), so the linker resolves `-lservirtium_vcr` and bakes an
rpath into the binary — `go test` then finds it with no `LD_LIBRARY_PATH`.
The in-repo integration tests point at a specific `.so` with
`SERVIRTIUM_VCR_LIB=<path-to-libservirtium_vcr.so>`; a consumer that relies on
the module's own bundled `native/` copy needs nothing set.

## Stable ordering and playback range

Both are opt-in builder options; a refused rule or range comes back as an `error` from `Start()`.

- **Stable order (record builder):** `.SortJSONKeys()`, `.SortJSONArray(path, by)`,
  `.SortJSONArrayAt(requestRegex, path, by)`, `.SortResponseHeaders()`, `.SortHeaderValue(name)`;
  `Server.SortJSONKeys()` / `SortResponseHeaders()` read the state back and `ClearStableOrder()`
  turns it off. Sorted JSON is only written pretty-printed: without `.PrettyJSON(2)`, `Close()`
  returns `sort_json_keys needs pretty_json: ...` and writes nothing.
- **Playback range (playback only):** `servirtium.Playback(tape).PlaybackRange(from, to)` replays
  only the tape's `## Interaction N` headings `from`..`to` (0-based, inclusive; `to < 0` = through
  the last); a bad range makes `Start()` fail. On a running server, `SetPlaybackRange` (an error on a
  record server), `ClearPlaybackRange()` and `PlaybackRange()` (`ok` is false when the whole tape plays).

## Docs

- **[docs/usage.md](docs/usage.md)** — playback, record, redactions,
  unredactions, header removal, volatile values, notes, strict
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
