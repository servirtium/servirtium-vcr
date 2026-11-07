## Interaction 0: PUT /tcae_mango?q=1

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
Location: http://{{request.host}}/tcae_mango
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (201: application/json):

```
{"ok":true}

```

## Interaction 1: POST /tcae_mango/_bulk_docs

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 279
Content-Type: application/json
Cookie: AuthSession=COOKIE_1
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"docs":[{"_id":"p1","type":"fruit","name":"apple","price":3},{"_id":"p2","type":"fruit","name":"banana","price":2},{"_id":"p3","type":"veg","name":"carrot","price":1},{"_id":"p4","type":"veg","name":"daikon","price":4},{"_id":"p5","type":"fruit","name":"elderberry","price":5}]}
```
### Response headers recorded for playback:

```
Cache-Control: must-revalidate
Content-Length: 327
Content-Type: application/json
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (201: application/json):

```
[{"ok":true,"id":"p1","rev":"1-486e32513d0820b124be5269c914442b"},{"ok":true,"id":"p2","rev":"1-e0a723c2f9a77f26ad1a5d4ef85c5ff0"},{"ok":true,"id":"p3","rev":"1-87da73c5369c7afb6cfe9512c3321435"},{"ok":true,"id":"p4","rev":"1-d9d4ce51699412ba2257f6ba7ece775e"},{"ok":true,"id":"p5","rev":"1-cfbb233fe12306246cd2de22f82e0318"}]

```

## Interaction 2: POST /tcae_mango/_find

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 56
Content-Type: application/json
Cookie: AuthSession=COOKIE_1
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"selector":{"price":{"$gt":2}},"fields":["_id","name"]}
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
{"docs":[
{"_id":"p1","name":"apple"},
{"_id":"p4","name":"daikon"},
{"_id":"p5","name":"elderberry"}
],
"bookmark": "g1AAAAA0eJzLYWBgYMpgSmHgKy5JLCrJTq2MT8lPzkzJBYkXmIJkOGAyULEsAGqeDgM",
"warning": "No matching index found, create an index to optimize query time."}


```

## Interaction 3: POST /tcae_mango/_index

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 97
Content-Type: application/json
Cookie: AuthSession=COOKIE_1
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"index":{"fields":["type","price"]},"name":"type-price","ddoc":"mango-type-price","type":"json"}
```
### Response headers recorded for playback:

```
Cache-Control: must-revalidate
Content-Length: 73
Content-Type: application/json
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (200: application/json):

```
{"result":"created","id":"_design/mango-type-price","name":"type-price"}

```

## Interaction 4: POST /tcae_mango/_index

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 97
Content-Type: application/json
Cookie: AuthSession=COOKIE_1
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"index":{"fields":["type","price"]},"name":"type-price","ddoc":"mango-type-price","type":"json"}
```
### Response headers recorded for playback:

```
Cache-Control: must-revalidate
Content-Length: 72
Content-Type: application/json
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (200: application/json):

```
{"result":"exists","id":"_design/mango-type-price","name":"type-price"}

```

## Interaction 5: GET /tcae_mango/_index

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
Content-Length: 252
Content-Type: application/json
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (200: application/json):

```
{"total_rows":2,"indexes":[{"ddoc":null,"name":"_all_docs","type":"special","def":{"fields":[{"_id":"asc"}]}},{"ddoc":"_design/mango-type-price","name":"type-price","type":"json","partitioned":false,"def":{"fields":[{"type":"asc"},{"price":"asc"}]}}]}

```

## Interaction 6: POST /tcae_mango/_find

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 124
Content-Type: application/json
Cookie: AuthSession=COOKIE_1
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"selector":{"type":"fruit","price":{"$gte":2}},"sort":[{"type":"asc"},{"price":"asc"}],"fields":["name","price"],"limit":2}
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
{"docs":[
{"name":"banana","price":2},
{"name":"apple","price":3}
],
"bookmark": "g1AAAAA_eJzLYWBgYMpgSmHgKy5JLCrJTq2MT8lPzkzJBYkXGIJkOGAyOSAxkARrWlFpZkkic1YWAA50EMM"}


```

## Interaction 7: POST /tcae_mango/_find

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 221
Content-Type: application/json
Cookie: AuthSession=COOKIE_1
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"selector":{"type":"fruit","price":{"$gte":2}},"sort":[{"type":"asc"},{"price":"asc"}],"fields":["name","price"],"limit":2,"bookmark":"g1AAAAA_eJzLYWBgYMpgSmHgKy5JLCrJTq2MT8lPzkzJBYkXGIJkOGAyOSAxkARrWlFpZkkic1YWAA50EMM"}
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
{"docs":[
{"name":"elderberry","price":5}
],
"bookmark": "g1AAAAA_eJzLYWBgYMpgSmHgKy5JLCrJTq2MT8lPzkzJBYkXmIJkOGAyOSAxkARrWlFpZkkia1YWAA7-EMk"}


```

## Interaction 8: DELETE /tcae_mango/_index/_design/mango-type-price/json/type-price

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

## Interaction 9: DELETE /tcae_mango

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
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 0 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–9 |
| collapsed | whole recording | `Expires=[A-Z][a-z]{2}, [0-9]{2}-[A-Z][a-z]{2}-[0-9]{4} [0-9]{2}:[0-9]{2}:[0-9]{2} GMT` | `Expires=Sat, 01-Jan-2000 00:00:00 GMT` | none |
| collapsed | whole recording | `"instance_start_time":"[0-9]+"` | `"instance_start_time":"946684800"` | none |
| normalized | whole recording | `[0-9]+-g[A-Za-z0-9_-]{20,}` | `{{seq-N}}` | none |
| normalized | whole recording | `(?<=")[0-9a-f]{32}(?=")` | `{{uuid-N}}` | none |
| normalized | whole recording | `(?<=ETag: ")[0-9A-Z]{20,30}(?=")` | `{{etag-N}}` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
