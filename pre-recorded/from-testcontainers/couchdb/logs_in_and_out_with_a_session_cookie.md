## Interaction 0: GET /_session

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
Cache-Control: must-revalidate
Content-Length: 103
Content-Type: application/json
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (200: application/json):

```
{"ok":true,"userCtx":{"name":null,"roles":[]},"info":{"authentication_handlers":["cookie","default"]}}

```

## Interaction 1: POST /_session

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 60
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"name":"admin","password":"REDACTED[admin-wrong-password]"}
```
### Response headers recorded for playback:

```
Cache-Control: must-revalidate
Content-Length: 67
Content-Type: application/json
Server: CouchDB/3.5.3 (Erlang OTP/27)
Set-Cookie: AuthSession=; Version=1; Expires=Sat, 01-Jan-2000 00:00:00 GMT; Max-Age=600; Path=/; HttpOnly
```
### Response body recorded for playback (401: application/json):

```
{"error":"unauthorized","reason":"Name or password is incorrect."}

```

## Interaction 2: POST /_session

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 45
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"name":"admin","password":"REDACTED[admin]"}
```
### Response headers recorded for playback:

```
Cache-Control: must-revalidate
Content-Length: 46
Content-Type: application/json
Server: CouchDB/3.5.3 (Erlang OTP/27)
Set-Cookie: AuthSession=COOKIE_1; Version=1; Expires=Sat, 01-Jan-2000 00:00:00 GMT; Max-Age=600; Path=/; HttpOnly
```
### Response body recorded for playback (200: application/json):

```
{"ok":true,"name":"admin","roles":["_admin"]}

```

## Interaction 3: GET /_session

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
Content-Length: 139
Content-Type: application/json
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (200: application/json):

```
{"ok":true,"userCtx":{"name":"admin","roles":["_admin"]},"info":{"authentication_handlers":["cookie","default"],"authenticated":"cookie"}}

```

## Interaction 4: DELETE /_session

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
Set-Cookie: AuthSession=; Version=1; Expires=Sat, 01-Jan-2000 00:00:00 GMT; Max-Age=600; Path=/; HttpOnly
```
### Response body recorded for playback (200: application/json):

```
{"ok":true}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–4 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `X-Couch-Request-ID` | (left out) | none |
| removed | response headers | `X-CouchDB-Body-Time` | (left out) | none |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | none |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | 3, 4 |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | 1, 2, 4 |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[admin]"` | 2 |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[admin-wrong-password]"` | 1 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–4 |
| collapsed | whole recording | `Expires=[A-Z][a-z]{2}, [0-9]{2}-[A-Z][a-z]{2}-[0-9]{4} [0-9]{2}:[0-9]{2}:[0-9]{2} GMT` | `Expires=Sat, 01-Jan-2000 00:00:00 GMT` | 1, 2, 4 |
| collapsed | whole recording | `"instance_start_time":"[0-9]+"` | `"instance_start_time":"946684800"` | none |
| normalized | whole recording | `[0-9]+-g[A-Za-z0-9_-]{20,}` | `{{seq-N}}` | none |
| normalized | whole recording | `(?<=")[0-9a-f]{32}(?=")` | `{{uuid-N}}` | none |
| normalized | whole recording | `(?<=ETag: ")[0-9A-Z]{20,30}(?=")` | `{{etag-N}}` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
