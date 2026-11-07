## Interaction 0: GET /storage_service/release_version

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
Content-Length: 7
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
"3.0.8"
```

## Interaction 1: GET /storage_service/scylla_release_version

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
"6.2.3-0.20250119.bff9ddde1283"
```

## Interaction 2: GET /storage_service/cluster_name

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
Content-Length: 14
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
"Test Cluster"
```

## Interaction 3: GET /storage_service/partitioner_name

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
Content-Length: 45
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
"org.apache.cassandra.dht.Murmur3Partitioner"
```

## Interaction 4: GET /snitch/name

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
Content-Length: 43
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
"org.apache.cassandra.locator.SimpleSnitch"
```

## Interaction 5: GET /snitch/datacenter

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
Content-Length: 13
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
"datacenter1"
```

## Interaction 6: GET /snitch/rack

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
Content-Length: 7
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
"rack1"
```

## Interaction 7: GET /system/highest_supported_sstable_version

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
"me"
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–7 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–7 |
| collapsed | whole recording | `\["-?[0-9]{10,}"(, "-?[0-9]{10,}")*\]` | `["TOKEN"]` | none |
| collapsed | whole recording | `\[\{"key":"-?[0-9]{10,}","value":"[^"]*"\}(, \{"key":"-?[0-9]{10,}","value":"[^"]*"\})*\]` | `[{"key":"TOKEN","value":"ADDRESS"}]` | none |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | none |
| normalized | whole recording | `(?<![0-9.])(?!127\.)[0-9]{1,3}(\.[0-9]{1,3}){3}(?![0-9.])` | `{{ip-N}}` | none |
| collapsed | whole recording | `(?<![0-9])1[0-9]{9}(?![0-9])` | `1000000000` | none |
| collapsed | whole recording | `"value": [0-9]+\}` | `"value": 0}` | none |
| collapsed | whole recording | `"value": "[01](\.[0-9]+)?"` | `"value": "1"` | none |
| collapsed | whole recording | `"total":[0-9]+,"live":[0-9]+` | `"total":0,"live":0` | none |
| collapsed | whole recording | `(?m)^[0-9]{3,9}$` | `1000000` | none |
| ordered | response body | the root array, requests matching `^/(column_family/(name(/keyspace)?)?\|storage_service/keyspaces\|storage_service/logging_level\|system/logger)(\?\|$)` | sorted by their elements' canonical JSON | none |
