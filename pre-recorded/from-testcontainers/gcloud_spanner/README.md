# gcloud_spanner

Recordings of the Cloud Spanner REST/JSON API (port 9020), as answered by an emulator of Google Cloud Spanner (`?`), not Google Cloud Spanner itself.

## Who it is for

Teams integrating with Google Cloud Spanner who want tapes to replay in their own tests, in any language, before or without running anything.

## Fidelity

These tapes are what the emulator said, not what Google Cloud Spanner said. They are useful up to the point of your first recording against the real service: the real service may differ from the emulator by characters, words or whitespace (error codes and messages, header names and values, JSON field order and formatting, ids, authentication challenges, API-version behaviour). Treat them as a scaffold to start writing tests and client code, record against the real service as soon as you can, and keep your own tapes from then on.

Known differences from the real service, from the test and tapes:

- A real Spanner needs a GET on the operation name after create instance or database; do not expect that from these tapes.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`lists_the_instance_configs.md`](lists_the_instance_configs.md) | GET /v1/projects/spanner-project/instanceConfigs. | [test_gcloud_spanner.ae#L145](test_gcloud_spanner.ae#L145) |
| [`creates_an_instance_and_a_database_with_ddl_reads_them_back_and_drops_it.md`](creates_an_instance_and_a_database_with_ddl_reads_them_back_and_drops_it.md) | Create instance and database, read them back, read and PATCH the DDL, drop the database. | [test_gcloud_spanner.ae#L156](test_gcloud_spanner.ae#L156) |
| [`writes_rows_in_a_read_write_transaction_and_by_mutation_and_reads_them_back.md`](writes_rows_in_a_read_write_transaction_and_by_mutation_and_reads_them_back.md) | Create a session, begin a read-write transaction, `executeSql` and `commit`, a mutation commit, read back, delete the session and the database. | [test_gcloud_spanner.ae#L191](test_gcloud_spanner.ae#L191) |
| [`rejects_bad_sql_with_a_400.md`](rejects_bad_sql_with_a_400.md) | Two `executeSql` calls with bad SQL, each answered 400. | [test_gcloud_spanner.ae#L249](test_gcloud_spanner.ae#L249) |

## Replaying from another language

The test file's `PORTING` comments ([test_gcloud_spanner.ae](test_gcloud_spanner.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- No login: the emulator is unauthenticated and ignores `Authorization`. The `:verb` suffix (`:executeSql`, `:commit`, `:beginTransaction`) is part of the last path segment, a literal colon.
- Create instance and create database return an operation already `"done": true`; no polling is on the tapes. Operation and session names are counters of a fresh emulator (each case starts its own).
- Timestamps are collapsed; the read-write transaction id is replaced by `{{transaction-id-N}}`.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test gcloud_spanner/test_gcloud_spanner.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test gcloud_spanner/test_gcloud_spanner.ae   # live container, Servirtium in the middle, tapes written to gcloud_spanner/
TCAE_VCR=check    ae test gcloud_spanner/test_gcloud_spanner.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test gcloud_spanner/test_gcloud_spanner.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: Apache-2.0 (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
