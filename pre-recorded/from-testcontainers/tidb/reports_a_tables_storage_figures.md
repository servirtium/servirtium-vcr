## Interaction 0: GET /schema_storage/tcae_shop

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
Content-Length: 427
```
### Response body recorded for playback (200: application/json):

```
[
  {
    "table_schema": "tcae_shop",
    "table_name": "tcae_orders",
    "table_rows": 0,
    "avg_row_length": 0,
    "data_length": 0,
    "max_data_length": 0,
    "index_length": 0,
    "data_free": 0
  },
  {
    "table_schema": "tcae_shop",
    "table_name": "tcae_customers",
    "table_rows": 0,
    "avg_row_length": 0,
    "data_length": 0,
    "max_data_length": 0,
    "index_length": 0,
    "data_free": 0
  }
]
```

## Interaction 1: GET /schema_storage/tcae_shop/tcae_orders

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
Content-Length: 189
```
### Response body recorded for playback (200: application/json):

```
{
  "table_schema": "tcae_shop",
  "table_name": "tcae_orders",
  "table_rows": 0,
  "avg_row_length": 0,
  "data_length": 0,
  "max_data_length": 0,
  "index_length": 0,
  "data_free": 0
}
```

## Interaction 2: GET /schema_storage/tcae_shop/nope

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
Content-Length: 49
Content-Type: text/plain; charset=utf-8
```
### Response body recorded for playback (400: text/plain; charset=utf-8):

```
[schema:1146]Table 'tcae_shop.nope' doesn't exist
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
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | none |
| collapsed | whole recording | `"ip": "[0-9.]+"` | `"ip": "10.0.0.1"` | none |
| collapsed | whole recording | `"advertise-address": "[0-9.]+"` | `"advertise-address": "10.0.0.1"` | none |
| collapsed | whole recording | `"start_timestamp": [0-9]+` | `"start_timestamp": 946684800` | none |
| collapsed | whole recording | `"max_procs": [0-9]+` | `"max_procs": 1` | none |
| collapsed | whole recording | `"connections":[0-9]+` | `"connections":0` | none |
| collapsed | whole recording | `"update_timestamp": [0-9]+` | `"update_timestamp": 450000000000000000` | none |
| collapsed | whole recording | `(?<=\n "id": )[0-9]+(?=,\n "name": \{\n  "O": "tcae_orders")` | `1001` | none |
| collapsed | whole recording | `(?<=\n "id": )[0-9]+(?=,\n "name": \{\n  "O": "tcae_customers")` | `1002` | none |
| collapsed | whole recording | `(?<=table_id=)[0-9]{3,4}(?![0-9])` | `1001` | none |
| collapsed | whole recording | `(?<=table_ids=)[0-9]{3,4}(?![0-9])` | `1001` | none |
| collapsed | whole recording | `(?<=\n  "id": )[0-9]+(?=,\n  "db_name": \{\n   "O": "tcae_shop")` | `110` | none |
| ordered | response body | the root array | sorted by `/db_name/L` | none |
