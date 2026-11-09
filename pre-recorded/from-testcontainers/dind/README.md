# dind

Recordings of the Docker Engine API (2375) of a docker:dind daemon, from the real software at the pinned image `?`.

## Who it is for

Anyone testing a client of this service who wants recorded responses to replay in any language with no container, or a stand-in for it in another test suite.

## Fidelity

These tapes are the real software, at one version and in its default configuration as the test starts it (`?`). Versions and configuration change responses, so re-record against the version and configuration you run before relying on details.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`reports_its_version_health_and_info.md`](reports_its_version_health_and_info.md) | Ping, version and info. | [test_dind.ae#L365](test_dind.ae#L365) |
| [`pulls_lists_inspects_tags_and_untags_an_image.md`](pulls_lists_inspects_tags_and_untags_an_image.md) | Pull (of an image already present), list, inspect, tag, untag. | [test_dind.ae#L408](test_dind.ae#L408) |
| [`creates_starts_waits_logs_and_removes_a_container.md`](creates_starts_waits_logs_and_removes_a_container.md) | Create, start, wait, read the logs of and remove a container. | [test_dind.ae#L459](test_dind.ae#L459) |
| [`controls_a_long_running_container.md`](controls_a_long_running_container.md) | Start, inspect, pause, rename, restart, stop and force-remove a running container. | [test_dind.ae#L509](test_dind.ae#L509) |
| [`creates_connects_and_removes_a_network.md`](creates_connects_and_removes_a_network.md) | Create, inspect, connect to and remove a network. | [test_dind.ae#L570](test_dind.ae#L570) |
| [`creates_inspects_and_removes_a_volume.md`](creates_inspects_and_removes_a_volume.md) | Create, inspect and remove a volume, and the refusal to remove one in use. | [test_dind.ae#L625](test_dind.ae#L625) |
| [`answers_the_representative_error_statuses.md`](answers_the_representative_error_statuses.md) | Representative error statuses. | [test_dind.ae#L674](test_dind.ae#L674) |

## Replaying from another language

The test file's `PORTING` comments ([test_dind.ae](test_dind.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- No login: the daemon's plain-TCP socket has no credential. A daemon behind TLS client certificates or a registry login is a different set-up.
- Ids Docker makes up are normalized as `{{docker-id-N}}`; clock fields and host-specific figures are collapsed. Containers are addressed by name where the CLI allows.
- The tapes do not record a first, downloading image pull (its progress stream varies); the images case records a pull of an image already present, ending `Image is up to date`.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test dind/test_dind.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test dind/test_dind.ae   # live container, Servirtium in the middle, tapes written to dind/
TCAE_VCR=check    ae test dind/test_dind.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test dind/test_dind.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: Apache-2.0 (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
