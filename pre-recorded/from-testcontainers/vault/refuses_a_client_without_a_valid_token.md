## Interaction 0: GET /v1/sys/health

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
Content-Length: 261
```
### Response body recorded for playback (200: application/json):

```
{"initialized":true,"sealed":false,"standby":false,"performance_standby":false,"replication_performance_mode":"disabled","replication_dr_mode":"disabled","server_time_utc":946684800,"version":"1.13.0","cluster_name":"vault-cluster-0","cluster_id":"{{uuid-1}}"}

```

## Interaction 1: GET /v1/secret/data/tcae/private

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

## Interaction 2: GET /v1/sys/mounts

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

## Interaction 3: PUT /v1/secret/data/tcae/private

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 18
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"data":{"a":"b"}}
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

## Interaction 4: GET /v1/secret/data/tcae/private

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
| removed | response headers | `Date` | (left out) | 0–4 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `X-Vault-Token` | `X_VAULT_TOKEN_N` | 4 |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[alice]"` | none |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[alice-wrong-password]"` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–4 |
| normalized | whole recording | `hvs\.[A-Za-z0-9_-]{20,}` | `{{token-N}}` | none |
| collapsed | whole recording | `(?<="request_id":")[0-9a-f-]{36}(?=")` | `00000000-0000-0000-0000-000000000000` | none |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | 0 |
| normalized | whole recording | `(?<="accessor":"\|"wrapped_accessor":")[A-Za-z0-9]{24}(?=")` | `{{accessor-N}}` | none |
| normalized | whole recording | `(?<="accessor":")[a-z_]+_[0-9a-f]{8}(?=")` | `{{mount-accessor-N}}` | none |
| normalized | whole recording | `vault:v[0-9]+:[A-Za-z0-9+/=]+` | `{{blob-N}}` | none |
| collapsed | whole recording | `vault-cluster-[0-9a-f]+` | `vault-cluster-0` | 0 |
| collapsed | whole recording | `(?!0001-)[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | none |
| collapsed | whole recording | `(?<="server_time_utc":\|"creation_time":)1[0-9]{9}` | `946684800` | 0 |
| collapsed | whole recording | `(?<="[0-9]":)1[0-9]{9}` | `946684800` | none |
| collapsed | whole recording | `(?<="ttl":)(?:35[0-9]{2}\|3600\|276[0-9]{4})(?=[,}])` | `3600` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
