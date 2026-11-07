## Interaction 0: POST /keys/tcae-rsa/create?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Content-Length: 125
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"kty":"RSA","key_size":2048,"key_ops":["sign","verify","wrapKey","unwrapKey","encrypt","decrypt"],"tags":{"purpose":"test"}}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-rsa/create"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"key":{"e":"AQAB","key_ops":["sign","verify","wrapKey","unwrapKey","encrypt","decrypt"],"kid":"https://{{request.host}}/keys/tcae-rsa/{{version-1}}","kty":"RSA","n":"RSA-MODULUS"},"tags":{"purpose":"test"}}
```

## Interaction 1: POST /keys/tcae-rsa/create?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Content-Length: 125
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"kty":"RSA","key_size":2048,"key_ops":["sign","verify","wrapKey","unwrapKey","encrypt","decrypt"],"tags":{"purpose":"test"}}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-rsa/create"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"key":{"e":"AQAB","key_ops":["sign","verify","wrapKey","unwrapKey","encrypt","decrypt"],"kid":"https://{{request.host}}/keys/tcae-rsa/{{version-2}}","kty":"RSA","n":"RSA-MODULUS"},"tags":{"purpose":"test"}}
```

## Interaction 2: GET /keys/tcae-rsa?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-rsa"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"key":{"e":"AQAB","key_ops":["sign","verify","wrapKey","unwrapKey","encrypt","decrypt"],"kid":"https://{{request.host}}/keys/tcae-rsa/{{version-2}}","kty":"RSA","n":"RSA-MODULUS"},"tags":{"purpose":"test"}}
```

## Interaction 3: GET /keys/tcae-rsa/{{version-1}}?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-rsa/{{version-1}}"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"key":{"e":"AQAB","key_ops":["sign","verify","wrapKey","unwrapKey","encrypt","decrypt"],"kid":"https://{{request.host}}/keys/tcae-rsa/{{version-1}}","kty":"RSA","n":"RSA-MODULUS"},"tags":{"purpose":"test"}}
```

## Interaction 4: GET /keys/tcae-rsa/versions?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-rsa/versions"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"value":[{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"kid":"https://{{request.host}}/keys/tcae-rsa/{{version-1}}","tags":{"purpose":"test"}},{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"kid":"https://{{request.host}}/keys/tcae-rsa/{{version-2}}","tags":{"purpose":"test"}}]}
```

## Interaction 5: POST /keys/tcae-rsa/{{version-1}}/sign?api-version=7.4

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
{"alg":"RS256","value":"LPJNul-wow4m6DsqxbninhsWHlwfp0JecwQzYpOLmCQ"}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-rsa/{{version-1}}/sign"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"kid":"https://{{request.host}}/keys/tcae-rsa/{{version-1}}","value":"{{blob-1}}"}
```

## Interaction 6: POST /keys/tcae-rsa/{{version-1}}/verify?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Content-Length: 91
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"alg":"RS256","digest":"LPJNul-wow4m6DsqxbninhsWHlwfp0JecwQzYpOLmCQ","value":"{{blob-1}}"}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-rsa/{{version-1}}/verify"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"value":true}
```

## Interaction 7: POST /keys/tcae-rsa/{{version-1}}/verify?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Content-Length: 91
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"alg":"RS256","digest":"SG6kYiTRu0-2gPNPfJrZao8k7Ii-c-qOWmxlJg6cuKc","value":"{{blob-1}}"}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-rsa/{{version-1}}/verify"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"value":false}
```

## Interaction 8: POST /keys/tcae-rsa/{{version-1}}/wrapkey?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Content-Length: 72
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"alg":"RSA-OAEP","value":"LPJNul-wow4m6DsqxbninhsWHlwfp0JecwQzYpOLmCQ"}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-rsa/{{version-1}}/wrapkey"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"kid":"https://{{request.host}}/keys/tcae-rsa/{{version-1}}","value":"{{blob-2}}"}
```

## Interaction 9: POST /keys/tcae-rsa/{{version-1}}/unwrapkey?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Content-Length: 39
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"alg":"RSA-OAEP","value":"{{blob-2}}"}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-rsa/{{version-1}}/unwrapkey"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"kid":"https://{{request.host}}/keys/tcae-rsa/{{version-1}}","value":"LPJNul-wow4m6DsqxbninhsWHlwfp0JecwQzYpOLmCQ"}
```

## Interaction 10: POST /keys/tcae-rsa/{{version-1}}/encrypt?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Content-Length: 40
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"alg":"RSA-OAEP-256","value":"aGVsbG8"}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-rsa/{{version-1}}/encrypt"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"kid":"https://{{request.host}}/keys/tcae-rsa/{{version-1}}","value":"{{blob-3}}"}
```

## Interaction 11: POST /keys/tcae-rsa/{{version-1}}/decrypt?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Content-Length: 43
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"alg":"RSA-OAEP-256","value":"{{blob-3}}"}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-rsa/{{version-1}}/decrypt"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"kid":"https://{{request.host}}/keys/tcae-rsa/{{version-1}}","value":"aGVsbG8"}
```

## Interaction 12: POST /keys/tcae-ec/create?api-version=7.4

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
{"kty":"EC","crv":"P-256","key_ops":["sign","verify"]}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-ec/create"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"key":{"crv":"P-256","key_ops":["sign","verify"],"kid":"https://{{request.host}}/keys/tcae-ec/{{version-3}}","kty":"EC","x":"EC-X","y":"EC-Y"},"tags":{}}
```

## Interaction 13: POST /keys/tcae-ec/{{version-3}}/sign?api-version=7.4

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
{"alg":"ES256","value":"LPJNul-wow4m6DsqxbninhsWHlwfp0JecwQzYpOLmCQ"}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-ec/{{version-3}}/sign"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"kid":"https://{{request.host}}/keys/tcae-ec/{{version-3}}","value":"{{blob-4}}"}
```

## Interaction 14: POST /keys/tcae-ec/{{version-3}}/verify?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Content-Length: 91
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"alg":"ES256","digest":"LPJNul-wow4m6DsqxbninhsWHlwfp0JecwQzYpOLmCQ","value":"{{blob-4}}"}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-ec/{{version-3}}/verify"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"value":true}
```

## Interaction 15: GET /keys?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"value":[{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"kid":"https://{{request.host}}/keys/tcae-ec","tags":{}},{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"kid":"https://{{request.host}}/keys/tcae-rsa","tags":{"purpose":"test"}}]}
```

## Interaction 16: GET /keys/tcae-ec/versions?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-ec/versions"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"value":[{"attributes":{"created":946684800,"enabled":true,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"kid":"https://{{request.host}}/keys/tcae-ec/{{version-3}}","tags":{}}]}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–16 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | 0–16 |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | none |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| redacted credential | request and response headers | `X-IDENTITY-HEADER` | `X_IDENTITY_HEADER_N` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 0–16 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–16 |
| normalized | whole recording | `(?<=[/"])[0-9a-f]{32}(?=[/"?])` | `{{version-N}}` | 0–14, 16 |
| normalized | whole recording | `(?<="value":")[A-Za-z0-9_-]{80,}(?=")` | `{{blob-N}}` | 5–11, 13, 14 |
| normalized | whole recording | `eyJ[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+` | `{{jwt-N}}` | 0–16 |
| collapsed | whole recording | `"expires_on":[0-9]+` | `"expires_on":946684800` | none |
| collapsed | whole recording | `"created":[0-9]{10}` | `"created":946684800` | 0–4, 12, 15, 16 |
| collapsed | whole recording | `"updated":[0-9]{10}` | `"updated":946684800` | 0–4, 12, 15, 16 |
| collapsed | whole recording | `"deletedDate":[0-9]{10}` | `"deletedDate":946684800` | none |
| collapsed | whole recording | `"scheduledPurgeDate":[0-9]{10}` | `"scheduledPurgeDate":954460800` | none |
| collapsed | whole recording | `"exp":[0-9]{10},"nbf":[0-9]{10}` | `"exp":978307200,"nbf":946684800` | none |
| collapsed | whole recording | `"n":"[A-Za-z0-9_-]{300,}"` | `"n":"RSA-MODULUS"` | 0–3 |
| collapsed | whole recording | `"x":"[A-Za-z0-9_-]{40,}"` | `"x":"EC-X"` | 12 |
| collapsed | whole recording | `"y":"[A-Za-z0-9_-]{40,}"` | `"y":"EC-Y"` | 12 |
| collapsed | whole recording | `"cer":"[A-Za-z0-9+/=]+"` | `"cer":"CERTIFICATE-DER"` | none |
| collapsed | whole recording | `"csr":"[A-Za-z0-9+/=]+"` | `"csr":"CERTIFICATE-REQUEST"` | none |
| collapsed | whole recording | `"x5t":"[A-Za-z0-9_-]+"` | `"x5t":"THUMBPRINT"` | none |
| collapsed | whole recording | `"timestamp":"[^"]+"` | `"timestamp":"2000-01-01T00:00:00.000Z"` | none |
| ordered | response headers | `Allow` | its comma-separated items sorted | none |
| ordered | response body | JSON arrays at `/value`, requests matching `/versions\?` | sorted by `/attributes/created` | 4, 16 |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
