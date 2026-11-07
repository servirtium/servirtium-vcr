## LICENSE NOTICE

Recorded against datafuselabs/databend:v1.2.615. Databend is Apache-2.0,
except its enterprise code, which is in the same binary under the
Elastic License 2.0: no hosted or managed service for third parties, no
circumventing licence keys, no removing notices. Use of this tape is
subject to those terms; see UPSTREAM-TERMS.md in servirtium-vcr's pre-
recorded/from-testcontainers.

## Interaction 0: POST /v1/query

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[tcuser]
Connection: keep-alive
Content-Length: 23
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"sql":"select 1 + 41"}
```
### Response headers recorded for playback:

```
content-type: application/json; charset=utf-8
x-databend-query-id: 00000000-0000-0000-0000-000000000000
x-databend-query-state: Succeeded
x-databend-query-page-rows: 1
content-length: 922
```
### Response body recorded for playback (200: application/json; charset=utf-8):

```
{"id":"00000000-0000-0000-0000-000000000000","session_id":"00000000-0000-0000-0000-000000000000","node_id":"NODE-ID","state":"Succeeded","session":{"database":"default","role":"account_admin","settings":{},"txn_state":"AutoCommit","last_server_info":{"id":"NODE-ID","start_time":"2000-01-01T00:00:00Z"},"last_query_ids":["00000000-0000-0000-0000-000000000000"]},"error":null,"warnings":[],"has_result_set":true,"schema":[{"name":"1 + 41","type":"UInt8"}],"data":[["42"]],"affect":null,"stats":{"scan_progress":{"rows":1,"bytes":1},"write_progress":{"rows":0,"bytes":0},"result_progress":{"rows":1,"bytes":1},"total_scan":{"rows":1,"bytes":1},"running_time_ms":0},"stats_uri":"/v1/query/00000000-0000-0000-0000-000000000000","final_uri":"/v1/query/00000000-0000-0000-0000-000000000000/final","next_uri":"/v1/query/00000000-0000-0000-0000-000000000000/final","kill_uri":"/v1/query/00000000-0000-0000-0000-000000000000/kill"}
```

## Interaction 1: POST /v1/query

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[tcuser-wrong-password]
Connection: keep-alive
Content-Length: 23
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"sql":"select 1 + 41"}
```
### Response headers recorded for playback:

```
content-length: 51
```
### Response body recorded for playback (401: text/plain):

```
{"error":{"code":"401","message":"wrong password"}}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0, 1 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[tcuser]` | 0 |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[tcuser-wrong-password]` | 1 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0, 1 |
| collapsed | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `00000000-0000-0000-0000-000000000000` | 0 |
| collapsed | whole recording | `"node_id":"[A-Za-z0-9]{16,24}"` | `"node_id":"NODE-ID"` | 0 |
| collapsed | whole recording | `"id":"[A-Za-z0-9]{16,24}"` | `"id":"NODE-ID"` | 0 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | 0 |
| collapsed | whole recording | `"running_time_ms":[0-9.]+` | `"running_time_ms":0` | 0 |
