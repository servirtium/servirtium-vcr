## Interaction 0: PUT /tcae_conflicts?q=1

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
Location: http://{{request.host}}/tcae_conflicts
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (201: application/json):

```
{"ok":true}

```

## Interaction 1: POST /tcae_conflicts/_bulk_docs

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 166
Content-Type: application/json
Cookie: AuthSession=COOKIE_1
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"new_edits":false,"docs":[{"_id":"doc","_rev":"1-aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","side":"a"},{"_id":"doc","_rev":"1-bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb","side":"b"}]}
```
### Response headers recorded for playback:

```
Cache-Control: must-revalidate
Content-Length: 3
Content-Type: application/json
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (201: application/json):

```
[]

```

## Interaction 2: GET /tcae_conflicts/doc?conflicts=true

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
Content-Length: 121
Content-Type: application/json
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (200: application/json):

```
{"_id":"doc","_rev":"1-bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb","side":"b","_conflicts":["1-aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"]}

```

## Interaction 3: DELETE /tcae_conflicts/doc?rev=1-aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa

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
Content-Length: 66
Content-Type: application/json
ETag: "2-feb66c19c888ee9b72419b1cf5e7b7c7"
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (200: application/json):

```
{"ok":true,"id":"doc","rev":"2-feb66c19c888ee9b72419b1cf5e7b7c7"}

```

## Interaction 4: GET /tcae_conflicts/doc?conflicts=true

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
Content-Length: 69
Content-Type: application/json
ETag: "1-bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (200: application/json):

```
{"_id":"doc","_rev":"1-bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb","side":"b"}

```

## Interaction 5: DELETE /tcae_conflicts

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
| collapsed | whole recording | `"instance_start_time":"[0-9]+"` | `"instance_start_time":"946684800"` | none |
| normalized | whole recording | `[0-9]+-g[A-Za-z0-9_-]{20,}` | `{{seq-N}}` | none |
| normalized | whole recording | `(?<=")[0-9a-f]{32}(?=")` | `{{uuid-N}}` | none |
| normalized | whole recording | `(?<=ETag: ")[0-9A-Z]{20,30}(?=")` | `{{etag-N}}` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
