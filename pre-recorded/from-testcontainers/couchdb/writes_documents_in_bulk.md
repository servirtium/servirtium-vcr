## Interaction 0: PUT /tcae_bulk?q=1

### Request headers recorded for playback:

```
Connection: keep-alive
Cookie: AuthSession=COOKIE_1
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
Location: http://{{request.host}}/tcae_bulk
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (201: application/json):

```
{"ok":true}

```

## Interaction 1: POST /tcae_bulk/_bulk_docs

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 64
Content-Type: application/json
Cookie: AuthSession=COOKIE_1
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"docs":[{"_id":"a","n":1},{"_id":"b","n":2},{"_id":"c","n":3}]}
```
### Response headers recorded for playback:

```
Cache-Control: must-revalidate
Content-Length: 194
Content-Type: application/json
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (201: application/json):

```
[{"ok":true,"id":"a","rev":"1-731bef401491606a3b246ed178e697c1"},{"ok":true,"id":"b","rev":"1-43a36d04d31d38efc5b9245c53e00627"},{"ok":true,"id":"c","rev":"1-2acff5ec499bf1cf4a478896765b824e"}]

```

## Interaction 2: POST /tcae_bulk/_bulk_docs

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 92
Content-Type: application/json
Cookie: AuthSession=COOKIE_1
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"docs":[{"_id":"a","_rev":"1-731bef401491606a3b246ed178e697c1","n":10},{"_id":"b","n":20}]}
```
### Response headers recorded for playback:

```
Cache-Control: must-revalidate
Content-Length: 133
Content-Type: application/json
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (201: application/json):

```
[{"ok":true,"id":"a","rev":"2-d6a5fe85a38eea7128b8439ef6a92b9b"},{"id":"b","error":"conflict","reason":"Document update conflict."}]

```

## Interaction 3: POST /tcae_bulk/_bulk_docs

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 82
Content-Type: application/json
Cookie: AuthSession=COOKIE_1
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"docs":[{"_id":"c","_rev":"1-2acff5ec499bf1cf4a478896765b824e","_deleted":true}]}
```
### Response headers recorded for playback:

```
Cache-Control: must-revalidate
Content-Length: 66
Content-Type: application/json
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (201: application/json):

```
[{"ok":true,"id":"c","rev":"2-748f52e1e5e1c06db51505fa229d8232"}]

```

## Interaction 4: GET /tcae_bulk

### Request headers recorded for playback:

```
Connection: keep-alive
Cookie: AuthSession=COOKIE_1
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Cache-Control: must-revalidate
Content-Length: 284
Content-Type: application/json
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (200: application/json):

```
{"instance_start_time":"946684800","db_name":"tcae_bulk","purge_seq":"{{seq-1}}","update_seq":"{{seq-2}}","sizes":{"file":20672,"external":17,"active":685},"props":{},"doc_del_count":1,"doc_count":2,"disk_format_version":8,"compact_running":false,"cluster":{"q":1,"n":1,"w":1,"r":1}}

```

## Interaction 5: DELETE /tcae_bulk

### Request headers recorded for playback:

```
Connection: keep-alive
Cookie: AuthSession=COOKIE_1
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
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (200: application/json):

```
{"ok":true}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–5 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `X-Couch-Request-ID` | (left out) | 0–5 |
| removed | response headers | `X-CouchDB-Body-Time` | (left out) | 0–5 |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | none |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | 0–5 |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[admin]"` | none |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[admin-wrong-password]"` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 0 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–5 |
| collapsed | whole recording | `Expires=[A-Z][a-z]{2}, [0-9]{2}-[A-Z][a-z]{2}-[0-9]{4} [0-9]{2}:[0-9]{2}:[0-9]{2} GMT` | `Expires=Sat, 01-Jan-2000 00:00:00 GMT` | none |
| collapsed | whole recording | `"instance_start_time":"[0-9]+"` | `"instance_start_time":"946684800"` | 4 |
| normalized | whole recording | `[0-9]+-g[A-Za-z0-9_-]{20,}` | `{{seq-N}}` | 4 |
| normalized | whole recording | `(?<=")[0-9a-f]{32}(?=")` | `{{uuid-N}}` | none |
| normalized | whole recording | `(?<=ETag: ")[0-9A-Z]{20,30}(?=")` | `{{etag-N}}` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
