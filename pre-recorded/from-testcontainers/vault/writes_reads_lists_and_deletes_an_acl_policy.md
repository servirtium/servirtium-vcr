## Interaction 0: PUT /v1/sys/policies/acl/tcae-test

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 74
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Vault-Token: X_VAULT_TOKEN_1
```
### Request body recorded for playback ():

```
{"policy":"path \"secret/data/tcae/*\" {\n  capabilities = [\"read\"]\n}"}
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

## Interaction 1: GET /v1/sys/policies/acl/tcae-test

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
Content-Length: 299
```
### Response body recorded for playback (200: application/json):

```
{
  "auth": null,
  "data": {
    "name": "tcae-test",
    "policy": "path \"secret/data/tcae/*\" {\n  capabilities = [\"read\"]\n}"
  },
  "lease_duration": 0,
  "lease_id": "",
  "renewable": false,
  "request_id": "00000000-0000-0000-0000-000000000000",
  "warnings": null,
  "wrap_info": null
}

```

## Interaction 2: PUT /v1/sys/policies/acl/tcae-test

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 84
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Vault-Token: X_VAULT_TOKEN_1
```
### Request body recorded for playback ():

```
{"policy":"path \"secret/data/tcae/*\" {\n  capabilities = [\"read\", \"list\"]\n}"}
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

## Interaction 3: GET /v1/sys/policies/acl?list=true

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
Content-Length: 306
```
### Response body recorded for playback (200: application/json):

```
{
  "auth": null,
  "data": {
    "keys": [
      "default",
      "tcae-admin",
      "tcae-reader",
      "tcae-test",
      "root"
    ]
  },
  "lease_duration": 0,
  "lease_id": "",
  "renewable": false,
  "request_id": "00000000-0000-0000-0000-000000000000",
  "warnings": null,
  "wrap_info": null
}

```

## Interaction 4: POST /v1/sys/capabilities-self

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 45
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Vault-Token: X_VAULT_TOKEN_1
```
### Request body recorded for playback ():

```
{"paths":["secret/data/tcae/x","sys/mounts"]}
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Type: application/json
Strict-Transport-Security: max-age=31536000; includeSubDomains
Content-Length: 699
```
### Response body recorded for playback (200: application/json):

```
{
  "auth": null,
  "data": {
    "secret/data/tcae/x": [
      "create",
      "delete",
      "list",
      "patch",
      "read",
      "sudo",
      "update"
    ],
    "sys/mounts": [
      "create",
      "delete",
      "list",
      "patch",
      "read",
      "sudo",
      "update"
    ]
  },
  "lease_duration": 0,
  "lease_id": "",
  "renewable": false,
  "request_id": "00000000-0000-0000-0000-000000000000",
  "secret/data/tcae/x": [
    "create",
    "delete",
    "list",
    "patch",
    "read",
    "sudo",
    "update"
  ],
  "sys/mounts": [
    "create",
    "delete",
    "list",
    "patch",
    "read",
    "sudo",
    "update"
  ],
  "warnings": null,
  "wrap_info": null
}

```

## Interaction 5: DELETE /v1/sys/policies/acl/tcae-test

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

## Interaction 6: GET /v1/sys/policies/acl/tcae-test

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
Content-Length: 19
```
### Response body recorded for playback (404: application/json):

```
{
  "errors": []
}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–6 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `X-Vault-Token` | `X_VAULT_TOKEN_N` | 0–6 |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[alice]"` | none |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[alice-wrong-password]"` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–6 |
| normalized | whole recording | `hvs\.[A-Za-z0-9_-]{20,}` | `{{token-N}}` | 0–6 |
| collapsed | whole recording | `(?<="request_id":")[0-9a-f-]{36}(?=")` | `00000000-0000-0000-0000-000000000000` | 1, 3, 4 |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | 1, 3, 4 |
| normalized | whole recording | `(?<="accessor":"\|"wrapped_accessor":")[A-Za-z0-9]{24}(?=")` | `{{accessor-N}}` | none |
| normalized | whole recording | `(?<="accessor":")[a-z_]+_[0-9a-f]{8}(?=")` | `{{mount-accessor-N}}` | none |
| normalized | whole recording | `vault:v[0-9]+:[A-Za-z0-9+/=]+` | `{{blob-N}}` | none |
| collapsed | whole recording | `vault-cluster-[0-9a-f]+` | `vault-cluster-0` | none |
| collapsed | whole recording | `(?!0001-)[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | none |
| collapsed | whole recording | `(?<="server_time_utc":\|"creation_time":)1[0-9]{9}` | `946684800` | none |
| collapsed | whole recording | `(?<="[0-9]":)1[0-9]{9}` | `946684800` | none |
| collapsed | whole recording | `(?<="ttl":)(?:35[0-9]{2}\|3600\|276[0-9]{4})(?=[,}])` | `3600` | none |
| ordered | response body | JSON object keys | sorted, at every depth | 1, 3, 4, 6 |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
