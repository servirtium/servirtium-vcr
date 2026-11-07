## Interaction 0: GET /v1/info

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
X-Content-Type-Options: nosniff
Vary: Accept-Encoding, User-Agent
Content-Length: 115
```
### Response body recorded for playback (200: application/json):

```
{"nodeVersion":{"version":"0.286-44efa19"},"environment":"test","coordinator":true,"starting":false,"uptime":"0s"}

```

## Interaction 1: GET /v1/cluster

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
X-Content-Type-Options: nosniff
Vary: Accept-Encoding, User-Agent
Content-Length: 215
```
### Response body recorded for playback (200: application/json):

```
{"runningQueries":0,"blockedQueries":0,"queuedQueries":0,"activeWorkers":1,"runningDrivers":0,"runningTasks":0,"reservedMemory":0.0,"totalInputRows":0,"totalInputBytes":0,"totalCpuTimeSecs":0,"adjustedQueueSize":0}

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
| collapsed | whole recording | `"uptime":"[^"]*"` | `"uptime":"0s"` | 0 |
