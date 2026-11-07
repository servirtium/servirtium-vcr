## Interaction 0: GET /storage_service/trace_probability

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
Content-Length: 1
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
0
```

## Interaction 1: POST /storage_service/trace_probability?probability=0.25

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
Content-Length: 0
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
```

## Interaction 2: GET /storage_service/trace_probability

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
0.25
```

## Interaction 3: POST /storage_service/trace_probability?probability=0

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
Content-Length: 0
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
```

## Interaction 4: GET /storage_service/trace_probability

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
Content-Length: 1
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
0
```

## Interaction 5: GET /storage_service/slow_query

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
Content-Length: 67
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
{"enable": false, "ttl": 86400, "threshold": 500000, "fast": false}
```

## Interaction 6: POST /storage_service/slow_query?enable=true&threshold=1000

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
Content-Length: 0
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
```

## Interaction 7: GET /storage_service/slow_query

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
Content-Length: 64
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
{"enable": true, "ttl": 86400, "threshold": 1000, "fast": false}
```

## Interaction 8: POST /storage_service/slow_query?enable=false&threshold=500000

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
Content-Length: 0
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
```

## Interaction 9: GET /storage_service/slow_query

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
Content-Length: 67
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
{"enable": false, "ttl": 86400, "threshold": 500000, "fast": false}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–9 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–9 |
| collapsed | whole recording | `\["-?[0-9]{10,}"(, "-?[0-9]{10,}")*\]` | `["TOKEN"]` | none |
| collapsed | whole recording | `\[\{"key":"-?[0-9]{10,}","value":"[^"]*"\}(, \{"key":"-?[0-9]{10,}","value":"[^"]*"\})*\]` | `[{"key":"TOKEN","value":"ADDRESS"}]` | none |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | none |
| normalized | whole recording | `(?<![0-9.])(?!127\.)[0-9]{1,3}(\.[0-9]{1,3}){3}(?![0-9.])` | `{{ip-N}}` | none |
| collapsed | whole recording | `(?<![0-9])1[0-9]{9}(?![0-9])` | `1000000000` | none |
| collapsed | whole recording | `"value": [0-9]+\}` | `"value": 0}` | none |
| collapsed | whole recording | `"value": "[01](\.[0-9]+)?"` | `"value": "1"` | none |
| collapsed | whole recording | `"total":[0-9]+,"live":[0-9]+` | `"total":0,"live":0` | none |
| collapsed | whole recording | `(?m)^[0-9]{3,9}$` | `1000000` | none |
