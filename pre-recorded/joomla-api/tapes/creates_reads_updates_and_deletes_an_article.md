## Interaction 0: POST /api/index.php/v1/content/articles

### Request headers recorded for playback:

```
Accept: application/vnd.api+json
Connection: keep-alive
Content-Length: 146
Content-Type: application/json
Host: {{request.host}}
User-Agent: servirtium-vcr pre-recorded tests (Aether std.http.client)
X-Joomla-Token: X_JOOMLA_TOKEN_1
```
### Request body recorded for playback ():

```
{"title":"Servirtium test article","alias":"servirtium-test-article","articletext":"<p>Written by a test.</p>","catid":2,"language":"*","state":1}
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
Content-Length: 924
Keep-Alive: timeout=5, max=96
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/content\/articles"},"data":{"type":"articles","id":"1","attributes":{"typeAlias":"com_content.article","id":1,"asset_id":100,"title":"Servirtium test article","alias":"servirtium-test-article","introtext":"<p>Written by a test.<\/p>","fulltext":"","state":1,"created":"2000-01-01 00:00:00","created_by":42,"created_by_alias":"","modified":"2000-01-01 00:00:00","modified_by":42,"publish_up":"2000-01-01 00:00:00","publish_down":null,"images":[],"urls":[],"version":1,"metakey":"","metadesc":"","access":1,"hits":0,"metadata":[],"featured":0,"language":"*","note":"","tags":[],"featured_up":null,"featured_down":null,"text":"<p>Written by a test.<\/p> ","schemaorg":null},"relationships":{"category":{"data":{"type":"categories","id":"2"}},"created_by":{"data":{"type":"users","id":"42"}},"tags":{"data":[]},"modified_by":{"data":{"type":"users","id":"42"}}}}}
```

## Interaction 1: GET /api/index.php/v1/content/articles/1

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
Content-Length: 927
Keep-Alive: timeout=5, max=95
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/content\/articles\/1"},"data":{"type":"articles","id":"1","attributes":{"typeAlias":"com_content.article","id":1,"asset_id":100,"title":"Servirtium test article","alias":"servirtium-test-article","introtext":"<p>Written by a test.<\/p>","fulltext":"","state":1,"created":"2000-01-01 00:00:00","created_by":42,"created_by_alias":"","modified":"2000-01-01 00:00:00","modified_by":42,"publish_up":"2000-01-01 00:00:00","publish_down":null,"images":[],"urls":[],"version":1,"metakey":"","metadesc":"","access":1,"hits":0,"metadata":[],"featured":0,"language":"*","note":"","tags":[],"featured_up":null,"featured_down":null,"text":"<p>Written by a test.<\/p> ","schemaorg":null},"relationships":{"category":{"data":{"type":"categories","id":"2"}},"created_by":{"data":{"type":"users","id":"42"}},"tags":{"data":[]},"modified_by":{"data":{"type":"users","id":"42"}}}}}
```

## Interaction 2: PATCH /api/index.php/v1/content/articles/1

### Request headers recorded for playback:

```
Accept: application/vnd.api+json
Connection: keep-alive
Content-Length: 43
Content-Type: application/json
Host: {{request.host}}
User-Agent: servirtium-vcr pre-recorded tests (Aether std.http.client)
X-Joomla-Token: X_JOOMLA_TOKEN_1
```
### Request body recorded for playback ():

```
{"title":"Servirtium test article, edited"}
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
Content-Length: 935
Keep-Alive: timeout=5, max=94
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/content\/articles\/1"},"data":{"type":"articles","id":"1","attributes":{"typeAlias":"com_content.article","id":1,"asset_id":100,"title":"Servirtium test article, edited","alias":"servirtium-test-article","introtext":"<p>Written by a test.<\/p>","fulltext":"","state":1,"created":"2000-01-01 00:00:00","created_by":42,"created_by_alias":"","modified":"2000-01-01 00:00:00","modified_by":42,"publish_up":"2000-01-01 00:00:00","publish_down":null,"images":[],"urls":[],"version":2,"metakey":"","metadesc":"","access":1,"hits":0,"metadata":[],"featured":0,"language":"*","note":"","tags":[],"featured_up":null,"featured_down":null,"text":"<p>Written by a test.<\/p> ","schemaorg":null},"relationships":{"category":{"data":{"type":"categories","id":"2"}},"created_by":{"data":{"type":"users","id":"42"}},"tags":{"data":[]},"modified_by":{"data":{"type":"users","id":"42"}}}}}
```

## Interaction 3: GET /api/index.php/v1/content/articles

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
Content-Length: 882
Keep-Alive: timeout=5, max=93
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/content\/articles"},"data":[{"type":"articles","id":"1","attributes":{"id":1,"asset_id":100,"title":"Servirtium test article, edited","alias":"servirtium-test-article","state":1,"access":1,"created":"2000-01-01 00:00:00","created_by":42,"created_by_alias":"","modified":"2000-01-01 00:00:00","featured":0,"language":"*","hits":0,"publish_up":"2000-01-01 00:00:00","publish_down":null,"introtext":"<p>Written by a test.<\/p>","fulltext":"","note":"","images":[],"metakey":"","metadesc":"","metadata":[],"version":2,"featured_up":null,"featured_down":null,"typeAlias":"com_content.article","text":"<p>Written by a test.<\/p> ","tags":[],"schemaorg":null},"relationships":{"category":{"data":{"type":"categories","id":"2"}},"created_by":{"data":{"type":"users","id":"42"}},"tags":{"data":[]}}}],"meta":{"total-pages":1}}
```

## Interaction 4: DELETE /api/index.php/v1/content/articles/1

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
Content-Length: 216
Keep-Alive: timeout=5, max=92
Connection: Keep-Alive
Content-Type: application/json
```
### Response body recorded for playback (409: application/json):

```
{"success":true,"message":null,"messages":{"warning":["Delete not permitted."]},"data":{"status":"Conflict","code":409,"message":"Resource not in state that can be deleted, must be trashed before it can be deleted"}}
```

## Interaction 5: PATCH /api/index.php/v1/content/articles/1

### Request headers recorded for playback:

```
Accept: application/vnd.api+json
Connection: keep-alive
Content-Length: 12
Content-Type: application/json
Host: {{request.host}}
User-Agent: servirtium-vcr pre-recorded tests (Aether std.http.client)
X-Joomla-Token: X_JOOMLA_TOKEN_1
```
### Request body recorded for playback ():

```
{"state":-2}
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
Content-Length: 936
Keep-Alive: timeout=5, max=91
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/content\/articles\/1"},"data":{"type":"articles","id":"1","attributes":{"typeAlias":"com_content.article","id":1,"asset_id":100,"title":"Servirtium test article, edited","alias":"servirtium-test-article","introtext":"<p>Written by a test.<\/p>","fulltext":"","state":-2,"created":"2000-01-01 00:00:00","created_by":42,"created_by_alias":"","modified":"2000-01-01 00:00:00","modified_by":42,"publish_up":"2000-01-01 00:00:00","publish_down":null,"images":[],"urls":[],"version":3,"metakey":"","metadesc":"","access":1,"hits":0,"metadata":[],"featured":0,"language":"*","note":"","tags":[],"featured_up":null,"featured_down":null,"text":"<p>Written by a test.<\/p> ","schemaorg":null},"relationships":{"category":{"data":{"type":"categories","id":"2"}},"created_by":{"data":{"type":"users","id":"42"}},"tags":{"data":[]},"modified_by":{"data":{"type":"users","id":"42"}}}}}
```

## Interaction 6: DELETE /api/index.php/v1/content/articles/1

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
Keep-Alive: timeout=5, max=90
Connection: Keep-Alive
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 7: GET /api/index.php/v1/content/articles/1

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
Keep-Alive: timeout=5, max=89
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
| removed | response headers | `Date` | (left out) | 0–7 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `Last-Modified` | (left out) | 0–3, 5, 6 |
| redacted credential | request and response headers | `X-Joomla-Token` | `X_JOOMLA_TOKEN_N` | 0–7 |
| redacted | request body | (not shown: it may be the secret) | `REDACTED[reader-password]` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 0–3, 5 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–7 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}` | `2000-01-01 00:00:00` | 0–3, 5 |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
