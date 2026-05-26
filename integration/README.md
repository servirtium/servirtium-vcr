# Browser-driven integration test

A real-browser end-to-end test of the Servirtium VCR engine: headless Chrome
(via Selenium) drives a web page **served by the VCR**, whose same-origin XHR
the VCR **replays from a tape**. Because the page and the API share the VCR's
origin, there's no CORS — the trick that lets a browser test suite run against
a Servirtium recording.

The engine is shared across all 12 bindings, so this proves the browser-facing
behaviour for *all* of them; it's hosted here via the Python binding (any
binding would do).

## What's proven now (`browser_smoke.py`, wired as `.tests.ae`)

1. `servirtium.playback(tape).static_content("/ui", static/).start()` — the VCR
   serves `static/index.html` **and** holds a tape for `GET /ok`.
2. Selenium loads `<vcr>/ui/index.html` in real Chrome; the page does
   `fetch('/ok')` (same origin → the VCR) and renders the replayed body.
3. Assert the DOM shows the recorded body. `aeb integration/.tests.ae` → green.

Needs a Chrome/Chromium browser + Python `selenium` (Selenium Manager
auto-fetches the matching chromedriver).

### Finding: browsers make incidental requests
Real Chrome also requests `/favicon.ico`, which hits the VCR with no matching
tape entry (shows up as `TAPE_EXHAUSTED`). So the test gates on the **rendered
DOM**, not on the VCR's global `last_kind`. The full suite below must likewise
tolerate stray browser requests (serve a favicon, or don't strict-match them).

## The full TodoBackend Mocha suite (next step — same pattern)

The TodoBackend Mocha spec (`../../todo-backend-js-spec`, 17 CRUD `it`s) is the
real believability showcase. It's the same shape as the smoke:

1. **Record once** — run a VCR in record mode forwarding to a real TodoBackend
   (`../../todobackend-for-compatibility-kit`, http4k) while the browser drives
   the Mocha spec → captures the CRUD tape. (This is the one remaining
   dependency: standing up the http4k backend to record against.)
2. **Replay (offline, committed)** — mount the Mocha spec
   (`index.html` + `js/`) as static content on a playback VCR, point Mocha at
   the VCR root (`?<vcr-base>`), load it in Chrome, wait for `mocha.run()` to
   finish, scrape the pass/fail count from the DOM. No network.

A green Mocha run in a real browser, across the same engine every language
binding wraps, is the cross-binding behavioural conformance — the
"believability" proof.
