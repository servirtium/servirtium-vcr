## Interaction 0: PUT /api/queues/%2F/tcae-mq

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

## Interaction 1: PUT /api/exchanges/%2F/tcae-mx

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
{"type":"direct","durable":false,"auto_delete":false,"internal":false,"arguments":{}}
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

## Interaction 2: POST /api/bindings/%2F/e/tcae-mx/q/tcae-mq

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
content-length: 0
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
location: tcae-mq/k
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: POST /api/exchanges/%2F/tcae-mx/publish

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 108
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"properties":{"content_type":"text/plain"},"routing_key":"k","payload":"first","payload_encoding":"string"}
```
### Response headers recorded for playback:

```
cache-control: no-cache
content-length: 15
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
{"routed":true}
```

## Interaction 4: POST /api/exchanges/%2F/tcae-mx/publish

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 99
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"properties":{"headers":{"n":2}},"routing_key":"k","payload":"second","payload_encoding":"string"}
```
### Response headers recorded for playback:

```
cache-control: no-cache
content-length: 15
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
{"routed":true}
```

## Interaction 5: POST /api/exchanges/%2F/tcae-mx/publish

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 87
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"properties":{},"routing_key":"unrouted","payload":"lost","payload_encoding":"string"}
```
### Response headers recorded for playback:

```
cache-control: no-cache
content-length: 16
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
{"routed":false}
```

## Interaction 6: POST /api/exchanges/%2F/tcae-nosuch/publish

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 77
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"properties":{},"routing_key":"k","payload":"x","payload_encoding":"string"}
```
### Response headers recorded for playback:

```
content-length: 89
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (400: application/json):

```
{"error":"bad_request","reason":"404 NOT_FOUND - no exchange 'tcae-nosuch' in vhost '/'"}
```

## Interaction 7: POST /api/queues/%2F/tcae-mq/get

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 58
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"count":1,"ackmode":"ack_requeue_true","encoding":"auto"}
```
### Response headers recorded for playback:

```
cache-control: no-cache
content-length: 187
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
[{"payload_bytes":5,"redelivered":false,"exchange":"tcae-mx","routing_key":"k","message_count":1,"properties":{"content_type":"text/plain"},"payload":"first","payload_encoding":"string"}]
```

## Interaction 8: POST /api/queues/%2F/tcae-mq/get

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 58
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"count":1,"ackmode":"ack_requeue_true","encoding":"auto"}
```
### Response headers recorded for playback:

```
cache-control: no-cache
content-length: 186
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
[{"payload_bytes":5,"redelivered":true,"exchange":"tcae-mx","routing_key":"k","message_count":1,"properties":{"content_type":"text/plain"},"payload":"first","payload_encoding":"string"}]
```

## Interaction 9: POST /api/queues/%2F/tcae-mq/get

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 59
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"count":5,"ackmode":"ack_requeue_false","encoding":"auto"}
```
### Response headers recorded for playback:

```
cache-control: no-cache
content-length: 363
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
[{"payload_bytes":5,"redelivered":true,"exchange":"tcae-mx","routing_key":"k","message_count":1,"properties":{"content_type":"text/plain"},"payload":"first","payload_encoding":"string"},{"payload_bytes":6,"redelivered":false,"exchange":"tcae-mx","routing_key":"k","message_count":0,"properties":{"headers":{"n":2}},"payload":"second","payload_encoding":"string"}]
```

## Interaction 10: POST /api/queues/%2F/tcae-mq/get

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 59
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"count":5,"ackmode":"ack_requeue_false","encoding":"auto"}
```
### Response headers recorded for playback:

```
cache-control: no-cache
content-length: 2
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
[]
```

## Interaction 11: POST /api/exchanges/%2F/tcae-mx/publish

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
{"properties":{},"routing_key":"k","payload":"AAEC/w==","payload_encoding":"base64"}
```
### Response headers recorded for playback:

```
cache-control: no-cache
content-length: 15
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
{"routed":true}
```

## Interaction 12: POST /api/queues/%2F/tcae-mq/get

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 61
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"count":1,"ackmode":"ack_requeue_false","encoding":"base64"}
```
### Response headers recorded for playback:

```
cache-control: no-cache
content-length: 163
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
[{"payload_bytes":4,"redelivered":false,"exchange":"tcae-mx","routing_key":"k","message_count":0,"properties":[],"payload":"AAEC/w==","payload_encoding":"base64"}]
```

## Interaction 13: DELETE /api/queues/%2F/tcae-mq

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

## Interaction 14: DELETE /api/exchanges/%2F/tcae-mx

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
