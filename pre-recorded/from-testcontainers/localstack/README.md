# localstack

Recordings of the LocalStack: health and S3 REST API, as answered by an emulator of AWS (`?`), not AWS itself.

## Who it is for

Teams integrating with AWS who want tapes to replay in their own tests, in any language, before or without running anything.

## Fidelity

These tapes are what the emulator said, not what AWS said. They are useful up to the point of your first recording against the real service: the real service may differ from the emulator by characters, words or whitespace (error codes and messages, header names and values, JSON field order and formatting, ids, authentication challenges, API-version behaviour). Treat them as a scaffold to start writing tests and client code, record against the real service as soon as you can, and keep your own tapes from then on.

Known differences from the real service, from the test and tapes:

- LocalStack accepts any credentials and does not verify the SigV4 signature (the tapes carry a made-up one). Real S3 would refuse that signature, and its error XML, headers and request ids differ.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`serves_s3_on_the_edge_port.md`](serves_s3_on_the_edge_port.md) | GET /_localstack/health, create a bucket, PUT and GET an object. | [test_localstack.ae#L98](test_localstack.ae#L98) |

## Replaying from another language

The test file's `PORTING` comments ([test_localstack.ae](test_localstack.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- LocalStack accepts any credentials, so requests carry a fixed, made-up SigV4 `Authorization` (signature `x`), identical every run and not redacted; replay matches it exactly. A client that signs for real needs a credential preset; see the test's PORTING comment.
- Only S3 is taped (`SERVICES=s3`). `LOCALSTACK_HOST`, the endpoint shape and the legacy-version refusal are live-only checks.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test localstack/test_localstack.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test localstack/test_localstack.ae   # live container, Servirtium in the middle, tapes written to localstack/
TCAE_VCR=check    ae test localstack/test_localstack.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test localstack/test_localstack.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: Apache-2.0 (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
