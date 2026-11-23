#!/usr/bin/env python3
"""TodoBackend browser integration test — RECORD phase (manual, on-demand).

VCR in record mode, forwarding to the live Kotlin/http4k SUT (TODOBACKEND_UPSTREAM).
The Mocha spec runs in headless Chrome against the VCR; every CRUD call is
forwarded upstream and recorded, then written to the tape on commit. The suite
must pass for the recording to be considered good.

Driven by record.sh, which brings the SUT up in a container (started with its
baseUrl set to the VCR origin, so the todo URLs it returns point back at the
VCR) and tears it down afterward. Not an aeb node — recording is on-demand and
must never run during a normal build (it needs the container + sibling source).
"""
import os
import sys

import servirtium

from browser import SUITE_DIR, TAPE, VCR_PORT, run_suite


def main() -> int:
    upstream = os.environ.get("TODOBACKEND_UPSTREAM")
    if not upstream:
        print("record.py: set TODOBACKEND_UPSTREAM (e.g. http://127.0.0.1:54321)")
        return 2

    vcr = (
        servirtium.record(str(TAPE), upstream)
        .static_content("/suite", str(SUITE_DIR))
        .untaped("/favicon.ico")
        .redact_whole_tape(r"Date: .+ GMT", "Date: <DATE>")
        .port(VCR_PORT)
        .start()
    )
    try:
        passes, failures, msgs = run_suite(vcr.base_url)
    except BaseException:
        vcr.discard()
        raise
    print(f"mocha (record): {passes} passed, {failures} failed")
    for m in msgs:
        print("  FAIL:", m)
    if failures or passes == 0:
        vcr.discard()
        print("record: suite did not pass against the live SUT; no tape written")
        return 1
    vcr.commit()  # writes the tape to TAPE

    print(f"record: wrote {TAPE}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
