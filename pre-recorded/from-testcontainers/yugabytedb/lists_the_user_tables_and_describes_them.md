## Interaction 0: GET /api/v1/tables

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
Content-Type: text/plain
Content-Length: 731
X-Content-Type-Options: nosniff
Access-Control-Allow-Origin: *
```
### Response body recorded for playback (200: text/plain):

```
{"user":[{"keyspace":"yugabyte","table_name":"tcae_sql","state":"RUNNING","message":"","uuid":"000033c3000030008000000000004000","ysql_oid":"16384","hidden":false,"on_disk_size":{"wal_files_size":"X","wal_files_size_bytes":0,"sst_files_size":"X","sst_files_size_bytes":0,"uncompressed_sst_file_size":"X","uncompressed_sst_file_size_bytes":0,"has_missing_size":false}},{"keyspace":"tcae_ks","table_name":"items","state":"RUNNING","message":"","uuid":"{{uuid-1}}","ysql_oid":"","hidden":false,"on_disk_size":{"wal_files_size":"X","wal_files_size_bytes":0,"sst_files_size":"X","sst_files_size_bytes":0,"uncompressed_sst_file_size":"X","uncompressed_sst_file_size_bytes":0,"has_missing_size":false}}],"index":[],"system":["COLLAPSED"]}
```

## Interaction 1: GET /api/v1/table?id={{uuid-1}}

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
Content-Type: text/plain
Content-Length: 816
X-Content-Type-Options: nosniff
Access-Control-Allow-Origin: *
```
### Response body recorded for playback (200: text/plain):

```
{"table_name":"tcae_ks.items","table_id":"{{uuid-1}}","table_version":0,"table_type":"YQL_TABLE_TYPE","table_state":"Running","table_state_message":"","table_replication_info":{"live_replicas":{"num_replicas":1,"placement_blocks":[{"cloud_info":{"placement_cloud":"cloud1","placement_region":"datacenter1","placement_zone":"rack1"},"min_num_replicas":1}],"placement_uuid":"{{uuid-20}}"}},"columns":[{"column":"id","id":"0","type":"int32 NOT NULL HASH"},{"column":"name","id":"1","type":"string NULLABLE VALUE"}],"tablets":[{"tablet_id":"{{uuid-21}}","partition":"hash_split: [0x0000, 0xFFFF]","split_depth":0,"state":"Running","hidden":"false","message":"Tablet reported with an active leader","locations":[{"uuid":"{{uuid-22}}","role":"LEADER","location":"http://{{ip-1}}:9000/tablet?id={{uuid-21}}"}]}],"Tasks":[]}
```

## Interaction 2: GET /api/v1/table?keyspace_name=tcae_ks&table_name=items

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
Content-Type: text/plain
Content-Length: 816
X-Content-Type-Options: nosniff
Access-Control-Allow-Origin: *
```
### Response body recorded for playback (200: text/plain):

```
{"table_name":"tcae_ks.items","table_id":"{{uuid-1}}","table_version":0,"table_type":"YQL_TABLE_TYPE","table_state":"Running","table_state_message":"","table_replication_info":{"live_replicas":{"num_replicas":1,"placement_blocks":[{"cloud_info":{"placement_cloud":"cloud1","placement_region":"datacenter1","placement_zone":"rack1"},"min_num_replicas":1}],"placement_uuid":"{{uuid-20}}"}},"columns":[{"column":"id","id":"0","type":"int32 NOT NULL HASH"},{"column":"name","id":"1","type":"string NULLABLE VALUE"}],"tablets":[{"tablet_id":"{{uuid-21}}","partition":"hash_split: [0x0000, 0xFFFF]","split_depth":0,"state":"Running","hidden":"false","message":"Tablet reported with an active leader","locations":[{"uuid":"{{uuid-22}}","role":"LEADER","location":"http://{{ip-1}}:9000/tablet?id={{uuid-21}}"}]}],"Tasks":[]}
```

## Interaction 3: GET /api/v1/table?id=000033c3000030008000000000004000

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
Content-Type: text/plain
Content-Length: 844
X-Content-Type-Options: nosniff
Access-Control-Allow-Origin: *
```
### Response body recorded for playback (200: text/plain):

```
{"table_name":"yugabyte.tcae_sql","table_id":"000033c3000030008000000000004000","table_version":0,"table_type":"PGSQL_TABLE_TYPE","table_state":"Running","table_state_message":"","table_replication_info":{"live_replicas":{"num_replicas":1,"placement_blocks":[{"cloud_info":{"placement_cloud":"cloud1","placement_region":"datacenter1","placement_zone":"rack1"},"min_num_replicas":1}],"placement_uuid":"{{uuid-20}}"}},"columns":[{"column":"id","id":"0","type":"int32 NOT NULL HASH"},{"column":"name","id":"1","type":"string NULLABLE VALUE"}],"tablets":[{"tablet_id":"{{uuid-23}}","partition":"hash_split: [0x0000, 0xFFFF]","split_depth":0,"state":"Running","hidden":"false","message":"Tablet reported with an active leader","locations":[{"uuid":"{{uuid-22}}","role":"LEADER","location":"http://{{ip-1}}:9000/tablet?id={{uuid-23}}"}]}],"Tasks":[]}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | none |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–3 |
| collapsed | whole recording | `"instance_seqno":-?[0-9][0-9.eE+-]*` | `"instance_seqno":0` | none |
| collapsed | whole recording | `"start_time_us":-?[0-9][0-9.eE+-]*` | `"start_time_us":0` | none |
| collapsed | whole recording | `"time_since_hb":"[^"]*"` | `"time_since_hb":"X"` | none |
| collapsed | whole recording | `"time_since_hb_sec":-?[0-9][0-9.eE+-]*` | `"time_since_hb_sec":0` | none |
| collapsed | whole recording | `"uptime_seconds":-?[0-9][0-9.eE+-]*` | `"uptime_seconds":0` | none |
| collapsed | whole recording | `"ram_used":"[^"]*"` | `"ram_used":"X"` | none |
| collapsed | whole recording | `"ram_used_bytes":-?[0-9][0-9.eE+-]*` | `"ram_used_bytes":0` | none |
| collapsed | whole recording | `"num_sst_files":-?[0-9][0-9.eE+-]*` | `"num_sst_files":0` | none |
| collapsed | whole recording | `"total_sst_file_size":"[^"]*"` | `"total_sst_file_size":"X"` | none |
| collapsed | whole recording | `"total_sst_file_size_bytes":-?[0-9][0-9.eE+-]*` | `"total_sst_file_size_bytes":0` | none |
| collapsed | whole recording | `"uncompressed_sst_file_size":"[^"]*"` | `"uncompressed_sst_file_size":"X"` | 0 |
| collapsed | whole recording | `"uncompressed_sst_file_size_bytes":-?[0-9][0-9.eE+-]*` | `"uncompressed_sst_file_size_bytes":0` | 0 |
| collapsed | whole recording | `"space_used":-?[0-9][0-9.eE+-]*` | `"space_used":0` | none |
| collapsed | whole recording | `"total_space_size":-?[0-9][0-9.eE+-]*` | `"total_space_size":0` | none |
| collapsed | whole recording | `"read_ops_per_sec":-?[0-9][0-9.eE+-]*` | `"read_ops_per_sec":0` | none |
| collapsed | whole recording | `"write_ops_per_sec":-?[0-9][0-9.eE+-]*` | `"write_ops_per_sec":0` | none |
| collapsed | whole recording | `"user_tablets_total":-?[0-9][0-9.eE+-]*` | `"user_tablets_total":0` | none |
| collapsed | whole recording | `"user_tablets_leaders":-?[0-9][0-9.eE+-]*` | `"user_tablets_leaders":0` | none |
| collapsed | whole recording | `"system_tablets_total":-?[0-9][0-9.eE+-]*` | `"system_tablets_total":0` | none |
| collapsed | whole recording | `"system_tablets_leaders":-?[0-9][0-9.eE+-]*` | `"system_tablets_leaders":0` | none |
| collapsed | whole recording | `"active_tablets":-?[0-9][0-9.eE+-]*` | `"active_tablets":0` | none |
| collapsed | whole recording | `"wal_files_size":"[^"]*"` | `"wal_files_size":"X"` | 0 |
| collapsed | whole recording | `"wal_files_size_bytes":-?[0-9][0-9.eE+-]*` | `"wal_files_size_bytes":0` | 0 |
| collapsed | whole recording | `"sst_files_size":"[^"]*"` | `"sst_files_size":"X"` | 0 |
| collapsed | whole recording | `"sst_files_size_bytes":-?[0-9][0-9.eE+-]*` | `"sst_files_size_bytes":0` | 0 |
| collapsed | whole recording | `"uncompressed_sst_files_size":"[^"]*"` | `"uncompressed_sst_files_size":"X"` | none |
| collapsed | whole recording | `"most_recent_uptime":-?[0-9][0-9.eE+-]*` | `"most_recent_uptime":0` | none |
| collapsed | whole recording | `"name":"mem_tracker_tcmalloc_gc_release_bytes","value":"[0-9]+"` | `"name":"mem_tracker_tcmalloc_gc_release_bytes","value":"0"` | none |
| collapsed | whole recording | `"name":"server_tcmalloc_max_total_thread_cache_bytes","value":"[0-9]+"` | `"name":"server_tcmalloc_max_total_thread_cache_bytes","value":"0"` | none |
| collapsed | whole recording | `"name":"default_memory_limit_to_ram_ratio","value":"[0-9.]+"` | `"name":"default_memory_limit_to_ram_ratio","value":"0"` | none |
| collapsed | whole recording | `"name":"metric_node_name","value":"[^"]*"` | `"name":"metric_node_name","value":"HOST:PORT"` | none |
| collapsed | whole recording | `"name":"heap_profile_path","value":"[^"]*"` | `"name":"heap_profile_path","value":"/tmp/yb-tserver.PID"` | none |
| collapsed | whole recording | `(?s),"system":\[.*\]\}` | `,"system":["COLLAPSED"]}` | 0 |
| collapsed | whole recording | `exported_instance="[^"]*"` | `exported_instance="HOST:PORT"` | none |
| collapsed | whole recording | `(?<=\} [0-9]{1,6} )1[0-9]{12}` | `1000000000000` | none |
| normalized | whole recording | `(?<![0-9a-fA-F-])[0-9a-f]{8}-?[0-9a-f]{4}-?4[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}(?![0-9a-fA-F-])` | `{{uuid-N}}` | 0–3 |
| normalized | whole recording | `(?<![0-9.])(?!127\.)[0-9]{1,3}(\.[0-9]{1,3}){3}(?![0-9.])` | `{{ip-N}}` | 1–3 |
