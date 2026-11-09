# timeplus

Recordings of the timeplusd HTTP (`/timeplusd/ping` and a ClickHouse-style query interface), from the real software at the pinned image `?`.

**The tapes are not shipped.** This directory has the test and the recorder only. The vendor's terms could reasonably be read as forbidding what publishing recordings would amount to, so we leave them out. See [LICENCE-NOTE.md](LICENCE-NOTE.md) for the clause and the commands, and record your own with `TCAE_VCR=record` (below); keep them on your machine, they are under the terms you accepted by running the image. The case table below lists the tapes that recording writes.

## Who it is for

Anyone testing a client of this service who wants to record responses once and replay them in any language with no container, or as a stand-in for it in another test suite.

## Fidelity

These tapes are the real software, at one version and in its default configuration as the test starts it (`?`). Versions and configuration change responses, so re-record against the version and configuration you run before relying on details.

## Cases

Each row is one tape that recording writes; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records it.

| Tape | What it does | Test |
|---|---|---|
| `serves_http.md` | GET /timeplusd/ping, then `SELECT 1` posted with `default_format=TabSeparated`. | [test_timeplus.ae#L76](test_timeplus.ae#L76) |

## Replaying from another language

The test file's `PORTING` comments ([test_timeplus.ae](test_timeplus.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- The query is the POST body (plain SQL).
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test timeplus/test_timeplus.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test timeplus/test_timeplus.ae   # live container, Servirtium in the middle, tapes written to timeplus/
TCAE_VCR=check    ae test timeplus/test_timeplus.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test timeplus/test_timeplus.ae   # no container, no engine: replay the tapes (skips with a notice if you have none)
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: none shipped; closed-source Timeplus Enterprise engine (not the Apache-2.0 Proton) (class DECISION). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE). This suite's tapes are not shipped: see [LICENCE-NOTE.md](LICENCE-NOTE.md).
