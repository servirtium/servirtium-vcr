## Interaction 0: GET /api/whoami

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[tcae-user]
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
content-length: 45
content-security-policy: script-src 'self' 'unsafe-eval' 'unsafe-inline'; object-src 'self'
content-type: application/json
server: Cowboy
vary: accept, accept-encoding, origin
```
### Response body recorded for playback (200: application/json):

```
{"name":"tcae-user","tags":["administrator"]}
```

## Interaction 1: GET /api/whoami

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
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[guest]` | 1 |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[guest-wrong-password]` | none |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[tcae-user]` | 0 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0, 1 |
| collapsed | whole recording | `rabbit@[0-9a-f]{12}` | `rabbit@node` | none |
| collapsed | whole recording | `\[smp:[0-9:]+\] \[ds:[0-9:]+\]` | `[smp:1:1] [ds:1:1:10]` | none |
| collapsed | whole recording | `"object_totals":\{[^}]*\}` | `"object_totals":{}` | none |
| collapsed | whole recording | `"statistics_db_event_queue":[0-9]+` | `"statistics_db_event_queue":0` | none |
