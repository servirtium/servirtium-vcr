## Interaction 0: GET /api/overview

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[guest]
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
content-length: 1674
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
{"management_version":"3.12.11","rates_mode":"basic","sample_retention_policies":{"global":[600,3600,28800,86400],"basic":[600,3600],"detailed":[600]},"exchange_types":[{"name":"direct","description":"AMQP direct exchange, as per the AMQP specification","enabled":true},{"name":"fanout","description":"AMQP fanout exchange, as per the AMQP specification","enabled":true},{"name":"headers","description":"AMQP headers exchange, as per the AMQP specification","enabled":true},{"name":"topic","description":"AMQP topic exchange, as per the AMQP specification","enabled":true}],"product_version":"3.12.11","product_name":"RabbitMQ","rabbitmq_version":"3.12.11","cluster_name":"rabbit@node","erlang_version":"25.3.2.8","erlang_full_version":"Erlang/OTP 25 [erts-13.2.2.5] [source] [64-bit] [smp:1:1] [ds:1:1:10] [async-threads:1] [jit]","release_series_support_status":"supported","disable_stats":false,"is_op_policy_updating_enabled":true,"enable_queue_totals":false,"message_stats":{},"churn_rates":{},"queue_totals":{},"object_totals":{},"statistics_db_event_queue":0,"node":"rabbit@node","listeners":[{"node":"rabbit@node","protocol":"amqp","ip_address":"::","port":5672,"socket_opts":{"backlog":128,"nodelay":true,"linger":[true,0],"exit_on_close":false}},{"node":"rabbit@node","protocol":"clustering","ip_address":"::","port":25672,"socket_opts":[]},{"node":"rabbit@node","protocol":"http","ip_address":"::","port":15672,"socket_opts":{"cowboy_opts":{"sendfile":false},"port":15672}},{"node":"rabbit@node","protocol":"http/prometheus","ip_address":"::","port":15692,"socket_opts":{"cowboy_opts":{"sendfile":false},"port":15692,"protocol":"http/prometheus"}}],"contexts":[]}
```

## Interaction 1: GET /api/overview

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[guest-wrong-password]
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
content-length: 52
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: origin
www-authenticate: Basic realm="RabbitMQ Management"
```
### Response body recorded for playback (401: application/json):

```
{"error":"not_authorized","reason":"Not_Authorized"}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0, 1 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[guest]` | 0 |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[guest-wrong-password]` | 1 |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[tcae-user]` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0, 1 |
| collapsed | whole recording | `rabbit@[0-9a-f]{12}` | `rabbit@node` | 0 |
| collapsed | whole recording | `\[smp:[0-9:]+\] \[ds:[0-9:]+\]` | `[smp:1:1] [ds:1:1:10]` | 0 |
| collapsed | whole recording | `"object_totals":\{[^}]*\}` | `"object_totals":{}` | 0 |
| collapsed | whole recording | `"statistics_db_event_queue":[0-9]+` | `"statistics_db_event_queue":0` | 0 |
