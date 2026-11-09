# cockroachdb

Recordings of the CockroachDB HTTP API v2 (`/api/v2/`), with login, from the real software at the pinned image `?`.

**The tapes are not shipped.** This directory has the test and the recorder only. The vendor's terms could reasonably be read as forbidding what publishing recordings would amount to, so we leave them out. See [LICENCE-NOTE.md](LICENCE-NOTE.md) for the clause and the commands, and record your own with `TCAE_VCR=record` (below); keep them on your machine, they are under the terms you accepted by running the image. The case table below lists the tapes that recording writes.

## Who it is for

Anyone testing a client of this service who wants to record responses once and replay them in any language with no container, or as a stand-in for it in another test suite.

## Fidelity

These tapes are the real software, at one version and in its default configuration as the test starts it (`?`). Versions and configuration change responses, so re-record against the version and configuration you run before relying on details.

## Cases

Each row is one tape that recording writes; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records it.

| Tape | What it does | Test |
|---|---|---|
| `logs_in_and_out_with_a_session_token.md` | LOGIN: POST /api/v2/login/ (form body) with no credentials, a wrong password, an unknown user and the right one; a call with the token, logout, the call again. | [test_cockroachdb.ae#L413](test_cockroachdb.ae#L413) |
| `refuses_a_client_that_has_not_logged_in.md` | No token: refused. | [test_cockroachdb.ae#L452](test_cockroachdb.ae#L452) |
| `refuses_a_user_without_admin_rights.md` | A non-admin SQL user's token: refused. | [test_cockroachdb.ae#L482](test_cockroachdb.ae#L482) |
| `reports_health_and_the_monitoring_rules.md` | Health and monitoring rules. | [test_cockroachdb.ae#L511](test_cockroachdb.ae#L511) |
| `lists_the_node.md` | The node. | [test_cockroachdb.ae#L534](test_cockroachdb.ae#L534) |
| `lists_databases_tables_and_grants_with_pagination.md` | Databases, tables and grants, with pagination. | [test_cockroachdb.ae#L557](test_cockroachdb.ae#L557) |
| `describes_a_tables_columns_indexes_and_zone_configuration.md` | A table's columns, indexes and zone configuration. | [test_cockroachdb.ae#L597](test_cockroachdb.ae#L597) |
| `lists_the_sql_users.md` | SQL users. | [test_cockroachdb.ae#L621](test_cockroachdb.ae#L621) |
| `reads_the_event_log_filtered_by_type.md` | The event log filtered by type. | [test_cockroachdb.ae#L640](test_cockroachdb.ae#L640) |
| `lists_a_users_sql_sessions.md` | A user's SQL sessions. | [test_cockroachdb.ae#L678](test_cockroachdb.ae#L678) |
| `runs_sql_over_http.md` | SQL over HTTP. | [test_cockroachdb.ae#L707](test_cockroachdb.ae#L707) |
| `answers_the_representative_error_statuses.md` | Representative error statuses. | [test_cockroachdb.ae#L740](test_cockroachdb.ae#L740) |

## Replaying from another language

The test file's `PORTING` comments ([test_cockroachdb.ae](test_cockroachdb.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- Every path is under `/api/v2/` and ends in a slash. Authentication is a session token (`X-Cockroach-API-Session`) from POST /api/v2/login/; every case but the first is already logged in (a token minted outside the recorder).
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test cockroachdb/test_cockroachdb.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test cockroachdb/test_cockroachdb.ae   # live container, Servirtium in the middle, tapes written to cockroachdb/
TCAE_VCR=check    ae test cockroachdb/test_cockroachdb.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test cockroachdb/test_cockroachdb.ae   # no container, no engine: replay the tapes (skips with a notice if you have none)
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: CockroachDB Software License (Cockroach Labs, proprietary, source-available) (class DECISION). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE). This suite's tapes are not shipped: see [LICENCE-NOTE.md](LICENCE-NOTE.md).
