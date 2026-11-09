# gcloud_bigquery

Recordings of the BigQuery REST API (`jobs.query`), as answered by an emulator of Google BigQuery (`?`), not Google BigQuery itself.

## Who it is for

Teams integrating with Google BigQuery who want tapes to replay in their own tests, in any language, before or without running anything.

## Fidelity

These tapes are what the emulator said, not what Google BigQuery said. They are useful up to the point of your first recording against the real service: the real service may differ from the emulator by characters, words or whitespace (error codes and messages, header names and values, JSON field order and formatting, ids, authentication challenges, API-version behaviour). Treat them as a scaffold to start writing tests and client code, record against the real service as soon as you can, and keep your own tapes from then on.

Known differences from the real service, from the test and tapes:

- The emulator is goccy/bigquery-emulator, a third-party project, not Google's.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`starts_the_emulator_and_runs_a_query.md`](starts_the_emulator_and_runs_a_query.md) | POST /bigquery/v2/projects/bigquery-project/queries (synchronous query, `useLegacySql` false): 200. | [test_gcloud_bigquery.ae#L111](test_gcloud_bigquery.ae#L111) |

## Replaying from another language

The test file's `PORTING` comments ([test_gcloud_bigquery.ae](test_gcloud_bigquery.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- Requests carry `Authorization: Bearer owner`, a placeholder the emulator does not check, recorded as is.
- REST is on port 9050 (gRPC 9060 is not used). The `jobId` is collapsed; a client that polls the job would need more than this tape. The image is linux/amd64 only (matters when recording, not replaying).
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test gcloud_bigquery/test_gcloud_bigquery.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test gcloud_bigquery/test_gcloud_bigquery.ae   # live container, Servirtium in the middle, tapes written to gcloud_bigquery/
TCAE_VCR=check    ae test gcloud_bigquery/test_gcloud_bigquery.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test gcloud_bigquery/test_gcloud_bigquery.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: MIT (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
