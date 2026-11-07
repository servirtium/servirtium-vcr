## Interaction 0: GET /status

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
Content-Type: application/json
Content-Length: 141
```
### Response body recorded for playback (200: application/json):

```
{"connections":0,"version":"8.0.11-TiDB-v8.4.0","git_hash":"1a9f0fa25580907d3266dc3edf000ba24379a600","status":{"init_stats_percentage":100}}
```

## Interaction 1: GET /info

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
Content-Type: application/json
Content-Length: 315
```
### Response body recorded for playback (200: application/json):

```
{
 "is_owner": true,
 "max_procs": 1,
 "gogc": 100,
 "version": "8.0.11-TiDB-v8.4.0",
 "git_hash": "1a9f0fa25580907d3266dc3edf000ba24379a600",
 "ddl_id": "{{uuid-1}}",
 "ip": "10.0.0.1",
 "listening_port": 4000,
 "status_port": 10080,
 "lease": "45s",
 "start_timestamp": 946684800,
 "labels": {},
 "server_id": 0
}
```

## Interaction 2: GET /info/all

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
Content-Type: application/json
Content-Length: 422
```
### Response body recorded for playback (200: application/json):

```
{
 "servers_num": 1,
 "owner_id": "{{uuid-1}}",
 "is_all_server_version_consistent": true,
 "all_servers_info": {
  "{{uuid-1}}": {
   "version": "8.0.11-TiDB-v8.4.0",
   "git_hash": "1a9f0fa25580907d3266dc3edf000ba24379a600",
   "ddl_id": "{{uuid-1}}",
   "ip": "10.0.0.1",
   "listening_port": 4000,
   "status_port": 10080,
   "lease": "45s",
   "start_timestamp": 946684800,
   "labels": {},
   "server_id": 0
  }
 }
}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–2 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–2 |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | 1, 2 |
| collapsed | whole recording | `"ip": "[0-9.]+"` | `"ip": "10.0.0.1"` | 1, 2 |
| collapsed | whole recording | `"advertise-address": "[0-9.]+"` | `"advertise-address": "10.0.0.1"` | none |
| collapsed | whole recording | `"start_timestamp": [0-9]+` | `"start_timestamp": 946684800` | 1, 2 |
| collapsed | whole recording | `"max_procs": [0-9]+` | `"max_procs": 1` | 1 |
| collapsed | whole recording | `"connections":[0-9]+` | `"connections":0` | 0 |
| collapsed | whole recording | `"update_timestamp": [0-9]+` | `"update_timestamp": 450000000000000000` | none |
| collapsed | whole recording | `(?<=\n "id": )[0-9]+(?=,\n "name": \{\n  "O": "tcae_orders")` | `1001` | none |
| collapsed | whole recording | `(?<=\n "id": )[0-9]+(?=,\n "name": \{\n  "O": "tcae_customers")` | `1002` | none |
| collapsed | whole recording | `(?<=table_id=)[0-9]{3,4}(?![0-9])` | `1001` | none |
| collapsed | whole recording | `(?<=table_ids=)[0-9]{3,4}(?![0-9])` | `1001` | none |
| collapsed | whole recording | `\[\n \{\n  "id": [0-9]+,\n  "db_name": \{[\s\S]*?\n\]` | `[
 {
  "id": 1,
  "db_name": {
   "O": "mysql",
   "L": "mysql"
  },
  "charset": "utf8mb4",
  "collate": "utf8mb4_bin",
  "Deprecated": {},
  "state": 5,
  "policy_ref_info": null
 },
 {
  "id": 2,
  "db_name": {
   "O": "test",
   "L": "test"
  },
  "charset": "utf8mb4",
  "collate": "utf8mb4_bin",
  "Deprecated": {},
  "state": 5,
  "policy_ref_info": null
 },
 {
  "id": 102,
  "db_name": {
   "O": "sys",
   "L": "sys"
  },
  "charset": "utf8mb4",
  "collate": "utf8mb4_bin",
  "Deprecated": {},
  "state": 5,
  "policy_ref_info": null
 },
 {
  "id": 110,
  "db_name": {
   "O": "tcae_shop",
   "L": "tcae_shop"
  },
  "charset": "utf8mb4",
  "collate": "utf8mb4_bin",
  "Deprecated": {},
  "state": 5,
  "policy_ref_info": null
 },
 {
  "id": 4611686018427387905,
  "db_name": {
   "O": "INFORMATION_SCHEMA",
   "L": "information_schema"
  },
  "charset": "utf8mb4",
  "collate": "utf8mb4_bin",
  "Deprecated": {},
  "state": 0,
  "policy_ref_info": null
 },
 {
  "id": 4611686018427397904,
  "db_name": {
   "O": "PERFORMANCE_SCHEMA",
   "L": "performance_schema"
  },
  "charset": "utf8mb4",
  "collate": "utf8mb4_bin",
  "Deprecated": {},
  "state": 0,
  "policy_ref_info": null
 },
 {
  "id": 4611686018427407904,
  "db_name": {
   "O": "METRICS_SCHEMA",
   "L": "metrics_schema"
  },
  "charset": "utf8mb4",
  "collate": "utf8mb4_bin",
  "Deprecated": {},
  "state": 0,
  "policy_ref_info": null
 }
]` | none |
