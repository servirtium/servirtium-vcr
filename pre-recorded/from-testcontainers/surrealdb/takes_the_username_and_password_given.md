## Interaction 0: POST /sql

### Request headers recorded for playback:

```
Accept: application/json
Authorization: Basic REDACTED[tcae]
Connection: keep-alive
Content-Length: 148
Content-Type: text/plain
DB: test
Host: {{request.host}}
NS: test
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
CREATE person:tobie CONTENT {title: "Founder & CEO", name: {first: "Tobie", last: "Morgan Hitchcock"}, marketing: true}; SELECT * FROM person:tobie;
```
### Response headers recorded for playback:

```
content-type: application/json
content-length: 311
access-control-allow-origin: *
vary: origin
vary: access-control-request-method
vary: access-control-request-headers
surreal-version: surrealdb-1.1.1+20240116.b261047
server: SurrealDB
```
### Response body recorded for playback (200: application/json):

```
[{"result":[{"id":"person:tobie","marketing":true,"name":{"first":"Tobie","last":"Morgan Hitchcock"},"title":"Founder & CEO"}],"status":"OK","time":"0µs"},{"result":[{"id":"person:tobie","marketing":true,"name":{"first":"Tobie","last":"Morgan Hitchcock"},"title":"Founder & CEO"}],"status":"OK","time":"0µs"}]
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0 |
| removed | response headers | `X-Request-Id` | (left out) | 0 |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[root]` | none |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[tcae]` | 0 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0 |
| collapsed | whole recording | `"time":"[0-9.]+[^"]*"` | `"time":"0µs"` | 0 |
