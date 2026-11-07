## Interaction 0: GET /health/live

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Kestrel
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 1: GET /info

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Length: 252
Content-Type: application/json; charset=utf-8
Server: Kestrel
Access-Control-Allow-Headers: Content-Type, X-Requested-With, X-Forwarded-Host, X-Forwarded-Prefix, X-PINGOTHER, Authorization, Kurrent-LongPoll, Kurrent-ExpectedVersion, Kurrent-EventId, Kurrent-EventType, Kurrent-RequireLeader, Kurrent-HardDelete, Kurrent-ResolveLinkTos, ES-LongPoll, ES-ExpectedVersion, ES-EventId, ES-EventType, ES-RequireMaster, ES-RequireLeader, ES-HardDelete, ES-ResolveLinkTos
Access-Control-Allow-Methods: GET, OPTIONS
Access-Control-Allow-Origin: *
Access-Control-Expose-Headers: Location, Kurrent-Position, Kurrent-CurrentVersion, ES-Position, ES-CurrentVersion, 
```
### Response body recorded for playback (200: application/json; charset=utf-8):

```
{
  "dbVersion": "26.1.1.3690",
  "esVersion": "26.1.1.3690",
  "state": "leader",
  "features": {
    "projections": false,
    "userManagement": false,
    "atomPub": false
  },
  "authentication": {
    "type": "insecure",
    "properties": []
  }
}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0, 1 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0, 1 |
