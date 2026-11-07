## Interaction 0: POST /v1/auth/token/create

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 75
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Vault-Token: X_VAULT_TOKEN_1
```
### Request body recorded for playback ():

```
{"policies":["default"],"ttl":"1h","display_name":"child","renewable":true}
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Type: application/json
Strict-Transport-Security: max-age=31536000; includeSubDomains
Content-Length: 422
```
### Response body recorded for playback (200: application/json):

```
{"request_id":"00000000-0000-0000-0000-000000000000","lease_id":"","renewable":false,"lease_duration":0,"data":null,"wrap_info":null,"warnings":null,"auth":{"client_token":"{{token-2}}","accessor":"{{accessor-1}}","policies":["default"],"token_policies":["default"],"metadata":null,"lease_duration":3600,"renewable":true,"entity_id":"{{uuid-2}}","token_type":"service","orphan":false,"mfa_requirement":null,"num_uses":0}}

```

## Interaction 1: POST /v1/auth/token/lookup

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 23
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Vault-Token: X_VAULT_TOKEN_1
```
### Request body recorded for playback ():

```
{"token":"{{token-2}}"}
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Type: application/json
Strict-Transport-Security: max-age=31536000; includeSubDomains
Content-Length: 535
```
### Response body recorded for playback (200: application/json):

```
{"request_id":"00000000-0000-0000-0000-000000000000","lease_id":"","renewable":false,"lease_duration":0,"data":{"accessor":"{{accessor-1}}","creation_time":946684800,"creation_ttl":3600,"display_name":"token-child","entity_id":"{{uuid-2}}","expire_time":"2000-01-01T00:00:00Z","explicit_max_ttl":0,"id":"{{token-2}}","issue_time":"2000-01-01T00:00:00Z","meta":null,"num_uses":0,"orphan":false,"path":"auth/token/create","policies":["default"],"renewable":true,"ttl":3600,"type":"service"},"wrap_info":null,"warnings":null,"auth":null}

```

## Interaction 2: POST /v1/auth/token/lookup-accessor

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 29
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Vault-Token: X_VAULT_TOKEN_1
```
### Request body recorded for playback ():

```
{"accessor":"{{accessor-1}}"}
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Type: application/json
Strict-Transport-Security: max-age=31536000; includeSubDomains
Content-Length: 524
```
### Response body recorded for playback (200: application/json):

```
{"request_id":"00000000-0000-0000-0000-000000000000","lease_id":"","renewable":false,"lease_duration":0,"data":{"accessor":"{{accessor-1}}","creation_time":946684800,"creation_ttl":3600,"display_name":"token-child","entity_id":"{{uuid-2}}","expire_time":"2000-01-01T00:00:00Z","explicit_max_ttl":0,"id":"","issue_time":"2000-01-01T00:00:00Z","meta":null,"num_uses":0,"orphan":false,"path":"auth/token/create","policies":["default"],"renewable":true,"ttl":3600,"type":"service"},"wrap_info":null,"warnings":null,"auth":null}

```

## Interaction 3: POST /v1/auth/token/renew

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 40
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Vault-Token: X_VAULT_TOKEN_1
```
### Request body recorded for playback ():

```
{"token":"{{token-2}}","increment":"2h"}
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Type: application/json
Strict-Transport-Security: max-age=31536000; includeSubDomains
Content-Length: 422
```
### Response body recorded for playback (200: application/json):

```
{"request_id":"00000000-0000-0000-0000-000000000000","lease_id":"","renewable":false,"lease_duration":0,"data":null,"wrap_info":null,"warnings":null,"auth":{"client_token":"{{token-2}}","accessor":"{{accessor-1}}","policies":["default"],"token_policies":["default"],"metadata":null,"lease_duration":7200,"renewable":true,"entity_id":"{{uuid-2}}","token_type":"service","orphan":false,"mfa_requirement":null,"num_uses":0}}

```

## Interaction 4: POST /v1/auth/token/revoke

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 23
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Vault-Token: X_VAULT_TOKEN_1
```
### Request body recorded for playback ():

```
{"token":"{{token-2}}"}
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

## Interaction 5: POST /v1/auth/token/lookup

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 23
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Vault-Token: X_VAULT_TOKEN_1
```
### Request body recorded for playback ():

```
{"token":"{{token-2}}"}
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Type: application/json
Strict-Transport-Security: max-age=31536000; includeSubDomains
Content-Length: 25
```
### Response body recorded for playback (403: application/json):

```
{"errors":["bad token"]}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–5 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `X-Vault-Token` | `X_VAULT_TOKEN_N` | 0–5 |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[alice]"` | none |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[alice-wrong-password]"` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–5 |
| normalized | whole recording | `hvs\.[A-Za-z0-9_-]{20,}` | `{{token-N}}` | 0–5 |
| collapsed | whole recording | `(?<="request_id":")[0-9a-f-]{36}(?=")` | `00000000-0000-0000-0000-000000000000` | 0–3 |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | 0–3 |
| normalized | whole recording | `(?<="accessor":"\|"wrapped_accessor":")[A-Za-z0-9]{24}(?=")` | `{{accessor-N}}` | 0–3 |
| normalized | whole recording | `(?<="accessor":")[a-z_]+_[0-9a-f]{8}(?=")` | `{{mount-accessor-N}}` | none |
| normalized | whole recording | `vault:v[0-9]+:[A-Za-z0-9+/=]+` | `{{blob-N}}` | none |
| collapsed | whole recording | `vault-cluster-[0-9a-f]+` | `vault-cluster-0` | none |
| collapsed | whole recording | `(?!0001-)[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | 1, 2 |
| collapsed | whole recording | `(?<="server_time_utc":\|"creation_time":)1[0-9]{9}` | `946684800` | 1, 2 |
| collapsed | whole recording | `(?<="[0-9]":)1[0-9]{9}` | `946684800` | none |
| collapsed | whole recording | `(?<="ttl":)(?:35[0-9]{2}\|3600\|276[0-9]{4})(?=[,}])` | `3600` | 1, 2 |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
