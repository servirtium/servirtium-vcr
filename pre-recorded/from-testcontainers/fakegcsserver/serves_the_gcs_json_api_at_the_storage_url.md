## Interaction 0: POST /storage/v1/b?project=tc

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 20
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"name":"tc-bucket"}
```
### Response headers recorded for playback:

```
Content-Type: application/json
Content-Length: 397
```
### Response body recorded for playback (200: application/json):

```
{"kind":"storage#bucket","id":"tc-bucket","defaultEventBasedHold":false,"name":"tc-bucket","versioning":{"enabled":false},"timeCreated":"2026-01-01T00:00:00.000000Z","updated":"2026-01-01T00:00:00.000000Z","location":"US-CENTRAL1","storageClass":"STANDARD","projectNumber":"0","metageneration":"1","etag":"RVRhZw==","locationType":"region","selfLink":"http://0.0.0.0:4443/storage/v1/b/tc-bucket"}

```

## Interaction 1: GET /storage/v1/b

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
Content-Type: application/json
Content-Length: 434
```
### Response body recorded for playback (200: application/json):

```
{"kind":"storage#buckets","items":[{"kind":"storage#bucket","id":"tc-bucket","defaultEventBasedHold":false,"name":"tc-bucket","versioning":{"enabled":false},"timeCreated":"2026-01-01T00:00:00.000000Z","updated":"2026-01-01T00:00:00.000000Z","location":"US-CENTRAL1","storageClass":"STANDARD","projectNumber":"0","metageneration":"1","etag":"RVRhZw==","locationType":"region","selfLink":"http://0.0.0.0:4443/storage/v1/b/tc-bucket"}]}

```

## Interaction 2: POST /upload/storage/v1/b/tc-bucket/o?uploadType=media&name=hello.txt

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 9
Content-Type: text/plain
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
hello gcs
```
### Response headers recorded for playback:

```
Content-Type: application/json
Content-Length: 781
```
### Response body recorded for playback (200: application/json):

```
{"kind":"storage#object","name":"hello.txt","id":"tc-bucket/hello.txt","bucket":"tc-bucket","size":"9","contentType":"text/plain","crc32c":"oO/wyA==","acl":[{"bucket":"tc-bucket","entity":"projectOwner-test-project","etag":"RVRhZw==","kind":"storage#objectAccessControl","object":"hello.txt","projectTeam":{},"role":"OWNER"}],"md5Hash":"9Fo5eSSDe+tffje4lpbNzQ==","etag":"9Fo5eSSDe+tffje4lpbNzQ==","storageClass":"STANDARD","timeCreated":"2026-01-01T00:00:00.000000Z","timeStorageClassUpdated":"2026-01-01T00:00:00.000000Z","updated":"2026-01-01T00:00:00.000000Z","generation":"1700000000000000","selfLink":"http://{{request.host}}/storage/v1/b/tc-bucket/o/hello.txt","mediaLink":"http://{{request.host}}/download/storage/v1/b/tc-bucket/o/hello.txt?alt=media","metageneration":"1"}

```

## Interaction 3: GET /storage/v1/b/tc-bucket/o/hello.txt?alt=media

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
Accept-Ranges: bytes
Access-Control-Allow-Origin: *
Content-Length: 9
Content-Type: text/plain
Etag: "9Fo5eSSDe+tffje4lpbNzQ=="
Last-Modified: Thu, 01 Jan 2026 00:00:00 GMT
X-Goog-Generation: 1700000000000000
X-Goog-Hash: crc32c=oO/wyA==,md5=9Fo5eSSDe+tffje4lpbNzQ==
X-Goog-Stored-Content-Encoding: identity
X-Goog-Stored-Content-Length: 9
```
### Response body recorded for playback (200: text/plain):

```
hello gcs
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–3 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 2 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–3 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2026-01-01T00:00:00.000000Z` | 0–2 |
| collapsed | whole recording | `1[0-9]{15}` | `1700000000000000` | 2, 3 |
| collapsed | whole recording | `[A-Z][a-z]{2}, [0-9]{2} [A-Z][a-z]{2} [0-9]{4} [0-9]{2}:[0-9]{2}:[0-9]{2} GMT` | `Thu, 01 Jan 2026 00:00:00 GMT` | 0–3 |
