## LICENSE NOTICE

CockroachDB v23.1.30 is under the CockroachDB Software License (Cockroach Labs, Inc.; /licenses/LICENSE in the image cockroachdb/cockroach:v23.1.30). These tapes record a single-node test cluster, the 'Limited Non-Production Use' the licence allows without a licence key (testing, one node).

The licence has no clause against reverse engineering and none against recording or publishing HTTP responses. It does forbid circumventing its Protective Measures (licence-key and telemetry requirements), forbids removing the Licensor's notices, and defines 'Benchmark' as any benchmark, comparative test or evaluation of the Software, to be disclosed with the information needed to replicate it. Honour those terms as you would if you ran the image, and do not use these tapes as an evaluation or comparison of CockroachDB. See UPSTREAM-TERMS.md.

## Interaction 0: POST /api/v2/sql/

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 126
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Cockroach-API-Session: X_COCKROACH_API_SESSION_1
```
### Request body recorded for playback ():

```
{"database":"defaultdb","execute":true,"statements":[{"sql":"CREATE TABLE tcae_http_demo (id INT PRIMARY KEY, name STRING)"}]}
```
### Response headers recorded for playback:

```
Cache-Control: no-cache
Content-Type: application/json
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
```
### Response body recorded for playback (200: application/json):

```
{"num_statements":1,"execution":{"txn_results":[{"statement":1,"tag":"CREATE TABLE","start":"2000-01-01T00:00:00Z","end":"2000-01-01T00:00:00Z","rows_affected":0,"columns":[{"name":"rows_affected","type":"INT8","oid":20}]}]}}
```

## Interaction 1: POST /api/v2/sql/

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 121
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Cockroach-API-Session: X_COCKROACH_API_SESSION_1
```
### Request body recorded for playback ():

```
{"database":"defaultdb","execute":true,"statements":[{"sql":"INSERT INTO tcae_http_demo VALUES (1, 'ada'), (2, 'bob')"}]}
```
### Response headers recorded for playback:

```
Cache-Control: no-cache
Content-Type: application/json
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
```
### Response body recorded for playback (200: application/json):

```
{"num_statements":1,"execution":{"txn_results":[{"statement":1,"tag":"INSERT","start":"2000-01-01T00:00:00Z","end":"2000-01-01T00:00:00Z","rows_affected":2,"columns":[{"name":"rows_affected","type":"INT8","oid":20}]}]}}
```

## Interaction 2: POST /api/v2/sql/

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 112
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Cockroach-API-Session: X_COCKROACH_API_SESSION_1
```
### Request body recorded for playback ():

```
{"database":"defaultdb","execute":true,"statements":[{"sql":"SELECT id, name FROM tcae_http_demo ORDER BY id"}]}
```
### Response headers recorded for playback:

```
Cache-Control: no-cache
Content-Type: application/json
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
```
### Response body recorded for playback (200: application/json):

```
{"num_statements":1,"execution":{"txn_results":[{"statement":1,"tag":"SELECT","start":"2000-01-01T00:00:00Z","end":"2000-01-01T00:00:00Z","rows_affected":0,"columns":[{"name":"id","type":"INT8","oid":20},{"name":"name","type":"STRING","oid":25}],"rows":[{"id":1,"name":"ada"},{"id":2,"name":"bob"}]}]}}
```

## Interaction 3: POST /api/v2/sql/

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 72
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Cockroach-API-Session: X_COCKROACH_API_SESSION_1
```
### Request body recorded for playback ():

```
{"database":"defaultdb","execute":true,"statements":[{"sql":"SELEC 1"}]}
```
### Response headers recorded for playback:

```
Cache-Control: no-cache
Content-Type: application/json
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
```
### Response body recorded for playback (400: application/json):

```
{"error":{"code":"42601","message":"parsing statement 1: at or near \"selec\": syntax error","detail":"source SQL:\nSELEC 1\n^\n--\nSELEC 1","severity":"ERROR","source":{"file":"lexer.go","line":399,"function":"Error"}}}
```

## Interaction 4: POST /api/v2/sql/

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 90
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Cockroach-API-Session: X_COCKROACH_API_SESSION_1
```
### Request body recorded for playback ():

```
{"database":"defaultdb","execute":true,"statements":[{"sql":"DROP TABLE tcae_http_demo"}]}
```
### Response headers recorded for playback:

```
Cache-Control: no-cache
Content-Type: application/json
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
```
### Response body recorded for playback (200: application/json):

```
{"num_statements":1,"execution":{"txn_results":[{"statement":1,"tag":"DROP TABLE","start":"2000-01-01T00:00:00Z","end":"2000-01-01T00:00:00Z","rows_affected":0,"columns":[{"name":"rows_affected","type":"INT8","oid":20}]}]}}
```

## Interaction 5: POST /api/v2/sql/

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 58
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Cockroach-API-Session: X_COCKROACH_API_SESSION_1
```
### Request body recorded for playback ():

```
{"database":"defaultdb","statements":[{"sql":"SELECT 1"}]}
```
### Response headers recorded for playback:

```
Cache-Control: no-cache
Content-Type: application/json
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
```
### Response body recorded for playback (200: application/json):

```
{"num_statements":1,"request":{"timeout":"5s","max_result_size":10000,"database":"defaultdb","application_name":"$ api-v2-sql","execute":false,"separate_txns":false,"stop_on_error":false,"statements":[{"sql":"SELECT 1"}]}}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–5 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `Content-Length` | (left out) | 0–5 |
| redacted credential | request and response headers | `X-Cockroach-API-Session` | `X_COCKROACH_API_SESSION_N` | 0–5 |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[tcaeuser]` | none |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[tcae_reader]` | none |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[wrong-password]` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–5 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | 0–2, 4 |
| collapsed | whole recording | `Timestamp\\":[0-9]+` | `Timestamp\\":946684800000000000` | none |
| collapsed | whole recording | `"unique_id":"[A-Za-z0-9+/]{22}=="` | `"unique_id":"AAAAAAAAAAAAAAAAAAAAAA=="` | none |
| collapsed | whole recording | `"id":"[A-Za-z0-9+/]{22}=="` | `"id":"AAAAAAAAAAAAAAAAAAAAAA=="` | none |
| collapsed | whole recording | `"client_address":"[0-9.:a-f]+"` | `"client_address":"10.0.0.1:50000"` | none |
| collapsed | whole recording | `"total_active_time":[0-9]+` | `"total_active_time":1000000` | none |
| collapsed | whole recording | `"descriptor_id":[0-9]+` | `"descriptor_id":100` | none |
| collapsed | whole recording | `"started_at":[0-9]+` | `"started_at":946684800000000000` | none |
| collapsed | whole recording | `"updated_at":[0-9]+` | `"updated_at":946684800000000000` | none |
| collapsed | whole recording | `"total_system_memory":[0-9]+` | `"total_system_memory":8589934592` | none |
| collapsed | whole recording | `"num_cpus":[0-9]+` | `"num_cpus":4` | none |
| collapsed | whole recording | `"metrics":\{[^{}]*\}` | `"metrics":{"liveness.livenodes":1}` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
