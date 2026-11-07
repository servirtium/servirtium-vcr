## Interaction 0: POST /db/neo4j/tx/commit

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 41
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"statements":[{"statement":"RETURN 1"}]}
```
### Response headers recorded for playback:

```
Access-Control-Allow-Origin: *
Content-Type: application/json;charset=utf-8
WWW-Authenticate: Basic realm="Neo4j"
Content-Length: 133
```
### Response body recorded for playback (401: application/json;charset=utf-8):

```
{
  "errors" : [ {
    "code" : "Neo.ClientError.Security.Unauthorized",
    "message" : "No authentication header supplied."
  } ]
}
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
