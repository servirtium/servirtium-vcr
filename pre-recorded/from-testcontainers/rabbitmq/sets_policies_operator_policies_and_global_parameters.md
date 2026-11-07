## Interaction 0: PUT /api/policies/%2F/tcae-policy

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 85
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"pattern":"^tcae-p","definition":{"max-length":10},"priority":1,"apply-to":"queues"}
```
### Response headers recorded for playback:

```
content-length: 0
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: GET /api/policies/%2F/tcae-policy

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
cache-control: no-cache
content-length: 118
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
{"vhost":"/","name":"tcae-policy","pattern":"^tcae-p","apply-to":"queues","definition":{"max-length":10},"priority":1}
```

## Interaction 2: GET /api/policies/%2F

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
cache-control: no-cache
content-length: 120
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
[{"vhost":"/","name":"tcae-policy","pattern":"^tcae-p","apply-to":"queues","definition":{"max-length":10},"priority":1}]
```

## Interaction 3: PUT /api/operator-policies/%2F/tcae-op

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 84
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"pattern":"^tcae-p","definition":{"max-length":5},"priority":1,"apply-to":"queues"}
```
### Response headers recorded for playback:

```
content-length: 0
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
server: Cowboy
vary: accept-encoding, origin
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /api/operator-policies/%2F/tcae-op

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
server: Cowboy
vary: accept-encoding, origin
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 5: PUT /api/policies/%2F/tcae-bad

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 52
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"pattern":"^x","definition":{},"apply-to":"queues"}
```
### Response headers recorded for playback:

```
content-length: 76
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (400: application/json):

```
{"error":"bad_request","reason":"Validation failed\n\nno policy provided\n"}
```

## Interaction 6: DELETE /api/policies/%2F/tcae-policy

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 7: GET /api/policies/%2F/tcae-policy

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
content-length: 49
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (404: application/json):

```
{"error":"Object Not Found","reason":"Not Found"}
```

## Interaction 8: PUT /api/global-parameters/tcae-param

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 19
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"value":{"k":"v"}}
```
### Response headers recorded for playback:

```
content-length: 0
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: GET /api/global-parameters/tcae-param

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
cache-control: no-cache
content-length: 39
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
{"value":{"k":"v"},"name":"tcae-param"}
```

## Interaction 10: DELETE /api/global-parameters/tcae-param

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (204: text/plain):

```
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–10 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | 0–10 |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | none |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[tcae-user2]"` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–10 |
| normalized | whole recording | `rabbit@[0-9a-f]{12}` | `{{node-N}}` | none |
| collapsed | whole recording | `\[smp:[0-9:]+\] \[ds:[0-9:]+(:[0-9]+)?\]` | `[smp:1:1] [ds:1:1:10]` | none |
| collapsed | whole recording | `"object_totals":\{[^}]*\}` | `"object_totals":{}` | none |
| collapsed | whole recording | `"statistics_db_event_queue":[0-9]+` | `"statistics_db_event_queue":0` | none |
| collapsed | whole recording | `"password_hash":"[A-Za-z0-9+/=]+"` | `"password_hash":"HASH"` | none |
| collapsed | whole recording | `"memory":[0-9.]+` | `"memory":0` | none |
| collapsed | whole recording | `"reductions":[0-9.]+` | `"reductions":0` | none |
| collapsed | whole recording | `"consumer_capacity":[0-9.]+` | `"consumer_capacity":0` | none |
| collapsed | whole recording | `"consumer_utilisation":[0-9.]+` | `"consumer_utilisation":0` | none |
| collapsed | whole recording | `"garbage_collection":\{[^}]*\}` | `"garbage_collection":{}` | none |
| collapsed | whole recording | `"idle_since":"[^"]*"` | `"idle_since":"2000-01-01 00:00:00"` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
