## Interaction 0: GET /storage_service/snapshots

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
[]
```

## Interaction 1: POST /storage_service/snapshots?tag=tcae_snap&kn=tcae_snapshot

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

## Interaction 2: GET /storage_service/snapshots

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
[{"key":"tcae_snap","value":[{"ks":"tcae_snapshot","cf":"items","total":0,"live":0}]}]
```

## Interaction 3: DELETE /storage_service/snapshots?tag=tcae_snap&kn=tcae_snapshot

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

## Interaction 4: GET /storage_service/snapshots

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
[]
```

## Interaction 5: POST /storage_service/snapshots?tag=x&kn=nope

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
Content-Length: 54
Server: Seastar httpd
Content-Type: application/json
```
### Response body recorded for playback (400: application/json):

```
{"message": "Can't find a keyspace nope", "code": 400}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–5 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–5 |
| collapsed | whole recording | `\["-?[0-9]{10,}"(, "-?[0-9]{10,}")*\]` | `["TOKEN"]` | none |
| collapsed | whole recording | `\[\{"key":"-?[0-9]{10,}","value":"[^"]*"\}(, \{"key":"-?[0-9]{10,}","value":"[^"]*"\})*\]` | `[{"key":"TOKEN","value":"ADDRESS"}]` | none |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | none |
| normalized | whole recording | `(?<![0-9.])(?!127\.)[0-9]{1,3}(\.[0-9]{1,3}){3}(?![0-9.])` | `{{ip-N}}` | none |
| collapsed | whole recording | `(?<![0-9])1[0-9]{9}(?![0-9])` | `1000000000` | none |
| collapsed | whole recording | `"value": [0-9]+\}` | `"value": 0}` | none |
| collapsed | whole recording | `"value": "[01](\.[0-9]+)?"` | `"value": "1"` | none |
| collapsed | whole recording | `"total":[0-9]+,"live":[0-9]+` | `"total":0,"live":0` | 2 |
| collapsed | whole recording | `(?m)^[0-9]{3,9}$` | `1000000` | none |
| ordered | response body | the root array, requests matching `^/(column_family/(name(/keyspace)?)?\|storage_service/keyspaces\|storage_service/logging_level\|system/logger)(\?\|$)` | sorted by their elements' canonical JSON | none |
