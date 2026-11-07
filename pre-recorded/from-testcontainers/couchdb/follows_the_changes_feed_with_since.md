## Interaction 0: PUT /tcae_changes?q=1

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
Location: http://{{request.host}}/tcae_changes
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (201: application/json):

```
{"ok":true}

```

## Interaction 1: POST /tcae_changes/_bulk_docs

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 46
Content-Type: application/json
Cookie: AuthSession=COOKIE_1
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"docs":[{"_id":"a","v":1},{"_id":"b","v":1}]}
```
### Response headers recorded for playback:

```
Cache-Control: must-revalidate
Content-Length: 130
Content-Type: application/json
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (201: application/json):

```
[{"ok":true,"id":"a","rev":"1-7a7e4b29f3af401e69b6f86e4c26b727"},{"ok":true,"id":"b","rev":"1-7a7e4b29f3af401e69b6f86e4c26b727"}]

```

## Interaction 2: GET /tcae_changes/_changes

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
ETag: "{{etag-1}}"
Server: CouchDB/3.5.3 (Erlang OTP/27)
Transfer-Encoding: chunked
```
### Response body recorded for playback (200: application/json):

```
{"results":[
{"seq":"{{seq-1}}","id":"a","changes":[{"rev":"1-7a7e4b29f3af401e69b6f86e4c26b727"}]},
{"seq":"{{seq-2}}","id":"b","changes":[{"rev":"1-7a7e4b29f3af401e69b6f86e4c26b727"}]}
],
"last_seq":"{{seq-2}}","pending":0}


```

## Interaction 3: PUT /tcae_changes/c

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 7
Content-Type: application/json
Cookie: AuthSession=COOKIE_1
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"v":1}
```
### Response headers recorded for playback:

```
Cache-Control: must-revalidate
Content-Length: 64
Content-Type: application/json
ETag: "1-7a7e4b29f3af401e69b6f86e4c26b727"
Location: http://{{request.host}}/tcae_changes/c
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (201: application/json):

```
{"ok":true,"id":"c","rev":"1-7a7e4b29f3af401e69b6f86e4c26b727"}

```

## Interaction 4: PUT /tcae_changes/a

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 51
Content-Type: application/json
Cookie: AuthSession=COOKIE_1
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"_rev":"1-7a7e4b29f3af401e69b6f86e4c26b727","v":2}
```
### Response headers recorded for playback:

```
Cache-Control: must-revalidate
Content-Length: 64
Content-Type: application/json
ETag: "2-d0df861eb528e79690cd2ff3c4d394f3"
Location: http://{{request.host}}/tcae_changes/a
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (201: application/json):

```
{"ok":true,"id":"a","rev":"2-d0df861eb528e79690cd2ff3c4d394f3"}

```

## Interaction 5: GET /tcae_changes/_changes?since={{seq-2}}

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
ETag: "{{etag-2}}"
Server: CouchDB/3.5.3 (Erlang OTP/27)
Transfer-Encoding: chunked
```
### Response body recorded for playback (200: application/json):

```
{"results":[
{"seq":"{{seq-3}}","id":"c","changes":[{"rev":"1-7a7e4b29f3af401e69b6f86e4c26b727"}]},
{"seq":"{{seq-4}}","id":"a","changes":[{"rev":"2-d0df861eb528e79690cd2ff3c4d394f3"}]}
],
"last_seq":"{{seq-4}}","pending":0}


```

## Interaction 6: DELETE /tcae_changes/b?rev=1-7a7e4b29f3af401e69b6f86e4c26b727

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
Content-Length: 64
Content-Type: application/json
ETag: "2-d9b15b235a7d0afdfe6058d5fb8afbd1"
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (200: application/json):

```
{"ok":true,"id":"b","rev":"2-d9b15b235a7d0afdfe6058d5fb8afbd1"}

```

## Interaction 7: GET /tcae_changes/_changes?since={{seq-4}}&include_docs=true

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
ETag: "{{etag-3}}"
Server: CouchDB/3.5.3 (Erlang OTP/27)
Transfer-Encoding: chunked
```
### Response body recorded for playback (200: application/json):

```
{"results":[
{"seq":"{{seq-5}}","id":"b","changes":[{"rev":"2-d9b15b235a7d0afdfe6058d5fb8afbd1"}],"deleted":true,"doc":{"_id":"b","_rev":"2-d9b15b235a7d0afdfe6058d5fb8afbd1","_deleted":true}}
],
"last_seq":"{{seq-5}}","pending":0}


```

## Interaction 8: GET /tcae_changes/_changes?limit=1

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
ETag: "{{etag-3}}"
Server: CouchDB/3.5.3 (Erlang OTP/27)
Transfer-Encoding: chunked
```
### Response body recorded for playback (200: application/json):

```
{"results":[
{"seq":"{{seq-3}}","id":"c","changes":[{"rev":"1-7a7e4b29f3af401e69b6f86e4c26b727"}]}
],
"last_seq":"{{seq-3}}","pending":2}


```

## Interaction 9: DELETE /tcae_changes

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
| removed | response headers | `Date` | (left out) | 0–9 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `X-Couch-Request-ID` | (left out) | 0–9 |
| removed | response headers | `X-CouchDB-Body-Time` | (left out) | 0–9 |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | none |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | 0–9 |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[admin]"` | none |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[admin-wrong-password]"` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 0, 3, 4 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–9 |
| collapsed | whole recording | `Expires=[A-Z][a-z]{2}, [0-9]{2}-[A-Z][a-z]{2}-[0-9]{4} [0-9]{2}:[0-9]{2}:[0-9]{2} GMT` | `Expires=Sat, 01-Jan-2000 00:00:00 GMT` | none |
| collapsed | whole recording | `"instance_start_time":"[0-9]+"` | `"instance_start_time":"946684800"` | none |
| normalized | whole recording | `[0-9]+-g[A-Za-z0-9_-]{20,}` | `{{seq-N}}` | 2, 5, 7, 8 |
| normalized | whole recording | `(?<=")[0-9a-f]{32}(?=")` | `{{uuid-N}}` | none |
| normalized | whole recording | `(?<=ETag: ")[0-9A-Z]{20,30}(?=")` | `{{etag-N}}` | 2, 5, 7, 8 |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
