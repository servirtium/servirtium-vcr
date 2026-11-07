## Interaction 0: GET /

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
content-type: application/json
content-length: 283
```
### Response body recorded for playback (200: application/json):

```
{
  "ok" : true,
  "status" : 200,
  "name" : "node",
  "cluster_name" : "crate",
  "version" : {
    "number" : "5.7.6",
    "build_hash" : "ceb35e071ef0a4cf42cda770ceb195725a72ea9f",
    "build_timestamp" : "NA",
    "build_snapshot" : false,
    "lucene_version" : "9.10.0"
  }
}

```

## Interaction 1: POST /_sql

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 30
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"stmt":"SELECT 1 + 1 AS two"}
```
### Response headers recorded for playback:

```
content-type: application/json; charset=UTF-8
content-length: 57
```
### Response body recorded for playback (200: application/json; charset=UTF-8):

```
{"cols":["two"],"rows":[[2]],"rowcount":1,"duration":0.0}
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
| collapsed | whole recording | `"name" : "[^"]*"` | `"name" : "node"` | 0 |
| collapsed | whole recording | `"duration":[0-9.]+` | `"duration":0.0` | 1 |
