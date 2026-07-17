"""Third-party consumer example for the *installed* servirtium wheel.

This is deliberately NOT a test inside the source tree. It is what a real
downstream user gets after ``pip install servirtium``: it imports the package
from site-packages (asserting it is NOT the in-repo ``python/servirtium/``),
finds the native engine ``.so`` that shipped *inside* the wheel, and replays
the canonical Servirtium tape — proving the packaged artifact is self-contained
and usable with no ``SERVIRTIUM_VCR_LIB`` and no access to this repo.

Two modes, each meant to run in its OWN fresh process (the engine loads once
per process, so mixing them would not honestly test discovery):

    python consumer_example.py explicit    # first-class native_lib= argument
    python consumer_example.py discovery    # zero-config: wheel finds its .so

Exit code 0 = pass.
"""

from __future__ import annotations

import os
import socket
import sys
import tempfile
import threading
import urllib.request

import servirtium

TAPE = os.path.join(os.path.dirname(os.path.abspath(__file__)), "tapes", "single_get.md")

# Volatile request headers an HTTP client injects, and volatile response headers
# a live upstream adds — both stripped at record time so the recorded tape
# matches the canonical golden (empty request headers, response headers = just
# Content-Type). Removing a header that was not present is a no-op.
_REQ_STRIP = [
    "Host", "User-Agent", "Accept", "Accept-Encoding",
    "Accept-Language", "Connection", "Content-Length", "Content-Type",
]
_RESP_STRIP = ["Content-Length", "Connection", "Date", "Server", "Transfer-Encoding"]


def _fail(msg: str) -> None:
    print(f"FAIL: {msg}")
    raise SystemExit(1)


def _assert_installed_not_source() -> None:
    """The whole point: we must be running the INSTALLED package, not the repo."""
    pkg_dir = os.path.dirname(os.path.abspath(servirtium.__file__))
    if "site-packages" not in pkg_dir:
        _fail(
            "servirtium was imported from the source tree, not an installed "
            f"wheel: {pkg_dir}. Run this from the consumer venv, outside python/."
        )
    print(f"ok: consuming installed package at {pkg_dir}")


def _bundled_so() -> str:
    """The engine .so that shipped inside the installed wheel."""
    pkg_dir = os.path.dirname(os.path.abspath(servirtium.__file__))
    so = os.path.join(pkg_dir, "native", "libservirtium_vcr.so")
    if not os.path.isfile(so):
        _fail(f"bundled engine .so missing from the installed wheel: {so}")
    return so


def _play(builder) -> None:
    with builder.port(0).start() as vcr:
        body = urllib.request.urlopen(vcr.base_url + "/ok").read().decode()
        if body != "ok-body":
            _fail(f"expected body 'ok-body', got {body!r}")
        if vcr.last_kind is not servirtium.Outcome.OK:
            _fail(f"expected Outcome.OK, got {vcr.last_kind!r}: {vcr.last_error}")


def _raw_upstream() -> tuple[socket.socket, int]:
    """A tiny raw-socket HTTP upstream that answers any GET with
    ``200 text/plain`` / ``ok-body`` — a stand-in for a live service to record
    against. Deliberately NOT a second VCR server (some bindings serialize VCR
    servers process-wide), so recording needs only the one record server."""
    srv = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    srv.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    srv.bind(("127.0.0.1", 0))
    srv.listen(8)
    port = srv.getsockname()[1]

    def serve() -> None:
        while True:
            try:
                conn, _ = srv.accept()
            except OSError:
                return
            with conn:
                conn.recv(65536)
                body = b"ok-body"
                conn.sendall(
                    b"HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n"
                    b"Content-Length: %d\r\nConnection: close\r\n\r\n%s" % (len(body), body)
                )

    threading.Thread(target=serve, daemon=True).start()
    return srv, port


def _record_and_compare() -> None:
    """Prove the INSTALLED package's *recorder* emits a byte-identical canonical
    tape — not just that playback works. We record against a tiny live HTTP
    upstream (discovering the bundled .so with zero config, exactly as a consumer
    would), strip the volatile request/response headers, and assert the freshly
    recorded tape is byte-for-byte the canonical golden. Then — with the record
    server already stopped — we replay the recording to prove recorder and
    player round-trip."""
    out_dir = tempfile.mkdtemp(prefix="servirtium-consumer-record-")
    out_tape = os.path.join(out_dir, "recorded.md")

    srv, up_port = _raw_upstream()
    try:
        rec = servirtium.record(out_tape, f"http://127.0.0.1:{up_port}")
        for h in _REQ_STRIP:
            rec = rec.remove_header(servirtium.Field.REQUEST_HEADERS, h)
        for h in _RESP_STRIP:
            rec = rec.remove_header(servirtium.Field.RESPONSE_HEADERS, h)
        with rec.port(0).start() as vcr:
            got = urllib.request.urlopen(vcr.base_url + "/ok").read().decode()
            if got != "ok-body":
                _fail(f"record: upstream round-trip returned {got!r}")
    finally:
        srv.close()

    with open(TAPE, "rb") as f:
        golden = f.read()
    with open(out_tape, "rb") as f:
        recorded = f.read()
    if recorded != golden:
        _fail(
            "recorded tape is NOT byte-identical to the canonical golden:\n"
            f"  golden  : {golden!r}\n  recorded: {recorded!r}"
        )
    print(f"ok: recorder emitted a byte-identical canonical tape ({len(recorded)} bytes)")

    with servirtium.playback(out_tape).port(0).start() as v2:
        body = urllib.request.urlopen(v2.base_url + "/ok").read().decode()
        if body != "ok-body" or v2.last_kind is not servirtium.Outcome.OK:
            _fail(f"record: round-trip replay failed ({body!r}, {v2.last_kind!r})")
    print("ok: recorder/player round-trip (recorded tape replays to ok-body)")


def main(mode: str) -> int:
    # No env override — a real consumer sets nothing.
    os.environ.pop("SERVIRTIUM_VCR_LIB", None)

    _assert_installed_not_source()

    if mode == "explicit":
        # First-class native_lib= pointed at the wheel's own bundled .so.
        so = _bundled_so()
        _play(servirtium.playback(TAPE, native_lib=so))
        print(f"ok: explicit native_lib= playback (bundled .so {so})")
    elif mode == "discovery":
        # No native_lib, no env var. The installed wheel must find its own
        # bundled .so with zero configuration.
        _play(servirtium.playback(TAPE))
        print("ok: discovery playback (zero-config bundled .so)")
    elif mode == "record":
        # Prove the installed wheel's RECORDER produces the canonical tape
        # byte-for-byte (and that recorder+player round-trip).
        _record_and_compare()
        print("PASS[record]: installed wheel recorded a byte-identical canonical tape")
        return 0
    else:
        _fail(f"unknown mode {mode!r}; expected 'explicit', 'discovery' or 'record'")

    print(f"PASS[{mode}]: consumer replayed the canonical tape from the installed wheel")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1] if len(sys.argv) > 1 else "explicit"))
