## Interaction 0: POST /dex/token

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 42
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
grant_type=client_credentials&scope=openid
```
### Response headers recorded for playback:

```
Content-Length: 34
Content-Type: application/json
```
### Response body recorded for playback (400: application/json):

```
{"error":"unsupported_grant_type"}
```

## Interaction 1: POST /dex/token

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 16
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
grant_type=bogus
```
### Response headers recorded for playback:

```
Content-Length: 34
Content-Type: application/json
```
### Response body recorded for playback (400: application/json):

```
{"error":"unsupported_grant_type"}
```

## Interaction 2: POST /dex/token

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 7
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
foo=bar
```
### Response headers recorded for playback:

```
Content-Length: 34
Content-Type: application/json
```
### Response body recorded for playback (400: application/json):

```
{"error":"unsupported_grant_type"}
```

## Interaction 3: POST /dex/token

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 73
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
grant_type=password&username=alice%40example.com&password=REDACTED[alice]
```
### Response headers recorded for playback:

```
Content-Length: 89
Content-Type: application/json
```
### Response body recorded for playback (400: application/json):

```
{"error":"invalid_request","error_description":"Missing required scope(s) [\"openid\"]."}
```

## Interaction 4: POST /dex/token

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 124
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
grant_type=password&username=alice%40example.com&password=REDACTED[alice]&scope=openid+audience%3Aserver%3Aclient_id%3Aother
```
### Response headers recorded for playback:

```
Content-Length: 117
Content-Type: application/json
```
### Response body recorded for playback (400: application/json):

```
{"error":"invalid_request","error_description":"Client can't request scope(s) [\"audience:server:client_id:other\"]"}
```

## Interaction 5: POST /dex/token

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 99
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
grant_type=authorization_code&code=not-a-code&redirect_uri=http%3A%2F%2Flocalhost%3A3000%2Fcallback
```
### Response headers recorded for playback:

```
Content-Length: 82
Content-Type: application/json
```
### Response body recorded for playback (400: application/json):

```
{"error":"invalid_grant","error_description":"Invalid or expired code parameter."}
```

## Interaction 6: GET /dex/token

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Length: 68
Content-Type: application/json
```
### Response body recorded for playback (400: application/json):

```
{"error":"invalid_request","error_description":"method not allowed"}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–6 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | 0–6 |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | none |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[alice]` | 3, 4 |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[alice-wrong-password]` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–6 |
| collapsed | whole recording | `"kid": "[0-9a-f]{40}"` | `"kid": "KEY-ID"` | none |
| collapsed | whole recording | `"n": "[A-Za-z0-9_-]{300,}"` | `"n": "MODULUS"` | none |
| normalized | whole recording | `eyJ[A-Za-z0-9_-]+\.eyJ[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+` | `{{jwt-N}}` | none |
| normalized | whole recording | `(?<="refresh_token":"\|refresh_token=\|[&?]token=\|^token=)(?!eyJ)[A-Za-z0-9_-]{40,}` | `{{refresh-N}}` | none |
| normalized | whole recording | `(?<![A-Za-z0-9])[a-z0-9]{25}(?![A-Za-z0-9])` | `{{authid-N}}` | none |
| normalized | whole recording | `(?<=hmac=)[A-Za-z0-9_-]+` | `{{hmac-N}}` | none |
| collapsed | whole recording | `"exp":[0-9]{10}` | `"exp":946684800` | none |
| collapsed | whole recording | `"iat":[0-9]{10}` | `"iat":946684800` | none |
| collapsed | whole recording | `"nbf":[0-9]{10}` | `"nbf":946684800` | none |
| collapsed | whole recording | `"expires_in":[0-9]+` | `"expires_in":86400` | none |
| collapsed | whole recording | `"at_hash":"[A-Za-z0-9_-]+"` | `"at_hash":"AT-HASH"` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
