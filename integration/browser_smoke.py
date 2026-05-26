#!/usr/bin/env python3
"""Browser ↔ Servirtium VCR integration smoke (real Chrome via Selenium).

Proves the core of the browser-driven Servirtium test model: a Servirtium VCR
both *serves a web page* (static-content mount) and *replays the page's XHR*
from a tape — same-origin, so no CORS. This is the plumbing the full
TodoBackend Mocha suite rides on. The engine is shared, so hosting it from the
Python binding proves the browser-facing behaviour for every binding.

Run via integration/.tests.ae (sets SERVIRTIUM_VCR_LIB + PYTHONPATH), or:
  SERVIRTIUM_VCR_LIB=../core/native/libservirtium_vcr.so \
  PYTHONPATH=../python python3 browser_smoke.py
"""
import os
import sys
import pathlib

import servirtium
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.support.ui import WebDriverWait

HERE = pathlib.Path(__file__).resolve().parent


def main() -> int:
    vcr = (
        servirtium.playback(str(HERE / "tapes" / "ok.md"))
        .static_content("/ui", str(HERE / "static"))
        .port(0)
        .start()
    )
    try:
        url = f"{vcr.base_url}/ui/index.html"
        opts = Options()
        for a in ("--headless=new", "--no-sandbox", "--disable-dev-shm-usage", "--disable-gpu"):
            opts.add_argument(a)
        driver = webdriver.Chrome(options=opts)
        try:
            driver.get(url)
            WebDriverWait(driver, 10).until(
                lambda d: d.find_element("id", "result").text != "pending"
            )
            result = driver.find_element("id", "result").text
        finally:
            driver.quit()

        # Gate on what the browser actually rendered from the replayed XHR.
        # NOT on global last_kind: a real browser makes incidental requests
        # (e.g. /favicon.ico) that hit the VCR with no matching tape entry —
        # expected, and something the full suite's matching must tolerate.
        print(f"browser saw: {result!r}  (vcr lastKind={vcr.last_kind.name})")
        ok = result == "replayed:ok-body"
        print("BROWSER_VCR_OK" if ok else "BROWSER_VCR_FAIL")
        return 0 if ok else 1
    finally:
        vcr.close()


if __name__ == "__main__":
    sys.exit(main())
