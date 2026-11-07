## Interaction 0: PUT /secrets/tcae-del?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Content-Length: 21
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"value":"gone soon"}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae-del"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"id":"https://{{request.host}}/secrets/tcae-del/{{version-1}}","managed":false,"tags":{},"value":"gone soon"}
```

## Interaction 1: DELETE /secrets/tcae-del?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae-del"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"deletedDate":946684800,"id":"https://{{request.host}}/secrets/tcae-del/{{version-1}}","managed":false,"recoveryId":"https://{{request.host}}/deletedsecrets/tcae-del","scheduledPurgeDate":954460800,"tags":{},"value":"gone soon"}
```

## Interaction 2: GET /secrets/tcae-del?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae-del"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (404: application/json):

```
{"error":{"code":"com.github.nagyesta.lowkeyvault.service.exception.NotFoundException","message":"Key not found: secret:https://{{request.host}}/tcae-del/--"}}
```

## Interaction 3: GET /deletedsecrets?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/deletedsecrets"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"value":[{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"deletedDate":946684800,"id":"https://{{request.host}}/secrets/tcae-del","recoveryId":"https://{{request.host}}/deletedsecrets/tcae-del","scheduledPurgeDate":954460800,"tags":{}}]}
```

## Interaction 4: GET /deletedsecrets/tcae-del?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/deletedsecrets/tcae-del"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"deletedDate":946684800,"id":"https://{{request.host}}/secrets/tcae-del/{{version-1}}","managed":false,"recoveryId":"https://{{request.host}}/deletedsecrets/tcae-del","scheduledPurgeDate":954460800,"tags":{},"value":"gone soon"}
```

## Interaction 5: PUT /secrets/tcae-del?api-version=7.4

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
{"value":"again"}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae-del"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (409: application/json):

```
{"error":{"code":"com.github.nagyesta.lowkeyvault.service.exception.AlreadyExistsException","message":"A deleted entity already exists with this name: secret:https://localhost:8443/tcae-del/{{version-2}}"}}
```

## Interaction 6: POST /deletedsecrets/tcae-del/recover?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/deletedsecrets/tcae-del/recover"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"id":"https://{{request.host}}/secrets/tcae-del/{{version-1}}","managed":false,"tags":{},"value":"gone soon"}
```

## Interaction 7: GET /secrets/tcae-del?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae-del"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"id":"https://{{request.host}}/secrets/tcae-del/{{version-1}}","managed":false,"tags":{},"value":"gone soon"}
```

## Interaction 8: DELETE /secrets/tcae-del?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae-del"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"deletedDate":946684800,"id":"https://{{request.host}}/secrets/tcae-del/{{version-1}}","managed":false,"recoveryId":"https://{{request.host}}/deletedsecrets/tcae-del","scheduledPurgeDate":954460800,"tags":{},"value":"gone soon"}
```

## Interaction 9: DELETE /deletedsecrets/tcae-del?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/deletedsecrets/tcae-del"
Content-Type: application/json
Transfer-Encoding: chunked
Connection: close
```
### Response body recorded for playback (500: application/json):

```
{"error":{"code":"java.lang.IllegalStateException","message":"The selected elements cannot be purged."}}
```

## Interaction 10: POST /deletedsecrets/tcae-del/recover?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/deletedsecrets/tcae-del/recover"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"id":"https://{{request.host}}/secrets/tcae-del/{{version-1}}","managed":false,"tags":{},"value":"gone soon"}
```

## Interaction 11: DELETE /secrets/tcae-missing?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae-missing"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (404: application/json):

```
{"error":{"code":"com.github.nagyesta.lowkeyvault.service.exception.NotFoundException","message":"Entity not found: secret:https://{{request.host}}/tcae-missing/--"}}
```

## Interaction 12: POST /deletedsecrets/tcae-missing/recover?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/deletedsecrets/tcae-missing/recover"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (404: application/json):

```
{"error":{"code":"com.github.nagyesta.lowkeyvault.service.exception.NotFoundException","message":"Entity not found: secret:https://{{request.host}}/tcae-missing/--"}}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–12 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `Allow` | (left out) | none |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | 0–12 |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | none |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| redacted credential | request and response headers | `X-IDENTITY-HEADER` | `X_IDENTITY_HEADER_N` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 0–12 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–12 |
| normalized | whole recording | `(?<=[/"])[0-9a-f]{32}(?=[/"?])` | `{{version-N}}` | 0, 1, 4–8, 10 |
| normalized | whole recording | `(?<="value":")[A-Za-z0-9_-]{80,}(?=")` | `{{blob-N}}` | none |
| normalized | whole recording | `eyJ[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+` | `{{jwt-N}}` | 0–12 |
| collapsed | whole recording | `"expires_on":[0-9]+` | `"expires_on":946684800` | none |
| collapsed | whole recording | `"created":[0-9]{10}` | `"created":946684800` | 0, 1, 3, 4, 6–8, 10 |
| collapsed | whole recording | `"updated":[0-9]{10}` | `"updated":946684800` | 0, 1, 3, 4, 6–8, 10 |
| collapsed | whole recording | `"deletedDate":[0-9]{10}` | `"deletedDate":946684800` | 1, 3, 4, 8 |
| collapsed | whole recording | `"scheduledPurgeDate":[0-9]{10}` | `"scheduledPurgeDate":954460800` | 1, 3, 4, 8 |
| collapsed | whole recording | `"exp":[0-9]{10},"nbf":[0-9]{10}` | `"exp":978307200,"nbf":946684800` | none |
| collapsed | whole recording | `"n":"[A-Za-z0-9_-]{300,}"` | `"n":"RSA-MODULUS"` | none |
| collapsed | whole recording | `"x":"[A-Za-z0-9_-]{40,}"` | `"x":"EC-X"` | none |
| collapsed | whole recording | `"y":"[A-Za-z0-9_-]{40,}"` | `"y":"EC-Y"` | none |
| collapsed | whole recording | `"cer":"[A-Za-z0-9+/=]+"` | `"cer":"CERTIFICATE-DER"` | none |
| collapsed | whole recording | `"csr":"[A-Za-z0-9+/=]+"` | `"csr":"CERTIFICATE-REQUEST"` | none |
| collapsed | whole recording | `"x5t":"[A-Za-z0-9_-]+"` | `"x5t":"THUMBPRINT"` | none |
| collapsed | whole recording | `"timestamp":"[^"]+"` | `"timestamp":"2000-01-01T00:00:00.000Z"` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
