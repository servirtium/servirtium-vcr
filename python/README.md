![](Servirtium-Square.png?raw=true)

# Servirtium Python

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for Python. Main Servirtium site: http://servirtium.dev

You point your system-under-test at a local URL. In **playback** it replays a
recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```python
import servirtium
import urllib.request

with servirtium.playback("tapes/climate_api.md").port(0).start() as vcr:
    body = urllib.request.urlopen(f"{vcr.base_url}/api/v1/countries").read()
    assert vcr.last_kind is servirtium.Outcome.OK   # optional: assert a clean match
```

## What this is (and isn't)

Since **2.0**, this is a thin Python layer over the **Aether VCR** core. All
record/replay machinery — markdown parse/emit, the HTTP server, request
matching, redactions, notes, drift detection, static bypass, gzip/chunked
handling — lives in and is maintained as the Aether standard library
(`std/http/server/vcr`). This package calls a precompiled native build of that
core through **`ctypes`** (Python stdlib); it does **not** reimplement
Servirtium in Python.

> **Breaking from 1.x:** the old Python reimplementation (markdown
> reader/writer, the `http.server`/proxy record-replay server, recorder /
> replayer) and its API are gone, with no shim. The new API is below / in
> [docs/usage.md](docs/usage.md). The tape *format* is unchanged, so existing
> tapes replay as-is.

## Install

```sh
pip install servirtium
```

The native library for your OS/arch ships in the package (`servirtium/native/`)
and is selected automatically — no Aether toolchain needed to *use* it.
Supported platforms: linux-x64 (more in [docs/building.md](docs/building.md)).

## Docs

- **[docs/usage.md](docs/usage.md)** — playback, record, redactions,
  unredactions, header removal, notes, strict matching, static content, drift,
  diagnostics — with code.
- **[docs/features.md](docs/features.md)** — Servirtium capability matrix and
  what's covered by tests.
- **[docs/architecture.md](docs/architecture.md)** — how the FFI layering works
  (Python → ctypes → `embed.ae` → Aether VCR), the native loader, and the v1
  one-server-per-process model.
- **[docs/building.md](docs/building.md)** — building the native library and CI.
- **[MIGRATION.md](MIGRATION.md)** — the 1.x → 2.0 rewrite story.

## One hard rule: run tests serially

The Aether VCR is **one active server per process** in v1 (its tape / cursor /
mutation state is process-global). pytest runs tests serially by default — do
**not** add `pytest-xdist` parallelism (no `-n`). `.start()` resets all
process-global mutation/strict/format state first, so settings from a prior
fixture never leak forward. See
[docs/architecture.md](docs/architecture.md#one-server-per-process).

## Building from source

```sh
./build-native.sh              # builds the native lib for your platform (needs `ae`)
python -m pip install -e .[dev]
python -m pytest
```

Details in [docs/building.md](docs/building.md).
