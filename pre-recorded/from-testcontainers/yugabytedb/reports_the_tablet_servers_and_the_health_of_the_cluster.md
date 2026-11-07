## Interaction 0: GET /api/v1/tablet-servers

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
Content-Length: 586
X-Content-Type-Options: nosniff
Access-Control-Allow-Origin: *
```
### Response body recorded for playback (200: text/plain):

```
{"{{uuid-1}}":{"{{ip-1}}:9000":{"time_since_hb":"X","time_since_hb_sec":0,"status":"ALIVE","uptime_seconds":0,"ram_used":"X","ram_used_bytes":0,"num_sst_files":0,"total_sst_file_size":"X","total_sst_file_size_bytes":0,"uncompressed_sst_file_size":"X","uncompressed_sst_file_size_bytes":0,"path_metrics":[{"path":"/root/var/data","space_used":0,"total_space_size":0}],"read_ops_per_sec":0,"write_ops_per_sec":0,"user_tablets_total":0,"user_tablets_leaders":0,"system_tablets_total":0,"system_tablets_leaders":0,"active_tablets":0,"cloud":"cloud1","region":"datacenter1","zone":"rack1"}}}
```

## Interaction 1: GET /api/v1/health-check

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
Content-Length: 70
X-Content-Type-Options: nosniff
Access-Control-Allow-Origin: *
```
### Response body recorded for playback (200: text/plain):

```
{"dead_nodes":[],"most_recent_uptime":0,"under_replicated_tablets":[]}
```

## Interaction 2: GET /api/v1/cluster-config

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
Content-Length: 300
X-Content-Type-Options: nosniff
Access-Control-Allow-Origin: *
```
### Response body recorded for playback (200: text/plain):

```
{"version":1,"replication_info":{"live_replicas":{"num_replicas":1,"placement_blocks":[{"cloud_info":{"placement_cloud":"cloud1","placement_region":"datacenter1","placement_zone":"rack1"},"min_num_replicas":1}],"placement_uuid":"{{uuid-1}}"}},"cluster_uuid":"{{uuid-2}}","universe_uuid":"{{uuid-3}}"}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | none |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–2 |
| collapsed | whole recording | `"instance_seqno":-?[0-9][0-9.eE+-]*` | `"instance_seqno":0` | none |
| collapsed | whole recording | `"start_time_us":-?[0-9][0-9.eE+-]*` | `"start_time_us":0` | none |
| collapsed | whole recording | `"time_since_hb":"[^"]*"` | `"time_since_hb":"X"` | 0 |
| collapsed | whole recording | `"time_since_hb_sec":-?[0-9][0-9.eE+-]*` | `"time_since_hb_sec":0` | 0 |
| collapsed | whole recording | `"uptime_seconds":-?[0-9][0-9.eE+-]*` | `"uptime_seconds":0` | 0 |
| collapsed | whole recording | `"ram_used":"[^"]*"` | `"ram_used":"X"` | 0 |
| collapsed | whole recording | `"ram_used_bytes":-?[0-9][0-9.eE+-]*` | `"ram_used_bytes":0` | 0 |
| collapsed | whole recording | `"num_sst_files":-?[0-9][0-9.eE+-]*` | `"num_sst_files":0` | 0 |
| collapsed | whole recording | `"total_sst_file_size":"[^"]*"` | `"total_sst_file_size":"X"` | 0 |
| collapsed | whole recording | `"total_sst_file_size_bytes":-?[0-9][0-9.eE+-]*` | `"total_sst_file_size_bytes":0` | 0 |
| collapsed | whole recording | `"uncompressed_sst_file_size":"[^"]*"` | `"uncompressed_sst_file_size":"X"` | 0 |
| collapsed | whole recording | `"uncompressed_sst_file_size_bytes":-?[0-9][0-9.eE+-]*` | `"uncompressed_sst_file_size_bytes":0` | 0 |
| collapsed | whole recording | `"space_used":-?[0-9][0-9.eE+-]*` | `"space_used":0` | 0 |
| collapsed | whole recording | `"total_space_size":-?[0-9][0-9.eE+-]*` | `"total_space_size":0` | 0 |
| collapsed | whole recording | `"read_ops_per_sec":-?[0-9][0-9.eE+-]*` | `"read_ops_per_sec":0` | 0 |
| collapsed | whole recording | `"write_ops_per_sec":-?[0-9][0-9.eE+-]*` | `"write_ops_per_sec":0` | 0 |
| collapsed | whole recording | `"user_tablets_total":-?[0-9][0-9.eE+-]*` | `"user_tablets_total":0` | 0 |
| collapsed | whole recording | `"user_tablets_leaders":-?[0-9][0-9.eE+-]*` | `"user_tablets_leaders":0` | 0 |
| collapsed | whole recording | `"system_tablets_total":-?[0-9][0-9.eE+-]*` | `"system_tablets_total":0` | 0 |
| collapsed | whole recording | `"system_tablets_leaders":-?[0-9][0-9.eE+-]*` | `"system_tablets_leaders":0` | 0 |
| collapsed | whole recording | `"active_tablets":-?[0-9][0-9.eE+-]*` | `"active_tablets":0` | 0 |
| collapsed | whole recording | `"wal_files_size":"[^"]*"` | `"wal_files_size":"X"` | none |
| collapsed | whole recording | `"wal_files_size_bytes":-?[0-9][0-9.eE+-]*` | `"wal_files_size_bytes":0` | none |
| collapsed | whole recording | `"sst_files_size":"[^"]*"` | `"sst_files_size":"X"` | none |
| collapsed | whole recording | `"sst_files_size_bytes":-?[0-9][0-9.eE+-]*` | `"sst_files_size_bytes":0` | none |
| collapsed | whole recording | `"uncompressed_sst_files_size":"[^"]*"` | `"uncompressed_sst_files_size":"X"` | none |
| collapsed | whole recording | `"most_recent_uptime":-?[0-9][0-9.eE+-]*` | `"most_recent_uptime":0` | 1 |
| collapsed | whole recording | `"name":"mem_tracker_tcmalloc_gc_release_bytes","value":"[0-9]+"` | `"name":"mem_tracker_tcmalloc_gc_release_bytes","value":"0"` | none |
| collapsed | whole recording | `"name":"server_tcmalloc_max_total_thread_cache_bytes","value":"[0-9]+"` | `"name":"server_tcmalloc_max_total_thread_cache_bytes","value":"0"` | none |
| collapsed | whole recording | `"name":"default_memory_limit_to_ram_ratio","value":"[0-9.]+"` | `"name":"default_memory_limit_to_ram_ratio","value":"0"` | none |
| collapsed | whole recording | `"name":"metric_node_name","value":"[^"]*"` | `"name":"metric_node_name","value":"HOST:PORT"` | none |
| collapsed | whole recording | `"name":"heap_profile_path","value":"[^"]*"` | `"name":"heap_profile_path","value":"/tmp/yb-tserver.PID"` | none |
| collapsed | whole recording | `(?s),"system":\[.*\]\}` | `,"system":["COLLAPSED"]}` | none |
| collapsed | whole recording | `exported_instance="[^"]*"` | `exported_instance="HOST:PORT"` | none |
| collapsed | whole recording | `(?<=\} [0-9]{1,6} )1[0-9]{12}` | `1000000000000` | none |
| normalized | whole recording | `(?<![0-9a-fA-F-])[0-9a-f]{8}-?[0-9a-f]{4}-?4[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}(?![0-9a-fA-F-])` | `{{uuid-N}}` | 0, 2 |
| normalized | whole recording | `(?<![0-9.])(?!127\.)[0-9]{1,3}(\.[0-9]{1,3}){3}(?![0-9.])` | `{{ip-N}}` | 0 |
