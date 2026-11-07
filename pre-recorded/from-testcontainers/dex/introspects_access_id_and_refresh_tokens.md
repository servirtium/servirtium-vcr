## Interaction 0: POST /dex/token/introspect

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 15
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
token={{jwt-1}}
```
### Response headers recorded for playback:

```
Content-Type: application/json
Content-Length: 289
```
### Response body recorded for playback (200: application/json):

```
{"active":true,"client_id":"my-app","sub":"CghhbGljZS1pZBIFbG9jYWw","exp":946684800,"iat":946684800,"nbf":946684800,"aud":"my-app","iss":"http://{{request.host}}/dex","token_type":"Bearer","token_use":"access_token","ext":{"email":"alice@example.com","email_verified":true,"name":"alice"}}
```

## Interaction 1: POST /dex/token/introspect

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 15
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
token={{jwt-2}}
```
### Response headers recorded for playback:

```
Content-Type: application/json
Content-Length: 289
```
### Response body recorded for playback (200: application/json):

```
{"active":true,"client_id":"my-app","sub":"CghhbGljZS1pZBIFbG9jYWw","exp":946684800,"iat":946684800,"nbf":946684800,"aud":"my-app","iss":"http://{{request.host}}/dex","token_type":"Bearer","token_use":"access_token","ext":{"email":"alice@example.com","email_verified":true,"name":"alice"}}
```

## Interaction 2: POST /dex/token/introspect

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 49
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
token={{refresh-1}}&token_type_hint=refresh_token
```
### Response headers recorded for playback:

```
Content-Type: application/json
Content-Length: 290
```
### Response body recorded for playback (200: application/json):

```
{"active":true,"client_id":"my-app","sub":"CghhbGljZS1pZBIFbG9jYWw","exp":946684800,"iat":946684800,"nbf":946684800,"aud":"my-app","iss":"http://{{request.host}}/dex","token_type":"Bearer","token_use":"refresh_token","ext":{"email":"alice@example.com","email_verified":true,"name":"alice"}}
```

## Interaction 3: POST /dex/token/introspect

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 13
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
token=garbage
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Type: application/json
Pragma: no-cache
Content-Length: 17
```
### Response body recorded for playback (200: application/json):

```
{"active":false}

```

## Interaction 4: POST /dex/token/introspect

### Request headers recorded for playback:

```
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
Content-Length: 98
Content-Type: application/json
```
### Response body recorded for playback (400: application/json):

```
{"error":"invalid_request","error_description":"The POST body doesn't contain 'token' parameter."}
```

## Interaction 5: GET /dex/token/introspect

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
Content-Length: 92
Content-Type: application/json
```
### Response body recorded for playback (400: application/json):

```
{"error":"invalid_request","error_description":"HTTP method is \"GET\", expected \"POST\"."}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–5 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | none |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | none |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[alice]` | none |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[alice-wrong-password]` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 0–2 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–5 |
| collapsed | whole recording | `"kid": "[0-9a-f]{40}"` | `"kid": "KEY-ID"` | none |
| collapsed | whole recording | `"n": "[A-Za-z0-9_-]{300,}"` | `"n": "MODULUS"` | none |
| normalized | whole recording | `eyJ[A-Za-z0-9_-]+\.eyJ[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+` | `{{jwt-N}}` | 0, 1 |
| normalized | whole recording | `(?<="refresh_token":"\|refresh_token=\|[&?]token=\|^token=)(?!eyJ)[A-Za-z0-9_-]{40,}` | `{{refresh-N}}` | 2 |
| normalized | whole recording | `(?<![A-Za-z0-9])[a-z0-9]{25}(?![A-Za-z0-9])` | `{{authid-N}}` | none |
| normalized | whole recording | `(?<=hmac=)[A-Za-z0-9_-]+` | `{{hmac-N}}` | none |
| collapsed | whole recording | `"exp":[0-9]{10}` | `"exp":946684800` | 0–2 |
| collapsed | whole recording | `"iat":[0-9]{10}` | `"iat":946684800` | 0–2 |
| collapsed | whole recording | `"nbf":[0-9]{10}` | `"nbf":946684800` | 0–2 |
| collapsed | whole recording | `"expires_in":[0-9]+` | `"expires_in":86400` | none |
| collapsed | whole recording | `"at_hash":"[A-Za-z0-9_-]+"` | `"at_hash":"AT-HASH"` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
