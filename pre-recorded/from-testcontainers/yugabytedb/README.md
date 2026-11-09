# yugabytedb

Recordings of the YugabyteDB master (7000) and tserver (9000) JSON endpoints, from the real software at the pinned image `?`.

## Who it is for

Anyone testing a client of this service who wants recorded responses to replay in any language with no container, or a stand-in for it in another test suite.

## Fidelity

These tapes are the real software, at one version and in its default configuration as the test starts it (`?`). Versions and configuration change responses, so re-record against the version and configuration you run before relying on details.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`reports_the_build_version.md`](reports_the_build_version.md) | Master version. | [test_yugabytedb.ae#L468](test_yugabytedb.ae#L468) |
| [`reports_the_build_version_tserver.md`](reports_the_build_version_tserver.md) | The same on the tserver (own tape). | [test_yugabytedb.ae#L472](test_yugabytedb.ae#L472) |
| [`reports_the_masters_and_who_leads.md`](reports_the_masters_and_who_leads.md) | Masters and the leader. | [test_yugabytedb.ae#L486](test_yugabytedb.ae#L486) |
| [`reports_the_tablet_servers_and_the_health_of_the_cluster.md`](reports_the_tablet_servers_and_the_health_of_the_cluster.md) | Tablet servers and the health of the cluster. | [test_yugabytedb.ae#L513](test_yugabytedb.ae#L513) |
| [`lists_the_user_tables_and_describes_them.md`](lists_the_user_tables_and_describes_them.md) | User tables and one table in detail. | [test_yugabytedb.ae#L546](test_yugabytedb.ae#L546) |
| [`reports_the_flags_of_the_master.md`](reports_the_flags_of_the_master.md) | Master process flags (varz). | [test_yugabytedb.ae#L571](test_yugabytedb.ae#L571) |
| [`reports_the_flags_of_the_tserver.md`](reports_the_flags_of_the_tserver.md) | Tserver process flags. | [test_yugabytedb.ae#L580](test_yugabytedb.ae#L580) |
| [`reports_the_health_of_the_tserver.md`](reports_the_health_of_the_tserver.md) | Tserver health. | [test_yugabytedb.ae#L589](test_yugabytedb.ae#L589) |
| [`reads_filtered_metrics_as_json_and_as_prometheus_text.md`](reads_filtered_metrics_as_json_and_as_prometheus_text.md) | Filtered metrics as JSON and as Prometheus text. | [test_yugabytedb.ae#L611](test_yugabytedb.ae#L611) |
| [`answers_errors_with_404_and_an_error_body.md`](answers_errors_with_404_and_an_error_body.md) | A 404 and an error body (master). | [test_yugabytedb.ae#L627](test_yugabytedb.ae#L627) |
| [`answers_errors_with_404_and_an_error_body_tserver.md`](answers_errors_with_404_and_an_error_body_tserver.md) | The same on the tserver (own tape). | [test_yugabytedb.ae#L642](test_yugabytedb.ae#L642) |

## Replaying from another language

The test file's `PORTING` comments ([test_yugabytedb.ae](test_yugabytedb.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- A case touching both servers records two tapes: `<case>` for the master and `<case>_tserver` for the tserver. Each replays on its own server.
- The tables case creates tables before recording (through ycqlsh and ysqlsh in the container, not on a tape); on replay skip that step.
- No login, no credential on any tape. UUIDs and IPv4 addresses are normalized as `{{uuid-N}}` and `{{ip-N}}`; times, uptimes and sizes are collapsed.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test yugabytedb/test_yugabytedb.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test yugabytedb/test_yugabytedb.ae   # live container, Servirtium in the middle, tapes written to yugabytedb/
TCAE_VCR=check    ae test yugabytedb/test_yugabytedb.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test yugabytedb/test_yugabytedb.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: Apache-2.0 (the standard binaries); the Polyform Free Trial License 1.0.0 covers only the separate `-managed` binaries (YugabyteDB Anywhere), which this image is not (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
