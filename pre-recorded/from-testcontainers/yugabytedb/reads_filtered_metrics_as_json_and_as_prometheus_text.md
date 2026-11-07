## Interaction 0: GET /metrics?metrics=num_tablet_servers

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
Content-Length: 340
X-Content-Type-Options: nosniff
Access-Control-Allow-Origin: *
```
### Response body recorded for playback (200: text/plain):

```
[
    {
        "type": "cluster",
        "id": "yb.cluster",
        "attributes": {},
        "metrics": [
            {
                "name": "num_tablet_servers_live",
                "value": 1
            },
            {
                "name": "num_tablet_servers_dead",
                "value": 0
            }
        ]
    }
]
```

## Interaction 1: GET /prometheus-metrics?metrics=num_tablet_servers

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
Content-Length: 893
X-Content-Type-Options: nosniff
Access-Control-Allow-Origin: *
```
### Response body recorded for playback (200: text/plain):

```
# HELP num_tablet_servers_live The number of tablet servers that have responded or done a heartbeat in the time interval defined by the gflag FLAGS_tserver_unresponsive_timeout_ms.
# TYPE num_tablet_servers_live gauge
num_tablet_servers_live{exported_instance="HOST:PORT",metric_type="cluster",metric_id="yb.cluster"} 1 1000000000000
# HELP num_tablet_servers_dead The number of tablet servers that have not responded or done a heartbeat in the time interval defined by the gflag FLAGS_tserver_unresponsive_timeout_ms.
# TYPE num_tablet_servers_dead gauge
num_tablet_servers_dead{exported_instance="HOST:PORT",metric_type="cluster",metric_id="yb.cluster"} 0 1000000000000
# HELP num_of_entries_cut_off Number of metric entries truncated due to exceeding the maximum metric entry limit
# TYPE num_of_entries_cut_off counter
num_of_entries_cut_off{exported_instance="HOST:PORT"} 0 1000000000000

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | none |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0, 1 |
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
| collapsed | whole recording | `(?s),"system":\[.*\]\}` | `,"system":["COLLAPSED"]}` | none |
| collapsed | whole recording | `exported_instance="[^"]*"` | `exported_instance="HOST:PORT"` | 1 |
| collapsed | whole recording | `(?<=\} [0-9]{1,6} )1[0-9]{12}` | `1000000000000` | 1 |
| normalized | whole recording | `(?<![0-9a-fA-F-])[0-9a-f]{8}-?[0-9a-f]{4}-?4[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}(?![0-9a-fA-F-])` | `{{uuid-N}}` | none |
| normalized | whole recording | `(?<![0-9.])(?!127\.)[0-9]{1,3}(\.[0-9]{1,3}){3}(?![0-9.])` | `{{ip-N}}` | none |
