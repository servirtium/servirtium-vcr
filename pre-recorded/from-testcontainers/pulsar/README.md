# pulsar

Recordings of the Pulsar admin REST API, from the real software at the pinned image `?`.

## Who it is for

Anyone testing a client of this service who wants recorded responses to replay in any language with no container, or a stand-in for it in another test suite.

## Fidelity

These tapes are the real software, at one version and in its default configuration as the test starts it (`?`). Versions and configuration change responses, so re-record against the version and configuration you run before relying on details.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`answers_on_the_admin_api.md`](answers_on_the_admin_api.md) | GET /admin/v2/clusters, PUT /admin/v2/namespaces/public/tcae (204, no body), GET /admin/v2/namespaces/public. | [test_pulsar.ae#L66](test_pulsar.ae#L66) |

## Replaying from another language

The test file's `PORTING` comments ([test_pulsar.ae](test_pulsar.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- The `pulsar://` broker protocol is never exercised.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test pulsar/test_pulsar.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test pulsar/test_pulsar.ae   # live container, Servirtium in the middle, tapes written to pulsar/
TCAE_VCR=check    ae test pulsar/test_pulsar.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test pulsar/test_pulsar.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: Apache-2.0 (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
