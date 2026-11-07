## Interaction 0: GET /_api/version

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[root]
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
X-Arango-Queue-Time-Seconds: 0.000000
Strict-Transport-Security: max-age=31536000 ; includeSubDomains
Expires: 0
Pragma: no-cache
Cache-Control: no-cache, no-store, must-revalidate, pre-check=0, post-check=0, max-age=0, s-maxage=0
Content-Security-Policy: frame-ancestors 'self'; form-action 'self';
X-Content-Type-Options: nosniff
Server: ArangoDB
Connection: Keep-Alive
Content-Type: application/json; charset=utf-8
Content-Length: 60
```
### Response body recorded for playback (200: application/json; charset=utf-8):

```
{"server":"arango","license":"community","version":"3.11.5"}
```

## Interaction 1: GET /_api/version

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
X-Arango-Queue-Time-Seconds: 0.000000
Strict-Transport-Security: max-age=31536000 ; includeSubDomains
Expires: 0
Pragma: no-cache
Cache-Control: no-cache, no-store, must-revalidate, pre-check=0, post-check=0, max-age=0, s-maxage=0
Content-Security-Policy: frame-ancestors 'self'; form-action 'self';
X-Content-Type-Options: nosniff
Server: ArangoDB
Www-Authenticate: Basic, realm="ArangoDB"
Www-Authenticate: Bearer, token_type="JWT", realm="ArangoDB"
Connection: Keep-Alive
Content-Type: application/json; charset=utf-8
Content-Length: 95
```
### Response body recorded for playback (401: application/json; charset=utf-8):

```
{"error":true,"errorNum":11,"errorMessage":"not authorized to execute this request","code":401}
```

## Interaction 2: GET /_api/version

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[root-default]
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
X-Arango-Queue-Time-Seconds: 0.000000
Strict-Transport-Security: max-age=31536000 ; includeSubDomains
Expires: 0
Pragma: no-cache
Cache-Control: no-cache, no-store, must-revalidate, pre-check=0, post-check=0, max-age=0, s-maxage=0
Content-Security-Policy: frame-ancestors 'self'; form-action 'self';
X-Content-Type-Options: nosniff
Server: ArangoDB
Www-Authenticate: Basic, realm="ArangoDB"
Www-Authenticate: Bearer, token_type="JWT", realm="ArangoDB"
Connection: Keep-Alive
Content-Type: application/json; charset=utf-8
Content-Length: 95
```
### Response body recorded for playback (401: application/json; charset=utf-8):

```
{"error":true,"errorNum":11,"errorMessage":"not authorized to execute this request","code":401}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | none |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[root]` | 0 |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[root-default]` | 2 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–2 |
