# s3mock

Recordings of the S3Mock S3 REST API, as answered by an S3-compatible server (`?`), not AWS S3 itself.

## Who it is for

Teams integrating with AWS S3 who want tapes to replay in their own tests, in any language, before or without running anything. Also useful as a stand-in for that product itself.

## Fidelity

These tapes are what the emulator said, not what AWS S3 said. They are useful up to the point of your first recording against the real service: the real service may differ from the emulator by characters, words or whitespace (error codes and messages, header names and values, JSON field order and formatting, ids, authentication challenges, API-version behaviour). Treat them as a scaffold to start writing tests and client code, record against the real service as soon as you can, and keep your own tapes from then on.

Known differences from the real service, from the test and tapes:

- S3Mock (Adobe) is an S3-compatible mock, not AWS S3; it ignores signatures that real S3 would check.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`serves_s3_with_initial_buckets.md`](serves_s3_with_initial_buckets.md) | GET / (bucket listing, XML), PUT /bucket-a/hello.txt, GET /bucket-a/hello.txt. | [test_s3mock.ae#L84](test_s3mock.ae#L84) |

## Replaying from another language

The test file's `PORTING` comments ([test_s3mock.ae](test_s3mock.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- S3Mock accepts unsigned requests, so none carries an `Authorization` header. A client that signs needs the credential-preset treatment described in the test's PORTING comment.
- The initial buckets are created by the module's option at start; the listing is on the tape.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test s3mock/test_s3mock.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test s3mock/test_s3mock.ae   # live container, Servirtium in the middle, tapes written to s3mock/
TCAE_VCR=check    ae test s3mock/test_s3mock.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test s3mock/test_s3mock.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: Apache-2.0 (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
