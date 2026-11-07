## Interaction 0: GET /v1/projects/spanner-project/instanceConfigs

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
Content-Length: 130
Content-Type: application/json
Grpc-Metadata-Content-Type: application/grpc
Grpc-Metadata-Grpc-Accept-Encoding: identity, deflate, gzip
```
### Response body recorded for playback (200: application/json):

```
{"instanceConfigs":[{"name":"projects/spanner-project/instanceConfigs/emulator-config","displayName":"Emulator Instance Config"}]}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2026-01-01T00:00:00.000000Z` | none |
| normalized | whole recording | `MTc[A-Za-z0-9+/]{18,}={0,2}` | `{{transaction-id-N}}` | none |
