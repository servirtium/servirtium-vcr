## Interaction 0: GET /api/index.php/v1/content/articles/999999

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
Keep-Alive: timeout=5, max=56
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (404: application/vnd.api+json; charset=utf-8):

```
{"errors":[{"title":"Resource not found","code":404}]}
```

## Interaction 1: GET /api/index.php/v1/users/999999

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
Keep-Alive: timeout=5, max=55
Connection: Keep-Alive
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (404: application/vnd.api+json; charset=utf-8):

```
{"errors":[{"title":"Resource not found","code":404}]}
```

## Interaction 2: POST /api/index.php/v1/tags

### Request headers recorded for playback:

```
Accept: application/vnd.api+json
Connection: keep-alive
Content-Length: 40
Content-Type: application/json
Host: {{request.host}}
User-Agent: servirtium-vcr pre-recorded tests (Aether std.http.client)
X-Joomla-Token: X_JOOMLA_TOKEN_1
```
### Request body recorded for playback ():

```
{"title":"no description","parent_id":1}
```
### Response headers recorded for playback:

```
Server: Apache/2.4.69 (Debian)
X-Powered-By: PHP/8.4.27
x-frame-options: SAMEORIGIN
referrer-policy: strict-origin-when-cross-origin
cross-origin-opener-policy: same-origin
Content-Length: 122
Connection: close
Content-Type: application/vnd.api+json; charset=utf-8
```
### Response body recorded for playback (400: application/vnd.api+json; charset=utf-8):

```
{"errors":[{"title":"Save failed with the following error: Field 'description' doesn't have a default value","code":400}]}
```

## Interaction 3: GET /api/index.php/v1/no/such/route

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
Keep-Alive: timeout=5, max=100
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
| removed | response headers | `Date` | (left out) | 0–3 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `Last-Modified` | (left out) | none |
| redacted credential | request and response headers | `X-Joomla-Token` | `X_JOOMLA_TOKEN_N` | 0–3 |
| redacted | request body | (not shown: it may be the secret) | `REDACTED[reader-password]` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–3 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}` | `2000-01-01 00:00:00` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
