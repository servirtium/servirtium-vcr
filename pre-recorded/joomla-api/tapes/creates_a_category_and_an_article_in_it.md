## Interaction 0: POST /api/index.php/v1/content/categories

### Request headers recorded for playback:

```
Accept: application/vnd.api+json
Connection: keep-alive
Content-Length: 125
Content-Type: application/json
Host: {{request.host}}
User-Agent: servirtium-vcr pre-recorded tests (Aether std.http.client)
X-Joomla-Token: X_JOOMLA_TOKEN_1
```
### Request body recorded for playback ():

```
{"title":"Servirtium recordings","alias":"servirtium-recordings","parent_id":1,"published":1,"language":"*","description":""}
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
Content-Length: 422
Keep-Alive: timeout=5, max=88
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/content\/categories"},"data":{"type":"categories","id":"8","attributes":{"parent_id":1,"level":1,"lft":11,"rgt":12,"alias":"servirtium-recordings","id":8,"extension":"com_content","title":"Servirtium recordings","note":"","description":"","published":1,"checked_out":null,"checked_out_time":null,"access":1,"params":[],"created_user_id":42,"language":"*"}}}
```

## Interaction 1: POST /api/index.php/v1/content/articles

### Request headers recorded for playback:

```
Accept: application/vnd.api+json
Connection: keep-alive
Content-Length: 151
Content-Type: application/json
Host: {{request.host}}
User-Agent: servirtium-vcr pre-recorded tests (Aether std.http.client)
X-Joomla-Token: X_JOOMLA_TOKEN_1
```
### Request body recorded for playback ():

```
{"title":"Filed under recordings","alias":"filed-under-recordings","articletext":"<p>In a category of its own.</p>","catid":8,"language":"*","state":1}
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
Keep-Alive: timeout=5, max=87
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/content\/articles"},"data":{"type":"articles","id":"2","attributes":{"typeAlias":"com_content.article","id":2,"asset_id":102,"title":"Filed under recordings","alias":"filed-under-recordings","introtext":"<p>In a category of its own.<\/p>","fulltext":"","state":1,"created":"2000-01-01 00:00:00","created_by":42,"created_by_alias":"","modified":"2000-01-01 00:00:00","modified_by":42,"publish_up":"2000-01-01 00:00:00","publish_down":null,"images":[],"urls":[],"version":1,"metakey":"","metadesc":"","access":1,"hits":0,"metadata":[],"featured":0,"language":"*","note":"","tags":[],"featured_up":null,"featured_down":null,"text":"<p>In a category of its own.<\/p> ","schemaorg":null},"relationships":{"category":{"data":{"type":"categories","id":"8"}},"created_by":{"data":{"type":"users","id":"42"}},"tags":{"data":[]},"modified_by":{"data":{"type":"users","id":"42"}}}}}
```

## Interaction 2: GET /api/index.php/v1/content/articles?filter%5Bcategory%5D=8

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
Content-Length: 909
Keep-Alive: timeout=5, max=86
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/content\/articles?filter%5Bcategory%5D=8"},"data":[{"type":"articles","id":"2","attributes":{"id":2,"asset_id":102,"title":"Filed under recordings","alias":"filed-under-recordings","state":1,"access":1,"created":"2000-01-01 00:00:00","created_by":42,"created_by_alias":"","modified":"2000-01-01 00:00:00","featured":0,"language":"*","hits":0,"publish_up":"2000-01-01 00:00:00","publish_down":null,"introtext":"<p>In a category of its own.<\/p>","fulltext":"","note":"","images":[],"metakey":"","metadesc":"","metadata":[],"version":1,"featured_up":null,"featured_down":null,"typeAlias":"com_content.article","text":"<p>In a category of its own.<\/p> ","tags":[],"schemaorg":null},"relationships":{"category":{"data":{"type":"categories","id":"8"}},"created_by":{"data":{"type":"users","id":"42"}},"tags":{"data":[]}}}],"meta":{"total-pages":1}}
```

## Interaction 3: GET /api/index.php/v1/content/categories/8

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
Content-Length: 425
Keep-Alive: timeout=5, max=85
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/content\/categories\/8"},"data":{"type":"categories","id":"8","attributes":{"parent_id":1,"level":1,"lft":11,"rgt":12,"alias":"servirtium-recordings","id":8,"extension":"com_content","title":"Servirtium recordings","note":"","description":"","published":1,"checked_out":null,"checked_out_time":null,"access":1,"params":[],"created_user_id":42,"language":"*"}}}
```

## Interaction 4: PATCH /api/index.php/v1/content/articles/2

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
Content-Length: 940
Keep-Alive: timeout=5, max=84
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/content\/articles\/2"},"data":{"type":"articles","id":"2","attributes":{"typeAlias":"com_content.article","id":2,"asset_id":102,"title":"Filed under recordings","alias":"filed-under-recordings","introtext":"<p>In a category of its own.<\/p>","fulltext":"","state":-2,"created":"2000-01-01 00:00:00","created_by":42,"created_by_alias":"","modified":"2000-01-01 00:00:00","modified_by":42,"publish_up":"2000-01-01 00:00:00","publish_down":null,"images":[],"urls":[],"version":2,"metakey":"","metadesc":"","access":1,"hits":0,"metadata":[],"featured":0,"language":"*","note":"","tags":[],"featured_up":null,"featured_down":null,"text":"<p>In a category of its own.<\/p> ","schemaorg":null},"relationships":{"category":{"data":{"type":"categories","id":"8"}},"created_by":{"data":{"type":"users","id":"42"}},"tags":{"data":[]},"modified_by":{"data":{"type":"users","id":"42"}}}}}
```

## Interaction 5: DELETE /api/index.php/v1/content/articles/2

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
Keep-Alive: timeout=5, max=83
Connection: Keep-Alive
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 6: PATCH /api/index.php/v1/content/categories/8

### Request headers recorded for playback:

```
Accept: application/vnd.api+json
Connection: keep-alive
Content-Length: 16
Content-Type: application/json
Host: {{request.host}}
User-Agent: servirtium-vcr pre-recorded tests (Aether std.http.client)
X-Joomla-Token: X_JOOMLA_TOKEN_1
```
### Request body recorded for playback ():

```
{"published":-2}
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
Content-Length: 426
Keep-Alive: timeout=5, max=82
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/content\/categories\/8"},"data":{"type":"categories","id":"8","attributes":{"parent_id":1,"level":1,"lft":11,"rgt":12,"alias":"servirtium-recordings","id":8,"extension":"com_content","title":"Servirtium recordings","note":"","description":"","published":-2,"checked_out":null,"checked_out_time":null,"access":1,"params":[],"created_user_id":42,"language":"*"}}}
```

## Interaction 7: DELETE /api/index.php/v1/content/categories/8

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
Keep-Alive: timeout=5, max=81
Connection: Keep-Alive
```
### Response body recorded for playback (204: text/plain):

```
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–7 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `Last-Modified` | (left out) | 0–7 |
| redacted credential | request and response headers | `X-Joomla-Token` | `X_JOOMLA_TOKEN_N` | 0–7 |
| redacted | request body | (not shown: it may be the secret) | `REDACTED[reader-password]` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 0–4, 6 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–7 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}` | `2000-01-01 00:00:00` | 1, 2, 4 |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
