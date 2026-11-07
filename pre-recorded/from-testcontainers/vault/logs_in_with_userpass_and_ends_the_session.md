## Interaction 0: GET /v1/auth/token/lookup-self

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
Cache-Control: no-store
Content-Type: application/json
Strict-Transport-Security: max-age=31536000; includeSubDomains
Content-Length: 33
```
### Response body recorded for playback (403: application/json):

```
{"errors":["permission denied"]}

```

## Interaction 1: POST /v1/auth/userpass/login/alice

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 45
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"password":"REDACTED[alice-wrong-password]"}
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Type: application/json
Strict-Transport-Security: max-age=31536000; includeSubDomains
Content-Length: 44
```
### Response body recorded for playback (500: application/json):

```
{"errors":["invalid username or password"]}

```

## Interaction 2: POST /v1/auth/userpass/login/alice

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 30
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"password":"REDACTED[alice]"}
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Type: application/json
Strict-Transport-Security: max-age=31536000; includeSubDomains
Content-Length: 470
```
### Response body recorded for playback (200: application/json):

```
{"request_id":"00000000-0000-0000-0000-000000000000","lease_id":"","renewable":false,"lease_duration":0,"data":null,"wrap_info":null,"warnings":null,"auth":{"client_token":"X_VAULT_TOKEN_1","accessor":"{{accessor-1}}","policies":["default","tcae-admin"],"token_policies":["default","tcae-admin"],"metadata":{"username":"alice"},"lease_duration":2764800,"renewable":true,"entity_id":"{{uuid-2}}","token_type":"service","orphan":true,"mfa_requirement":null,"num_uses":0}}

```

## Interaction 3: GET /v1/auth/token/lookup-self

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Vault-Token: X_VAULT_TOKEN_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Type: application/json
Strict-Transport-Security: max-age=31536000; includeSubDomains
Content-Length: 581
```
### Response body recorded for playback (200: application/json):

```
{"request_id":"00000000-0000-0000-0000-000000000000","lease_id":"","renewable":false,"lease_duration":0,"data":{"accessor":"{{accessor-1}}","creation_time":946684800,"creation_ttl":2764800,"display_name":"userpass-alice","entity_id":"{{uuid-2}}","expire_time":"2000-01-01T00:00:00Z","explicit_max_ttl":0,"id":"X_VAULT_TOKEN_1","issue_time":"2000-01-01T00:00:00Z","meta":{"username":"alice"},"num_uses":0,"orphan":true,"path":"auth/userpass/login/alice","policies":["default","tcae-admin"],"renewable":true,"ttl":3600,"type":"service"},"wrap_info":null,"warnings":null,"auth":null}

```

## Interaction 4: POST /v1/auth/token/renew-self

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 2
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Vault-Token: X_VAULT_TOKEN_1
```
### Request body recorded for playback ():

```
{}
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Type: application/json
Strict-Transport-Security: max-age=31536000; includeSubDomains
Content-Length: 470
```
### Response body recorded for playback (200: application/json):

```
{"request_id":"00000000-0000-0000-0000-000000000000","lease_id":"","renewable":false,"lease_duration":0,"data":null,"wrap_info":null,"warnings":null,"auth":{"client_token":"X_VAULT_TOKEN_1","accessor":"{{accessor-1}}","policies":["default","tcae-admin"],"token_policies":["default","tcae-admin"],"metadata":{"username":"alice"},"lease_duration":2764800,"renewable":true,"entity_id":"{{uuid-2}}","token_type":"service","orphan":true,"mfa_requirement":null,"num_uses":0}}

```

## Interaction 5: POST /v1/auth/token/revoke-self

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Vault-Token: X_VAULT_TOKEN_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Type: application/json
Strict-Transport-Security: max-age=31536000; includeSubDomains
```
### Response body recorded for playback (204: application/json):

```
```

## Interaction 6: GET /v1/auth/token/lookup-self

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Vault-Token: X_VAULT_TOKEN_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Type: application/json
Strict-Transport-Security: max-age=31536000; includeSubDomains
Content-Length: 33
```
### Response body recorded for playback (403: application/json):

```
{"errors":["permission denied"]}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–6 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `X-Vault-Token` | `X_VAULT_TOKEN_N` | 3–6 |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[alice]"` | 2 |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[alice-wrong-password]"` | 1 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–6 |
| normalized | whole recording | `hvs\.[A-Za-z0-9_-]{20,}` | `{{token-N}}` | 2–6 |
| collapsed | whole recording | `(?<="request_id":")[0-9a-f-]{36}(?=")` | `00000000-0000-0000-0000-000000000000` | 2–4 |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | 2–4 |
| normalized | whole recording | `(?<="accessor":"\|"wrapped_accessor":")[A-Za-z0-9]{24}(?=")` | `{{accessor-N}}` | 2–4 |
| normalized | whole recording | `(?<="accessor":")[a-z_]+_[0-9a-f]{8}(?=")` | `{{mount-accessor-N}}` | none |
| normalized | whole recording | `vault:v[0-9]+:[A-Za-z0-9+/=]+` | `{{blob-N}}` | none |
| collapsed | whole recording | `vault-cluster-[0-9a-f]+` | `vault-cluster-0` | none |
| collapsed | whole recording | `(?!0001-)[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | 3 |
| collapsed | whole recording | `(?<="server_time_utc":\|"creation_time":)1[0-9]{9}` | `946684800` | 3 |
| collapsed | whole recording | `(?<="[0-9]":)1[0-9]{9}` | `946684800` | none |
| collapsed | whole recording | `(?<="ttl":)(?:35[0-9]{2}\|3600\|276[0-9]{4})(?=[,}])` | `3600` | 3 |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
