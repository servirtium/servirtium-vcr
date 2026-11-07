## Interaction 0: GET /v1/sys/internal/ui/mounts

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
Transfer-Encoding: chunked
```
### Response body recorded for playback (200: application/json):

```
{"request_id":"00000000-0000-0000-0000-000000000000","lease_id":"","renewable":false,"lease_duration":0,"data":{"auth":{"token/":{"accessor":"{{mount-accessor-1}}","config":{"default_lease_ttl":0,"force_no_cache":false,"max_lease_ttl":0,"token_type":"default-service"},"description":"token based credentials","external_entropy_access":false,"local":false,"options":null,"plugin_version":"","running_plugin_version":"v1.13.0+builtin.vault","running_sha256":"","seal_wrap":false,"type":"token","uuid":"{{uuid-2}}"},"userpass/":{"accessor":"{{mount-accessor-2}}","config":{"default_lease_ttl":0,"force_no_cache":false,"max_lease_ttl":0,"token_type":"default-service"},"deprecation_status":"supported","description":"","external_entropy_access":false,"local":false,"options":{},"plugin_version":"","running_plugin_version":"v1.13.0+builtin.vault","running_sha256":"","seal_wrap":false,"type":"userpass","uuid":"{{uuid-3}}"}},"secret":{"cubbyhole/":{"accessor":"{{mount-accessor-3}}","config":{"default_lease_ttl":0,"force_no_cache":false,"max_lease_ttl":0},"description":"per-token private secret storage","external_entropy_access":false,"local":true,"options":null,"plugin_version":"","running_plugin_version":"v1.13.0+builtin.vault","running_sha256":"","seal_wrap":false,"type":"cubbyhole","uuid":"{{uuid-4}}"},"identity/":{"accessor":"{{mount-accessor-4}}","config":{"default_lease_ttl":0,"force_no_cache":false,"max_lease_ttl":0,"passthrough_request_headers":["Authorization"]},"description":"identity store","external_entropy_access":false,"local":false,"options":null,"plugin_version":"","running_plugin_version":"v1.13.0+builtin.vault","running_sha256":"","seal_wrap":false,"type":"identity","uuid":"{{uuid-5}}"},"secret/":{"accessor":"{{mount-accessor-5}}","config":{"default_lease_ttl":0,"force_no_cache":false,"max_lease_ttl":0},"deprecation_status":"supported","description":"key/value secret storage","external_entropy_access":false,"local":false,"options":{"version":"2"},"plugin_version":"","running_plugin_version":"v0.14.2+builtin","running_sha256":"","seal_wrap":false,"type":"kv","uuid":"{{uuid-6}}"},"sys/":{"accessor":"{{mount-accessor-6}}","config":{"default_lease_ttl":0,"force_no_cache":false,"max_lease_ttl":0,"passthrough_request_headers":["Accept"]},"description":"system endpoints used for control, policy and debugging","external_entropy_access":false,"local":false,"options":null,"plugin_version":"","running_plugin_version":"v1.13.0+builtin.vault","running_sha256":"","seal_wrap":true,"type":"system","uuid":"{{uuid-7}}"}}},"wrap_info":null,"warnings":null,"auth":null}

```

## Interaction 1: POST /v1/sys/mounts/tcae-mount

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 69
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Vault-Token: X_VAULT_TOKEN_1
```
### Request body recorded for playback ():

```
{"type":"kv","description":"a first mount","options":{"version":"1"}}
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

## Interaction 2: POST /v1/sys/mounts/tcae-mount

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 13
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Vault-Token: X_VAULT_TOKEN_1
```
### Request body recorded for playback ():

```
{"type":"kv"}
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Type: application/json
Strict-Transport-Security: max-age=31536000; includeSubDomains
Content-Length: 53
```
### Response body recorded for playback (400: application/json):

```
{"errors":["path is already in use at tcae-mount/"]}

```

## Interaction 3: GET /v1/sys/internal/ui/mounts/tcae-mount

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
Content-Length: 556
```
### Response body recorded for playback (200: application/json):

```
{"request_id":"00000000-0000-0000-0000-000000000000","lease_id":"","renewable":false,"lease_duration":0,"data":{"accessor":"{{mount-accessor-7}}","config":{"default_lease_ttl":0,"force_no_cache":false,"max_lease_ttl":0},"deprecation_status":"supported","description":"a first mount","external_entropy_access":false,"local":false,"options":{"version":"1"},"path":"tcae-mount/","plugin_version":"","running_plugin_version":"v0.14.2+builtin","running_sha256":"","seal_wrap":false,"type":"kv","uuid":"{{uuid-9}}"},"wrap_info":null,"warnings":null,"auth":null}

```

## Interaction 4: POST /v1/sys/mounts/tcae-mount/tune

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 56
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Vault-Token: X_VAULT_TOKEN_1
```
### Request body recorded for playback ():

```
{"description":"a tuned mount","default_lease_ttl":"2h"}
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

## Interaction 5: GET /v1/sys/internal/ui/mounts/tcae-mount

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
Content-Length: 559
```
### Response body recorded for playback (200: application/json):

```
{"request_id":"00000000-0000-0000-0000-000000000000","lease_id":"","renewable":false,"lease_duration":0,"data":{"accessor":"{{mount-accessor-7}}","config":{"default_lease_ttl":7200,"force_no_cache":false,"max_lease_ttl":0},"deprecation_status":"supported","description":"a tuned mount","external_entropy_access":false,"local":false,"options":{"version":"1"},"path":"tcae-mount/","plugin_version":"","running_plugin_version":"v0.14.2+builtin","running_sha256":"","seal_wrap":false,"type":"kv","uuid":"{{uuid-9}}"},"wrap_info":null,"warnings":null,"auth":null}

```

## Interaction 6: DELETE /v1/sys/mounts/tcae-mount

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

## Interaction 7: GET /v1/tcae-mount/x

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
Content-Length: 77
```
### Response body recorded for playback (404: application/json):

```
{"errors":["no handler for route \"tcae-mount/x\". route entry not found."]}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–7 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `X-Vault-Token` | `X_VAULT_TOKEN_N` | 0–7 |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[alice]"` | none |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[alice-wrong-password]"` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–7 |
| normalized | whole recording | `hvs\.[A-Za-z0-9_-]{20,}` | `{{token-N}}` | 0–7 |
| collapsed | whole recording | `(?<="request_id":")[0-9a-f-]{36}(?=")` | `00000000-0000-0000-0000-000000000000` | 0, 3, 5 |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | 0, 3, 5 |
| normalized | whole recording | `(?<="accessor":"\|"wrapped_accessor":")[A-Za-z0-9]{24}(?=")` | `{{accessor-N}}` | none |
| normalized | whole recording | `(?<="accessor":")[a-z_]+_[0-9a-f]{8}(?=")` | `{{mount-accessor-N}}` | 0, 3, 5 |
| normalized | whole recording | `vault:v[0-9]+:[A-Za-z0-9+/=]+` | `{{blob-N}}` | none |
| collapsed | whole recording | `vault-cluster-[0-9a-f]+` | `vault-cluster-0` | none |
| collapsed | whole recording | `(?!0001-)[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | none |
| collapsed | whole recording | `(?<="server_time_utc":\|"creation_time":)1[0-9]{9}` | `946684800` | none |
| collapsed | whole recording | `(?<="[0-9]":)1[0-9]{9}` | `946684800` | none |
| collapsed | whole recording | `(?<="ttl":)(?:35[0-9]{2}\|3600\|276[0-9]{4})(?=[,}])` | `3600` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
