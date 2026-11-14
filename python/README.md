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

## Getting it

The `servirtium` name on PyPI is the **old 1.x** pure-Python package, and the 2.0 layer
documented here is **not on PyPI**: `pip install servirtium` gives you something else. Install
the `python/` subdirectory of the release tag straight from GitHub (no `git` needed), and
fetch the native library from the same release; the package finds it through
`SERVIRTIUM_VCR_LIB`. Python 3.9+, run in your own project directory:

```sh
set -eu
TAG=v2.0.0-alpha.18                      # a release tag of servirtium-vcr; nothing else to edit
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

# 2. the package, in a virtual environment (PEP 440 spelling of the tag: 2.0.0a18)
python3 -m venv .venv && . .venv/bin/activate
python -m pip install "https://github.com/servirtium/servirtium-vcr/archive/refs/tags/$TAG.tar.gz#subdirectory=python"

# 3. check it: replay a recorded tape
export SERVIRTIUM_VCR_LIB="$LIBDIR/libservirtium_vcr.$EXT"      # set this wherever your tests run
mkdir -p tapes
curl -fsSL -o tapes/single_get.md $RAW/python/example/tapes/single_get.md
python - <<'PY'
import urllib.request, servirtium
with servirtium.playback("tapes/single_get.md").port(0).start() as vcr:
    body = urllib.request.urlopen(vcr.base_url + "/ok").read().decode().strip()
    print(body, "(clean match)" if vcr.last_kind is servirtium.Outcome.OK else "(MISMATCH)")   # -> ok-body (clean match)
PY
```

The dependency line, for `requirements.txt` / `pyproject.toml`:
`servirtium @ https://github.com/servirtium/servirtium-vcr/archive/refs/tags/v2.0.0-alpha.18.tar.gz#subdirectory=python`.
The future registry form is `servirtium==2.0.0a18` (pip also accepts `2.0.0-alpha.18`), and it
will not resolve to this package until 2.0 is published.

### Notes for coding agents

- Do **not** `pip install servirtium`: it installs the unrelated 1.x package and
  `import servirtium` then has no `playback` (`AttributeError`). Check `servirtium.__version__`
  (`2.0.0a18`).
- The version in the install URL and the library must both be the same tag, and the library
  must be at least as new as the Python source: a library older than the binding fails at the
  first call with an error naming a missing `aether_vcr_embed_...` symbol.
- `OSError: could not load native VCR library 'libservirtium_vcr.so'` means
  `SERVIRTIUM_VCR_LIB` is unset in the process that runs the tests (an IDE or CI step does not
  inherit your shell), or it is not an absolute path to an existing file. It can also be the wrong
  libc/arch: `invalid ELF header` / `wrong ELF class` in the message; pick `-musl` on Alpine.
  `native_lib="/abs/path"` on `servirtium.playback(...)` is the in-code alternative.
- Do not copy the `.so` into `site-packages/servirtium/native/` by hand: it is lost on
  reinstall. Do not commit it.
- Do not use `pip install -e` against a clone without also setting `SERVIRTIUM_VCR_LIB`;
  a clone has no `native/` directory.
- Windows: use the `.dll` asset, and `SERVIRTIUM_VCR_LIB` with its full path.

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
  unredactions, volatile values, header removal, notes, strict
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
