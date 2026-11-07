## Interaction 0: GET /secrets/tcae-nope?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae-nope"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (404: application/json):

```
{"error":{"code":"com.github.nagyesta.lowkeyvault.service.exception.NotFoundException","message":"Key not found: secret:https://{{request.host}}/tcae-nope/--"}}
```

## Interaction 1: GET /keys/tcae-nope?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-nope"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (404: application/json):

```
{"error":{"code":"com.github.nagyesta.lowkeyvault.service.exception.NotFoundException","message":"Key not found: key:https://{{request.host}}/tcae-nope/--"}}
```

## Interaction 2: GET /certificates/tcae-nope?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/certificates/tcae-nope"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (404: application/json):

```
{"error":{"code":"com.github.nagyesta.lowkeyvault.service.exception.NotFoundException","message":"Key not found: certificate:https://{{request.host}}/tcae-nope/--"}}
```

## Interaction 3: PATCH /secrets/tcae-nope/tcae-no-such-version?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Content-Length: 11
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"tags":{}}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae-nope/tcae-no-such-version"
Content-Type: application/json
Transfer-Encoding: chunked
Connection: close
```
### Response body recorded for playback (500: application/json):

```
{"timestamp":"2000-01-01T00:00:00.000Z","status":500,"error":"Internal Server Error","path":"/secrets/tcae-nope/tcae-no-such-version"}
```

## Interaction 4: PUT /secrets/tcae-bad?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Content-Length: 2
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae-bad"
Content-Type: application/json
Transfer-Encoding: chunked
Connection: close
```
### Response body recorded for playback (400: application/json):

```
{"timestamp":"2000-01-01T00:00:00.000Z","status":400,"error":"Bad Request","path":"/secrets/tcae-bad"}
```

## Interaction 5: POST /keys/tcae-bad/create?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Content-Length: 15
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"kty":"BOGUS"}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/keys/tcae-bad/create"
Content-Type: application/json
Transfer-Encoding: chunked
Connection: close
```
### Response body recorded for playback (400: application/json):

```
{"timestamp":"2000-01-01T00:00:00.000Z","status":400,"error":"Bad Request","path":"/keys/tcae-bad/create"}
```

## Interaction 6: GET /secrets/tcae-x?api-version=1.0

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae-x"
Content-Type: application/json
Transfer-Encoding: chunked
Connection: close
```
### Response body recorded for playback (400: application/json):

```
{"timestamp":"2000-01-01T00:00:00.000Z","status":400,"error":"Bad Request","path":"/secrets/tcae-x"}
```

## Interaction 7: GET /secrets/tcae-x

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae-x"
Content-Type: application/json
Transfer-Encoding: chunked
Connection: close
```
### Response body recorded for playback (400: application/json):

```
{"timestamp":"2000-01-01T00:00:00.000Z","status":400,"error":"Bad Request","path":"/secrets/tcae-x"}
```

## Interaction 8: POST /secrets/tcae-x?api-version=7.4

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
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae-x"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (405: application/json):

```
{"timestamp":"2000-01-01T00:00:00.000Z","status":405,"error":"Method Not Allowed","path":"/secrets/tcae-x"}
```

## Interaction 9: PUT /secrets/tcae_bad_name?api-version=7.4

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
{"value":"x"}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/secrets/tcae_bad_name"
Content-Type: application/json
Transfer-Encoding: chunked
Connection: close
```
### Response body recorded for playback (500: application/json):

```
{"timestamp":"2000-01-01T00:00:00.000Z","status":500,"error":"Internal Server Error","path":"/secrets/tcae_bad_name"}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–9 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `Allow` | (left out) | 8 |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | 0–9 |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | none |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| redacted credential | request and response headers | `X-IDENTITY-HEADER` | `X_IDENTITY_HEADER_N` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 0–9 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–9 |
| normalized | whole recording | `(?<=[/"])[0-9a-f]{32}(?=[/"?])` | `{{version-N}}` | none |
| normalized | whole recording | `(?<="value":")[A-Za-z0-9_-]{80,}(?=")` | `{{blob-N}}` | none |
| normalized | whole recording | `eyJ[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+` | `{{jwt-N}}` | 0–9 |
| collapsed | whole recording | `"expires_on":[0-9]+` | `"expires_on":946684800` | none |
| collapsed | whole recording | `"created":[0-9]{10}` | `"created":946684800` | none |
| collapsed | whole recording | `"updated":[0-9]{10}` | `"updated":946684800` | none |
| collapsed | whole recording | `"deletedDate":[0-9]{10}` | `"deletedDate":946684800` | none |
| collapsed | whole recording | `"scheduledPurgeDate":[0-9]{10}` | `"scheduledPurgeDate":954460800` | none |
| collapsed | whole recording | `"exp":[0-9]{10},"nbf":[0-9]{10}` | `"exp":978307200,"nbf":946684800` | none |
| collapsed | whole recording | `"n":"[A-Za-z0-9_-]{300,}"` | `"n":"RSA-MODULUS"` | none |
| collapsed | whole recording | `"x":"[A-Za-z0-9_-]{40,}"` | `"x":"EC-X"` | none |
| collapsed | whole recording | `"y":"[A-Za-z0-9_-]{40,}"` | `"y":"EC-Y"` | none |
| collapsed | whole recording | `"cer":"[A-Za-z0-9+/=]+"` | `"cer":"CERTIFICATE-DER"` | none |
| collapsed | whole recording | `"csr":"[A-Za-z0-9+/=]+"` | `"csr":"CERTIFICATE-REQUEST"` | none |
| collapsed | whole recording | `"x5t":"[A-Za-z0-9_-]+"` | `"x5t":"THUMBPRINT"` | none |
| collapsed | whole recording | `"timestamp":"[^"]+"` | `"timestamp":"2000-01-01T00:00:00.000Z"` | 3–9 |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
