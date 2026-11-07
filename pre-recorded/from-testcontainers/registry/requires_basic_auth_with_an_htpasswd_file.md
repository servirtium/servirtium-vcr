## Interaction 0: GET /v2/_catalog

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
Content-Type: application/json; charset=utf-8
Docker-Distribution-Api-Version: registry/2.0
Www-Authenticate: Basic realm="Registry"
X-Content-Type-Options: nosniff
Content-Length: 145
```
### Response body recorded for playback (401: application/json; charset=utf-8):

```
{"errors":[{"code":"UNAUTHORIZED","message":"authentication required","detail":[{"Type":"registry","Class":"","Name":"catalog","Action":"*"}]}]}

```

## Interaction 1: GET /v2/_catalog

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[testuser-wrong-password]
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Type: application/json; charset=utf-8
Docker-Distribution-Api-Version: registry/2.0
Www-Authenticate: Basic realm="Registry"
X-Content-Type-Options: nosniff
Content-Length: 145
```
### Response body recorded for playback (401: application/json; charset=utf-8):

```
{"errors":[{"code":"UNAUTHORIZED","message":"authentication required","detail":[{"Type":"registry","Class":"","Name":"catalog","Action":"*"}]}]}

```

## Interaction 2: GET /v2/_catalog

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[testuser]
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Type: application/json; charset=utf-8
Docker-Distribution-Api-Version: registry/2.0
X-Content-Type-Options: nosniff
Content-Length: 20
```
### Response body recorded for playback (200: application/json; charset=utf-8):

```
{"repositories":[]}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–2 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[testuser]` | 2 |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[testuser-wrong-password]` | 1 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–2 |
