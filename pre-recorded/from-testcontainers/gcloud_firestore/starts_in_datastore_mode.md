## Interaction 0: POST /v1/projects/firestore-project:lookup

### Request headers recorded for playback:

```
Authorization: Bearer owner
Connection: keep-alive
Content-Length: 51
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"keys":[{"path":[{"kind":"Task","name":"none"}]}]}
```
### Response headers recorded for playback:

```
content-type: application/json
content-length: 275
```
### Response body recorded for playback (200: application/json):

```
{
  "missing": [{
    "entity": {
      "key": {
        "partitionId": {
          "projectId": "firestore-project"
        },
        "path": [{
          "kind": "Task",
          "name": "none"
        }]
      }
    }
  }],
  "readTime": "2026-01-01T00:00:00.000000Z"
}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | none |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2026-01-01T00:00:00.000000Z` | 0 |
