## Interaction 0: GET /api/index.php/v1/content/articles

### Request headers recorded for playback:

```
Accept: application/vnd.api+json
Connection: keep-alive
Host: {{request.host}}
User-Agent: servirtium-vcr pre-recorded tests (Aether std.http.client)
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
Content-Length: 34
Keep-Alive: timeout=5, max=99
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (401: application/vnd.api+json; charset=utf-8):

```
{"errors":[{"title":"Forbidden"}]}
```

## Interaction 1: GET /api/index.php/v1/content/articles

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
Content-Length: 34
Keep-Alive: timeout=5, max=98
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (401: application/vnd.api+json; charset=utf-8):

```
{"errors":[{"title":"Forbidden"}]}
```

## Interaction 2: GET /api/index.php/v1/content/articles

### Request headers recorded for playback:

```
Accept: application/vnd.api+json
Connection: keep-alive
Host: {{request.host}}
User-Agent: servirtium-vcr pre-recorded tests (Aether std.http.client)
X-Joomla-Token: X_JOOMLA_TOKEN_2
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
Content-Length: 120
Keep-Alive: timeout=5, max=97
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (200: application/vnd.api+json; charset=utf-8):

```
{"links":{"self":"http:\/\/{{request.host}}\/api\/index.php\/v1\/content\/articles"},"data":[],"meta":{"total-pages":0}}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–2 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `Last-Modified` | (left out) | 2 |
| redacted credential | request and response headers | `X-Joomla-Token` | `X_JOOMLA_TOKEN_N` | 1, 2 |
| redacted | request body | (not shown: it may be the secret) | `REDACTED[reader-password]` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 2 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–2 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}` | `2000-01-01 00:00:00` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
