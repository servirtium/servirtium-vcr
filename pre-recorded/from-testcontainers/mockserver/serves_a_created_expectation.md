## Interaction 0: GET /hello

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
connection: keep-alive
content-length: 0
```
### Response body recorded for playback (404: text/plain):

```
```

## Interaction 1: PUT /mockserver/expectation

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 107
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"httpRequest":{"method":"GET","path":"/hello"},"httpResponse":{"statusCode":200,"body":"Hello from tcae"}}
```
### Response headers recorded for playback:

```
version: 5.15.0
connection: keep-alive
content-type: application/json; charset=utf-8
content-length: 296
```
### Response body recorded for playback (201: application/json; charset=utf-8):

```
[ {
  "httpRequest" : {
    "method" : "GET",
    "path" : "/hello"
  },
  "httpResponse" : {
    "statusCode" : 200,
    "body" : "Hello from tcae"
  },
  "id" : "{{expectation-id-1}}",
  "priority" : 0,
  "timeToLive" : {
    "unlimited" : true
  },
  "times" : {
    "unlimited" : true
  }
} ]
```

## Interaction 2: GET /hello

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
connection: keep-alive
content-length: 15
```
### Response body recorded for playback (200: text/plain):

```
Hello from tcae
```

## Interaction 3: GET /other

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
connection: keep-alive
content-length: 0
```
### Response body recorded for playback (404: text/plain):

```
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | none |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–3 |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{expectation-id-N}}` | 1 |
