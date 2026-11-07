## Interaction 0: GET /api/healthz

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
Content-Type: application/json
Content-Length: 313
```
### Response body recorded for playback (200: application/json):

```
{
  "status": "pass",
  "description": "Forgejo: Beyond coding. We forge.",
  "checks": {
    "cache:ping": [
      {
        "status": "pass",
        "time": "2000-01-01T00:00:00Z"
      }
    ],
    "database:ping": [
      {
        "status": "pass",
        "time": "2000-01-01T00:00:00Z"
      }
    ]
  }
}
```

## Interaction 1: GET /api/v1/user

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[default-admin]
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Cache-Control: max-age=0, private, must-revalidate, no-transform
Content-Type: application/json;charset=utf-8
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
Content-Length: 561
```
### Response body recorded for playback (200: application/json;charset=utf-8):

```
{"id":1,"login":"forgejo-admin","login_name":"","source_id":0,"full_name":"","email":"admin@forgejo.local","avatar_url":"http://localhost:3000/avatars/fc3031fdd88069347ce8609511bdb4f4","html_url":"http://localhost:3000/forgejo-admin","language":"","is_admin":true,"last_login":"2000-01-01T00:00:00Z","created":"2000-01-01T00:00:00Z","restricted":false,"active":true,"prohibit_login":false,"location":"","pronouns":"","website":"","description":"","visibility":"public","followers_count":0,"following_count":0,"starred_repos_count":0,"username":"forgejo-admin"}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0, 1 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[default-admin]` | 1 |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[testuser]` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0, 1 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | 0, 1 |
