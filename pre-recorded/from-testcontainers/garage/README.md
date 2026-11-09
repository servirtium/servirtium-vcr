# garage

Recordings of the Garage S3 API, as answered by an S3-compatible server (`?`), not AWS S3 itself.

## Who it is for

Teams integrating with AWS S3 who want tapes to replay in their own tests, in any language, before or without running anything. Also useful as a stand-in for that product itself.

## Fidelity

These tapes are what the emulator said, not what AWS S3 said. They are useful up to the point of your first recording against the real service: the real service may differ from the emulator by characters, words or whitespace (error codes and messages, header names and values, JSON field order and formatting, ids, authentication challenges, API-version behaviour). Treat them as a scaffold to start writing tests and client code, record against the real service as soon as you can, and keep your own tapes from then on.

Known differences from the real service, from the test and tapes:

- Garage is a real product in its own right (this tape is what Garage says). It is an S3-compatible implementation, not AWS S3, so a team integrating with AWS S3 should treat these tapes as a scaffold.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`serves_the_default_bucket_with_the_default_credentials.md`](serves_the_default_bucket_with_the_default_credentials.md) | List the default bucket `testcontainers` (200), PUT and GET `hello.txt`, then list with a wrong secret (403). | [test_garage.ae#L140](test_garage.ae#L140) |
| [`takes_credentials_bucket_and_region.md`](takes_credentials_bucket_and_region.md) | List the custom bucket `custom-bucket` signed for region `eu-west-1` (200). | [test_garage.ae#L182](test_garage.ae#L182) |

## Replaying from another language

The test file's `PORTING` comments ([test_garage.ae](test_garage.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- Requests are SigV4-signed over the time they are sent. `Authorization` is on the tapes as `AWS4-HMAC-SHA256 AUTHORIZATION_N` and matched on presence; `x-amz-date` is left out. So the right-secret/wrong-secret distinction is in the recorded 200 vs 403, not enforced on replay.
- The credential scope names the region (`garage` by default, `eu-west-1` in the custom case). SigV4 signs the Host header; see the test's PORTING comment for recording against the recorder.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test garage/test_garage.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test garage/test_garage.ae   # live container, Servirtium in the middle, tapes written to garage/
TCAE_VCR=check    ae test garage/test_garage.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test garage/test_garage.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: AGPL-3.0 (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
