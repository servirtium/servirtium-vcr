## Interaction 0: GET /timeplusd/ping

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
Connection: Keep-Alive
Content-Type: application/json; charset=UTF-8
Transfer-Encoding: chunked
x-timeplus-query-id: 00000000-0000-0000-0000-000000000000
Keep-Alive: timeout=3
```
### Response body recorded for playback (200: application/json; charset=UTF-8):

```
{"status":"UP"}
```

## Interaction 1: POST /?default_format=TabSeparated

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 8
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
SELECT 1
```
### Response headers recorded for playback:

```
Connection: Keep-Alive
Content-Type: text/tab-separated-values; charset=UTF-8
x-timeplus-server-display-name: timeplusd
Transfer-Encoding: chunked
x-timeplus-query-id: 00000000-0000-0000-0000-000000000000
x-timeplus-format: TabSeparated
x-timeplus-timezone: UTC
Keep-Alive: timeout=3
x-timeplus-summary: {"read_rows":"0","read_bytes":"0","written_rows":"0","written_bytes":"0","total_rows_to_read":"0"}
```
### Response body recorded for playback (200: text/tab-separated-values; charset=UTF-8):

```
1

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
| collapsed | whole recording | `x-timeplus-query-id: [0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `x-timeplus-query-id: 00000000-0000-0000-0000-000000000000` | 0, 1 |
