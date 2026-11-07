## Interaction 0: GET /storage_service/host_id

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
Content-Length: 44
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
[{"key": "{{ip-1}}", "value": "{{uuid-1}}"}]
```

## Interaction 1: GET /storage_service/hostid/local

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
"{{uuid-1}}"
```

## Interaction 2: GET /storage_service/tokens

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
["TOKEN"]
```

## Interaction 3: GET /storage_service/tokens_endpoint

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
[{"key":"TOKEN","value":"ADDRESS"}]
```

## Interaction 4: GET /storage_service/ownership

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

## Interaction 5: GET /storage_service/generation_number

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
Content-Length: 10
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
1000000000
```

## Interaction 6: GET /storage_service/operation_mode

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
Content-Length: 8
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
"NORMAL"
```

## Interaction 7: GET /storage_service/is_initialized

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
Content-Length: 4
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
true
```

## Interaction 8: GET /storage_service/is_starting

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
Content-Length: 5
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
false
```

## Interaction 9: GET /storage_service/gossiping

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
Content-Length: 4
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
true
```

## Interaction 10: GET /storage_service/native_transport

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
Content-Length: 4
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
true
```

## Interaction 11: GET /storage_service/rpc_server

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
Content-Length: 5
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
false
```

## Interaction 12: GET /storage_service/join_ring

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
Content-Length: 4
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
true
```

## Interaction 13: GET /storage_service/nodes/joining

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
Content-Length: 2
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
[]
```

## Interaction 14: GET /storage_service/nodes/leaving

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
Content-Length: 2
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
[]
```

## Interaction 15: GET /storage_service/nodes/moving

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
Content-Length: 2
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
[]
```

## Interaction 16: GET /storage_service/load_map

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
Content-Length: 33
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
[{"key": "{{ip-1}}", "value": 0}]
```

## Interaction 17: GET /storage_service/removal_status

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
Content-Length: 31
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
"No token removals in process."
```

## Interaction 18: GET /raft/leader_host

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
"{{uuid-1}}"
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–18 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–18 |
| collapsed | whole recording | `\["-?[0-9]{10,}"(, "-?[0-9]{10,}")*\]` | `["TOKEN"]` | 2 |
| collapsed | whole recording | `\[\{"key":"-?[0-9]{10,}","value":"[^"]*"\}(, \{"key":"-?[0-9]{10,}","value":"[^"]*"\})*\]` | `[{"key":"TOKEN","value":"ADDRESS"}]` | 3 |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | 0, 1, 18 |
| normalized | whole recording | `(?<![0-9.])(?!127\.)[0-9]{1,3}(\.[0-9]{1,3}){3}(?![0-9.])` | `{{ip-N}}` | 0, 3, 4, 16 |
| collapsed | whole recording | `(?<![0-9])1[0-9]{9}(?![0-9])` | `1000000000` | 5 |
| collapsed | whole recording | `"value": [0-9]+\}` | `"value": 0}` | 16 |
| collapsed | whole recording | `"value": "[01](\.[0-9]+)?"` | `"value": "1"` | 4 |
| collapsed | whole recording | `"total":[0-9]+,"live":[0-9]+` | `"total":0,"live":0` | none |
| collapsed | whole recording | `(?m)^[0-9]{3,9}$` | `1000000` | none |
| ordered | response body | the root array, requests matching `^/(column_family/(name(/keyspace)?)?\|storage_service/keyspaces\|storage_service/logging_level\|system/logger)(\?\|$)` | sorted by their elements' canonical JSON | none |
