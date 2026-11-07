## Interaction 0: POST /dex/token

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[my-app]
Connection: keep-alive
Content-Length: 115
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
grant_type=password&username=alice%40example.com&password=REDACTED[alice]&scope=openid+email+profile+offline_access
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
{"access_token":"{{jwt-1}}","token_type":"bearer","expires_in":86400,"refresh_token":"{{refresh-1}}","id_token":"{{jwt-2}}"}
```

## Interaction 1: POST /dex/token

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[my-app]
Connection: keep-alive
Content-Length: 130
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
grant_type=password&username=alice%40example.com&password=REDACTED[alice-wrong-password]&scope=openid+email+profile+offline_access
```
### Response headers recorded for playback:

```
Content-Length: 76
Content-Type: application/json
```
### Response body recorded for playback (401: application/json):

```
{"error":"access_denied","error_description":"Invalid username or password"}
```

## Interaction 2: POST /dex/token

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[my-app]
Connection: keep-alive
Content-Length: 131
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
grant_type=password&username=nobody%40example.com&password=REDACTED[alice-wrong-password]&scope=openid+email+profile+offline_access
```
### Response headers recorded for playback:

```
Content-Length: 76
Content-Type: application/json
```
### Response body recorded for playback (401: application/json):

```
{"error":"access_denied","error_description":"Invalid username or password"}
```

## Interaction 3: POST /dex/token

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[my-app-wrong-secret]
Connection: keep-alive
Content-Length: 115
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
grant_type=password&username=alice%40example.com&password=REDACTED[alice]&scope=openid+email+profile+offline_access
```
### Response headers recorded for playback:

```
Content-Length: 76
Content-Type: application/json
```
### Response body recorded for playback (401: application/json):

```
{"error":"invalid_client","error_description":"Invalid client credentials."}
```

## Interaction 4: POST /dex/token

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[unknown-client]
Connection: keep-alive
Content-Length: 115
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
grant_type=password&username=alice%40example.com&password=REDACTED[alice]&scope=openid+email+profile+offline_access
```
### Response headers recorded for playback:

```
Content-Length: 76
Content-Type: application/json
```
### Response body recorded for playback (401: application/json):

```
{"error":"invalid_client","error_description":"Invalid client credentials."}
```

## Interaction 5: POST /dex/token

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 115
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
grant_type=password&username=alice%40example.com&password=REDACTED[alice]&scope=openid+email+profile+offline_access
```
### Response headers recorded for playback:

```
Content-Length: 76
Content-Type: application/json
```
### Response body recorded for playback (401: application/json):

```
{"error":"invalid_client","error_description":"Invalid client credentials."}
```

## Interaction 6: POST /dex/token

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 163
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
grant_type=password&username=alice%40example.com&password=REDACTED[alice]&scope=openid+email+profile+offline_access&client_id=my-app&client_secret=REDACTED[my-app]
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
{"access_token":"{{jwt-3}}","token_type":"bearer","expires_in":86400,"refresh_token":"{{refresh-2}}","id_token":"{{jwt-4}}"}
```

## Interaction 7: POST /dex/token

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 176
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
grant_type=password&username=alice%40example.com&password=REDACTED[alice]&scope=openid+email+profile+offline_access&client_id=my-app&client_secret=REDACTED[my-app-wrong-secret]
```
### Response headers recorded for playback:

```
Content-Length: 76
Content-Type: application/json
```
### Response body recorded for playback (401: application/json):

```
{"error":"invalid_client","error_description":"Invalid client credentials."}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–7 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[my-app]` | 0–2 |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[my-app-wrong-secret]` | 3 |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[unknown-client]` | 4 |
| redacted | request body | (not shown: it may be the secret) | `client_secret=REDACTED[my-app]` | 6 |
| redacted | request body | (not shown: it may be the secret) | `client_secret=REDACTED[my-app-wrong-secret]` | 7 |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[alice]&` | 0, 3–7 |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[alice-wrong-password]&` | 1, 2 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–7 |
| collapsed | whole recording | `"kid": "[0-9a-f]{40}"` | `"kid": "KEY-ID"` | none |
| collapsed | whole recording | `"n": "[A-Za-z0-9_-]{300,}"` | `"n": "MODULUS"` | none |
| normalized | whole recording | `eyJ[A-Za-z0-9_-]+\.eyJ[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+` | `{{jwt-N}}` | 0, 6 |
| normalized | whole recording | `(?<="refresh_token":"\|refresh_token=\|[&?]token=\|^token=)(?!eyJ)[A-Za-z0-9_-]{40,}` | `{{refresh-N}}` | 0, 6 |
| normalized | whole recording | `(?<![A-Za-z0-9])[a-z0-9]{25}(?![A-Za-z0-9])` | `{{authid-N}}` | none |
| normalized | whole recording | `(?<=hmac=)[A-Za-z0-9_-]+` | `{{hmac-N}}` | none |
| collapsed | whole recording | `"exp":[0-9]{10}` | `"exp":946684800` | none |
| collapsed | whole recording | `"iat":[0-9]{10}` | `"iat":946684800` | none |
| collapsed | whole recording | `"nbf":[0-9]{10}` | `"nbf":946684800` | none |
| collapsed | whole recording | `"expires_in":[0-9]+` | `"expires_in":86400` | 0, 6 |
| collapsed | whole recording | `"at_hash":"[A-Za-z0-9_-]+"` | `"at_hash":"AT-HASH"` | none |
