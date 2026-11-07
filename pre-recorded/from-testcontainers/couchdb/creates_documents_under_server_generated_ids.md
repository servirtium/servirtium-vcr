## Interaction 0: PUT /tcae_ids?q=1

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
Location: http://{{request.host}}/tcae_ids
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (201: application/json):

```
{"ok":true}

```

## Interaction 1: GET /_uuids?count=1

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
Cache-Control: no-cache
Content-Length: 25
Content-Type: application/json
ETag: "{{etag-1}}"
Expires: Mon, 01 Jan 1990 00:00:00 GMT
Pragma: no-cache
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (200: application/json):

```
{"uuids":["{{uuid-1}}"]}

```

## Interaction 2: PUT /tcae_ids/{{uuid-1}}

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 17
Content-Type: application/json
Cookie: AuthSession=COOKIE_1
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"from":"_uuids"}
```
### Response headers recorded for playback:

```
Cache-Control: must-revalidate
Content-Length: 73
Content-Type: application/json
ETag: "1-29d41e871a8a1e9cd21cbcdd767d4e24"
Location: http://{{request.host}}/tcae_ids/{{uuid-1}}
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (201: application/json):

```
{"ok":true,"id":"{{uuid-1}}","rev":"1-29d41e871a8a1e9cd21cbcdd767d4e24"}

```

## Interaction 3: POST /tcae_ids

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 15
Content-Type: application/json
Cookie: AuthSession=COOKIE_1
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"from":"post"}
```
### Response headers recorded for playback:

```
Cache-Control: must-revalidate
Content-Length: 73
Content-Type: application/json
Location: http://{{request.host}}/tcae_ids/{{uuid-2}}
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (201: application/json):

```
{"ok":true,"id":"{{uuid-2}}","rev":"1-f544f4d8267cf12273d2450a8efcdc85"}

```

## Interaction 4: GET /tcae_ids/{{uuid-2}}

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
Content-Length: 79
Content-Type: application/json
ETag: "1-f544f4d8267cf12273d2450a8efcdc85"
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (200: application/json):

```
{"_id":"{{uuid-2}}","_rev":"1-f544f4d8267cf12273d2450a8efcdc85","from":"post"}

```

## Interaction 5: GET /tcae_ids/_all_docs

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
Content-Type: application/json
Server: CouchDB/3.5.3 (Erlang OTP/27)
Transfer-Encoding: chunked
```
### Response body recorded for playback (200: application/json):

```
{"total_rows":2,"offset":0,"rows":[
{"id":"{{uuid-1}}","key":"{{uuid-1}}","value":{"rev":"1-29d41e871a8a1e9cd21cbcdd767d4e24"}},
{"id":"{{uuid-2}}","key":"{{uuid-2}}","value":{"rev":"1-f544f4d8267cf12273d2450a8efcdc85"}}
]}

```

## Interaction 6: DELETE /tcae_ids

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
| removed | response headers | `Date` | (left out) | 0–6 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `X-Couch-Request-ID` | (left out) | 0, 2–6 |
| removed | response headers | `X-CouchDB-Body-Time` | (left out) | 0, 2–6 |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | none |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | 0–6 |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[admin]"` | none |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[admin-wrong-password]"` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 0, 2, 3 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–6 |
| collapsed | whole recording | `Expires=[A-Z][a-z]{2}, [0-9]{2}-[A-Z][a-z]{2}-[0-9]{4} [0-9]{2}:[0-9]{2}:[0-9]{2} GMT` | `Expires=Sat, 01-Jan-2000 00:00:00 GMT` | none |
| collapsed | whole recording | `"instance_start_time":"[0-9]+"` | `"instance_start_time":"946684800"` | none |
| normalized | whole recording | `[0-9]+-g[A-Za-z0-9_-]{20,}` | `{{seq-N}}` | none |
| normalized | whole recording | `(?<=")[0-9a-f]{32}(?=")` | `{{uuid-N}}` | 1–5 |
| normalized | whole recording | `(?<=ETag: ")[0-9A-Z]{20,30}(?=")` | `{{etag-N}}` | 1 |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
