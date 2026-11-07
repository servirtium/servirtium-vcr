## Interaction 0: PUT /tcae_views?q=1

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
Location: http://{{request.host}}/tcae_views
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (201: application/json):

```
{"ok":true}

```

## Interaction 1: POST /tcae_views/_bulk_docs

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

## Interaction 2: PUT /tcae_views/_design/shop

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 210
Content-Type: application/json
Cookie: AuthSession=COOKIE_1
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"language":"javascript","views":{"by_type":{"map":"function (doc) { if (doc.type) emit(doc.type, doc.price); }","reduce":"_sum"},"by_name":{"map":"function (doc) { emit(doc.name, null); }","reduce":"_count"}}}
```
### Response headers recorded for playback:

```
Cache-Control: must-revalidate
Content-Length: 75
Content-Type: application/json
ETag: "1-5e797f5e80eb4afa355dd6feabdd4880"
Location: http://{{request.host}}/tcae_views/_design%2Fshop
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (201: application/json):

```
{"ok":true,"id":"_design/shop","rev":"1-5e797f5e80eb4afa355dd6feabdd4880"}

```

## Interaction 3: GET /tcae_views/_design/shop

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
Content-Length: 276
Content-Type: application/json
ETag: "1-5e797f5e80eb4afa355dd6feabdd4880"
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (200: application/json):

```
{"_id":"_design/shop","_rev":"1-5e797f5e80eb4afa355dd6feabdd4880","language":"javascript","views":{"by_type":{"map":"function (doc) { if (doc.type) emit(doc.type, doc.price); }","reduce":"_sum"},"by_name":{"map":"function (doc) { emit(doc.name, null); }","reduce":"_count"}}}

```

## Interaction 4: GET /tcae_views/_design/shop/_view/by_type

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
{"rows":[
{"key":null,"value":15}
]}

```

## Interaction 5: GET /tcae_views/_design/shop/_view/by_type?group=true

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
{"rows":[
{"key":"fruit","value":10},
{"key":"veg","value":5}
]}

```

## Interaction 6: GET /tcae_views/_design/shop/_view/by_type?reduce=false

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
{"total_rows":5,"offset":0,"rows":[
{"id":"p1","key":"fruit","value":3},
{"id":"p2","key":"fruit","value":2},
{"id":"p5","key":"fruit","value":5},
{"id":"p3","key":"veg","value":1},
{"id":"p4","key":"veg","value":4}
]}

```

## Interaction 7: GET /tcae_views/_design/shop/_view/by_type?reduce=false&key=%22fruit%22&include_docs=true

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
{"total_rows":5,"offset":0,"rows":[
{"id":"p1","key":"fruit","value":3,"doc":{"_id":"p1","_rev":"1-486e32513d0820b124be5269c914442b","type":"fruit","name":"apple","price":3}},
{"id":"p2","key":"fruit","value":2,"doc":{"_id":"p2","_rev":"1-e0a723c2f9a77f26ad1a5d4ef85c5ff0","type":"fruit","name":"banana","price":2}},
{"id":"p5","key":"fruit","value":5,"doc":{"_id":"p5","_rev":"1-cfbb233fe12306246cd2de22f82e0318","type":"fruit","name":"elderberry","price":5}}
]}

```

## Interaction 8: GET /tcae_views/_design/shop/_view/by_name?reduce=false&startkey=%22b%22&endkey=%22d%22

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
{"total_rows":5,"offset":1,"rows":[
{"id":"p2","key":"banana","value":null},
{"id":"p3","key":"carrot","value":null}
]}

```

## Interaction 9: GET /tcae_views/_design/shop/_view/by_name?reduce=false&descending=true&limit=2

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
{"total_rows":5,"offset":0,"rows":[
{"id":"p5","key":"elderberry","value":null},
{"id":"p4","key":"daikon","value":null}
]}

```

## Interaction 10: POST /tcae_views/_design/shop/_view/by_type

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 31
Content-Type: application/json
Cookie: AuthSession=COOKIE_1
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"keys":["veg"],"reduce":false}
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
{"total_rows":5,"offset":3,"rows":[
{"id":"p3","key":"veg","value":1},
{"id":"p4","key":"veg","value":4}
]}

```

## Interaction 11: DELETE /tcae_views

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
| removed | response headers | `Date` | (left out) | 0–11 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `X-Couch-Request-ID` | (left out) | 0–11 |
| removed | response headers | `X-CouchDB-Body-Time` | (left out) | 0–11 |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | none |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | 0–11 |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[admin]"` | none |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[admin-wrong-password]"` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 0, 2 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–11 |
| collapsed | whole recording | `Expires=[A-Z][a-z]{2}, [0-9]{2}-[A-Z][a-z]{2}-[0-9]{4} [0-9]{2}:[0-9]{2}:[0-9]{2} GMT` | `Expires=Sat, 01-Jan-2000 00:00:00 GMT` | none |
| collapsed | whole recording | `"instance_start_time":"[0-9]+"` | `"instance_start_time":"946684800"` | none |
| normalized | whole recording | `[0-9]+-g[A-Za-z0-9_-]{20,}` | `{{seq-N}}` | none |
| normalized | whole recording | `(?<=")[0-9a-f]{32}(?=")` | `{{uuid-N}}` | none |
| normalized | whole recording | `(?<=ETag: ")[0-9A-Z]{20,30}(?=")` | `{{etag-N}}` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
