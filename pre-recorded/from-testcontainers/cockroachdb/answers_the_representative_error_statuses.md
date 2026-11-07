## LICENSE NOTICE

CockroachDB v23.1.30 is under the CockroachDB Software License (Cockroach Labs, Inc.; /licenses/LICENSE in the image cockroachdb/cockroach:v23.1.30). These tapes record a single-node test cluster, the 'Limited Non-Production Use' the licence allows without a licence key (testing, one node).

The licence has no clause against reverse engineering and none against recording or publishing HTTP responses. It does forbid circumventing its Protective Measures (licence-key and telemetry requirements), forbids removing the Licensor's notices, and defines 'Benchmark' as any benchmark, comparative test or evaluation of the Software, to be disclosed with the information needed to replicate it. Honour those terms as you would if you ran the image, and do not use these tapes as an evaluation or comparison of CockroachDB. See UPSTREAM-TERMS.md.

## Interaction 0: GET /api/v2/nope/

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Cockroach-API-Session: X_COCKROACH_API_SESSION_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Cache-Control: no-cache
Content-Type: text/plain; charset=utf-8
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
```
### Response body recorded for playback (404: text/plain; charset=utf-8):

```
404 page not found

```

## Interaction 1: GET /api/v2/databases/nope/

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Cockroach-API-Session: X_COCKROACH_API_SESSION_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Cache-Control: no-cache
Content-Type: text/plain; charset=utf-8
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
```
### Response body recorded for playback (500: text/plain; charset=utf-8):

```
An internal server error has occurred. Please check your CockroachDB logs for more details.

```

## Interaction 2: GET /api/v2/nodes/9/ranges/

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Cockroach-API-Session: X_COCKROACH_API_SESSION_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Cache-Control: no-cache
Content-Type: text/plain; charset=utf-8
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
```
### Response body recorded for playback (500: text/plain; charset=utf-8):

```
An internal server error has occurred. Please check your CockroachDB logs for more details.

```

## Interaction 3: GET /api/v2/databases/tcae_shop/tables/nope/

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Cockroach-API-Session: X_COCKROACH_API_SESSION_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Cache-Control: no-cache
Content-Type: text/plain; charset=utf-8
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
```
### Response body recorded for playback (404: text/plain; charset=utf-8):

```
database or table not found

```

## Interaction 4: GET /api/v2/sql/

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Cockroach-API-Session: X_COCKROACH_API_SESSION_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Cache-Control: no-cache
Content-Type: application/json
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
```
### Response body recorded for playback (405: application/json):

```
{"error":{"code":"XXUUU","message":"only POST supported","severity":"ERROR","source":{"file":"api_v2_sql.go","line":263,"function":"execSQL"}}}
```

## Interaction 5: POST /api/v2/login/

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
Cache-Control: no-cache
Content-Type: text/plain; charset=utf-8
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
```
### Response body recorded for playback (400: text/plain; charset=utf-8):

```
username not specified

```

## Interaction 6: GET /api/v2/login/

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
Cache-Control: no-cache
Content-Type: text/plain; charset=utf-8
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
```
### Response body recorded for playback (404: text/plain; charset=utf-8):

```
not found
username not specified

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–6 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `Content-Length` | (left out) | 0–6 |
| redacted credential | request and response headers | `X-Cockroach-API-Session` | `X_COCKROACH_API_SESSION_N` | 0–4 |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[tcaeuser]` | none |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[tcae_reader]` | none |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[wrong-password]` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–6 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | none |
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
