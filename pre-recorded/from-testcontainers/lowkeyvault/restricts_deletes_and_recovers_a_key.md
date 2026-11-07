## Interaction 0: POST /keys/tcae-key/create?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Content-Length: 99
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"kty":"RSA","key_size":2048,"key_ops":["sign","verify","encrypt","decrypt","wrapKey","unwrapKey"]}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-key/create"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"key":{"e":"AQAB","key_ops":["sign","verify","encrypt","decrypt","wrapKey","unwrapKey"],"kid":"https://{{request.host}}/keys/tcae-key/{{version-1}}","kty":"RSA","n":"RSA-MODULUS"},"tags":{}}
```

## Interaction 1: PATCH /keys/tcae-key/{{version-1}}?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Content-Length: 54
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"key_ops":["sign"],"tags":{"purpose":"signing only"}}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-key/{{version-1}}"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"key":{"e":"AQAB","key_ops":["sign"],"kid":"https://{{request.host}}/keys/tcae-key/{{version-1}}","kty":"RSA","n":"RSA-MODULUS"},"tags":{"purpose":"signing only"}}
```

## Interaction 2: POST /keys/tcae-key/{{version-1}}/wrapkey?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Content-Length: 36
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"alg":"RSA-OAEP","value":"aGVsbG8"}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-key/{{version-1}}/wrapkey"
Content-Type: application/json
Transfer-Encoding: chunked
Connection: close
```
### Response body recorded for playback (500: application/json):

```
{"error":{"code":"java.lang.IllegalStateException","message":"key:https://localhost:8443/tcae-key/{{version-1}} does not have ENCRYPT operation assigned."}}
```

## Interaction 3: POST /keys/tcae-key/{{version-1}}/sign?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Content-Length: 69
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"alg":"BOGUS","value":"LPJNul-wow4m6DsqxbninhsWHlwfp0JecwQzYpOLmCQ"}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-key/{{version-1}}/sign"
Content-Type: application/json
Transfer-Encoding: chunked
Connection: close
```
### Response body recorded for playback (400: application/json):

```
{"timestamp":"2000-01-01T00:00:00.000Z","status":400,"error":"Bad Request","path":"/keys/tcae-key/{{version-1}}/sign"}
```

## Interaction 4: DELETE /keys/tcae-key?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-key"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"deletedDate":946684800,"key":{"e":"AQAB","key_ops":["sign"],"kid":"https://{{request.host}}/keys/tcae-key/{{version-1}}","kty":"RSA","n":"RSA-MODULUS"},"recoveryId":"https://{{request.host}}/deletedkeys/tcae-key","scheduledPurgeDate":954460800,"tags":{"purpose":"signing only"}}
```

## Interaction 5: GET /keys/tcae-key?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-key"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (404: application/json):

```
{"error":{"code":"com.github.nagyesta.lowkeyvault.service.exception.NotFoundException","message":"Key not found: key:https://{{request.host}}/tcae-key/--"}}
```

## Interaction 6: GET /deletedkeys?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/deletedkeys"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"value":[{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"deletedDate":946684800,"kid":"https://{{request.host}}/keys/tcae-key","recoveryId":"https://{{request.host}}/deletedkeys/tcae-key","scheduledPurgeDate":954460800,"tags":{"purpose":"signing only"}}]}
```

## Interaction 7: GET /deletedkeys/tcae-key?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/deletedkeys/tcae-key"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"deletedDate":946684800,"key":{"e":"AQAB","key_ops":["sign"],"kid":"https://{{request.host}}/keys/tcae-key/{{version-1}}","kty":"RSA","n":"RSA-MODULUS"},"recoveryId":"https://{{request.host}}/deletedkeys/tcae-key","scheduledPurgeDate":954460800,"tags":{"purpose":"signing only"}}
```

## Interaction 8: POST /deletedkeys/tcae-key/recover?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/deletedkeys/tcae-key/recover"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"key":{"e":"AQAB","key_ops":["sign"],"kid":"https://{{request.host}}/keys/tcae-key/{{version-1}}","kty":"RSA","n":"RSA-MODULUS"},"tags":{"purpose":"signing only"}}
```

## Interaction 9: GET /keys/tcae-key?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-key"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"key":{"e":"AQAB","key_ops":["sign"],"kid":"https://{{request.host}}/keys/tcae-key/{{version-1}}","kty":"RSA","n":"RSA-MODULUS"},"tags":{"purpose":"signing only"}}
```

## Interaction 10: POST /keys/tcae-key/rotate?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-key/rotate"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"key":{"e":"AQAB","key_ops":["sign"],"kid":"https://{{request.host}}/keys/tcae-key/{{version-2}}","kty":"RSA","n":"RSA-MODULUS"},"tags":{"purpose":"signing only"}}
```

## Interaction 11: GET /keys/tcae-key?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-key"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"key":{"e":"AQAB","key_ops":["sign"],"kid":"https://{{request.host}}/keys/tcae-key/{{version-2}}","kty":"RSA","n":"RSA-MODULUS"},"tags":{"purpose":"signing only"}}
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
| normalized | whole recording | `(?<=[/"])[0-9a-f]{32}(?=[/"?])` | `{{version-N}}` | 0–4, 7–11 |
| normalized | whole recording | `(?<="value":")[A-Za-z0-9_-]{80,}(?=")` | `{{blob-N}}` | none |
| normalized | whole recording | `eyJ[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+` | `{{jwt-N}}` | 0–11 |
| collapsed | whole recording | `"expires_on":[0-9]+` | `"expires_on":946684800` | none |
| collapsed | whole recording | `"created":[0-9]{10}` | `"created":946684800` | 0, 1, 4, 6–11 |
| collapsed | whole recording | `"updated":[0-9]{10}` | `"updated":946684800` | 0, 1, 4, 6–11 |
| collapsed | whole recording | `"deletedDate":[0-9]{10}` | `"deletedDate":946684800` | 4, 6, 7 |
| collapsed | whole recording | `"scheduledPurgeDate":[0-9]{10}` | `"scheduledPurgeDate":954460800` | 4, 6, 7 |
| collapsed | whole recording | `"exp":[0-9]{10},"nbf":[0-9]{10}` | `"exp":978307200,"nbf":946684800` | none |
| collapsed | whole recording | `"n":"[A-Za-z0-9_-]{300,}"` | `"n":"RSA-MODULUS"` | 0, 1, 4, 7–11 |
| collapsed | whole recording | `"x":"[A-Za-z0-9_-]{40,}"` | `"x":"EC-X"` | none |
| collapsed | whole recording | `"y":"[A-Za-z0-9_-]{40,}"` | `"y":"EC-Y"` | none |
| collapsed | whole recording | `"cer":"[A-Za-z0-9+/=]+"` | `"cer":"CERTIFICATE-DER"` | none |
| collapsed | whole recording | `"csr":"[A-Za-z0-9+/=]+"` | `"csr":"CERTIFICATE-REQUEST"` | none |
| collapsed | whole recording | `"x5t":"[A-Za-z0-9_-]+"` | `"x5t":"THUMBPRINT"` | none |
| collapsed | whole recording | `"timestamp":"[^"]+"` | `"timestamp":"2000-01-01T00:00:00.000Z"` | 3 |
| ordered | response headers | `Allow` | its comma-separated items sorted | none |
| ordered | response body | JSON arrays at `/value`, requests matching `/versions\?` | sorted by `/attributes/created` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
