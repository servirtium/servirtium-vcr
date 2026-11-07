## Interaction 0: GET /healthz

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
content-length: 20
content-type: text/plain; charset=utf-8
vary: Origin, Access-Control-Request-Method, Access-Control-Request-Headers
```
### Response body recorded for playback (200: text/plain; charset=utf-8):

```
healthz check passed
```

## Interaction 1: PUT /collections/tcae

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 39
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"vectors":{"size":4,"distance":"Dot"}}
```
### Response headers recorded for playback:

```
content-length: 40
content-type: application/json
vary: Origin, Access-Control-Request-Method, Access-Control-Request-Headers
```
### Response body recorded for playback (200: application/json):

```
{"result":true,"status":"ok","time":0.0}
```

## Interaction 2: GET /collections/tcae

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
content-length: 758
content-type: application/json
vary: Origin, Access-Control-Request-Method, Access-Control-Request-Headers
```
### Response body recorded for playback (200: application/json):

```
{"result":{"status":"green","optimizer_status":"ok","vectors_count":0,"indexed_vectors_count":0,"points_count":0,"segments_count":8,"config":{"params":{"vectors":{"size":4,"distance":"Dot"},"shard_number":1,"replication_factor":1,"write_consistency_factor":1,"on_disk_payload":true},"hnsw_config":{"m":16,"ef_construct":100,"full_scan_threshold":10000,"max_indexing_threads":0,"on_disk":false},"optimizer_config":{"deleted_threshold":0.2,"vacuum_min_vector_number":1000,"default_segment_number":0,"max_segment_size":null,"memmap_threshold":null,"indexing_threshold":20000,"flush_interval_sec":5,"max_optimization_threads":1},"wal_config":{"wal_capacity_mb":32,"wal_segments_ahead":0},"quantization_config":null},"payload_schema":{}},"status":"ok","time":0.0}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–2 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–2 |
| collapsed | whole recording | `"time":[0-9.e-]+` | `"time":0.0` | 1, 2 |
| ordered | response headers | every header | sorted by name; a repeated header's lines keep their order | 0–2 |
