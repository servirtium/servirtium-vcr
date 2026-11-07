## Interaction 0: GET /storage_service/keyspaces?type=user

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
Content-Length: 18
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
["tcae_keyspaces"]
```

## Interaction 1: GET /storage_service/keyspaces

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
Content-Length: 126
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
["system","system_auth","system_distributed","system_distributed_everywhere","system_schema","system_traces","tcae_keyspaces"]
```

## Interaction 2: GET /storage_service/keyspaces?type=non_local_strategy

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
Content-Length: 101
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
["system_auth","system_distributed","system_distributed_everywhere","system_traces","tcae_keyspaces"]
```

## Interaction 3: GET /column_family/name

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
Content-Length: 1917
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
["system:IndexInfo","system:batchlog","system:built_views","system:cdc_generations_v3","system:cdc_local","system:clients","system:cluster_status","system:commitlog_cleanups","system:compaction_history","system:compactions_in_progress","system:config","system:discovery","system:group0_history","system:hints","system:large_cells","system:large_partitions","system:large_rows","system:local","system:paxos","system:peer_events","system:peers","system:protocol_servers","system:raft","system:raft_snapshot_config","system:raft_snapshots","system:raft_state","system:range_xfers","system:repair_history","system:role_attributes","system:role_members","system:role_permissions","system:roles","system:runtime_info","system:scylla_local","system:scylla_table_schema_history","system:scylla_views_builds_in_progress","system:service_levels_v2","system:size_estimates","system:snapshots","system:sstable_activity","system:tablets","system:token_ring","system:topology","system:topology_requests","system:truncated","system:versions","system:view_build_status_v2","system:views_builds_in_progress","system_distributed:cdc_generation_timestamps","system_distributed:cdc_streams_descriptions_v2","system_distributed:service_levels","system_distributed:view_build_status","system_distributed_everywhere:cdc_generation_descriptions_v2","system_schema:aggregates","system_schema:columns","system_schema:computed_columns","system_schema:dropped_columns","system_schema:functions","system_schema:indexes","system_schema:keyspaces","system_schema:scylla_aggregates","system_schema:scylla_keyspaces","system_schema:scylla_tables","system_schema:tables","system_schema:triggers","system_schema:types","system_schema:view_virtual_columns","system_schema:views","system_traces:events","system_traces:node_slow_log","system_traces:node_slow_log_time_idx","system_traces:sessions","system_traces:sessions_time_idx","tcae_keyspaces:items"]
```

## Interaction 4: GET /column_family/name/keyspace

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
Content-Length: 126
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
["system","system_auth","system_distributed","system_distributed_everywhere","system_schema","system_traces","tcae_keyspaces"]
```

## Interaction 5: GET /column_family/

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
Transfer-Encoding: chunked
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
[{"ks":"system","cf":"IndexInfo","type":"ColumnFamilies"}, {"ks":"system_schema","cf":"aggregates","type":"ColumnFamilies"}, {"ks":"system","cf":"batchlog","type":"ColumnFamilies"}, {"ks":"system","cf":"built_views","type":"ColumnFamilies"}, {"ks":"system_distributed_everywhere","cf":"cdc_generation_descriptions_v2","type":"ColumnFamilies"}, {"ks":"system_distributed","cf":"cdc_generation_timestamps","type":"ColumnFamilies"}, {"ks":"system","cf":"cdc_generations_v3","type":"ColumnFamilies"}, {"ks":"system","cf":"cdc_local","type":"ColumnFamilies"}, {"ks":"system_distributed","cf":"cdc_streams_descriptions_v2","type":"ColumnFamilies"}, {"ks":"system","cf":"clients","type":"ColumnFamilies"}, {"ks":"system","cf":"cluster_status","type":"ColumnFamilies"}, {"ks":"system_schema","cf":"columns","type":"ColumnFamilies"}, {"ks":"system","cf":"commitlog_cleanups","type":"ColumnFamilies"}, {"ks":"system","cf":"compaction_history","type":"ColumnFamilies"}, {"ks":"system","cf":"compactions_in_progress","type":"ColumnFamilies"}, {"ks":"system_schema","cf":"computed_columns","type":"ColumnFamilies"}, {"ks":"system","cf":"config","type":"ColumnFamilies"}, {"ks":"system","cf":"discovery","type":"ColumnFamilies"}, {"ks":"system_schema","cf":"dropped_columns","type":"ColumnFamilies"}, {"ks":"system_traces","cf":"events","type":"ColumnFamilies"}, {"ks":"system_schema","cf":"functions","type":"ColumnFamilies"}, {"ks":"system","cf":"group0_history","type":"ColumnFamilies"}, {"ks":"system","cf":"hints","type":"ColumnFamilies"}, {"ks":"system_schema","cf":"indexes","type":"ColumnFamilies"}, {"ks":"tcae_keyspaces","cf":"items","type":"ColumnFamilies"}, {"ks":"system_schema","cf":"keyspaces","type":"ColumnFamilies"}, {"ks":"system","cf":"large_cells","type":"ColumnFamilies"}, {"ks":"system","cf":"large_partitions","type":"ColumnFamilies"}, {"ks":"system","cf":"large_rows","type":"ColumnFamilies"}, {"ks":"system","cf":"local","type":"ColumnFamilies"}, {"ks":"system_traces","cf":"node_slow_log","type":"ColumnFamilies"}, {"ks":"system_traces","cf":"node_slow_log_time_idx","type":"ColumnFamilies"}, {"ks":"system","cf":"paxos","type":"ColumnFamilies"}, {"ks":"system","cf":"peer_events","type":"ColumnFamilies"}, {"ks":"system","cf":"peers","type":"ColumnFamilies"}, {"ks":"system","cf":"protocol_servers","type":"ColumnFamilies"}, {"ks":"system","cf":"raft","type":"ColumnFamilies"}, {"ks":"system","cf":"raft_snapshot_config","type":"ColumnFamilies"}, {"ks":"system","cf":"raft_snapshots","type":"ColumnFamilies"}, {"ks":"system","cf":"raft_state","type":"ColumnFamilies"}, {"ks":"system","cf":"range_xfers","type":"ColumnFamilies"}, {"ks":"system","cf":"repair_history","type":"ColumnFamilies"}, {"ks":"system","cf":"role_attributes","type":"ColumnFamilies"}, {"ks":"system","cf":"role_members","type":"ColumnFamilies"}, {"ks":"system","cf":"role_permissions","type":"ColumnFamilies"}, {"ks":"system","cf":"roles","type":"ColumnFamilies"}, {"ks":"system","cf":"runtime_info","type":"ColumnFamilies"}, {"ks":"system_schema","cf":"scylla_aggregates","type":"ColumnFamilies"}, {"ks":"system_schema","cf":"scylla_keyspaces","type":"ColumnFamilies"}, {"ks":"system","cf":"scylla_local","type":"ColumnFamilies"}, {"ks":"system","cf":"scylla_table_schema_history","type":"ColumnFamilies"}, {"ks":"system_schema","cf":"scylla_tables","type":"ColumnFamilies"}, {"ks":"system","cf":"scylla_views_builds_in_progress","type":"ColumnFamilies"}, {"ks":"system_distributed","cf":"service_levels","type":"ColumnFamilies"}, {"ks":"system","cf":"service_levels_v2","type":"ColumnFamilies"}, {"ks":"system_traces","cf":"sessions","type":"ColumnFamilies"}, {"ks":"system_traces","cf":"sessions_time_idx","type":"ColumnFamilies"}, {"ks":"system","cf":"size_estimates","type":"ColumnFamilies"}, {"ks":"system","cf":"snapshots","type":"ColumnFamilies"}, {"ks":"system","cf":"sstable_activity","type":"ColumnFamilies"}, {"ks":"system_schema","cf":"tables","type":"ColumnFamilies"}, {"ks":"system","cf":"tablets","type":"ColumnFamilies"}, {"ks":"system","cf":"token_ring","type":"ColumnFamilies"}, {"ks":"system","cf":"topology","type":"ColumnFamilies"}, {"ks":"system","cf":"topology_requests","type":"ColumnFamilies"}, {"ks":"system_schema","cf":"triggers","type":"ColumnFamilies"}, {"ks":"system","cf":"truncated","type":"ColumnFamilies"}, {"ks":"system_schema","cf":"types","type":"ColumnFamilies"}, {"ks":"system","cf":"versions","type":"ColumnFamilies"}, {"ks":"system_distributed","cf":"view_build_status","type":"ColumnFamilies"}, {"ks":"system","cf":"view_build_status_v2","type":"ColumnFamilies"}, {"ks":"system_schema","cf":"view_virtual_columns","type":"ColumnFamilies"}, {"ks":"system_schema","cf":"views","type":"ColumnFamilies"}, {"ks":"system","cf":"views_builds_in_progress","type":"ColumnFamilies"}]
```

## Interaction 6: GET /storage_service/natural_endpoints/tcae_keyspaces?cf=items&key=1

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
Content-Length: 12
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
["{{ip-1}}"]
```

## Interaction 7: GET /storage_service/ownership/tcae_keyspaces

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
Content-Length: 35
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
[{"key": "{{ip-1}}", "value": "1"}]
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–7 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–7 |
| collapsed | whole recording | `\["-?[0-9]{10,}"(, "-?[0-9]{10,}")*\]` | `["TOKEN"]` | none |
| collapsed | whole recording | `\[\{"key":"-?[0-9]{10,}","value":"[^"]*"\}(, \{"key":"-?[0-9]{10,}","value":"[^"]*"\})*\]` | `[{"key":"TOKEN","value":"ADDRESS"}]` | none |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | none |
| normalized | whole recording | `(?<![0-9.])(?!127\.)[0-9]{1,3}(\.[0-9]{1,3}){3}(?![0-9.])` | `{{ip-N}}` | 6, 7 |
| collapsed | whole recording | `(?<![0-9])1[0-9]{9}(?![0-9])` | `1000000000` | none |
| collapsed | whole recording | `"value": [0-9]+\}` | `"value": 0}` | none |
| collapsed | whole recording | `"value": "[01](\.[0-9]+)?"` | `"value": "1"` | 7 |
| collapsed | whole recording | `"total":[0-9]+,"live":[0-9]+` | `"total":0,"live":0` | none |
| collapsed | whole recording | `(?m)^[0-9]{3,9}$` | `1000000` | none |
| ordered | response body | the root array, requests matching `^/(column_family/(name(/keyspace)?)?\|storage_service/keyspaces\|storage_service/logging_level\|system/logger)(\?\|$)` | sorted by their elements' canonical JSON | 0–5 |
