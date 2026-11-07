## LICENSE NOTICE

CockroachDB v23.1.30 is under the CockroachDB Software License (Cockroach Labs, Inc.; /licenses/LICENSE in the image cockroachdb/cockroach:v23.1.30). These tapes record a single-node test cluster, the 'Limited Non-Production Use' the licence allows without a licence key (testing, one node).

The licence has no clause against reverse engineering and none against recording or publishing HTTP responses. It does forbid circumventing its Protective Measures (licence-key and telemetry requirements), forbids removing the Licensor's notices, and defines 'Benchmark' as any benchmark, comparative test or evaluation of the Software, to be disclosed with the information needed to replicate it. Honour those terms as you would if you ran the image, and do not use these tapes as an evaluation or comparison of CockroachDB. See UPSTREAM-TERMS.md.

## Interaction 0: GET /api/v2/databases/tcae_shop/tables/orders/

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Cockroach-API-Session: X_COCKROACH_API_SESSION_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Cache-Control: no-cache
Content-Type: application/json
Vary: Accept-Encoding
```
### Response body recorded for playback (200: application/json):

```
{"grants":[{"user":"admin","privileges":["ALL"]},{"user":"root","privileges":["ALL"]},{"user":"tcaeuser","privileges":["ALL"]}],"columns":[{"name":"id","type":"INT8"},{"name":"customer","type":"STRING"},{"name":"total","type":"DECIMAL(10,2)","nullable":true},{"name":"placed","type":"TIMESTAMP","nullable":true}],"indexes":[{"name":"idx_customer","seq":1,"column":"customer","direction":"ASC"},{"name":"idx_customer","seq":2,"column":"id","direction":"ASC","implicit":true},{"name":"orders_pkey","unique":true,"seq":1,"column":"id","direction":"ASC"},{"name":"orders_pkey","unique":true,"seq":2,"column":"customer","direction":"N/A","storing":true},{"name":"orders_pkey","unique":true,"seq":3,"column":"total","direction":"N/A","storing":true},{"name":"orders_pkey","unique":true,"seq":4,"column":"placed","direction":"N/A","storing":true}],"range_count":1,"create_table_statement":"CREATE TABLE public.orders (\n\tid INT8 NOT NULL,\n\tcustomer STRING NOT NULL,\n\ttotal DECIMAL(10,2) NULL,\n\tplaced TIMESTAMP NULL,\n\tCONSTRAINT orders_pkey PRIMARY KEY (id ASC),\n\tINDEX idx_customer (customer ASC)\n)","zone_config":{"range_min_bytes":134217728,"range_max_bytes":536870912,"gc":{"ttl_seconds":14400},"num_replicas":3,"constraints":null,"voter_constraints":null,"inherited_constraints":false,"null_voter_constraints_is_empty":true,"lease_preferences":null,"inherited_lease_preferences":false,"subzones":null,"subzone_spans":null},"zone_config_level":1,"descriptor_id":100,"configure_zone_statement":"ALTER RANGE default CONFIGURE ZONE USING\n\trange_min_bytes = 134217728,\n\trange_max_bytes = 536870912,\n\tgc.ttlseconds = 600,\n\tnum_replicas = 1,\n\tconstraints = '[]',\n\tlease_preferences = '[]'"}
```

## Interaction 1: GET /api/v2/databases/tcae_shop/tables/public.orders/

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Cockroach-API-Session: X_COCKROACH_API_SESSION_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Cache-Control: no-cache
Content-Type: application/json
Vary: Accept-Encoding
```
### Response body recorded for playback (200: application/json):

```
{"grants":[{"user":"admin","privileges":["ALL"]},{"user":"root","privileges":["ALL"]},{"user":"tcaeuser","privileges":["ALL"]}],"columns":[{"name":"id","type":"INT8"},{"name":"customer","type":"STRING"},{"name":"total","type":"DECIMAL(10,2)","nullable":true},{"name":"placed","type":"TIMESTAMP","nullable":true}],"indexes":[{"name":"idx_customer","seq":1,"column":"customer","direction":"ASC"},{"name":"idx_customer","seq":2,"column":"id","direction":"ASC","implicit":true},{"name":"orders_pkey","unique":true,"seq":1,"column":"id","direction":"ASC"},{"name":"orders_pkey","unique":true,"seq":2,"column":"customer","direction":"N/A","storing":true},{"name":"orders_pkey","unique":true,"seq":3,"column":"total","direction":"N/A","storing":true},{"name":"orders_pkey","unique":true,"seq":4,"column":"placed","direction":"N/A","storing":true}],"range_count":1,"create_table_statement":"CREATE TABLE public.orders (\n\tid INT8 NOT NULL,\n\tcustomer STRING NOT NULL,\n\ttotal DECIMAL(10,2) NULL,\n\tplaced TIMESTAMP NULL,\n\tCONSTRAINT orders_pkey PRIMARY KEY (id ASC),\n\tINDEX idx_customer (customer ASC)\n)","zone_config":{"range_min_bytes":134217728,"range_max_bytes":536870912,"gc":{"ttl_seconds":14400},"num_replicas":3,"constraints":null,"voter_constraints":null,"inherited_constraints":false,"null_voter_constraints_is_empty":true,"lease_preferences":null,"inherited_lease_preferences":false,"subzones":null,"subzone_spans":null},"zone_config_level":1,"descriptor_id":100,"configure_zone_statement":"ALTER RANGE default CONFIGURE ZONE USING\n\trange_min_bytes = 134217728,\n\trange_max_bytes = 536870912,\n\tgc.ttlseconds = 600,\n\tnum_replicas = 1,\n\tconstraints = '[]',\n\tlease_preferences = '[]'"}
```

## Interaction 2: GET /api/v2/databases/tcae_shop/tables/customers/

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Cockroach-API-Session: X_COCKROACH_API_SESSION_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Cache-Control: no-cache
Content-Type: application/json
Vary: Accept-Encoding
```
### Response body recorded for playback (200: application/json):

```
{"grants":[{"user":"admin","privileges":["ALL"]},{"user":"root","privileges":["ALL"]},{"user":"tcaeuser","privileges":["ALL"]}],"columns":[{"name":"id","type":"INT8"},{"name":"email","type":"STRING"}],"indexes":[{"name":"customers_email_key","unique":true,"seq":1,"column":"email","direction":"ASC"},{"name":"customers_email_key","unique":true,"seq":2,"column":"id","direction":"ASC","storing":true,"implicit":true},{"name":"customers_pkey","unique":true,"seq":1,"column":"id","direction":"ASC"},{"name":"customers_pkey","unique":true,"seq":2,"column":"email","direction":"N/A","storing":true}],"range_count":1,"create_table_statement":"CREATE TABLE public.customers (\n\tid INT8 NOT NULL,\n\temail STRING NOT NULL,\n\tCONSTRAINT customers_pkey PRIMARY KEY (id ASC),\n\tUNIQUE INDEX customers_email_key (email ASC)\n)","zone_config":{"range_min_bytes":134217728,"range_max_bytes":536870912,"gc":{"ttl_seconds":14400},"num_replicas":3,"constraints":null,"voter_constraints":null,"inherited_constraints":false,"null_voter_constraints_is_empty":true,"lease_preferences":null,"inherited_lease_preferences":false,"subzones":null,"subzone_spans":null},"zone_config_level":1,"descriptor_id":100,"configure_zone_statement":"ALTER RANGE default CONFIGURE ZONE USING\n\trange_min_bytes = 134217728,\n\trange_max_bytes = 536870912,\n\tgc.ttlseconds = 600,\n\tnum_replicas = 1,\n\tconstraints = '[]',\n\tlease_preferences = '[]'"}
```

## Interaction 3: GET /api/v2/databases/tcae_shop/tables/nope/

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Cockroach-API-Session: X_COCKROACH_API_SESSION_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Cache-Control: no-cache
Content-Type: text/plain; charset=utf-8
Vary: Accept-Encoding
X-Content-Type-Options: nosniff
```
### Response body recorded for playback (404: text/plain; charset=utf-8):

```
database or table not found

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–3 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `Content-Length` | (left out) | 0–3 |
| redacted credential | request and response headers | `X-Cockroach-API-Session` | `X_COCKROACH_API_SESSION_N` | 0–3 |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[tcaeuser]` | none |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[tcae_reader]` | none |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[wrong-password]` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–3 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | none |
| collapsed | whole recording | `Timestamp\\":[0-9]+` | `Timestamp\\":946684800000000000` | none |
| collapsed | whole recording | `"unique_id":"[A-Za-z0-9+/]{22}=="` | `"unique_id":"AAAAAAAAAAAAAAAAAAAAAA=="` | none |
| collapsed | whole recording | `"id":"[A-Za-z0-9+/]{22}=="` | `"id":"AAAAAAAAAAAAAAAAAAAAAA=="` | none |
| collapsed | whole recording | `"client_address":"[0-9.:a-f]+"` | `"client_address":"10.0.0.1:50000"` | none |
| collapsed | whole recording | `"total_active_time":[0-9]+` | `"total_active_time":1000000` | none |
| collapsed | whole recording | `"descriptor_id":[0-9]+` | `"descriptor_id":100` | 0–2 |
| collapsed | whole recording | `"started_at":[0-9]+` | `"started_at":946684800000000000` | none |
| collapsed | whole recording | `"updated_at":[0-9]+` | `"updated_at":946684800000000000` | none |
| collapsed | whole recording | `"total_system_memory":[0-9]+` | `"total_system_memory":8589934592` | none |
| collapsed | whole recording | `"num_cpus":[0-9]+` | `"num_cpus":4` | none |
| collapsed | whole recording | `"metrics":\{[^{}]*\}` | `"metrics":{"liveness.livenodes":1}` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
