# tidb

Recordings of the TiDB status port (10080) HTTP API, from the real software at the pinned image `?`.

## Who it is for

Anyone testing a client of this service who wants recorded responses to replay in any language with no container, or a stand-in for it in another test suite.

## Fidelity

These tapes are the real software, at one version and in its default configuration as the test starts it (`?`). Versions and configuration change responses, so re-record against the version and configuration you run before relying on details.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`reports_the_status_and_the_server_info.md`](reports_the_status_and_the_server_info.md) | Status and server info. | [test_tidb.ae#L314](test_tidb.ae#L314) |
| [`reports_the_running_configuration.md`](reports_the_running_configuration.md) | The running configuration. | [test_tidb.ae#L339](test_tidb.ae#L339) |
| [`sees_the_databases_and_a_databases_tables.md`](sees_the_databases_and_a_databases_tables.md) | Databases and a database's tables. | [test_tidb.ae#L361](test_tidb.ae#L361) |
| [`describes_a_tables_columns_and_indexes_by_name_and_by_id.md`](describes_a_tables_columns_and_indexes_by_name_and_by_id.md) | A table's columns and indexes, by name and by id. | [test_tidb.ae#L388](test_tidb.ae#L388) |
| [`sees_a_schema_change.md`](sees_a_schema_change.md) | A schema change seen over HTTP. | [test_tidb.ae#L416](test_tidb.ae#L416) |
| [`reports_a_tables_storage_figures.md`](reports_a_tables_storage_figures.md) | A table's storage figures. | [test_tidb.ae#L441](test_tidb.ae#L441) |
| [`has_no_region_endpoints_without_a_tikv_store.md`](has_no_region_endpoints_without_a_tikv_store.md) | Region endpoints without a TiKV store (standalone TiDB). | [test_tidb.ae#L465](test_tidb.ae#L465) |
| [`answers_the_representative_error_statuses.md`](answers_the_representative_error_statuses.md) | Representative error statuses. | [test_tidb.ae#L489](test_tidb.ae#L489) |

## Replaying from another language

The test file's `PORTING` comments ([test_tidb.ae](test_tidb.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- The status port is unauthenticated: no login, no credential, nothing redacted. SQL (MySQL protocol, root, no password) is used only as setup, outside the tapes.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test tidb/test_tidb.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test tidb/test_tidb.ae   # live container, Servirtium in the middle, tapes written to tidb/
TCAE_VCR=check    ae test tidb/test_tidb.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test tidb/test_tidb.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: Apache-2.0 (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
