## Interaction 0: POST /api/index.php/v1/tags

### Request headers recorded for playback:

```
Accept: application/vnd.api+json
Connection: keep-alive
Content-Length: 99
Content-Type: application/json
Host: {{request.host}}
User-Agent: servirtium-vcr pre-recorded tests (Aether std.http.client)
X-Joomla-Token: X_JOOMLA_TOKEN_1
```
### Request body recorded for playback ():

```
{"title":"recorded","alias":"recorded","parent_id":1,"published":1,"language":"*","description":""}
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
Content-Length: 633
Keep-Alive: timeout=5, max=80
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/tags"},"data":{"type":"tags","id":"2","attributes":{"typeAlias":"com_tags.tag","parent_id":1,"level":1,"lft":1,"rgt":2,"alias":"recorded","id":2,"path":"recorded","title":"recorded","note":"","description":"","published":1,"checked_out":null,"checked_out_time":null,"access":1,"params":[],"metadesc":"","metakey":"","metadata":[],"created_user_id":42,"created_time":"2000-01-01 00:00:00","created_by_alias":"","modified_user_id":42,"modified_time":"2000-01-01 00:00:00","images":[],"urls":[],"hits":0,"language":"*","version":1,"publish_up":null,"publish_down":null}}}
```

## Interaction 1: POST /api/index.php/v1/content/articles

### Request headers recorded for playback:

```
Accept: application/vnd.api+json
Connection: keep-alive
Content-Length: 130
Content-Type: application/json
Host: {{request.host}}
User-Agent: servirtium-vcr pre-recorded tests (Aether std.http.client)
X-Joomla-Token: X_JOOMLA_TOKEN_1
```
### Request body recorded for playback ():

```
{"title":"Tagged article","alias":"tagged-article","articletext":"<p>Tagged.</p>","catid":2,"language":"*","state":1,"tags":["2"]}
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
Content-Length: 922
Keep-Alive: timeout=5, max=79
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/content\/articles"},"data":{"type":"articles","id":"3","attributes":{"typeAlias":"com_content.article","id":3,"asset_id":103,"title":"Tagged article","alias":"tagged-article","introtext":"<p>Tagged.<\/p>","fulltext":"","state":1,"created":"2000-01-01 00:00:00","created_by":42,"created_by_alias":"","modified":"2000-01-01 00:00:00","modified_by":42,"publish_up":"2000-01-01 00:00:00","publish_down":null,"images":[],"urls":[],"version":1,"metakey":"","metadesc":"","access":1,"hits":0,"metadata":[],"featured":0,"language":"*","note":"","tags":{"2":"recorded"},"featured_up":null,"featured_down":null,"text":"<p>Tagged.<\/p> ","schemaorg":null},"relationships":{"category":{"data":{"type":"categories","id":"2"}},"created_by":{"data":{"type":"users","id":"42"}},"tags":{"data":[{"type":"tags","id":"2"}]},"modified_by":{"data":{"type":"users","id":"42"}}}}}
```

## Interaction 2: GET /api/index.php/v1/content/articles/3

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
Content-Length: 925
Keep-Alive: timeout=5, max=78
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/content\/articles\/3"},"data":{"type":"articles","id":"3","attributes":{"typeAlias":"com_content.article","id":3,"asset_id":103,"title":"Tagged article","alias":"tagged-article","introtext":"<p>Tagged.<\/p>","fulltext":"","state":1,"created":"2000-01-01 00:00:00","created_by":42,"created_by_alias":"","modified":"2000-01-01 00:00:00","modified_by":42,"publish_up":"2000-01-01 00:00:00","publish_down":null,"images":[],"urls":[],"version":1,"metakey":"","metadesc":"","access":1,"hits":0,"metadata":[],"featured":0,"language":"*","note":"","tags":{"2":"recorded"},"featured_up":null,"featured_down":null,"text":"<p>Tagged.<\/p> ","schemaorg":null},"relationships":{"category":{"data":{"type":"categories","id":"2"}},"created_by":{"data":{"type":"users","id":"42"}},"tags":{"data":[{"type":"tags","id":"2"}]},"modified_by":{"data":{"type":"users","id":"42"}}}}}
```

## Interaction 3: GET /api/index.php/v1/tags/2

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
Content-Length: 636
Keep-Alive: timeout=5, max=77
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/tags\/2"},"data":{"type":"tags","id":"2","attributes":{"typeAlias":"com_tags.tag","parent_id":1,"level":1,"lft":1,"rgt":2,"alias":"recorded","id":2,"path":"recorded","title":"recorded","note":"","description":"","published":1,"checked_out":null,"checked_out_time":null,"access":1,"params":[],"metadesc":"","metakey":"","metadata":[],"created_user_id":42,"created_time":"2000-01-01 00:00:00","created_by_alias":"","modified_user_id":42,"modified_time":"2000-01-01 00:00:00","images":[],"urls":[],"hits":0,"language":"*","version":1,"publish_up":null,"publish_down":null}}}
```

## Interaction 4: PATCH /api/index.php/v1/content/articles/3

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
Content-Length: 926
Keep-Alive: timeout=5, max=76
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/content\/articles\/3"},"data":{"type":"articles","id":"3","attributes":{"typeAlias":"com_content.article","id":3,"asset_id":103,"title":"Tagged article","alias":"tagged-article","introtext":"<p>Tagged.<\/p>","fulltext":"","state":-2,"created":"2000-01-01 00:00:00","created_by":42,"created_by_alias":"","modified":"2000-01-01 00:00:00","modified_by":42,"publish_up":"2000-01-01 00:00:00","publish_down":null,"images":[],"urls":[],"version":2,"metakey":"","metadesc":"","access":1,"hits":0,"metadata":[],"featured":0,"language":"*","note":"","tags":{"2":"recorded"},"featured_up":null,"featured_down":null,"text":"<p>Tagged.<\/p> ","schemaorg":null},"relationships":{"category":{"data":{"type":"categories","id":"2"}},"created_by":{"data":{"type":"users","id":"42"}},"tags":{"data":[{"type":"tags","id":"2"}]},"modified_by":{"data":{"type":"users","id":"42"}}}}}
```

## Interaction 5: DELETE /api/index.php/v1/content/articles/3

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
Keep-Alive: timeout=5, max=75
Connection: Keep-Alive
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 6: PATCH /api/index.php/v1/tags/2

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
Content-Length: 637
Keep-Alive: timeout=5, max=74
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/tags\/2"},"data":{"type":"tags","id":"2","attributes":{"typeAlias":"com_tags.tag","parent_id":1,"level":1,"lft":1,"rgt":2,"alias":"recorded","id":2,"path":"recorded","title":"recorded","note":"","description":"","published":-2,"checked_out":null,"checked_out_time":null,"access":1,"params":[],"metadesc":"","metakey":"","metadata":[],"created_user_id":42,"created_time":"2000-01-01 00:00:00","created_by_alias":"","modified_user_id":42,"modified_time":"2000-01-01 00:00:00","images":[],"urls":[],"hits":0,"language":"*","version":2,"publish_up":null,"publish_down":null}}}
```

## Interaction 7: DELETE /api/index.php/v1/tags/2

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
Keep-Alive: timeout=5, max=73
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
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}` | `2000-01-01 00:00:00` | 0–4, 6 |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
