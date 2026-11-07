## Interaction 0: POST /v1/secret/data/tcae/shared

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 27
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Vault-Token: X_VAULT_TOKEN_1
```
### Request body recorded for playback ():

```
{"data":{"colour":"green"}}
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Type: application/json
Strict-Transport-Security: max-age=31536000; includeSubDomains
Content-Length: 269
```
### Response body recorded for playback (200: application/json):

```
{"request_id":"00000000-0000-0000-0000-000000000000","lease_id":"","renewable":false,"lease_duration":0,"data":{"created_time":"2000-01-01T00:00:00Z","custom_metadata":null,"deletion_time":"","destroyed":false,"version":1},"wrap_info":null,"warnings":null,"auth":null}

```

## Interaction 1: GET /v1/secret/data/tcae/shared

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
Content-Length: 308
```
### Response body recorded for playback (200: application/json):

```
{"request_id":"00000000-0000-0000-0000-000000000000","lease_id":"","renewable":false,"lease_duration":0,"data":{"data":{"colour":"green"},"metadata":{"created_time":"2000-01-01T00:00:00Z","custom_metadata":null,"deletion_time":"","destroyed":false,"version":1}},"wrap_info":null,"warnings":null,"auth":null}

```

## Interaction 2: GET /v1/secret/metadata/tcae?list=true

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
Content-Length: 177
```
### Response body recorded for playback (200: application/json):

```
{"request_id":"00000000-0000-0000-0000-000000000000","lease_id":"","renewable":false,"lease_duration":0,"data":{"keys":["shared"]},"wrap_info":null,"warnings":null,"auth":null}

```

## Interaction 3: POST /v1/secret/data/tcae/shared

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 25
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Vault-Token: X_VAULT_TOKEN_2
```
### Request body recorded for playback ():

```
{"data":{"colour":"red"}}
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Type: application/json
Strict-Transport-Security: max-age=31536000; includeSubDomains
Content-Length: 60
```
### Response body recorded for playback (403: application/json):

```
{"errors":["1 error occurred:\n\t* permission denied\n\n"]}

```

## Interaction 4: DELETE /v1/secret/data/tcae/shared

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
Content-Length: 60
```
### Response body recorded for playback (403: application/json):

```
{"errors":["1 error occurred:\n\t* permission denied\n\n"]}

```

## Interaction 5: GET /v1/secret/data/other/x

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
Content-Length: 60
```
### Response body recorded for playback (403: application/json):

```
{"errors":["1 error occurred:\n\t* permission denied\n\n"]}

```

## Interaction 6: GET /v1/sys/policies/acl/tcae-admin

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
Content-Length: 60
```
### Response body recorded for playback (403: application/json):

```
{"errors":["1 error occurred:\n\t* permission denied\n\n"]}

```

## Interaction 7: POST /v1/sys/capabilities-self

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 59
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Vault-Token: X_VAULT_TOKEN_2
```
### Request body recorded for playback ():

```
{"paths":["secret/data/tcae/shared","secret/data/other/x"]}
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Type: application/json
Strict-Transport-Security: max-age=31536000; includeSubDomains
Content-Length: 291
```
### Response body recorded for playback (200: application/json):

```
{"secret/data/tcae/shared":["read"],"secret/data/other/x":["deny"],"request_id":"00000000-0000-0000-0000-000000000000","lease_id":"","renewable":false,"lease_duration":0,"data":{"secret/data/other/x":["deny"],"secret/data/tcae/shared":["read"]},"wrap_info":null,"warnings":null,"auth":null}

```

## Interaction 8: DELETE /v1/secret/metadata/tcae/shared

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


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–8 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `X-Vault-Token` | `X_VAULT_TOKEN_N` | 0–8 |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[alice]"` | none |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[alice-wrong-password]"` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–8 |
| normalized | whole recording | `hvs\.[A-Za-z0-9_-]{20,}` | `{{token-N}}` | 0–8 |
| collapsed | whole recording | `(?<="request_id":")[0-9a-f-]{36}(?=")` | `00000000-0000-0000-0000-000000000000` | 0–2, 7 |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | 0–2, 7 |
| normalized | whole recording | `(?<="accessor":"\|"wrapped_accessor":")[A-Za-z0-9]{24}(?=")` | `{{accessor-N}}` | none |
| normalized | whole recording | `(?<="accessor":")[a-z_]+_[0-9a-f]{8}(?=")` | `{{mount-accessor-N}}` | none |
| normalized | whole recording | `vault:v[0-9]+:[A-Za-z0-9+/=]+` | `{{blob-N}}` | none |
| collapsed | whole recording | `vault-cluster-[0-9a-f]+` | `vault-cluster-0` | none |
| collapsed | whole recording | `(?!0001-)[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | 0, 1 |
| collapsed | whole recording | `(?<="server_time_utc":\|"creation_time":)1[0-9]{9}` | `946684800` | none |
| collapsed | whole recording | `(?<="[0-9]":)1[0-9]{9}` | `946684800` | none |
| collapsed | whole recording | `(?<="ttl":)(?:35[0-9]{2}\|3600\|276[0-9]{4})(?=[,}])` | `3600` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
