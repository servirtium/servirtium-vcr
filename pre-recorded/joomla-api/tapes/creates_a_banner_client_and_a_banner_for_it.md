## Interaction 0: POST /api/index.php/v1/banners/clients

### Request headers recorded for playback:

```
Accept: application/vnd.api+json
Connection: keep-alive
Content-Length: 101
Content-Type: application/json
Host: {{request.host}}
User-Agent: servirtium-vcr pre-recorded tests (Aether std.http.client)
X-Joomla-Token: X_JOOMLA_TOKEN_1
```
### Request body recorded for playback ():

```
{"name":"Acme Adverts","contact":"Ann Acme","email":"ads@acme.example.test","state":1,"extrainfo":""}
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
Content-Length: 427
Keep-Alive: timeout=5, max=72
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/banners\/clients"},"data":{"type":"clients","id":"1","attributes":{"typeAlias":"com_banners.client","id":1,"name":"Acme Adverts","contact":"Ann Acme","email":"ads@acme.example.test","extrainfo":"","state":1,"checked_out":null,"checked_out_time":null,"metakey":null,"own_prefix":0,"metakey_prefix":"","purchase_type":-1,"track_clicks":-1,"track_impressions":-1}}}
```

## Interaction 1: POST /api/index.php/v1/banners

### Request headers recorded for playback:

```
Accept: application/vnd.api+json
Connection: keep-alive
Content-Length: 210
Content-Type: application/json
Host: {{request.host}}
User-Agent: servirtium-vcr pre-recorded tests (Aether std.http.client)
X-Joomla-Token: X_JOOMLA_TOKEN_1
```
### Request body recorded for playback ():

```
{"name":"Spring sale","alias":"spring-sale","catid":3,"cid":1,"state":1,"type":1,"custombannercode":"<b>Spring sale</b>","description":"","language":"*","params":{"imageurl":"","width":"","height":"","alt":""}}
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
Content-Length: 785
Keep-Alive: timeout=5, max=71
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/banners"},"data":{"type":"banners","id":"1","attributes":{"typeAlias":"com_banners.banner","id":1,"cid":1,"type":1,"name":"Spring sale","alias":"spring-sale","imptotal":0,"impmade":0,"clicks":0,"clickurl":"","state":1,"catid":3,"description":"","custombannercode":"<b>Spring sale<\/b>","sticky":0,"ordering":1,"metakey":null,"params":{"imageurl":"","width":"","height":"","alt":""},"own_prefix":0,"metakey_prefix":"","purchase_type":-1,"track_clicks":-1,"track_impressions":-1,"checked_out":null,"checked_out_time":null,"publish_up":null,"publish_down":null,"reset":null,"created":"2000-01-01 00:00:00","language":"*","created_by":42,"created_by_alias":"","modified":"2000-01-01 00:00:00","modified_by":42,"version":1}}}
```

## Interaction 2: GET /api/index.php/v1/banners?filter%5Bclient_id%5D=1

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
Content-Length: 560
Keep-Alive: timeout=5, max=70
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/banners?filter%5Bclient_id%5D=1"},"data":[{"type":"banners","id":"1","attributes":{"id":1,"name":"Spring sale","alias":"spring-sale","checked_out":null,"checked_out_time":null,"catid":3,"clicks":0,"metakey":null,"sticky":0,"impmade":0,"imptotal":0,"state":1,"ordering":1,"purchase_type":-1,"language":"*","publish_up":null,"publish_down":null,"language_image":null,"editor":null,"category_title":"Uncategorised","client_name":"Acme Adverts","client_purchase_type":-1}}],"meta":{"total-pages":1}}
```

## Interaction 3: PATCH /api/index.php/v1/banners/1

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
{"sticky":1}
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
Content-Length: 788
Keep-Alive: timeout=5, max=69
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/banners\/1"},"data":{"type":"banners","id":"1","attributes":{"typeAlias":"com_banners.banner","id":1,"cid":1,"type":1,"name":"Spring sale","alias":"spring-sale","imptotal":0,"impmade":0,"clicks":0,"clickurl":"","state":1,"catid":3,"description":"","custombannercode":"<b>Spring sale<\/b>","sticky":1,"ordering":1,"metakey":null,"params":{"imageurl":"","width":"","height":"","alt":""},"own_prefix":0,"metakey_prefix":"","purchase_type":-1,"track_clicks":-1,"track_impressions":-1,"checked_out":null,"checked_out_time":null,"publish_up":null,"publish_down":null,"reset":null,"created":"2000-01-01 00:00:00","language":"*","created_by":42,"created_by_alias":"","modified":"2000-01-01 00:00:00","modified_by":42,"version":2}}}
```

## Interaction 4: PATCH /api/index.php/v1/banners/1

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
Content-Length: 789
Keep-Alive: timeout=5, max=68
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/banners\/1"},"data":{"type":"banners","id":"1","attributes":{"typeAlias":"com_banners.banner","id":1,"cid":1,"type":1,"name":"Spring sale","alias":"spring-sale","imptotal":0,"impmade":0,"clicks":0,"clickurl":"","state":-2,"catid":3,"description":"","custombannercode":"<b>Spring sale<\/b>","sticky":1,"ordering":0,"metakey":null,"params":{"imageurl":"","width":"","height":"","alt":""},"own_prefix":0,"metakey_prefix":"","purchase_type":-1,"track_clicks":-1,"track_impressions":-1,"checked_out":null,"checked_out_time":null,"publish_up":null,"publish_down":null,"reset":null,"created":"2000-01-01 00:00:00","language":"*","created_by":42,"created_by_alias":"","modified":"2000-01-01 00:00:00","modified_by":42,"version":3}}}
```

## Interaction 5: DELETE /api/index.php/v1/banners/1

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
Keep-Alive: timeout=5, max=67
Connection: Keep-Alive
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 6: PATCH /api/index.php/v1/banners/clients/1

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
Content-Length: 431
Keep-Alive: timeout=5, max=66
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/banners\/clients\/1"},"data":{"type":"clients","id":"1","attributes":{"typeAlias":"com_banners.client","id":1,"name":"Acme Adverts","contact":"Ann Acme","email":"ads@acme.example.test","extrainfo":"","state":-2,"checked_out":null,"checked_out_time":null,"metakey":null,"own_prefix":0,"metakey_prefix":"","purchase_type":-1,"track_clicks":-1,"track_impressions":-1}}}
```

## Interaction 7: DELETE /api/index.php/v1/banners/clients/1

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
Keep-Alive: timeout=5, max=65
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
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}` | `2000-01-01 00:00:00` | 1, 3, 4 |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
