# scylladb

Recordings of the ScyllaDB REST management API (port 10000), from the real software at the pinned image `?`.

## Who it is for

Anyone testing a client of this service who wants recorded responses to replay in any language with no container, or a stand-in for it in another test suite.

## Fidelity

These tapes are the real software, at one version and in its default configuration as the test starts it (`?`). Versions and configuration change responses, so re-record against the version and configuration you run before relying on details.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`reports_the_release_and_the_cluster_identity.md`](reports_the_release_and_the_cluster_identity.md) | Release version and cluster identity. | [test_scylladb.ae#L336](test_scylladb.ae#L336) |
| [`reports_the_node_identity_and_the_state_of_the_ring.md`](reports_the_node_identity_and_the_state_of_the_ring.md) | Node identity and the state of the ring. | [test_scylladb.ae#L359](test_scylladb.ae#L359) |
| [`lists_keyspaces_and_maps_a_key_to_its_replica.md`](lists_keyspaces_and_maps_a_key_to_its_replica.md) | Keyspaces and the replica a key maps to. | [test_scylladb.ae#L404](test_scylladb.ae#L404) |
| [`reads_the_metrics_of_a_table.md`](reads_the_metrics_of_a_table.md) | A table's metrics. | [test_scylladb.ae#L424](test_scylladb.ae#L424) |
| [`flushes_and_compacts_a_keyspace.md`](flushes_and_compacts_a_keyspace.md) | Flush and compact a keyspace. | [test_scylladb.ae#L444](test_scylladb.ae#L444) |
| [`takes_lists_and_deletes_a_snapshot.md`](takes_lists_and_deletes_a_snapshot.md) | Take, list and delete a snapshot. | [test_scylladb.ae#L471](test_scylladb.ae#L471) |
| [`schema_version_changes_with_a_ddl_statement.md`](schema_version_changes_with_a_ddl_statement.md) | The schema version after a DDL statement. | [test_scylladb.ae#L493](test_scylladb.ae#L493) |
| [`sets_and_resets_a_log_level.md`](sets_and_resets_a_log_level.md) | Set and reset a log level. | [test_scylladb.ae#L519](test_scylladb.ae#L519) |
| [`sets_and_resets_tracing_and_slow_query_settings.md`](sets_and_resets_tracing_and_slow_query_settings.md) | Tracing and slow-query settings. | [test_scylladb.ae#L543](test_scylladb.ae#L543) |
| [`reports_gossip_and_the_failure_detector.md`](reports_gossip_and_the_failure_detector.md) | Gossip and the failure detector. | [test_scylladb.ae#L569](test_scylladb.ae#L569) |
| [`reports_storage_proxy_settings_and_unsupported_calls.md`](reports_storage_proxy_settings_and_unsupported_calls.md) | Storage proxy settings and calls Scylla does not support. | [test_scylladb.ae#L591](test_scylladb.ae#L591) |
| [`reports_the_compaction_task_and_stream_managers.md`](reports_the_compaction_task_and_stream_managers.md) | Compaction, task and stream managers. | [test_scylladb.ae#L615](test_scylladb.ae#L615) |
| [`reports_the_cache_service.md`](reports_the_cache_service.md) | The cache service. | [test_scylladb.ae#L634](test_scylladb.ae#L634) |
| [`reports_the_uptime_and_the_nodes_paths.md`](reports_the_uptime_and_the_nodes_paths.md) | Uptime and the node's paths. | [test_scylladb.ae#L652](test_scylladb.ae#L652) |
| [`describes_the_api_with_swagger.md`](describes_the_api_with_swagger.md) | The API's swagger description. | [test_scylladb.ae#L671](test_scylladb.ae#L671) |
| [`answers_errors_with_400_404_and_500.md`](answers_errors_with_400_404_and_500.md) | Errors 400, 404 and 500. | [test_scylladb.ae#L689](test_scylladb.ae#L689) |

## Replaying from another language

The test file's `PORTING` comments ([test_scylladb.ae](test_scylladb.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- Only the HTTP/JSON API on 10000 (what nodetool and monitoring talk to). Not CQL (9042), Alternator (8000) or Prometheus (9180).
- Requests carry only `User-Agent`; POSTs and DELETEs have no body. No login, no credential on any tape.
- Release versions, datacenter and rack names are left as they are (Scylla 6.2.3).
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test scylladb/test_scylladb.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test scylladb/test_scylladb.ae   # live container, Servirtium in the middle, tapes written to scylladb/
TCAE_VCR=check    ae test scylladb/test_scylladb.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test scylladb/test_scylladb.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: AGPL-3.0 (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
