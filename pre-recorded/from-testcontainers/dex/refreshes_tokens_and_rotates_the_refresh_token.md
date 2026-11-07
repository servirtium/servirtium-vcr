## Interaction 0: POST /dex/token

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 52
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
grant_type=refresh_token&refresh_token={{refresh-1}}
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Length: 124
Content-Type: application/json
Pragma: no-cache
```
### Response body recorded for playback (200: application/json):

```
{"access_token":"{{jwt-1}}","token_type":"bearer","expires_in":86400,"refresh_token":"{{refresh-2}}","id_token":"{{jwt-2}}"}
```

## Interaction 1: POST /dex/token

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 52
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
grant_type=refresh_token&refresh_token={{refresh-1}}
```
### Response headers recorded for playback:

```
Content-Length: 121
Content-Type: application/json
```
### Response body recorded for playback (400: application/json):

```
{"error":"invalid_request","error_description":"Refresh token is invalid or has already been claimed by another client."}
```

## Interaction 2: POST /dex/token

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 65
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
grant_type=refresh_token&refresh_token={{refresh-2}}&scope=openid
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Length: 124
Content-Type: application/json
Pragma: no-cache
```
### Response body recorded for playback (200: application/json):

```
{"access_token":"{{jwt-3}}","token_type":"bearer","expires_in":86400,"refresh_token":"{{refresh-3}}","id_token":"{{jwt-4}}"}
```

## Interaction 3: POST /dex/token

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 50
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
grant_type=refresh_token&refresh_token=not-a-token
```
### Response headers recorded for playback:

```
Content-Length: 121
Content-Type: application/json
```
### Response body recorded for playback (400: application/json):

```
{"error":"invalid_request","error_description":"Refresh token is invalid or has already been claimed by another client."}
```

## Interaction 4: POST /dex/token

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 24
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
grant_type=refresh_token
```
### Response headers recorded for playback:

```
Content-Length: 87
Content-Type: application/json
```
### Response body recorded for playback (400: application/json):

```
{"error":"invalid_request","error_description":"No refresh token is found in request."}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–4 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | 0–4 |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | none |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[alice]` | none |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[alice-wrong-password]` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–4 |
| collapsed | whole recording | `"kid": "[0-9a-f]{40}"` | `"kid": "KEY-ID"` | none |
| collapsed | whole recording | `"n": "[A-Za-z0-9_-]{300,}"` | `"n": "MODULUS"` | none |
| normalized | whole recording | `eyJ[A-Za-z0-9_-]+\.eyJ[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+` | `{{jwt-N}}` | 0, 2 |
| normalized | whole recording | `(?<="refresh_token":"\|refresh_token=\|[&?]token=\|^token=)(?!eyJ)[A-Za-z0-9_-]{40,}` | `{{refresh-N}}` | 0–2 |
| normalized | whole recording | `(?<![A-Za-z0-9])[a-z0-9]{25}(?![A-Za-z0-9])` | `{{authid-N}}` | none |
| normalized | whole recording | `(?<=hmac=)[A-Za-z0-9_-]+` | `{{hmac-N}}` | none |
| collapsed | whole recording | `"exp":[0-9]{10}` | `"exp":946684800` | none |
| collapsed | whole recording | `"iat":[0-9]{10}` | `"iat":946684800` | none |
| collapsed | whole recording | `"nbf":[0-9]{10}` | `"nbf":946684800` | none |
| collapsed | whole recording | `"expires_in":[0-9]+` | `"expires_in":86400` | 0, 2 |
| collapsed | whole recording | `"at_hash":"[A-Za-z0-9_-]+"` | `"at_hash":"AT-HASH"` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
