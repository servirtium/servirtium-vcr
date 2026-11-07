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
Vary: Accept-Encoding
Content-Length: 107
```
### Response body recorded for playback (200: application/json):

```
{"nodeVersion":{"version":"435"},"environment":"docker","coordinator":true,"starting":false,"uptime":"0s"}

```

## Interaction 1: POST /v1/statement

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 8
Content-Type: text/plain
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Trino-User: tcae
```
### Request body recorded for playback ():

```
SELECT 1
```
### Response headers recorded for playback:

```
Content-Type: application/json
X-Content-Type-Options: nosniff
Vary: Accept-Encoding
Content-Length: 564
```
### Response body recorded for playback (200: application/json):

```
{"id":"20000101_000000_00000_aaaaa","infoUri":"http://{{request.host}}/ui/query.html?20000101_000000_00000_aaaaa","nextUri":"http://{{request.host}}/v1/statement/queued/20000101_000000_00000_aaaaa/ytoken/1","stats":{"state":"QUEUED","queued":true,"scheduled":false,"nodes":0,"totalSplits":0,"queuedSplits":0,"runningSplits":0,"completedSplits":0,"cpuTimeMillis":0,"wallTimeMillis":0,"queuedTimeMillis":0,"elapsedTimeMillis":0,"processedRows":0,"processedBytes":0,"physicalInputBytes":0,"physicalWrittenBytes":0,"peakMemoryBytes":0,"spilledBytes":0},"warnings":[]}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0, 1 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 1 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0, 1 |
| collapsed | whole recording | `"uptime":"[^"]*"` | `"uptime":"0s"` | 0 |
| collapsed | whole recording | `[0-9]{8}_[0-9]{6}_[0-9]{5}_[a-z0-9]{5}` | `20000101_000000_00000_aaaaa` | 1 |
| collapsed | whole recording | `/y[0-9a-f]{40}/` | `/ytoken/` | 1 |
