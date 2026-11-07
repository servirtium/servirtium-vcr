## Interaction 0: GET /api/v1/mailbox/rcpt

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
Content-Type: application/json; charset=utf-8
Expires: -1
Content-Length: 237
```
### Response body recorded for playback (200: application/json; charset=utf-8):

```
[{"mailbox":"rcpt","id":"20000101T000000-0000","from":"\u003csender@example.com\u003e","to":["\u003crcpt@example.com\u003e"],"subject":"Hello from tcae","date":"2000-01-01T00:00:00Z","posix-millis":946684800000,"size":192,"seen":false}]

```

## Interaction 1: GET /api/v1/mailbox/nobody

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
Content-Type: application/json; charset=utf-8
Expires: -1
Content-Length: 3
```
### Response body recorded for playback (200: application/json; charset=utf-8):

```
[]

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
| collapsed | whole recording | `"id":"[0-9]{8}T[0-9]{6}-[0-9]{4}"` | `"id":"20000101T000000-0000"` | 0 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | 0 |
| collapsed | whole recording | `"posix-millis":[0-9]+` | `"posix-millis":946684800000` | 0 |
