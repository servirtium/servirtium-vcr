## Interaction 0: POST /subjects/tcae-value/versions

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 36
Content-Type: application/vnd.schemaregistry.v1+json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"schema": "{\"type\": \"string\"}"}
```
### Response headers recorded for playback:

```
Transfer-Encoding: chunked
Content-Type: application/vnd.schemaregistry.v1+json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/vnd.schemaregistry.v1+json):

```
{"id":1}
```

## Interaction 1: GET /subjects

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
Content-Type: application/vnd.schemaregistry.v1+json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/vnd.schemaregistry.v1+json):

```
["tcae-value"]
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
