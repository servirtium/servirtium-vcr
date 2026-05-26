# TodoBackend browser integration test

The headline integration test: the canonical [TodoBackend JS spec][spec] (a
real Mocha/Chai CRUD suite) running in **real headless Chrome via Selenium**,
driving a full create/read/update/delete conversation against a **Servirtium
VCR** — first recorded against a live Kotlin/[http4k] backend, then replayed
**offline** from a committed tape with no backend at all.

This is the believability proof: a third-party browser test suite, unmodified,
passes against nothing but a recorded markdown tape.

## Two phases

```
record (manual, needs container)        playback (offline, the aeb test)
┌────────────┐  forward  ┌─────────┐    ┌────────────┐   replay   ┌──────────┐
│ Chrome +   │──────────▶│  VCR    │──▶ │ Chrome +   │──────────▶ │   VCR    │
│ Mocha spec │           │ record  │    │ Mocha spec │            │ playback │
└────────────┘           └────┬────┘    └────────────┘            └────┬─────┘
                              ▼ forward                                 ▼ from
                       ┌──────────────┐                          tapes/todobackend_crud.md
                       │ http4k SUT   │
                       │ (container)  │
                       └──────────────┘
```

- **Playback** — `playback_test.py`, wired into aeb as [`.tests.ae`](.tests.ae).
  Replays `tapes/todobackend_crud.md`. No SUT, no network. Runs in CI.
- **Record** — `record.sh` (manual). Brings the SUT up in a container, runs the
  suite through a record-mode VCR, flushes the tape. Regenerate when the spec
  or backend changes.

## Design notes

- **Same-origin serving.** The suite is served from the VCR's own
  `static_content("/suite", …)` mount, so the browser's API calls to the VCR
  root are same-origin — no CORS, no preflight `OPTIONS` cluttering the tape.
- **`untaped("/favicon.ico")`.** A real browser fetches the favicon; it's marked
  untaped so the VCR 404s it without consuming the playback cursor.
- **Fixed port (`VCR_PORT` in `browser.py`).** Recorded responses embed absolute
  todo URLs (`http://127.0.0.1:<port>/<uuid>`) that the spec follows, and the
  VCR replays response bodies verbatim — so playback binds the same port it was
  recorded against. The SUT is started with its `baseUrl` set to the VCR origin
  so those URLs point back at the VCR.
- **Determinism.** The spec is response-driven and Mocha runs serially, so the
  request sequence is identical on replay even though todo IDs are server-issued
  UUIDs — the browser reuses the UUIDs from each recorded response. Default
  cursor matching (method + path, in order) is enough.

## Re-recording

```sh
./record.sh        # builds todobackend-sut:latest from the sibling source if absent
```

Needs `podman`/`docker` and the [`todobackend-for-compatibility-kit`][sut] Kotlin
source as a sibling checkout (or `TODOBACKEND_SRC=/path`). The image is built via
[`Containerfile.sut`](Containerfile.sut) (the project's gradle 7.5.1/JDK 11
toolchain, so it builds in-container regardless of the host JDK).

The vendored spec under `suite/` is the upstream [todo-backend-js-spec][spec]
assets verbatim, driven by our `suite/js/runner.js` + `suite/runner.html` (which
add a Selenium-readable completion signal).

[spec]: https://github.com/TodoBackend/todo-backend-js-spec
[sut]: https://github.com/servirtium/todobackend-for-compatibility-kit
[http4k]: https://www.http4k.org/
