#!/usr/bin/env python3
"""TodoBackend browser integration test — PLAYBACK phase (the CI artifact).

Replays the committed CRUD tape through a Servirtium VCR and runs the real
TodoBackend Mocha spec against it in headless Chrome. No SUT, no network — the
whole CRUD conversation comes off the tape. This is the offline test wired into
aeb (integration/todobackend/.tests.ae); record.sh regenerates the tape.

Run via the .tests.ae node, or directly:
  SERVIRTIUM_VCR_LIB=../../core/native/libservirtium_vcr.so \
  PYTHONPATH=../../python python3 playback_test.py
"""
import sys

import servirtium

from browser import SUITE_DIR, TAPE, VCR_PORT, run_suite


def main() -> int:
    vcr = (
        servirtium.playback(str(TAPE))
        .static_content("/suite", str(SUITE_DIR))
        .untaped("/favicon.ico")
        .port(VCR_PORT)
        .start()
    )
    try:
        passes, failures, msgs = run_suite(vcr.base_url)
        print(f"mocha (playback): {passes} passed, {failures} failed")
        for m in msgs:
            print("  FAIL:", m)
        ok = failures == 0 and passes > 0
        print("TODOBACKEND_PLAYBACK_OK" if ok else "TODOBACKEND_PLAYBACK_FAIL")
        return 0 if ok else 1
    finally:
        vcr.close()


if __name__ == "__main__":
    sys.exit(main())
