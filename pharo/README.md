# Servirtium Pharo

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for **Pharo Smalltalk**.

You point your system-under-test at a local URL. In **playback** it replays
a recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```smalltalk
| server body |
server := (Servirtium playback: 'tapes/climate_api.md') port: 0; start.
body := ZnClient new get: server baseUrl , '/api/v1/countries'.
self assert: server lastKind equals: #ok.   "optional: assert a clean match"
server stop.
```

Or auto-closing (always stops the server, flushing the tape in record mode):

```smalltalk
(Servirtium playback: 'tapes/climate_api.md') startThenDo: [ :server |
    | body |
    body := ZnClient new get: server baseUrl , '/api/v1/countries'.
    self assert: server lastKind equals: #ok ].
```

## What this is (and isn't)

This is a thin **UnifiedFFI (uFFI)** layer over the **Aether VCR** core. All
record/replay machinery — markdown parse/emit, the HTTP server, request
matching, redactions, notes, drift detection, static bypass, gzip/chunked
handling — lives in and is maintained as the Aether standard library
(`std/http/server/vcr`). This binding FFI-calls a precompiled native build of
that core (`native/libservirtium_vcr.so`); it does **not** reimplement
Servirtium in Smalltalk.

## Install (into a Pharo image)

Load the Tonel project via its Metacello baseline, pointing at this repo's
`src/`, then tell the binding where the native engine is (or export
`SERVIRTIUM_VCR_LIB` before launching the image):

```smalltalk
Metacello new
    baseline: 'Servirtium';
    repository: 'tonel://', '/abs/path/to/servirtium-pharo/src';
    load.   "or load: 'tests' to also load the SUnit suite"

ServirtiumLibrary libPath: '/abs/path/to/servirtium-pharo/native/libservirtium_vcr.so'.
```

The engine library is **not** committed — build it once with
`./build-native.sh` (needs the Aether `ae` toolchain). See
[docs/building.md](docs/building.md).

## Docs

- **[docs/usage.md](docs/usage.md)** — playback, record, redactions,
  unredactions, header removal, notes, strict matching, static content,
  drift, diagnostics — with code.
- **[docs/features.md](docs/features.md)** — Servirtium capability matrix and
  what's covered by tests.
- **[docs/architecture.md](docs/architecture.md)** — how the uFFI layering
  works (Smalltalk → uFFI → `embed.ae` → Aether VCR), how the `.so` loads,
  string ownership/freeing, and the v1 one-server-per-process model.
- **[docs/building.md](docs/building.md)** — building the native library and
  running the headless SUnit suite.

## One hard rule: run tests serially

The Aether VCR is **one active server per process** in v1 (its tape / cursor /
mutation state is process-global, and a Pharo image is one process). Don't run
two VCR servers concurrently in the same image; drive the suite serially.
`ServirtiumBuilder>>start` resets all process-global mutation/format/strict
state before applying a fixture's config, so settings never leak between
tests. See [docs/architecture.md](docs/architecture.md#one-server-per-process).

## Building from source

**Casual dev, one command** (installs the Aether toolchain via its official
`get.sh` to `~/.local` if missing — no sudo, no tests; needs `curl` — then
builds the native lib and runs the headless SUnit suite; needs a Pharo VM +
image already present, default `$HOME/.local/pharo`):

```sh
./bootstrap.sh
```

Already have `ae` (≥ 0.183) and a Pharo VM/image? Drive the two steps directly:

```sh
./build-native.sh     # builds native/libservirtium_vcr.so (needs `ae`)
./run-tests.sh        # loads src/ into a fresh image copy, runs SUnit headless
```

`run-tests.sh` exits non-zero on any SUnit failure or error. Details in
[docs/building.md](docs/building.md).
