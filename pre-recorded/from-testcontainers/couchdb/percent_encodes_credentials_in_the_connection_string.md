## Interaction 0: PUT /enc_db

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[percent-encoded-user]
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Cache-Control: must-revalidate
Content-Length: 12
Content-Type: application/json
Location: http://{{request.host}}/enc_db
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (201: application/json):

```
{"ok":true}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `X-Couch-Request-ID` | (left out) | 0 |
| removed | response headers | `X-CouchDB-Body-Time` | (left out) | 0 |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[admin]` | none |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[admin-wrong-password]` | none |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[testuser]` | none |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[percent-encoded-user]` | 0 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 0 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0 |
| normalized | whole recording | `[0-9a-f]{32}` | `{{couchdb-uuid-N}}` | none |
| collapsed | whole recording | `1[0-9]{9}` | `946684800` | none |
| collapsed | whole recording | `_seq":"[0-9]+-[A-Za-z0-9_-]+"` | `_seq":"0-SEQ"` | none |
