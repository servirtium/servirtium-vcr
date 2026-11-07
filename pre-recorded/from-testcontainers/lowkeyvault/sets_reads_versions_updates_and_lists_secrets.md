## Interaction 0: PUT /secrets/tcae-secret?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Content-Length: 17
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"value":"first"}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae-secret"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"id":"https://{{request.host}}/secrets/tcae-secret/{{version-1}}","managed":false,"tags":{},"value":"first"}
```

## Interaction 1: PUT /secrets/tcae-secret?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Content-Length: 103
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"value":"second","contentType":"text/plain","tags":{"purpose":"test"},"attributes":{"exp":1900000000}}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae-secret"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"exp":1900000000,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"contentType":"text/plain","id":"https://{{request.host}}/secrets/tcae-secret/{{version-2}}","managed":false,"tags":{"purpose":"test"},"value":"second"}
```

## Interaction 2: GET /secrets/tcae-secret?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae-secret"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"exp":1900000000,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"contentType":"text/plain","id":"https://{{request.host}}/secrets/tcae-secret/{{version-2}}","managed":false,"tags":{"purpose":"test"},"value":"second"}
```

## Interaction 3: GET /secrets/tcae-secret/{{version-1}}?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae-secret/{{version-1}}"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"id":"https://{{request.host}}/secrets/tcae-secret/{{version-1}}","managed":false,"tags":{},"value":"first"}
```

## Interaction 4: PATCH /secrets/tcae-secret/{{version-2}}?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Content-Length: 61
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"tags":{"purpose":"patched"},"attributes":{"enabled":false}}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae-secret/{{version-2}}"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":false,"exp":1900000000,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"contentType":"text/plain","id":"https://{{request.host}}/secrets/tcae-secret/{{version-2}}","managed":false,"tags":{"purpose":"patched"},"value":"second"}
```

## Interaction 5: GET /secrets/tcae-secret?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae-secret"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (404: application/json):

```
{"error":{"code":"com.github.nagyesta.lowkeyvault.service.exception.NotFoundException","message":"Operation get is not allowed on a disabled entity."}}
```

## Interaction 6: GET /secrets/tcae-secret/{{version-1}}?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae-secret/{{version-1}}"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"id":"https://{{request.host}}/secrets/tcae-secret/{{version-1}}","managed":false,"tags":{},"value":"first"}
```

## Interaction 7: GET /secrets/tcae-secret/versions?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae-secret/versions"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"value":[{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"id":"https://{{request.host}}/secrets/tcae-secret/{{version-1}}","tags":{}},{"attributes":{"created":946684800,"enabled":false,"exp":1900000000,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"contentType":"text/plain","id":"https://{{request.host}}/secrets/tcae-secret/{{version-2}}","tags":{"purpose":"patched"}}]}
```

## Interaction 8: PUT /secrets/tcae-secret-b?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Content-Length: 13
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"value":"b"}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae-secret-b"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"id":"https://{{request.host}}/secrets/tcae-secret-b/{{version-3}}","managed":false,"tags":{},"value":"b"}
```

## Interaction 9: GET /secrets/tcae-secret-b/versions?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae-secret-b/versions"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"value":[{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"id":"https://{{request.host}}/secrets/tcae-secret-b/{{version-3}}","tags":{}}]}
```

## Interaction 10: GET /secrets?api-version=7.4&maxresults=1

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"value":[{"attributes":{"created":946684800,"enabled":false,"exp":1900000000,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"contentType":"text/plain","id":"https://{{request.host}}/secrets/tcae-secret","tags":{"purpose":"patched"}}],"nextLink":"https://{{request.host}}/secrets?api-version=7.4&$skiptoken=1&maxresults=1"}
```

## Interaction 11: GET /secrets?api-version=7.4&$skiptoken=1&maxresults=1

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"value":[{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"id":"https://{{request.host}}/secrets/tcae-secret-b","tags":{}}]}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–11 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | 0–11 |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | none |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| redacted credential | request and response headers | `X-IDENTITY-HEADER` | `X_IDENTITY_HEADER_N` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 0–11 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–11 |
| normalized | whole recording | `(?<=[/"])[0-9a-f]{32}(?=[/"?])` | `{{version-N}}` | 0–4, 6–9 |
| normalized | whole recording | `(?<="value":")[A-Za-z0-9_-]{80,}(?=")` | `{{blob-N}}` | none |
| normalized | whole recording | `eyJ[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+` | `{{jwt-N}}` | 0–11 |
| collapsed | whole recording | `"expires_on":[0-9]+` | `"expires_on":946684800` | none |
| collapsed | whole recording | `"created":[0-9]{10}` | `"created":946684800` | 0–4, 6–11 |
| collapsed | whole recording | `"updated":[0-9]{10}` | `"updated":946684800` | 0–4, 6–11 |
| collapsed | whole recording | `"deletedDate":[0-9]{10}` | `"deletedDate":946684800` | none |
| collapsed | whole recording | `"scheduledPurgeDate":[0-9]{10}` | `"scheduledPurgeDate":954460800` | none |
| collapsed | whole recording | `"exp":[0-9]{10},"nbf":[0-9]{10}` | `"exp":978307200,"nbf":946684800` | none |
| collapsed | whole recording | `"n":"[A-Za-z0-9_-]{300,}"` | `"n":"RSA-MODULUS"` | none |
| collapsed | whole recording | `"x":"[A-Za-z0-9_-]{40,}"` | `"x":"EC-X"` | none |
| collapsed | whole recording | `"y":"[A-Za-z0-9_-]{40,}"` | `"y":"EC-Y"` | none |
| collapsed | whole recording | `"cer":"[A-Za-z0-9+/=]+"` | `"cer":"CERTIFICATE-DER"` | none |
| collapsed | whole recording | `"csr":"[A-Za-z0-9+/=]+"` | `"csr":"CERTIFICATE-REQUEST"` | none |
| collapsed | whole recording | `"x5t":"[A-Za-z0-9_-]+"` | `"x5t":"THUMBPRINT"` | none |
| collapsed | whole recording | `"timestamp":"[^"]+"` | `"timestamp":"2000-01-01T00:00:00.000Z"` | none |
| ordered | response headers | `Allow` | its comma-separated items sorted | none |
| ordered | response body | JSON arrays at `/value`, requests matching `/versions\?` | sorted by `/attributes/created` | 7, 9 |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
