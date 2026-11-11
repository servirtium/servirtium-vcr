## Interaction 0: POST /api/index.php/v1/users

### Request headers recorded for playback:

```
Accept: application/vnd.api+json
Connection: keep-alive
Content-Length: 178
Content-Type: application/json
Host: {{request.host}}
User-Agent: servirtium-vcr pre-recorded tests (Aether std.http.client)
X-Joomla-Token: X_JOOMLA_TOKEN_1
```
### Request body recorded for playback ():

```
{"name":"Test Reader","username":"testreader","email":"reader@example.test","password":"REDACTED[reader-password]","password2":"REDACTED[reader-password]","groups":[2],"block":0}
```
### Response headers recorded for playback:

```
Server: Apache/2.4.69 (Debian)
X-Powered-By: JoomlaAPI/1.0
x-frame-options: SAMEORIGIN
referrer-policy: strict-origin-when-cross-origin
cross-origin-opener-policy: same-origin
Expires: Wed, 17 Aug 2005 00:00:00 GMT
Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0
Pragma: no-cache
Content-Length: 340
Keep-Alive: timeout=5, max=64
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/users"},"data":{"type":"users","id":"43","attributes":{"groups":{"2":2},"id":43,"name":"Test Reader","username":"testreader","email":"reader@example.test","block":0,"sendEmail":0,"registerDate":"2000-01-01 00:00:00","lastvisitDate":null,"lastResetTime":null,"resetCount":0}}}
```

## Interaction 1: GET /api/index.php/v1/users/43

### Request headers recorded for playback:

```
Accept: application/vnd.api+json
Connection: keep-alive
Host: {{request.host}}
User-Agent: servirtium-vcr pre-recorded tests (Aether std.http.client)
X-Joomla-Token: X_JOOMLA_TOKEN_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Apache/2.4.69 (Debian)
X-Powered-By: JoomlaAPI/1.0
x-frame-options: SAMEORIGIN
referrer-policy: strict-origin-when-cross-origin
cross-origin-opener-policy: same-origin
Expires: Wed, 17 Aug 2005 00:00:00 GMT
Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0
Pragma: no-cache
Content-Length: 344
Keep-Alive: timeout=5, max=63
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/users\/43"},"data":{"type":"users","id":"43","attributes":{"groups":{"2":2},"id":43,"name":"Test Reader","username":"testreader","email":"reader@example.test","block":0,"sendEmail":0,"registerDate":"2000-01-01 00:00:00","lastvisitDate":null,"lastResetTime":null,"resetCount":0}}}
```

## Interaction 2: PATCH /api/index.php/v1/users/43

### Request headers recorded for playback:

```
Accept: application/vnd.api+json
Connection: keep-alive
Content-Length: 31
Content-Type: application/json
Host: {{request.host}}
User-Agent: servirtium-vcr pre-recorded tests (Aether std.http.client)
X-Joomla-Token: X_JOOMLA_TOKEN_1
```
### Request body recorded for playback ():

```
{"name":"Test Reader, renamed"}
```
### Response headers recorded for playback:

```
Server: Apache/2.4.69 (Debian)
X-Powered-By: JoomlaAPI/1.0
x-frame-options: SAMEORIGIN
referrer-policy: strict-origin-when-cross-origin
cross-origin-opener-policy: same-origin
Expires: Wed, 17 Aug 2005 00:00:00 GMT
Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0
Pragma: no-cache
Content-Length: 353
Keep-Alive: timeout=5, max=62
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/users\/43"},"data":{"type":"users","id":"43","attributes":{"groups":{"2":2},"id":43,"name":"Test Reader, renamed","username":"testreader","email":"reader@example.test","block":0,"sendEmail":0,"registerDate":"2000-01-01 00:00:00","lastvisitDate":null,"lastResetTime":null,"resetCount":0}}}
```

## Interaction 3: GET /api/index.php/v1/users?filter%5Bsearch%5D=testreader

### Request headers recorded for playback:

```
Accept: application/vnd.api+json
Connection: keep-alive
Host: {{request.host}}
User-Agent: servirtium-vcr pre-recorded tests (Aether std.http.client)
X-Joomla-Token: X_JOOMLA_TOKEN_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Apache/2.4.69 (Debian)
X-Powered-By: JoomlaAPI/1.0
x-frame-options: SAMEORIGIN
referrer-policy: strict-origin-when-cross-origin
cross-origin-opener-policy: same-origin
Expires: Wed, 17 Aug 2005 00:00:00 GMT
Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0
Pragma: no-cache
Content-Length: 432
Keep-Alive: timeout=5, max=61
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/users?filter%5Bsearch%5D=testreader"},"data":[{"type":"users","id":"43","attributes":{"id":43,"name":"Test Reader, renamed","username":"testreader","email":"reader@example.test","block":0,"sendEmail":0,"registerDate":"2000-01-01 00:00:00","lastvisitDate":null,"lastResetTime":null,"resetCount":0,"group_count":1,"group_names":"Registered"}}],"meta":{"total-pages":1}}
```

## Interaction 4: DELETE /api/index.php/v1/users/43

### Request headers recorded for playback:

```
Accept: application/vnd.api+json
Connection: keep-alive
Host: {{request.host}}
User-Agent: servirtium-vcr pre-recorded tests (Aether std.http.client)
X-Joomla-Token: X_JOOMLA_TOKEN_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Apache/2.4.69 (Debian)
X-Powered-By: JoomlaAPI/1.0
x-frame-options: SAMEORIGIN
referrer-policy: strict-origin-when-cross-origin
cross-origin-opener-policy: same-origin
Expires: Wed, 17 Aug 2005 00:00:00 GMT
Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0
Pragma: no-cache
Keep-Alive: timeout=5, max=60
Connection: Keep-Alive
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 5: GET /api/index.php/v1/users/43

### Request headers recorded for playback:

```
Accept: application/vnd.api+json
Connection: keep-alive
Host: {{request.host}}
User-Agent: servirtium-vcr pre-recorded tests (Aether std.http.client)
X-Joomla-Token: X_JOOMLA_TOKEN_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Apache/2.4.69 (Debian)
X-Powered-By: PHP/8.4.27
x-frame-options: SAMEORIGIN
referrer-policy: strict-origin-when-cross-origin
cross-origin-opener-policy: same-origin
Content-Length: 54
Keep-Alive: timeout=5, max=59
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (404: application/vnd.api+json; charset=utf-8):

```
{"errors":[{"title":"Resource not found","code":404}]}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–5 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `Last-Modified` | (left out) | 0–4 |
| redacted credential | request and response headers | `X-Joomla-Token` | `X_JOOMLA_TOKEN_N` | 0–5 |
| redacted | request body | (not shown: it may be the secret) | `REDACTED[reader-password]` | 0 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 0–3 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–5 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}` | `2000-01-01 00:00:00` | 0–3 |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
