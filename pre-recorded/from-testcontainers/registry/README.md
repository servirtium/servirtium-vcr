# registry

Recordings of the Docker/OCI registry HTTP API (`/v2/`), from the real software at the pinned image `?`.

## Who it is for

Anyone testing a client of this service who wants recorded responses to replay in any language with no container, or a stand-in for it in another test suite.

## Fidelity

These tapes are the real software, at one version and in its default configuration as the test starts it (`?`). Versions and configuration change responses, so re-record against the version and configuration you run before relying on details.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`answers_v2_and_lists_an_empty_catalog.md`](answers_v2_and_lists_an_empty_catalog.md) | GET /v2/ and GET /v2/_catalog (200). | [test_registry.ae#L134](test_registry.ae#L134) |
| [`requires_basic_auth_with_an_htpasswd_file.md`](requires_basic_auth_with_an_htpasswd_file.md) | GET /v2/_catalog: 401 without credentials, 401 with a wrong password, 200 with the right one (htpasswd file). | [test_registry.ae#L157](test_registry.ae#L157) |
| [`requires_basic_auth_with_htpasswd_text.md`](requires_basic_auth_with_htpasswd_text.md) | The same 401 / 401 / 200 sequence with credentials supplied as htpasswd text. | [test_registry.ae#L174](test_registry.ae#L174) |
| [`tags_pushes_finds_and_deletes_an_image.md`](tags_pushes_finds_and_deletes_an_image.md) | GET /v2/_catalog (200) after an image was pushed through the container engine. | [test_registry.ae#L220](test_registry.ae#L220) |

## Replaying from another language

The test file's `PORTING` comments ([test_registry.ae](test_registry.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- Pulling, tagging and pushing go from the engine to the registry and are not on any tape; the push case's one recorded call is the catalog GET after the push.
- Basic credentials are on the tapes as `Basic REDACTED[<label>]` (a literal swap); the wrong password is a real refusal case. The htpasswd files are in `testdata/`.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test registry/test_registry.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test registry/test_registry.ae   # live container, Servirtium in the middle, tapes written to registry/
TCAE_VCR=check    ae test registry/test_registry.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test registry/test_registry.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: Apache-2.0 (+ Alpine's packages: MIT, GPL-2.0 BusyBox and others) (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
