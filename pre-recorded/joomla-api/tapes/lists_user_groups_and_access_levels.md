## Interaction 0: GET /api/index.php/v1/users/groups

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
Content-Length: 1007
Keep-Alive: timeout=5, max=58
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/users\/groups"},"data":[{"type":"groups","id":"1","attributes":{"id":1,"parent_id":0,"lft":1,"rgt":18,"title":"Public"}},{"type":"groups","id":"9","attributes":{"id":9,"parent_id":1,"lft":2,"rgt":3,"title":"Guest"}},{"type":"groups","id":"6","attributes":{"id":6,"parent_id":1,"lft":4,"rgt":7,"title":"Manager"}},{"type":"groups","id":"7","attributes":{"id":7,"parent_id":6,"lft":5,"rgt":6,"title":"Administrator"}},{"type":"groups","id":"2","attributes":{"id":2,"parent_id":1,"lft":8,"rgt":15,"title":"Registered"}},{"type":"groups","id":"3","attributes":{"id":3,"parent_id":2,"lft":9,"rgt":14,"title":"Author"}},{"type":"groups","id":"4","attributes":{"id":4,"parent_id":3,"lft":10,"rgt":13,"title":"Editor"}},{"type":"groups","id":"5","attributes":{"id":5,"parent_id":4,"lft":11,"rgt":12,"title":"Publisher"}},{"type":"groups","id":"8","attributes":{"id":8,"parent_id":1,"lft":16,"rgt":17,"title":"Super Users"}}],"meta":{"total-pages":1}}
```

## Interaction 1: GET /api/index.php/v1/users/levels

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
Content-Length: 532
Keep-Alive: timeout=5, max=57
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/users\/levels"},"data":[{"type":"levels","id":"1","attributes":{"id":1,"title":"Public","rules":"[1]"}},{"type":"levels","id":"5","attributes":{"id":5,"title":"Guest","rules":"[9]"}},{"type":"levels","id":"2","attributes":{"id":2,"title":"Registered","rules":"[6,2,8]"}},{"type":"levels","id":"3","attributes":{"id":3,"title":"Special","rules":"[6,3,8]"}},{"type":"levels","id":"6","attributes":{"id":6,"title":"Super Users","rules":"[8]"}}],"meta":{"total-pages":1}}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0, 1 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `Last-Modified` | (left out) | 0, 1 |
| redacted credential | request and response headers | `X-Joomla-Token` | `X_JOOMLA_TOKEN_N` | 0, 1 |
| redacted | request body | (not shown: it may be the secret) | `REDACTED[reader-password]` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 0, 1 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0, 1 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}` | `2000-01-01 00:00:00` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
