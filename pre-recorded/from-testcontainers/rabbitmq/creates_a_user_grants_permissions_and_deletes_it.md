## Interaction 0: GET /api/users/tcae-user2

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

## Interaction 1: PUT /api/users/tcae-user2

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 55
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"password":"REDACTED[tcae-user2]","tags":"monitoring"}
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

## Interaction 2: GET /api/users/tcae-user2

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
content-length: 131
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
{"name":"tcae-user2","password_hash":"HASH","hashing_algorithm":"rabbit_password_hashing_sha256","tags":["monitoring"],"limits":{}}
```

## Interaction 3: GET /api/users?columns=name,tags&sort=name

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
content-length: 87
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
[{"name":"guest","tags":["administrator"]},{"name":"tcae-user2","tags":["monitoring"]}]
```

## Interaction 4: GET /api/users/without-permissions

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
content-length: 133
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
[{"hashing_algorithm":"rabbit_password_hashing_sha256","limits":{},"name":"tcae-user2","password_hash":"HASH","tags":["monitoring"]}]
```

## Interaction 5: GET /api/whoami

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_2
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
content-length: 43
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
{"name":"tcae-user2","tags":["monitoring"]}
```

## Interaction 6: PUT /api/permissions/%2F/tcae-user2

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 55
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"configure":"^tcae-.*","write":"^tcae-.*","read":".*"}
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

## Interaction 7: GET /api/permissions/%2F/tcae-user2

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
content-length: 87
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
{"user":"tcae-user2","vhost":"/","configure":"^tcae-.*","write":"^tcae-.*","read":".*"}
```

## Interaction 8: GET /api/users/tcae-user2/permissions

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
content-length: 89
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
[{"user":"tcae-user2","vhost":"/","configure":"^tcae-.*","write":"^tcae-.*","read":".*"}]
```

## Interaction 9: GET /api/permissions?columns=user,vhost&sort=user

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
content-length: 64
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
[{"user":"guest","vhost":"/"},{"user":"tcae-user2","vhost":"/"}]
```

## Interaction 10: PUT /api/topic-permissions/%2F/tcae-user2

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 49
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"exchange":"amq.topic","write":"^a","read":"^b"}
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

## Interaction 11: GET /api/topic-permissions/%2F/tcae-user2

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
content-length: 83
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
[{"user":"tcae-user2","vhost":"/","exchange":"amq.topic","write":"^a","read":"^b"}]
```

## Interaction 12: DELETE /api/topic-permissions/%2F/tcae-user2

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

## Interaction 13: GET /api/overview

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_2
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
content-length: 1668
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
{"management_version":"3.12.11","rates_mode":"basic","sample_retention_policies":{"global":[600,3600,28800,86400],"basic":[600,3600],"detailed":[600]},"exchange_types":[{"name":"direct","description":"AMQP direct exchange, as per the AMQP specification","enabled":true},{"name":"fanout","description":"AMQP fanout exchange, as per the AMQP specification","enabled":true},{"name":"headers","description":"AMQP headers exchange, as per the AMQP specification","enabled":true},{"name":"topic","description":"AMQP topic exchange, as per the AMQP specification","enabled":true}],"product_version":"3.12.11","product_name":"RabbitMQ","rabbitmq_version":"3.12.11","cluster_name":"{{node-1}}","erlang_version":"25.3.2.8","erlang_full_version":"Erlang/OTP 25 [erts-13.2.2.5] [source] [64-bit] [smp:1:1] [ds:1:1:10] [async-threads:1] [jit]","release_series_support_status":"supported","disable_stats":false,"is_op_policy_updating_enabled":true,"enable_queue_totals":false,"message_stats":{},"churn_rates":{},"queue_totals":{},"object_totals":{},"statistics_db_event_queue":0,"node":"{{node-1}}","listeners":[{"node":"{{node-1}}","protocol":"amqp","ip_address":"::","port":5672,"socket_opts":{"backlog":128,"nodelay":true,"linger":[true,0],"exit_on_close":false}},{"node":"{{node-1}}","protocol":"clustering","ip_address":"::","port":25672,"socket_opts":[]},{"node":"{{node-1}}","protocol":"http","ip_address":"::","port":15672,"socket_opts":{"cowboy_opts":{"sendfile":false},"port":15672}},{"node":"{{node-1}}","protocol":"http/prometheus","ip_address":"::","port":15692,"socket_opts":{"cowboy_opts":{"sendfile":false},"port":15692,"protocol":"http/prometheus"}}],"contexts":[]}
```

## Interaction 14: PUT /api/vhosts/tcae-by-monitor

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_2
Connection: keep-alive
Content-Length: 2
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{}
```
### Response headers recorded for playback:

```
content-length: 60
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: origin
```
### Response body recorded for playback (401: application/json):

```
{"error":"not_authorised","reason":"Not administrator user"}
```

## Interaction 15: DELETE /api/permissions/%2F/tcae-user2

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

## Interaction 16: DELETE /api/users/tcae-user2

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

## Interaction 17: DELETE /api/users/tcae-user2

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


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–17 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | 0–17 |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | none |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[tcae-user2]"` | 1 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–17 |
| normalized | whole recording | `rabbit@[0-9a-f]{12}` | `{{node-N}}` | 13 |
| collapsed | whole recording | `\[smp:[0-9:]+\] \[ds:[0-9:]+(:[0-9]+)?\]` | `[smp:1:1] [ds:1:1:10]` | 13 |
| collapsed | whole recording | `"object_totals":\{[^}]*\}` | `"object_totals":{}` | 13 |
| collapsed | whole recording | `"statistics_db_event_queue":[0-9]+` | `"statistics_db_event_queue":0` | 13 |
| collapsed | whole recording | `"password_hash":"[A-Za-z0-9+/=]+"` | `"password_hash":"HASH"` | 2, 4 |
| collapsed | whole recording | `"memory":[0-9.]+` | `"memory":0` | none |
| collapsed | whole recording | `"reductions":[0-9.]+` | `"reductions":0` | none |
| collapsed | whole recording | `"consumer_capacity":[0-9.]+` | `"consumer_capacity":0` | none |
| collapsed | whole recording | `"consumer_utilisation":[0-9.]+` | `"consumer_utilisation":0` | none |
| collapsed | whole recording | `"garbage_collection":\{[^}]*\}` | `"garbage_collection":{}` | none |
| collapsed | whole recording | `"idle_since":"[^"]*"` | `"idle_since":"2000-01-01 00:00:00"` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
