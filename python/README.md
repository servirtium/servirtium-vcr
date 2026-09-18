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
handling — lives in a single pure-Aether module in this repo at `core/vcr.ae`
(plus the `core/embed.ae` C-ABI), built once to
`core/native/libservirtium_vcr.so` on top of Aether stdlib primitives
(`std.http`, `std.regex`, `std.zlib`, `std.cryptography`). The Servirtium logic
is in-repo, not the stdlib. This package calls a precompiled native build of
that core through **`ctypes`** (Python stdlib); it does **not** reimplement
Servirtium in Python.

> **Breaking from 1.x:** the old Python reimplementation (markdown
> reader/writer, the `http.server`/proxy record-replay server, recorder /
> replayer) and its API are gone, with no shim. The new API is below / in
> [docs/usage.md](docs/usage.md). The tape *format* is unchanged, so existing
> tapes replay as-is.

## Install

> **Note.** The `servirtium` package on PyPI is the **old 1.x** pure-Python
> implementation; the **2.0** layer documented here (the thin `ctypes` shell over
> the Aether core) is **not on PyPI yet**, so `pip install servirtium` does *not*
> give you the API below. Until 2.0 is published, install this package from
> source (two steps) and point it at a prebuilt native library.

Use Python 3.9+ in a virtual environment. The commands below are for a POSIX
shell; run them from the directory where you want to try Servirtium:

```sh
python3 -m venv .venv
. .venv/bin/activate
```

**1. Get the native library** (`libservirtium_vcr`) for your OS/arch. Download it
from the [GitHub releases](https://github.com/servirtium/servirtium-vcr/releases)
— one prebuilt shared library per platform, each with a `.sha256` — and (optionally)
verify it:

```sh
curl -fLO https://github.com/servirtium/servirtium-vcr/releases/download/v0.1.1/libservirtium_vcr-v0.1.1-linux-x86_64.so
curl -fLO https://github.com/servirtium/servirtium-vcr/releases/download/v0.1.1/libservirtium_vcr-v0.1.1-linux-x86_64.so.sha256
sha256sum -c libservirtium_vcr-v0.1.1-linux-x86_64.so.sha256   # -> OK
```

These URLs are for Linux x86_64; select the matching release assets for your
machine. Available platforms: linux (x86_64, arm64), macOS (x86_64, arm64), Windows
(x86_64, arm64), FreeBSD (x86_64). No Aether toolchain is needed to *use* the
library.

**2. Install this package from source** and tell it where the library is via
`SERVIRTIUM_VCR_LIB`:

```sh
python -m pip install "git+https://github.com/servirtium/servirtium-vcr.git#subdirectory=python"
export SERVIRTIUM_VCR_LIB="$PWD/libservirtium_vcr-v0.1.1-linux-x86_64.so"
# …then run your Python tests as usual; ctypes loads the library from that path.
```

(If you have the repo checked out, `python -m pip install /path/to/servirtium-vcr/python`
works the same way.) Keep the library path absolute so changing directories
doesn't affect loading. Continue with the local recording example below.

**Or build a wheel.** Nothing is published to PyPI yet for 2.0, so you can build
a self-contained wheel yourself — stage the downloaded lib at the fixed path,
run `python3 -m build --wheel`, then install the produced wheel:

```sh
# from the python/ binding directory, with the .so downloaded here:
mkdir -p servirtium/native && cp libservirtium_vcr-v0.1.1-linux-x86_64.so servirtium/native/libservirtium_vcr.so
python -m pip install build
python -m build --wheel
python -m pip install dist/*.whl
```

## Record and replay a local service

After installing, save this as `try_servirtium.py` and run
`python try_servirtium.py` in the same activated environment. It starts a tiny
Python HTTP service, records one request to `hello.md` in your current
directory, stops the service, and replays the response from the tape. It uses
only Servirtium and Python's standard library. Rerunning overwrites `hello.md`.

```python
from functools import partial
from http.server import HTTPServer, SimpleHTTPRequestHandler
from pathlib import Path
from tempfile import TemporaryDirectory
from threading import Thread
import json
import urllib.request

import servirtium


def get_greeting(vcr):
    with urllib.request.urlopen(
        f"{vcr.base_url}/hello.json?name=README", timeout=10
    ) as response:
        assert response.status == 200
        assert json.load(response) == {"message": "Hello, README!"}
    assert vcr.last_kind is servirtium.Outcome.OK, vcr.last_error


with TemporaryDirectory() as site:
    Path(site, "hello.json").write_text('{"message": "Hello, README!"}', encoding="utf-8")
    handler = partial(SimpleHTTPRequestHandler, directory=site)
    with HTTPServer(("127.0.0.1", 0), handler) as upstream:
        thread = Thread(target=upstream.serve_forever, daemon=True)
        thread.start()
        try:
            upstream_url = f"http://127.0.0.1:{upstream.server_port}"
            with servirtium.record("hello.md", upstream_url).port(0).start() as vcr:
                get_greeting(vcr)
            # Exiting the recording context writes hello.md.
        finally:
            upstream.shutdown()
            thread.join()

# The upstream is now stopped and its files removed. Only the tape remains.
with servirtium.playback("hello.md").port(0).start() as vcr:
    get_greeting(vcr)

print("Recorded hello.md and replayed it with the upstream stopped.")
```

Open `hello.md` to see the request method, path (including its query string),
headers, and response body. In your own tests, replace `upstream_url` with your
service's URL and point your application's HTTP client at `vcr.base_url`.

## Docs

- **[docs/usage.md](docs/usage.md)** — playback, record, redactions,
  unredactions, whole-tape normalization, header removal, notes, strict
  matching, static content, drift, diagnostics — with code.
- **[docs/features.md](docs/features.md)** — Servirtium capability matrix and
  what's covered by tests.
- **[docs/architecture.md](docs/architecture.md)** — how the FFI layering works
  (Python → ctypes → `embed.ae` → Aether VCR), the native loader, and the
  one-server-per-port (handle-keyed) concurrency model.
- **[docs/building.md](docs/building.md)** — building the native library and CI.
- **[MIGRATION.md](MIGRATION.md)** — the 1.x → 2.0 rewrite story.

## Concurrency: one server per port

The Aether VCR runs **one server per port**: N independent VCR servers can run
concurrently in one process, each keyed by its own handle, with config,
diagnostics, and tape scoped to that handle. So two
`servirtium.playback(...).start()` servers can be alive at once on different
ports without their cursors or mutations bleeding into each other (proven by
`core_tests/concurrent_probe.ae` and `test/test_concurrent.py`). See
[docs/architecture.md](docs/architecture.md#concurrency-one-server-per-port).

## Building from source

Maintainers can build libservirtium_vcr and run the Python tests through `aeb`.
From the repository root, with the toolchains described in
[the development setup](../docs/dev-setup.md):

```sh
aeb python/.tests.ae           # builds core/native/libservirtium_vcr.so, then the tests
```

To iterate on the Python layer against a prebuilt library:

```sh
# From the repository root, in an activated virtual environment:
python -m pip install -e './python[dev]'
export SERVIRTIUM_VCR_LIB="/absolute/path/to/libservirtium_vcr.so"
python -m pytest python/test
```

Details in [docs/building.md](docs/building.md).
