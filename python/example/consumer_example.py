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
import sys
import urllib.request

import servirtium

TAPE = os.path.join(os.path.dirname(os.path.abspath(__file__)), "tapes", "single_get.md")


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
    else:
        _fail(f"unknown mode {mode!r}; expected 'explicit' or 'discovery'")

    print(f"PASS[{mode}]: consumer replayed the canonical tape from the installed wheel")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1] if len(sys.argv) > 1 else "explicit"))
