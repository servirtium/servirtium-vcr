## Interaction 0: GET /api/health

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
Cache-Control: no-store
Content-Type: application/json; charset=UTF-8
X-Content-Type-Options: nosniff
X-Frame-Options: deny
X-Xss-Protection: 1; mode=block
Content-Length: 101
```
### Response body recorded for playback (200: application/json; charset=UTF-8):

```
{
  "commit": "277ef258d4b9a5acdf2932347c6a4ca72d739b28",
  "database": "ok",
  "version": "11.0.0"
}
```

## Interaction 1: GET /api/user

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[lgtm-admin]
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Type: application/json
X-Content-Type-Options: nosniff
X-Frame-Options: deny
X-Xss-Protection: 1; mode=block
Content-Length: 362
```
### Response body recorded for playback (200: application/json):

```
{"id":1,"uid":"","email":"admin@localhost","name":"","login":"lgtm-admin","theme":"","orgId":1,"isGrafanaAdmin":true,"isDisabled":false,"isExternal":false,"isExternallySynced":false,"isGrafanaAdminExternallySynced":false,"authLabels":[],"updatedAt":"2000-01-01T00:00:00Z","createdAt":"2000-01-01T00:00:00Z","avatarUrl":"/avatar/46d229b033af06a191ff2267bca9ae56"}
```

## Interaction 2: GET /api/user

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[lgtm-admin-default-password]
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Type: application/json; charset=UTF-8
X-Content-Type-Options: nosniff
X-Frame-Options: deny
X-Xss-Protection: 1; mode=block
Content-Length: 121
```
### Response body recorded for playback (401: application/json; charset=UTF-8):

```
{"extra":null,"message":"Invalid username or password","messageId":"password-auth.failed","statusCode":401,"traceID":""}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–2 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[lgtm-admin]` | 1 |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[lgtm-admin-default-password]` | 2 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–2 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | 1 |
