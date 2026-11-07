## Interaction 0: PUT /tcae_alldocs?q=1

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
Location: http://{{request.host}}/tcae_alldocs
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (201: application/json):

```
{"ok":true}

```

## Interaction 1: POST /tcae_alldocs/_bulk_docs

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 100
Content-Type: application/json
Cookie: AuthSession=COOKIE_1
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"docs":[{"_id":"a","n":1},{"_id":"b","n":2},{"_id":"c","n":3},{"_id":"d","n":4},{"_id":"e","n":5}]}
```
### Response headers recorded for playback:

```
Cache-Control: must-revalidate
Content-Length: 322
Content-Type: application/json
Server: CouchDB/3.5.3 (Erlang OTP/27)
```
### Response body recorded for playback (201: application/json):

```
[{"ok":true,"id":"a","rev":"1-731bef401491606a3b246ed178e697c1"},{"ok":true,"id":"b","rev":"1-43a36d04d31d38efc5b9245c53e00627"},{"ok":true,"id":"c","rev":"1-2acff5ec499bf1cf4a478896765b824e"},{"ok":true,"id":"d","rev":"1-2371fbbf6336dcb0ff571e1f4f449ad0"},{"ok":true,"id":"e","rev":"1-16599e9b349642aef785eac10b9f94a3"}]

```

## Interaction 2: GET /tcae_alldocs/_all_docs

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
{"id":"a","key":"a","value":{"rev":"1-731bef401491606a3b246ed178e697c1"}},
{"id":"b","key":"b","value":{"rev":"1-43a36d04d31d38efc5b9245c53e00627"}},
{"id":"c","key":"c","value":{"rev":"1-2acff5ec499bf1cf4a478896765b824e"}},
{"id":"d","key":"d","value":{"rev":"1-2371fbbf6336dcb0ff571e1f4f449ad0"}},
{"id":"e","key":"e","value":{"rev":"1-16599e9b349642aef785eac10b9f94a3"}}
]}

```

## Interaction 3: GET /tcae_alldocs/_all_docs?include_docs=true&limit=2

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
{"id":"a","key":"a","value":{"rev":"1-731bef401491606a3b246ed178e697c1"},"doc":{"_id":"a","_rev":"1-731bef401491606a3b246ed178e697c1","n":1}},
{"id":"b","key":"b","value":{"rev":"1-43a36d04d31d38efc5b9245c53e00627"},"doc":{"_id":"b","_rev":"1-43a36d04d31d38efc5b9245c53e00627","n":2}}
]}

```

## Interaction 4: GET /tcae_alldocs/_all_docs?startkey=%22b%22&endkey=%22d%22

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
{"id":"b","key":"b","value":{"rev":"1-43a36d04d31d38efc5b9245c53e00627"}},
{"id":"c","key":"c","value":{"rev":"1-2acff5ec499bf1cf4a478896765b824e"}},
{"id":"d","key":"d","value":{"rev":"1-2371fbbf6336dcb0ff571e1f4f449ad0"}}
]}

```

## Interaction 5: GET /tcae_alldocs/_all_docs?descending=true&limit=2&skip=1

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
{"id":"d","key":"d","value":{"rev":"1-2371fbbf6336dcb0ff571e1f4f449ad0"}},
{"id":"c","key":"c","value":{"rev":"1-2acff5ec499bf1cf4a478896765b824e"}}
]}

```

## Interaction 6: GET /tcae_alldocs/_all_docs?key=%22c%22

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
{"total_rows":5,"offset":2,"rows":[
{"id":"c","key":"c","value":{"rev":"1-2acff5ec499bf1cf4a478896765b824e"}}
]}

```

## Interaction 7: POST /tcae_alldocs/_all_docs

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 25
Content-Type: application/json
Cookie: AuthSession=COOKIE_1
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"keys":["e","nope","a"]}
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
{"total_rows":5,"offset":null,"rows":[
{"id":"e","key":"e","value":{"rev":"1-16599e9b349642aef785eac10b9f94a3"}},
{"key":"nope","error":"not_found"},
{"id":"a","key":"a","value":{"rev":"1-731bef401491606a3b246ed178e697c1"}}
]}

```

## Interaction 8: DELETE /tcae_alldocs

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
| removed | response headers | `Date` | (left out) | 0–8 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `X-Couch-Request-ID` | (left out) | 0–8 |
| removed | response headers | `X-CouchDB-Body-Time` | (left out) | 0–8 |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | none |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | 0–8 |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[admin]"` | none |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[admin-wrong-password]"` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 0 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–8 |
| collapsed | whole recording | `Expires=[A-Z][a-z]{2}, [0-9]{2}-[A-Z][a-z]{2}-[0-9]{4} [0-9]{2}:[0-9]{2}:[0-9]{2} GMT` | `Expires=Sat, 01-Jan-2000 00:00:00 GMT` | none |
| collapsed | whole recording | `"instance_start_time":"[0-9]+"` | `"instance_start_time":"946684800"` | none |
| normalized | whole recording | `[0-9]+-g[A-Za-z0-9_-]{20,}` | `{{seq-N}}` | none |
| normalized | whole recording | `(?<=")[0-9a-f]{32}(?=")` | `{{uuid-N}}` | none |
| normalized | whole recording | `(?<=ETag: ")[0-9A-Z]{20,30}(?=")` | `{{etag-N}}` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
