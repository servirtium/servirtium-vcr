## Interaction 0: GET /system/logger

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Length: 3280
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
[
  "BatchStatement",
  "LeveledManifest",
  "alter_keyspace",
  "alter_table",
  "alternator-auth",
  "alternator-conditions",
  "alternator-executor",
  "alternator-serialization",
  "alternator-server",
  "alternator_controller",
  "alternator_ttl",
  "api",
  "auth",
  "auth_resource",
  "auth_service",
  "authorized_prepared_statements_cache",
  "batchlog_manager",
  "bloom_filter",
  "boot_strapper",
  "cache",
  "cdc",
  "cell_locker",
  "certificate_authenticator",
  "collection_type_impl",
  "command_factory",
  "commitlog",
  "commitlog_replayer",
  "compaction",
  "compaction_manager",
  "compound",
  "consistency",
  "controller",
  "cql3_fuctions",
  "cql3_selection",
  "cql_expression",
  "cql_logger",
  "cql_server",
  "cql_server_controller",
  "create_keyspace",
  "create_table",
  "database",
  "debug_error_injection",
  "default_authorizer",
  "describe",
  "direct_failure_detector",
  "dns_resolver",
  "endpoint_state",
  "event_notifier",
  "exception",
  "features",
  "format_selector",
  "forward_service",
  "gossip",
  "group0_client",
  "group0_raft_sm",
  "group0_raft_sm_merger",
  "heat_load_balance",
  "hints_manager",
  "hints_resource_manager",
  "http",
  "httpd",
  "i_partitioner",
  "incremental_reader_selector",
  "init",
  "io",
  "keys",
  "keyspace_utils",
  "large_data",
  "legacy_schema_migrator",
  "lister",
  "load_balancer",
  "load_broadcaster",
  "load_sys_tablets",
  "lsa",
  "lsa-api",
  "lsa-timing",
  "lua",
  "mc_writer",
  "messaging_service",
  "metadata_collector",
  "migration_manager",
  "multishard_mutation_query",
  "mutation",
  "mutation_compactor",
  "mutation_data",
  "mutation_fragment_stream_validator",
  "mutation_partition",
  "mutation_reader",
  "node_ops",
  "on_internal_error",
  "paging",
  "password_authenticator",
  "paxos",
  "prepared_statements_cache",
  "qos",
  "querier",
  "querier_cache",
  "query",
  "query_processor",
  "query_result",
  "query_result_log",
  "raft",
  "raft_group0",
  "raft_group0_upgrade",
  "raft_group_registry",
  "raft_rpc",
  "raft_service_distributed_level_data_accessor",
  "raft_topology",
  "range_streamer",
  "reader_concurrency_semaphore",
  "redis_server",
  "repair",
  "replication_strategy",
  "restrictions",
  "row_locking",
  "rpc",
  "s3",
  "scheduler",
  "schema_altering_statement",
  "schema_diff",
  "schema_loader",
  "schema_registry",
  "schema_tables",
  "scollectd",
  "scylla-nodetool",
  "scylla-sstable",
  "seastar",
  "seastar_memory",
  "select_statement",
  "serializer",
  "service_level_controller",
  "session",
  "snapshots",
  "sstable",
  "sstable_directory",
  "sstables_loader",
  "sstables_manager",
  "standard_role_manager",
  "storage_proxy",
  "storage_service",
  "stream_session",
  "strongly_consistent_modification_statement",
  "strongly_consistent_select_statement",
  "system_distributed_keyspace",
  "system_keyspace",
  "table",
  "table_helper",
  "tablets",
  "tags",
  "task_manager",
  "testlog",
  "token_group_based_splitting_mutation_writer",
  "token_metadata",
  "topology",
  "topology_state_machine",
  "trace_keyspace_helper",
  "trace_state",
  "tracing",
  "types",
  "unimplemented",
  "version_generator",
  "view",
  "view_update_generator",
  "virtual_tables",
  "wasm"
]
```

## Interaction 1: GET /storage_service/logging_level

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Length: 9550
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
[
  {
    "key": "BatchStatement",
    "value": "info"
  },
  {
    "key": "LeveledManifest",
    "value": "info"
  },
  {
    "key": "alter_keyspace",
    "value": "info"
  },
  {
    "key": "alter_table",
    "value": "info"
  },
  {
    "key": "alternator-auth",
    "value": "info"
  },
  {
    "key": "alternator-conditions",
    "value": "info"
  },
  {
    "key": "alternator-executor",
    "value": "info"
  },
  {
    "key": "alternator-serialization",
    "value": "info"
  },
  {
    "key": "alternator-server",
    "value": "info"
  },
  {
    "key": "alternator_controller",
    "value": "info"
  },
  {
    "key": "alternator_ttl",
    "value": "info"
  },
  {
    "key": "api",
    "value": "info"
  },
  {
    "key": "auth",
    "value": "info"
  },
  {
    "key": "auth_resource",
    "value": "info"
  },
  {
    "key": "auth_service",
    "value": "info"
  },
  {
    "key": "authorized_prepared_statements_cache",
    "value": "info"
  },
  {
    "key": "batchlog_manager",
    "value": "info"
  },
  {
    "key": "bloom_filter",
    "value": "info"
  },
  {
    "key": "boot_strapper",
    "value": "info"
  },
  {
    "key": "cache",
    "value": "info"
  },
  {
    "key": "cdc",
    "value": "info"
  },
  {
    "key": "cell_locker",
    "value": "info"
  },
  {
    "key": "certificate_authenticator",
    "value": "info"
  },
  {
    "key": "collection_type_impl",
    "value": "info"
  },
  {
    "key": "command_factory",
    "value": "info"
  },
  {
    "key": "commitlog",
    "value": "info"
  },
  {
    "key": "commitlog_replayer",
    "value": "info"
  },
  {
    "key": "compaction",
    "value": "info"
  },
  {
    "key": "compaction_manager",
    "value": "info"
  },
  {
    "key": "compound",
    "value": "info"
  },
  {
    "key": "consistency",
    "value": "info"
  },
  {
    "key": "controller",
    "value": "info"
  },
  {
    "key": "cql3_fuctions",
    "value": "info"
  },
  {
    "key": "cql3_selection",
    "value": "info"
  },
  {
    "key": "cql_expression",
    "value": "info"
  },
  {
    "key": "cql_logger",
    "value": "info"
  },
  {
    "key": "cql_server",
    "value": "info"
  },
  {
    "key": "cql_server_controller",
    "value": "info"
  },
  {
    "key": "create_keyspace",
    "value": "info"
  },
  {
    "key": "create_table",
    "value": "info"
  },
  {
    "key": "database",
    "value": "info"
  },
  {
    "key": "debug_error_injection",
    "value": "info"
  },
  {
    "key": "default_authorizer",
    "value": "info"
  },
  {
    "key": "describe",
    "value": "info"
  },
  {
    "key": "direct_failure_detector",
    "value": "info"
  },
  {
    "key": "dns_resolver",
    "value": "info"
  },
  {
    "key": "endpoint_state",
    "value": "info"
  },
  {
    "key": "event_notifier",
    "value": "info"
  },
  {
    "key": "exception",
    "value": "info"
  },
  {
    "key": "features",
    "value": "info"
  },
  {
    "key": "format_selector",
    "value": "info"
  },
  {
    "key": "forward_service",
    "value": "info"
  },
  {
    "key": "gossip",
    "value": "info"
  },
  {
    "key": "group0_client",
    "value": "info"
  },
  {
    "key": "group0_raft_sm",
    "value": "info"
  },
  {
    "key": "group0_raft_sm_merger",
    "value": "info"
  },
  {
    "key": "heat_load_balance",
    "value": "info"
  },
  {
    "key": "hints_manager",
    "value": "info"
  },
  {
    "key": "hints_resource_manager",
    "value": "info"
  },
  {
    "key": "http",
    "value": "info"
  },
  {
    "key": "httpd",
    "value": "info"
  },
  {
    "key": "i_partitioner",
    "value": "info"
  },
  {
    "key": "incremental_reader_selector",
    "value": "info"
  },
  {
    "key": "init",
    "value": "info"
  },
  {
    "key": "io",
    "value": "info"
  },
  {
    "key": "keys",
    "value": "info"
  },
  {
    "key": "keyspace_utils",
    "value": "info"
  },
  {
    "key": "large_data",
    "value": "info"
  },
  {
    "key": "legacy_schema_migrator",
    "value": "info"
  },
  {
    "key": "lister",
    "value": "info"
  },
  {
    "key": "load_balancer",
    "value": "info"
  },
  {
    "key": "load_broadcaster",
    "value": "info"
  },
  {
    "key": "load_sys_tablets",
    "value": "info"
  },
  {
    "key": "lsa",
    "value": "info"
  },
  {
    "key": "lsa-api",
    "value": "info"
  },
  {
    "key": "lsa-timing",
    "value": "info"
  },
  {
    "key": "lua",
    "value": "info"
  },
  {
    "key": "mc_writer",
    "value": "info"
  },
  {
    "key": "messaging_service",
    "value": "info"
  },
  {
    "key": "metadata_collector",
    "value": "info"
  },
  {
    "key": "migration_manager",
    "value": "info"
  },
  {
    "key": "multishard_mutation_query",
    "value": "info"
  },
  {
    "key": "mutation",
    "value": "info"
  },
  {
    "key": "mutation_compactor",
    "value": "info"
  },
  {
    "key": "mutation_data",
    "value": "info"
  },
  {
    "key": "mutation_fragment_stream_validator",
    "value": "info"
  },
  {
    "key": "mutation_partition",
    "value": "info"
  },
  {
    "key": "mutation_reader",
    "value": "info"
  },
  {
    "key": "node_ops",
    "value": "info"
  },
  {
    "key": "on_internal_error",
    "value": "info"
  },
  {
    "key": "paging",
    "value": "info"
  },
  {
    "key": "password_authenticator",
    "value": "info"
  },
  {
    "key": "paxos",
    "value": "info"
  },
  {
    "key": "prepared_statements_cache",
    "value": "info"
  },
  {
    "key": "qos",
    "value": "info"
  },
  {
    "key": "querier",
    "value": "info"
  },
  {
    "key": "querier_cache",
    "value": "info"
  },
  {
    "key": "query",
    "value": "info"
  },
  {
    "key": "query_processor",
    "value": "info"
  },
  {
    "key": "query_result",
    "value": "info"
  },
  {
    "key": "query_result_log",
    "value": "info"
  },
  {
    "key": "raft",
    "value": "info"
  },
  {
    "key": "raft_group0",
    "value": "info"
  },
  {
    "key": "raft_group0_upgrade",
    "value": "info"
  },
  {
    "key": "raft_group_registry",
    "value": "info"
  },
  {
    "key": "raft_rpc",
    "value": "info"
  },
  {
    "key": "raft_service_distributed_level_data_accessor",
    "value": "info"
  },
  {
    "key": "raft_topology",
    "value": "info"
  },
  {
    "key": "range_streamer",
    "value": "info"
  },
  {
    "key": "reader_concurrency_semaphore",
    "value": "info"
  },
  {
    "key": "redis_server",
    "value": "info"
  },
  {
    "key": "repair",
    "value": "info"
  },
  {
    "key": "replication_strategy",
    "value": "info"
  },
  {
    "key": "restrictions",
    "value": "info"
  },
  {
    "key": "row_locking",
    "value": "info"
  },
  {
    "key": "rpc",
    "value": "info"
  },
  {
    "key": "s3",
    "value": "info"
  },
  {
    "key": "scheduler",
    "value": "info"
  },
  {
    "key": "schema_altering_statement",
    "value": "info"
  },
  {
    "key": "schema_diff",
    "value": "info"
  },
  {
    "key": "schema_loader",
    "value": "info"
  },
  {
    "key": "schema_registry",
    "value": "info"
  },
  {
    "key": "schema_tables",
    "value": "info"
  },
  {
    "key": "scollectd",
    "value": "info"
  },
  {
    "key": "scylla-nodetool",
    "value": "info"
  },
  {
    "key": "scylla-sstable",
    "value": "info"
  },
  {
    "key": "seastar",
    "value": "info"
  },
  {
    "key": "seastar_memory",
    "value": "info"
  },
  {
    "key": "select_statement",
    "value": "info"
  },
  {
    "key": "serializer",
    "value": "info"
  },
  {
    "key": "service_level_controller",
    "value": "info"
  },
  {
    "key": "session",
    "value": "info"
  },
  {
    "key": "snapshots",
    "value": "info"
  },
  {
    "key": "sstable",
    "value": "info"
  },
  {
    "key": "sstable_directory",
    "value": "info"
  },
  {
    "key": "sstables_loader",
    "value": "info"
  },
  {
    "key": "sstables_manager",
    "value": "info"
  },
  {
    "key": "standard_role_manager",
    "value": "info"
  },
  {
    "key": "storage_proxy",
    "value": "info"
  },
  {
    "key": "storage_service",
    "value": "info"
  },
  {
    "key": "stream_session",
    "value": "info"
  },
  {
    "key": "strongly_consistent_modification_statement",
    "value": "info"
  },
  {
    "key": "strongly_consistent_select_statement",
    "value": "info"
  },
  {
    "key": "system_distributed_keyspace",
    "value": "info"
  },
  {
    "key": "system_keyspace",
    "value": "info"
  },
  {
    "key": "table",
    "value": "info"
  },
  {
    "key": "table_helper",
    "value": "info"
  },
  {
    "key": "tablets",
    "value": "info"
  },
  {
    "key": "tags",
    "value": "info"
  },
  {
    "key": "task_manager",
    "value": "info"
  },
  {
    "key": "testlog",
    "value": "info"
  },
  {
    "key": "token_group_based_splitting_mutation_writer",
    "value": "info"
  },
  {
    "key": "token_metadata",
    "value": "info"
  },
  {
    "key": "topology",
    "value": "info"
  },
  {
    "key": "topology_state_machine",
    "value": "info"
  },
  {
    "key": "trace_keyspace_helper",
    "value": "info"
  },
  {
    "key": "trace_state",
    "value": "info"
  },
  {
    "key": "tracing",
    "value": "info"
  },
  {
    "key": "types",
    "value": "info"
  },
  {
    "key": "unimplemented",
    "value": "info"
  },
  {
    "key": "version_generator",
    "value": "info"
  },
  {
    "key": "view",
    "value": "info"
  },
  {
    "key": "view_update_generator",
    "value": "info"
  },
  {
    "key": "virtual_tables",
    "value": "info"
  },
  {
    "key": "wasm",
    "value": "info"
  }
]
```

## Interaction 2: GET /system/logger/compaction

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Length: 6
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
"info"
```

## Interaction 3: POST /system/logger/compaction?level=debug

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Length: 0
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
```

## Interaction 4: GET /system/logger/compaction

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Length: 7
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
"debug"
```

## Interaction 5: POST /system/logger/compaction?level=info

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Length: 0
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
```

## Interaction 6: GET /system/logger/compaction

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Length: 6
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
"info"
```

## Interaction 7: POST /system/logger/compaction?level=loud

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Length: 60
Server: Seastar httpd
Content-Type: application/json
```
### Response body recorded for playback (400: application/json):

```
{
  "message": "Unknown logging level loud",
  "code": 400
}
```

## Interaction 8: GET /system/logger/nonexistent

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Length: 65
Server: Seastar httpd
Content-Type: application/json
```
### Response body recorded for playback (400: application/json):

```
{
  "message": "Unknown logger name nonexistent",
  "code": 400
}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–8 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–8 |
| collapsed | whole recording | `\["-?[0-9]{10,}"(, "-?[0-9]{10,}")*\]` | `["TOKEN"]` | none |
| collapsed | whole recording | `\[\{"key":"-?[0-9]{10,}","value":"[^"]*"\}(, \{"key":"-?[0-9]{10,}","value":"[^"]*"\})*\]` | `[{"key":"TOKEN","value":"ADDRESS"}]` | none |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | none |
| normalized | whole recording | `(?<![0-9.])(?!127\.)[0-9]{1,3}(\.[0-9]{1,3}){3}(?![0-9.])` | `{{ip-N}}` | none |
| collapsed | whole recording | `(?<![0-9])1[0-9]{9}(?![0-9])` | `1000000000` | none |
| collapsed | whole recording | `"value": [0-9]+\}` | `"value": 0}` | none |
| collapsed | whole recording | `"value": "[01](\.[0-9]+)?"` | `"value": "1"` | none |
| collapsed | whole recording | `"total":[0-9]+,"live":[0-9]+` | `"total":0,"live":0` | none |
| collapsed | whole recording | `(?m)^[0-9]{3,9}$` | `1000000` | none |
| ordered | response body | the root array, requests matching `^/(column_family/(name(/keyspace)?)?\|storage_service/keyspaces\|storage_service/logging_level\|system/logger)(\?\|$)` | sorted by their elements' canonical JSON | 0, 1 |
