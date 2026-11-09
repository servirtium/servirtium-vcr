# papercutsmtp

Recordings of the Papercut SMTP web UI, from the real software at the pinned image `?`.

## Who it is for

Anyone testing a client of this service who wants recorded responses to replay in any language with no container, or a stand-in for it in another test suite.

## Fidelity

These tapes are the real software, at one version and in its default configuration as the test starts it (`?`). Versions and configuration change responses, so re-record against the version and configuration you run before relying on details. The image tag floats, so a re-record can differ from the tapes.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`serves_the_ui_and_greets_over_smtp.md`](serves_the_ui_and_greets_over_smtp.md) | GET / (the web UI, 200). | [test_papercutsmtp.ae#L97](test_papercutsmtp.ae#L97) |

## Replaying from another language

The test file's `PORTING` comments ([test_papercutsmtp.ae](test_papercutsmtp.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- Only the web UI GET is on the tape; the SMTP greeting is a TCP exchange that runs live only.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test papercutsmtp/test_papercutsmtp.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test papercutsmtp/test_papercutsmtp.ae   # live container, Servirtium in the middle, tapes written to papercutsmtp/
TCAE_VCR=check    ae test papercutsmtp/test_papercutsmtp.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test papercutsmtp/test_papercutsmtp.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: Apache-2.0 (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
