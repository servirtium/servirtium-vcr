"""Run the vendored TodoBackend Mocha spec in real headless Chrome against a
Servirtium VCR, and report the result.

Shared by both phases:
  * record.py   — VCR in record mode, forwarding to the live Kotlin SUT
  * playback_test.py — VCR replaying the committed tape, no SUT

The suite is served *same-origin* from the VCR's own static-content mount
(`/suite`), so the browser's API calls to the VCR root are same-origin — no
CORS, no preflight OPTIONS cluttering the tape. /favicon.ico is marked untaped.

Fixed port: the recorded responses embed absolute todo URLs
(`http://127.0.0.1:<PORT>/<uuid>`) that the spec follows, and the VCR replays
response bodies verbatim — so playback MUST bind the same port the tape was
recorded against. Hence a fixed VCR_PORT for both phases rather than port 0.
"""
import pathlib

from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.support.ui import WebDriverWait

HERE = pathlib.Path(__file__).resolve().parent
SUITE_DIR = HERE / "suite"
TAPE = HERE / "tapes" / "todobackend_crud.md"

# Both phases bind here (see module docstring on why it can't be dynamic).
VCR_PORT = 51080


def run_suite(vcr_base_url: str, api_root: str | None = None, timeout: int = 120):
    """Drive runner.html?<api_root> in headless Chrome until Mocha finishes.

    Returns (passes, failures, fail_messages). api_root defaults to the VCR
    root (same origin as the served suite)."""
    if api_root is None:
        api_root = vcr_base_url
    url = f"{vcr_base_url}/suite/runner.html?{api_root}"

    opts = Options()
    for a in ("--headless=new", "--no-sandbox", "--disable-dev-shm-usage", "--disable-gpu"):
        opts.add_argument(a)
    driver = webdriver.Chrome(options=opts)
    try:
        driver.get(url)
        WebDriverWait(driver, timeout).until(
            lambda d: d.execute_script("return window.__mochaDone === true")
        )
        passes = driver.execute_script("return window.__mochaPasses")
        failures = driver.execute_script("return window.__mochaFailures")
        msgs = driver.execute_script("return window.__mochaFailMsgs") or []
        return passes, failures, msgs
    finally:
        driver.quit()
