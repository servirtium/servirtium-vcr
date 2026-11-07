## Interaction 0: GET /exec?query=create%20table%20tc_t%20(id%20int,%20name%20string)

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
Server: questDB/1.0
Transfer-Encoding: chunked
Content-Type: application/json; charset=utf-8
Keep-Alive: timeout=5, max=10000
```
### Response body recorded for playback (200: application/json; charset=utf-8):

```
{"ddl":"OK"}
```

## Interaction 1: GET /exec?query=insert%20into%20tc_t%20values%20(7,%20%27seven%27)

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
Server: questDB/1.0
Transfer-Encoding: chunked
Content-Type: application/json; charset=utf-8
Keep-Alive: timeout=5, max=10000
```
### Response body recorded for playback (200: application/json; charset=utf-8):

```
{"dml":"OK"}
```

## Interaction 2: GET /exec?query=select%20id,%20name%20from%20tc_t

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
Server: questDB/1.0
Transfer-Encoding: chunked
Content-Type: application/json; charset=utf-8
Keep-Alive: timeout=5, max=10000
```
### Response body recorded for playback (200: application/json; charset=utf-8):

```
{"query":"select id, name from tc_t","columns":[{"name":"id","type":"INT"},{"name":"name","type":"STRING"}],"timestamp":-1,"dataset":[[7,"seven"]],"count":1}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–2 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–2 |
