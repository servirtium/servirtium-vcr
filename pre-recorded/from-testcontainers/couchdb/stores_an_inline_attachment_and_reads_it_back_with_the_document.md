## Interaction 0: PUT /tcae_inline?q=1

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
Location: http://{{request.host}}/tcae_inline
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (201: application/json):

```
{"ok":true}

```

## Interaction 1: PUT /tcae_inline/doc

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 103
Content-Type: application/json
Cookie: AuthSession=COOKIE_1
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"title":"inline","_attachments":{"hello.txt":{"content_type":"text/plain","data":"aGVsbG8gd29ybGQ="}}}
```
### Response headers recorded for playback:

```
Cache-Control: must-revalidate
Content-Length: 66
Content-Type: application/json
ETag: "1-e1242937d2f021b38e8cac87ddff8fd4"
Location: http://{{request.host}}/tcae_inline/doc
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (201: application/json):

```
{"ok":true,"id":"doc","rev":"1-e1242937d2f021b38e8cac87ddff8fd4"}

```

## Interaction 2: GET /tcae_inline/doc

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
Content-Length: 209
Content-Type: application/json
ETag: "1-e1242937d2f021b38e8cac87ddff8fd4"
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (200: application/json):

```
{"_id":"doc","_rev":"1-e1242937d2f021b38e8cac87ddff8fd4","title":"inline","_attachments":{"hello.txt":{"content_type":"text/plain","revpos":1,"digest":"md5-7mkg+nM0HN26sZkLN8KVSA==","length":11,"stub":true}}}

```

## Interaction 3: GET /tcae_inline/doc?attachments=true

### Request headers recorded for playback:

```
Accept: application/json
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
Content-Length: 211
Content-Type: application/json
ETag: "1-e1242937d2f021b38e8cac87ddff8fd4"
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (200: application/json):

```
{"_id":"doc","_rev":"1-e1242937d2f021b38e8cac87ddff8fd4","title":"inline","_attachments":{"hello.txt":{"content_type":"text/plain","revpos":1,"digest":"md5-7mkg+nM0HN26sZkLN8KVSA==","data":"aGVsbG8gd29ybGQ="}}}

```

## Interaction 4: GET /tcae_inline/doc/hello.txt

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
Accept-Ranges: none
Cache-Control: must-revalidate
Content-Length: 11
Content-Security-Policy: sandbox
Content-Type: text/plain
ETag: "7mkg+nM0HN26sZkLN8KVSA=="
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (200: text/plain):

```
hello world
```

## Interaction 5: DELETE /tcae_inline

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
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 0, 1 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–5 |
| collapsed | whole recording | `Expires=[A-Z][a-z]{2}, [0-9]{2}-[A-Z][a-z]{2}-[0-9]{4} [0-9]{2}:[0-9]{2}:[0-9]{2} GMT` | `Expires=Sat, 01-Jan-2000 00:00:00 GMT` | none |
| collapsed | whole recording | `"instance_start_time":"[0-9]+"` | `"instance_start_time":"946684800"` | none |
| normalized | whole recording | `[0-9]+-g[A-Za-z0-9_-]{20,}` | `{{seq-N}}` | none |
| normalized | whole recording | `(?<=")[0-9a-f]{32}(?=")` | `{{uuid-N}}` | none |
| normalized | whole recording | `(?<=ETag: ")[0-9A-Z]{20,30}(?=")` | `{{etag-N}}` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
