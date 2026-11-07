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
Content-Type: application/json
Content-Length: 217
```
### Response body recorded for playback (200: application/json):

```
{"code":0,"data":{"cluster_name":"vearch","cluster_uuid":"","name":"vearch","tagline":"","version":{"build_time":"2024-05-28 03:18.52","build_version":"v3.5.1","commit_id":"7cf28c0872c7efafeedcaa7b2fa9cfcf27bddb66"}}}
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
| ordered | response body | JSON object keys | sorted, at every depth | 0 |
