## Interaction 0: GET /api/v2/heartbeat

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
content-length: 43
```
### Response body recorded for playback (200: application/json):

```
{"nanosecond heartbeat":946684800000000000}
```

## Interaction 1: GET /api/v2/version

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
content-length: 7
```
### Response body recorded for playback (200: application/json):

```
"1.0.0"
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
| collapsed | whole recording | `"nanosecond heartbeat":[0-9]+` | `"nanosecond heartbeat":946684800000000000` | 0 |
