## Interaction 0: POST /v1/sys/auth/tcae-approle

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 18
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Vault-Token: X_VAULT_TOKEN_1
```
### Request body recorded for playback ():

```
{"type":"approle"}
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

## Interaction 1: POST /v1/auth/tcae-approle/role/r1

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 47
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Vault-Token: X_VAULT_TOKEN_1
```
### Request body recorded for playback ():

```
{"token_policies":["default"],"token_ttl":"1h"}
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

## Interaction 2: GET /v1/auth/tcae-approle/role/r1/role-id

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
Content-Length: 182
```
### Response body recorded for playback (200: application/json):

```
{"request_id":"00000000-0000-0000-0000-000000000000","lease_id":"","renewable":false,"lease_duration":0,"data":{"role_id":"{{uuid-2}}"},"wrap_info":null,"warnings":null,"auth":null}

```

## Interaction 3: POST /v1/auth/tcae-approle/role/r1/secret-id

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
Content-Length: 259
```
### Response body recorded for playback (200: application/json):

```
{"request_id":"00000000-0000-0000-0000-000000000000","lease_id":"","renewable":false,"lease_duration":0,"data":{"secret_id":"{{uuid-4}}","secret_id_accessor":"{{uuid-5}}","secret_id_num_uses":0,"secret_id_ttl":0},"wrap_info":null,"warnings":null,"auth":null}

```

## Interaction 4: POST /v1/auth/tcae-approle/login

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 56
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"role_id":"{{uuid-2}}","secret_id":"not-the-secret-id"}
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Type: application/json
Strict-Transport-Security: max-age=31536000; includeSubDomains
Content-Length: 33
```
### Response body recorded for playback (500: application/json):

```
{"errors":["invalid secret id"]}

```

## Interaction 5: POST /v1/auth/tcae-approle/login

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 49
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"role_id":"{{uuid-2}}","secret_id":"{{uuid-4}}"}
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Type: application/json
Strict-Transport-Security: max-age=31536000; includeSubDomains
Content-Length: 439
```
### Response body recorded for playback (200: application/json):

```
{"request_id":"00000000-0000-0000-0000-000000000000","lease_id":"","renewable":false,"lease_duration":0,"data":null,"wrap_info":null,"warnings":null,"auth":{"client_token":"X_VAULT_TOKEN_2","accessor":"{{accessor-1}}","policies":["default"],"token_policies":["default"],"metadata":{"role_name":"r1"},"lease_duration":3600,"renewable":true,"entity_id":"{{uuid-7}}","token_type":"service","orphan":true,"mfa_requirement":null,"num_uses":0}}

```

## Interaction 6: GET /v1/auth/token/lookup-self

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Vault-Token: X_VAULT_TOKEN_2
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Type: application/json
Strict-Transport-Security: max-age=31536000; includeSubDomains
Content-Length: 559
```
### Response body recorded for playback (200: application/json):

```
{"request_id":"00000000-0000-0000-0000-000000000000","lease_id":"","renewable":false,"lease_duration":0,"data":{"accessor":"{{accessor-1}}","creation_time":946684800,"creation_ttl":3600,"display_name":"tcae-approle","entity_id":"{{uuid-7}}","expire_time":"2000-01-01T00:00:00Z","explicit_max_ttl":0,"id":"X_VAULT_TOKEN_2","issue_time":"2000-01-01T00:00:00Z","meta":{"role_name":"r1"},"num_uses":0,"orphan":true,"path":"auth/tcae-approle/login","policies":["default"],"renewable":true,"ttl":3600,"type":"service"},"wrap_info":null,"warnings":null,"auth":null}

```

## Interaction 7: DELETE /v1/sys/auth/tcae-approle

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

## Interaction 8: POST /v1/auth/tcae-approle/login

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 49
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"role_id":"{{uuid-2}}","secret_id":"{{uuid-4}}"}
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
| removed | response headers | `Date` | (left out) | 0–8 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `X-Vault-Token` | `X_VAULT_TOKEN_N` | 0–3, 6, 7 |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[alice]"` | none |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[alice-wrong-password]"` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–8 |
| normalized | whole recording | `hvs\.[A-Za-z0-9_-]{20,}` | `{{token-N}}` | 0–3, 5–7 |
| collapsed | whole recording | `(?<="request_id":")[0-9a-f-]{36}(?=")` | `00000000-0000-0000-0000-000000000000` | 2, 3, 5, 6 |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | 2–6, 8 |
| normalized | whole recording | `(?<="accessor":"\|"wrapped_accessor":")[A-Za-z0-9]{24}(?=")` | `{{accessor-N}}` | 5, 6 |
| normalized | whole recording | `(?<="accessor":")[a-z_]+_[0-9a-f]{8}(?=")` | `{{mount-accessor-N}}` | none |
| normalized | whole recording | `vault:v[0-9]+:[A-Za-z0-9+/=]+` | `{{blob-N}}` | none |
| collapsed | whole recording | `vault-cluster-[0-9a-f]+` | `vault-cluster-0` | none |
| collapsed | whole recording | `(?!0001-)[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | 6 |
| collapsed | whole recording | `(?<="server_time_utc":\|"creation_time":)1[0-9]{9}` | `946684800` | 6 |
| collapsed | whole recording | `(?<="[0-9]":)1[0-9]{9}` | `946684800` | none |
| collapsed | whole recording | `(?<="ttl":)(?:35[0-9]{2}\|3600\|276[0-9]{4})(?=[,}])` | `3600` | 6 |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
