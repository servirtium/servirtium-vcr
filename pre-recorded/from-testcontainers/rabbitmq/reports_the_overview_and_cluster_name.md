## Interaction 0: GET /api/overview

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

## Interaction 1: GET /api/cluster-name

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
content-length: 21
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
{"name":"{{node-1}}"}
```

## Interaction 2: GET /api/extensions

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
content-length: 32
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
[{"javascript":"dispatcher.js"}]
```

## Interaction 3: GET /api/auth

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
content-length: 23
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
{"oauth_enabled":false}
```

## Interaction 4: GET /api/whoami

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
content-length: 41
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
{"name":"guest","tags":["administrator"]}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–4 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | 0–4 |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | none |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[tcae-user2]"` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–4 |
| normalized | whole recording | `rabbit@[0-9a-f]{12}` | `{{node-N}}` | 0, 1 |
| collapsed | whole recording | `\[smp:[0-9:]+\] \[ds:[0-9:]+(:[0-9]+)?\]` | `[smp:1:1] [ds:1:1:10]` | 0 |
| collapsed | whole recording | `"object_totals":\{[^}]*\}` | `"object_totals":{}` | 0 |
| collapsed | whole recording | `"statistics_db_event_queue":[0-9]+` | `"statistics_db_event_queue":0` | 0 |
| collapsed | whole recording | `"password_hash":"[A-Za-z0-9+/=]+"` | `"password_hash":"HASH"` | none |
| collapsed | whole recording | `"memory":[0-9.]+` | `"memory":0` | none |
| collapsed | whole recording | `"reductions":[0-9.]+` | `"reductions":0` | none |
| collapsed | whole recording | `"consumer_capacity":[0-9.]+` | `"consumer_capacity":0` | none |
| collapsed | whole recording | `"consumer_utilisation":[0-9.]+` | `"consumer_utilisation":0` | none |
| collapsed | whole recording | `"garbage_collection":\{[^}]*\}` | `"garbage_collection":{}` | none |
| collapsed | whole recording | `"idle_since":"[^"]*"` | `"idle_since":"2000-01-01 00:00:00"` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
