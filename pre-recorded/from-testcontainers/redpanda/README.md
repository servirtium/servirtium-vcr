# redpanda

Recordings of the Redpanda Admin API and Schema Registry, from the real software at the pinned image `?`.

## Who it is for

Anyone testing a client of this service who wants recorded responses to replay in any language with no container, or a stand-in for it in another test suite.

## Fidelity

These tapes are the real software, at one version and in its default configuration as the test starts it (`?`). Versions and configuration change responses, so re-record against the version and configuration you run before relying on details.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`serves_the_admin_api_and_schema_registry.md`](serves_the_admin_api_and_schema_registry.md) | Admin API: GET /v1/status/ready, GET /v1/security/users (200). | [test_redpanda.ae#L81](test_redpanda.ae#L81) |
| [`serves_the_admin_api_and_schema_registry_schema_registry.md`](serves_the_admin_api_and_schema_registry_schema_registry.md) | Schema Registry (another port of the same container): POST /subjects/tcae-value/versions, GET /subjects (200). | [test_redpanda.ae#L92](test_redpanda.ae#L92) |

## Replaying from another language

The test file's `PORTING` comments ([test_redpanda.ae](test_redpanda.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- The Kafka seed broker (binary protocol) is not on a tape. The service account's password never goes over HTTP.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test redpanda/test_redpanda.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test redpanda/test_redpanda.ae   # live container, Servirtium in the middle, tapes written to redpanda/
TCAE_VCR=check    ae test redpanda/test_redpanda.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test redpanda/test_redpanda.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: BUSL-1.1 (Community Edition; Apache-2.0 after four years) and the Redpanda Community License (Enterprise features) (class BOUND). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE). Each tape starts with a `## LICENSE NOTICE` naming the terms; keep it.
