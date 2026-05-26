# TodoBackend browser integration test

The headline integration test: the canonical [TodoBackend JS spec][spec] (a
real Mocha/Chai CRUD suite) running in **real headless Chrome via Selenium**,
driving a full create/read/update/delete conversation against a **Servirtium
VCR** — first recorded against a live Kotlin/[http4k] backend, then replayed
**offline** from a committed tape with no backend at all.

This is the believability proof: a third-party browser test suite, unmodified,
passes against nothing but a recorded markdown tape — and each language binding
demonstrates it *in its own language*, driving Chrome with that language's own
Selenium client.

## Leaves (name the one you want)

aeb is a DAG runner: you name the leaf, it builds the deps and execs it. Per
binding there are two leaves:

```sh
# Replay the committed tape, run the Mocha suite in Chrome — offline, no SUT:
aeb integration/todobackend/.python_playback.ae
aeb integration/todobackend/.ruby_playback.ae        # … java, javascript, …

# Re-record the tape: bring the Kotlin SUT up in a container, drive the suite
# through a record-mode VCR, flush the tape, tear the container down:
aeb integration/todobackend/.python_record.ae
```

- **`.{lang}_playback.ae`** — offline. Replays `tapes/todobackend_crud.md`
  through that binding's VCR; the binding's own Selenium client runs the suite
  in Chrome and asserts 16/16. This is the everyday test.
- **`.{lang}_record.ae`** — container lifecycle inline in Aether (modelled on
  aeb's [container-lifecycle example][cl]): UP the SUT → record → DOWN
  unconditionally, then fail iff the recording failed. Run on demand.

## Layout

```
suite/                 vendored todo-backend-js-spec (Mocha/Chai) + runner.html
                       (our runner.js adds a Selenium-readable done-signal)
tapes/todobackend_crud.md   the committed CRUD tape (43 interactions)
Containerfile.sut      builds the Kotlin/http4k SUT image (gradle7.5.1/JDK11)
<lang>/                per-binding browser harness + record/playback programs
.<lang>_playback.ae    } the leaves
.<lang>_record.ae      }
```

## Design notes

- **Same-origin serving.** The suite is served from the VCR's own
  `static_content("/suite", …)` mount, so the browser's API calls to the VCR
  root are same-origin — no CORS, no preflight `OPTIONS` cluttering the tape.
- **`untaped("/favicon.ico")`.** A real browser fetches the favicon; it's marked
  untaped so the VCR 404s it without consuming the playback cursor.
- **Fixed port 51080.** Recorded responses embed absolute todo URLs
  (`http://127.0.0.1:51080/<uuid>`) that the spec follows, and the VCR replays
  response bodies verbatim — so every binding's playback binds the same port the
  tape was recorded against (they therefore run one-at-a-time, not concurrently).
  The SUT is started with its `baseUrl` set to the VCR origin so those URLs
  point back at the VCR.
- **Determinism.** The VCR records an *ordered* conversation and replays by
  sequential cursor (method + path), so the request order must be identical on
  replay. The spec is response-driven and Mocha runs serially, so it is —
  except the upstream spec fired two `Q.all([...])` batches of concurrent
  requests, whose arrival order isn't stable and made replay flaky. Our vendored
  `suite/js/specs.js` serializes those two sites (same coverage, one request
  after another); replay is then deterministic. Todo IDs are server-issued
  UUIDs, but the browser reuses each recorded response's UUID for its follow-up
  requests, so the sequence still lines up.
- **Not byte-stable across re-records.** Two recordings differ (the SUT stamps a
  fresh `Date` response header and mints new UUIDs each run), so the committed
  tape isn't reproducible to the byte — fine for replay (within-tape consistency
  is what matters), but drift-detection on re-record would always trip. Stable
  tapes would need `remove_header(RESPONSE_HEADERS, "Date")` plus regex
  redaction of the UUIDs (the latter pending a regex story — see core/TODO.md).

Re-recording needs `podman`/`docker` and the [`todobackend-for-compatibility-kit`][sut]
Kotlin source as a sibling checkout (or `TODOBACKEND_SRC=/path`); the record
leaf builds `todobackend-sut:latest` from it via [`Containerfile.sut`](Containerfile.sut)
(in-container gradle 7.5.1/JDK 11, so it builds regardless of the host JDK).

The vendored spec under `suite/` is the upstream [todo-backend-js-spec][spec]
assets verbatim, driven by `suite/js/runner.js` + `suite/runner.html` (which add
the `window.__mochaDone` / `__mochaPasses` / `__mochaFailures` signal Selenium
polls).

[spec]: https://github.com/TodoBackend/todo-backend-js-spec
[sut]: https://github.com/servirtium/todobackend-for-compatibility-kit
[http4k]: https://www.http4k.org/
[cl]: https://github.com/aether-lang-org/aeb/blob/main/docs/examples/container-lifecycle/.up_poke_down.ae
