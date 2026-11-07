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
Server: Jetty(12.0.9)
Vary: Origin
Vary: Access-Control-Request-Method
Vary: Access-Control-Request-Headers
Content-Type: application/xml
Transfer-Encoding: chunked
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8"?><ListAllMyBucketsResult xmlns="http://s3.amazonaws.com/doc/2006-03-01/"><Owner><ID>79a59df900b949e55d96a1e698fbacedfd6e09d98eacf8f8d5218e7cd47ef2be</ID><DisplayName>s3-mock-file-store</DisplayName></Owner><Buckets><Bucket><Name>bucket-a</Name><CreationDate>2000-01-01T00:00:00.000Z</CreationDate></Bucket><Bucket><Name>bucket-b</Name><CreationDate>2000-01-01T00:00:00.000Z</CreationDate></Bucket></Buckets></ListAllMyBucketsResult>
```

## Interaction 1: PUT /bucket-a/hello.txt

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 12
Content-Type: text/plain
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
hello s3mock
```
### Response headers recorded for playback:

```
Server: Jetty(12.0.9)
Vary: Origin
Vary: Access-Control-Request-Method
Vary: Access-Control-Request-Headers
ETag: "1aa1648781116c4f8a3cf10405d5ebf0"
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: GET /bucket-a/hello.txt

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
Server: Jetty(12.0.9)
Vary: Origin
Vary: Access-Control-Request-Method
Vary: Access-Control-Request-Headers
ETag: "1aa1648781116c4f8a3cf10405d5ebf0"
Accept-Ranges: bytes
Content-Type: text/plain
Content-Length: 12
```
### Response body recorded for playback (200: text/plain):

```
hello s3mock
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–2 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `Last-Modified` | (left out) | 1, 2 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–2 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00.000Z` | 0 |
