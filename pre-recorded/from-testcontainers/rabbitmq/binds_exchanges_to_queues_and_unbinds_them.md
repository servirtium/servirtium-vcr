## Interaction 0: PUT /api/exchanges/%2F/tcae-bx

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
{"type":"topic","durable":false,"auto_delete":false,"internal":false,"arguments":{}}
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

## Interaction 1: PUT /api/queues/%2F/tcae-bq1

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
{"durable":false,"auto_delete":false,"arguments":{}}
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

## Interaction 2: PUT /api/queues/%2F/tcae-bq2

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
{"durable":false,"auto_delete":false,"arguments":{}}
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

## Interaction 3: POST /api/bindings/%2F/e/tcae-bx/q/tcae-bq1

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 41
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"routing_key":"orders.*","arguments":{}}
```
### Response headers recorded for playback:

```
content-length: 0
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
location: tcae-bq1/orders.%252A
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: POST /api/bindings/%2F/e/tcae-bx/q/tcae-bq1

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 40
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"routing_key":"audit.#","arguments":{}}
```
### Response headers recorded for playback:

```
content-length: 0
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
location: tcae-bq1/audit.%2523
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: POST /api/bindings/%2F/e/tcae-bx/q/tcae-bq2

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 41
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"routing_key":"orders.*","arguments":{}}
```
### Response headers recorded for playback:

```
content-length: 0
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
location: tcae-bq2/orders.%252A
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /api/bindings/%2F/e/tcae-bx/q/tcae-bq1

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
content-length: 309
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
[{"source":"tcae-bx","vhost":"/","destination":"tcae-bq1","destination_type":"queue","routing_key":"audit.#","arguments":{},"properties_key":"audit.%23"},{"source":"tcae-bx","vhost":"/","destination":"tcae-bq1","destination_type":"queue","routing_key":"orders.*","arguments":{},"properties_key":"orders.%2A"}]
```

## Interaction 7: GET /api/exchanges/%2F/tcae-bx/bindings/source

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
content-length: 464
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
[{"source":"tcae-bx","vhost":"/","destination":"tcae-bq1","destination_type":"queue","routing_key":"audit.#","arguments":{},"properties_key":"audit.%23"},{"source":"tcae-bx","vhost":"/","destination":"tcae-bq1","destination_type":"queue","routing_key":"orders.*","arguments":{},"properties_key":"orders.%2A"},{"source":"tcae-bx","vhost":"/","destination":"tcae-bq2","destination_type":"queue","routing_key":"orders.*","arguments":{},"properties_key":"orders.%2A"}]
```

## Interaction 8: GET /api/queues/%2F/tcae-bq2/bindings

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
content-length: 302
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
[{"source":"","vhost":"/","destination":"tcae-bq2","destination_type":"queue","routing_key":"tcae-bq2","arguments":{},"properties_key":"tcae-bq2"},{"source":"tcae-bx","vhost":"/","destination":"tcae-bq2","destination_type":"queue","routing_key":"orders.*","arguments":{},"properties_key":"orders.%2A"}]
```

## Interaction 9: DELETE /api/bindings/%2F/e/tcae-bx/q/tcae-bq1/audit.%23

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

## Interaction 10: GET /api/bindings/%2F/e/tcae-bx/q/tcae-bq1

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
content-length: 156
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
[{"source":"tcae-bx","vhost":"/","destination":"tcae-bq1","destination_type":"queue","routing_key":"orders.*","arguments":{},"properties_key":"orders.%2A"}]
```

## Interaction 11: POST /api/bindings/%2F/e/tcae-bx/q/tcae-nosuchqueue

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 34
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"routing_key":"k","arguments":{}}
```
### Response headers recorded for playback:

```
content-length: 73
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (404: application/json):

```
{"error":"not_found","reason":"no queue 'tcae-nosuchqueue' in vhost '/'"}
```

## Interaction 12: DELETE /api/queues/%2F/tcae-bq1

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

## Interaction 13: DELETE /api/queues/%2F/tcae-bq2

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

## Interaction 14: DELETE /api/exchanges/%2F/tcae-bx

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
| removed | response headers | `Date` | (left out) | 0–14 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | 0–14 |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | none |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[tcae-user2]"` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–14 |
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
