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

## Interaction 1: GET /v1/sys/health?activecode=202

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
### Response body recorded for playback (202: application/json):

```
{"initialized":true,"sealed":false,"standby":false,"performance_standby":false,"replication_performance_mode":"disabled","replication_dr_mode":"disabled","server_time_utc":946684800,"version":"1.13.0","cluster_name":"vault-cluster-0","cluster_id":"{{uuid-1}}"}

```

## Interaction 2: GET /v1/sys/health?standbyok=true&perfstandbyok=true

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

## Interaction 3: GET /v1/sys/seal-status

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
Content-Length: 265
```
### Response body recorded for playback (200: application/json):

```
{"type":"shamir","initialized":true,"sealed":false,"t":1,"n":1,"progress":0,"nonce":"","version":"1.13.0","build_date":"2000-01-01T00:00:00Z","migration":false,"cluster_name":"vault-cluster-0","cluster_id":"{{uuid-1}}","recovery_seal":false,"storage_type":"inmem"}

```

## Interaction 4: GET /v1/sys/leader

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
Content-Length: 190
```
### Response body recorded for playback (200: application/json):

```
{"ha_enabled":false,"is_self":false,"active_time":"0001-01-01T00:00:00Z","leader_address":"","leader_cluster_address":"","performance_standby":false,"performance_standby_last_remote_wal":0}

```

## Interaction 5: GET /v1/sys/init

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
Content-Length: 21
```
### Response body recorded for playback (200: application/json):

```
{"initialized":true}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–5 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `X-Vault-Token` | `X_VAULT_TOKEN_N` | none |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[alice]"` | none |
| redacted | request body | (not shown: it may be the secret) | `"password":"REDACTED[alice-wrong-password]"` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–5 |
| normalized | whole recording | `hvs\.[A-Za-z0-9_-]{20,}` | `{{token-N}}` | none |
| collapsed | whole recording | `(?<="request_id":")[0-9a-f-]{36}(?=")` | `00000000-0000-0000-0000-000000000000` | none |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | 0–3 |
| normalized | whole recording | `(?<="accessor":"\|"wrapped_accessor":")[A-Za-z0-9]{24}(?=")` | `{{accessor-N}}` | none |
| normalized | whole recording | `(?<="accessor":")[a-z_]+_[0-9a-f]{8}(?=")` | `{{mount-accessor-N}}` | none |
| normalized | whole recording | `vault:v[0-9]+:[A-Za-z0-9+/=]+` | `{{blob-N}}` | none |
| collapsed | whole recording | `vault-cluster-[0-9a-f]+` | `vault-cluster-0` | 0–3 |
| collapsed | whole recording | `(?!0001-)[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | 3 |
| collapsed | whole recording | `(?<="server_time_utc":\|"creation_time":)1[0-9]{9}` | `946684800` | 0–2 |
| collapsed | whole recording | `(?<="[0-9]":)1[0-9]{9}` | `946684800` | none |
| collapsed | whole recording | `(?<="ttl":)(?:35[0-9]{2}\|3600\|276[0-9]{4})(?=[,}])` | `3600` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
