## Interaction 0: GET /api/v1/masters

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
Content-Length: 416
X-Content-Type-Options: nosniff
Access-Control-Allow-Origin: *
```
### Response body recorded for playback (200: text/plain):

```
{"masters":[{"instance_id":{"permanent_uuid":"{{uuid-1}}","instance_seqno":0,"start_time_us":0},"registration":{"private_rpc_addresses":[{"host":"{{ip-1}}","port":7100}],"http_addresses":[{"host":"{{ip-1}}","port":7000}],"cloud_info":{"placement_cloud":"cloud1","placement_region":"datacenter1","placement_zone":"rack1"},"placement_uuid":"","broadcast_addresses":[{"host":"{{ip-1}}","port":7100}]},"role":"LEADER"}]}
```

## Interaction 1: GET /api/v1/is-leader

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
Content-Length: 15
X-Content-Type-Options: nosniff
Access-Control-Allow-Origin: *
```
### Response body recorded for playback (200: text/plain):

```
{"STATUS":"OK"}
```

## Interaction 2: GET /status

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
Content-Length: 2
X-Content-Type-Options: nosniff
Access-Control-Allow-Origin: *
```
### Response body recorded for playback (200: text/plain):

```
{}
```

## Interaction 3: GET /api/v1/tablet-replication

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
Content-Length: 25
X-Content-Type-Options: nosniff
Access-Control-Allow-Origin: *
```
### Response body recorded for playback (200: text/plain):

```
{"leaderless_tablets":[]}
```

## Interaction 4: GET /api/v1/xcluster

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
Content-Length: 158
X-Content-Type-Options: nosniff
Access-Control-Allow-Origin: *
```
### Response body recorded for playback (200: text/plain):

```
{"xcluster_config":{"version":0},"outbound_replication_groups":[],"outbound_streams":[],"replication_status":{},"replication_infos":[],"consumer_registry":{}}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | none |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–4 |
| collapsed | whole recording | `"instance_seqno":-?[0-9][0-9.eE+-]*` | `"instance_seqno":0` | 0 |
| collapsed | whole recording | `"start_time_us":-?[0-9][0-9.eE+-]*` | `"start_time_us":0` | 0 |
| collapsed | whole recording | `"time_since_hb":"[^"]*"` | `"time_since_hb":"X"` | none |
| collapsed | whole recording | `"time_since_hb_sec":-?[0-9][0-9.eE+-]*` | `"time_since_hb_sec":0` | none |
| collapsed | whole recording | `"uptime_seconds":-?[0-9][0-9.eE+-]*` | `"uptime_seconds":0` | none |
| collapsed | whole recording | `"ram_used":"[^"]*"` | `"ram_used":"X"` | none |
| collapsed | whole recording | `"ram_used_bytes":-?[0-9][0-9.eE+-]*` | `"ram_used_bytes":0` | none |
| collapsed | whole recording | `"num_sst_files":-?[0-9][0-9.eE+-]*` | `"num_sst_files":0` | none |
| collapsed | whole recording | `"total_sst_file_size":"[^"]*"` | `"total_sst_file_size":"X"` | none |
| collapsed | whole recording | `"total_sst_file_size_bytes":-?[0-9][0-9.eE+-]*` | `"total_sst_file_size_bytes":0` | none |
| collapsed | whole recording | `"uncompressed_sst_file_size":"[^"]*"` | `"uncompressed_sst_file_size":"X"` | none |
| collapsed | whole recording | `"uncompressed_sst_file_size_bytes":-?[0-9][0-9.eE+-]*` | `"uncompressed_sst_file_size_bytes":0` | none |
| collapsed | whole recording | `"space_used":-?[0-9][0-9.eE+-]*` | `"space_used":0` | none |
| collapsed | whole recording | `"total_space_size":-?[0-9][0-9.eE+-]*` | `"total_space_size":0` | none |
| collapsed | whole recording | `"read_ops_per_sec":-?[0-9][0-9.eE+-]*` | `"read_ops_per_sec":0` | none |
| collapsed | whole recording | `"write_ops_per_sec":-?[0-9][0-9.eE+-]*` | `"write_ops_per_sec":0` | none |
| collapsed | whole recording | `"user_tablets_total":-?[0-9][0-9.eE+-]*` | `"user_tablets_total":0` | none |
| collapsed | whole recording | `"user_tablets_leaders":-?[0-9][0-9.eE+-]*` | `"user_tablets_leaders":0` | none |
| collapsed | whole recording | `"system_tablets_total":-?[0-9][0-9.eE+-]*` | `"system_tablets_total":0` | none |
| collapsed | whole recording | `"system_tablets_leaders":-?[0-9][0-9.eE+-]*` | `"system_tablets_leaders":0` | none |
| collapsed | whole recording | `"active_tablets":-?[0-9][0-9.eE+-]*` | `"active_tablets":0` | none |
| collapsed | whole recording | `"wal_files_size":"[^"]*"` | `"wal_files_size":"X"` | none |
| collapsed | whole recording | `"wal_files_size_bytes":-?[0-9][0-9.eE+-]*` | `"wal_files_size_bytes":0` | none |
| collapsed | whole recording | `"sst_files_size":"[^"]*"` | `"sst_files_size":"X"` | none |
| collapsed | whole recording | `"sst_files_size_bytes":-?[0-9][0-9.eE+-]*` | `"sst_files_size_bytes":0` | none |
| collapsed | whole recording | `"uncompressed_sst_files_size":"[^"]*"` | `"uncompressed_sst_files_size":"X"` | none |
| collapsed | whole recording | `"most_recent_uptime":-?[0-9][0-9.eE+-]*` | `"most_recent_uptime":0` | none |
| collapsed | whole recording | `"name":"mem_tracker_tcmalloc_gc_release_bytes","value":"[0-9]+"` | `"name":"mem_tracker_tcmalloc_gc_release_bytes","value":"0"` | none |
| collapsed | whole recording | `"name":"server_tcmalloc_max_total_thread_cache_bytes","value":"[0-9]+"` | `"name":"server_tcmalloc_max_total_thread_cache_bytes","value":"0"` | none |
| collapsed | whole recording | `"name":"default_memory_limit_to_ram_ratio","value":"[0-9.]+"` | `"name":"default_memory_limit_to_ram_ratio","value":"0"` | none |
| collapsed | whole recording | `"name":"metric_node_name","value":"[^"]*"` | `"name":"metric_node_name","value":"HOST:PORT"` | none |
| collapsed | whole recording | `"name":"heap_profile_path","value":"[^"]*"` | `"name":"heap_profile_path","value":"/tmp/yb-tserver.PID"` | none |
| collapsed | whole recording | `exported_instance="[^"]*"` | `exported_instance="HOST:PORT"` | none |
| collapsed | whole recording | `(?<=\} [0-9]{1,6} )1[0-9]{12}` | `1000000000000` | none |
| normalized | whole recording | `(?<![0-9a-fA-F-])[0-9a-f]{8}-?[0-9a-f]{4}-?4[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}(?![0-9a-fA-F-])` | `{{uuid-N}}` | 0 |
| normalized | whole recording | `(?<![0-9.])(?!127\.)[0-9]{1,3}(\.[0-9]{1,3}){3}(?![0-9.])` | `{{ip-N}}` | 0 |
| ordered | response body | JSON arrays at `/system`, requests matching `^/api/v1/tables$` | sorted by `/keyspace,/table_name` | none |
