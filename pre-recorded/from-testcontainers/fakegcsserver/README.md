# fakegcsserver

Recordings of the Google Cloud Storage JSON API, as answered by an emulator of Google Cloud Storage (`?`), not Google Cloud Storage itself.

## Who it is for

Teams integrating with Google Cloud Storage who want tapes to replay in their own tests, in any language, before or without running anything.

## Fidelity

These tapes are what the emulator said, not what Google Cloud Storage said. They are useful up to the point of your first recording against the real service: the real service may differ from the emulator by characters, words or whitespace (error codes and messages, header names and values, JSON field order and formatting, ids, authentication challenges, API-version behaviour). Treat them as a scaffold to start writing tests and client code, record against the real service as soon as you can, and keep your own tapes from then on.

Known differences from the real service, from the test and tapes:

- `timeCreated`, `updated`, an object's `generation` (also in `X-Goog-Generation`) and `Last-Modified` are collapsed to constants on the tape; real GCS returns real values and its own error bodies.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`serves_the_gcs_json_api_at_the_storage_url.md`](serves_the_gcs_json_api_at_the_storage_url.md) | Create bucket (POST /storage/v1/b?project=tc), list buckets, upload an object (POST /upload/storage/v1/b/tc-bucket/o?uploadType=media&name=hello.txt), read it back with `?alt=media`. | [test_fakegcsserver.ae#L83](test_fakegcsserver.ae#L83) |

## Replaying from another language

The test file's `PORTING` comments ([test_fakegcsserver.ae](test_fakegcsserver.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- No credentials. The JSON API is under `/storage/v1`, the upload endpoint under `/upload/storage/v1`, on the same port.
- Only the first case is on a tape; the HTTPS and invalid-scheme cases are about the module's options and run live only.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test fakegcsserver/test_fakegcsserver.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test fakegcsserver/test_fakegcsserver.ae   # live container, Servirtium in the middle, tapes written to fakegcsserver/
TCAE_VCR=check    ae test fakegcsserver/test_fakegcsserver.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test fakegcsserver/test_fakegcsserver.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: BSD-2-Clause (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
