## Interaction 0: POST /v3/kv/put

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 53
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"key":"c2FtcGxlX2tleQ==","value":"c2FtcGxlX3ZhbHVl"}
```
### Response headers recorded for playback:

```
Access-Control-Allow-Headers: accept, content-type, authorization
Access-Control-Allow-Methods: POST, GET, OPTIONS, PUT, DELETE
Access-Control-Allow-Origin: *
Content-Type: application/json
Grpc-Metadata-Content-Type: application/grpc
Content-Length: 76
```
### Response body recorded for playback (200: application/json):

```
{"header":{"cluster_id":"1","member_id":"1","revision":"2","raft_term":"2"}}
```

## Interaction 1: POST /v3/kv/range

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 26
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"key":"c2FtcGxlX2tleQ=="}
```
### Response headers recorded for playback:

```
Access-Control-Allow-Headers: accept, content-type, authorization
Access-Control-Allow-Methods: POST, GET, OPTIONS, PUT, DELETE
Access-Control-Allow-Origin: *
Content-Type: application/json
Grpc-Metadata-Content-Type: application/grpc
Content-Length: 205
```
### Response body recorded for playback (200: application/json):

```
{"header":{"cluster_id":"1","member_id":"1","revision":"2","raft_term":"2"},"kvs":[{"key":"c2FtcGxlX2tleQ==","create_revision":"2","mod_revision":"2","version":"1","value":"c2FtcGxlX3ZhbHVl"}],"count":"1"}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0, 1 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0, 1 |
| collapsed | whole recording | `"cluster_id":"[0-9]+"` | `"cluster_id":"1"` | 0, 1 |
| collapsed | whole recording | `"member_id":"[0-9]+"` | `"member_id":"1"` | 0, 1 |
| collapsed | whole recording | `"raft_term":"[0-9]+"` | `"raft_term":"2"` | 0, 1 |
