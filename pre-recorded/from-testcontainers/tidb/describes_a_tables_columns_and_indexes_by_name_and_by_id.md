## Interaction 0: GET /schema/tcae_shop/tcae_orders

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
Transfer-Encoding: chunked
```
### Response body recorded for playback (200: application/json):

```
{
 "id": 1001,
 "name": {
  "O": "tcae_orders",
  "L": "tcae_orders"
 },
 "charset": "utf8mb4",
 "collate": "utf8mb4_bin",
 "cols": [
  {
   "id": 1,
   "name": {
    "O": "id",
    "L": "id"
   },
   "offset": 0,
   "origin_default": null,
   "origin_default_bit": null,
   "default": null,
   "default_bit": null,
   "default_is_expr": false,
   "generated_expr_string": "",
   "generated_stored": false,
   "dependences": null,
   "type": {
    "Tp": 8,
    "Flag": 515,
    "Flen": 20,
    "Decimal": 0,
    "Charset": "binary",
    "Collate": "binary",
    "Elems": null,
    "ElemsIsBinaryLit": null,
    "Array": false
   },
   "state": 5,
   "comment": "",
   "hidden": false,
   "change_state_info": null,
   "version": 2
  },
  {
   "id": 2,
   "name": {
    "O": "customer",
    "L": "customer"
   },
   "offset": 1,
   "origin_default": null,
   "origin_default_bit": null,
   "default": null,
   "default_bit": null,
   "default_is_expr": false,
   "generated_expr_string": "",
   "generated_stored": false,
   "dependences": null,
   "type": {
    "Tp": 15,
    "Flag": 4105,
    "Flen": 64,
    "Decimal": 0,
    "Charset": "utf8mb4",
    "Collate": "utf8mb4_bin",
    "Elems": null,
    "ElemsIsBinaryLit": null,
    "Array": false
   },
   "state": 5,
   "comment": "",
   "hidden": false,
   "change_state_info": null,
   "version": 2
  },
  {
   "id": 3,
   "name": {
    "O": "total",
    "L": "total"
   },
   "offset": 2,
   "origin_default": null,
   "origin_default_bit": null,
   "default": null,
   "default_bit": null,
   "default_is_expr": false,
   "generated_expr_string": "",
   "generated_stored": false,
   "dependences": null,
   "type": {
    "Tp": 246,
    "Flag": 0,
    "Flen": 10,
    "Decimal": 2,
    "Charset": "binary",
    "Collate": "binary",
    "Elems": null,
    "ElemsIsBinaryLit": null,
    "Array": false
   },
   "state": 5,
   "comment": "",
   "hidden": false,
   "change_state_info": null,
   "version": 2
  },
  {
   "id": 4,
   "name": {
    "O": "placed",
    "L": "placed"
   },
   "offset": 3,
   "origin_default": null,
   "origin_default_bit": null,
   "default": null,
   "default_bit": null,
   "default_is_expr": false,
   "generated_expr_string": "",
   "generated_stored": false,
   "dependences": null,
   "type": {
    "Tp": 12,
    "Flag": 128,
    "Flen": 19,
    "Decimal": 0,
    "Charset": "binary",
    "Collate": "binary",
    "Elems": null,
    "ElemsIsBinaryLit": null,
    "Array": false
   },
   "state": 5,
   "comment": "",
   "hidden": false,
   "change_state_info": null,
   "version": 2
  }
 ],
 "index_info": [
  {
   "id": 1,
   "idx_name": {
    "O": "idx_customer",
    "L": "idx_customer"
   },
   "tbl_name": {
    "O": "",
    "L": ""
   },
   "idx_cols": [
    {
     "name": {
      "O": "customer",
      "L": "customer"
     },
     "offset": 1,
     "length": -1
    }
   ],
   "state": 5,
   "backfill_state": 0,
   "comment": "",
   "index_type": 1,
   "is_unique": false,
   "is_primary": false,
   "is_invisible": false,
   "is_global": false,
   "mv_index": false,
   "vector_index": null
  }
 ],
 "constraint_info": null,
 "fk_info": null,
 "state": 5,
 "pk_is_handle": true,
 "is_common_handle": false,
 "common_handle_version": 0,
 "comment": "",
 "auto_inc_id": 0,
 "auto_id_cache": 0,
 "auto_rand_id": 0,
 "max_col_id": 4,
 "max_idx_id": 1,
 "max_fk_id": 0,
 "max_cst_id": 0,
 "update_timestamp": 450000000000000000,
 "ShardRowIDBits": 0,
 "max_shard_row_id_bits": 0,
 "auto_random_bits": 0,
 "auto_random_range_bits": 0,
 "pre_split_regions": 0,
 "partition": null,
 "compression": "",
 "view": null,
 "sequence": null,
 "Lock": null,
 "version": 5,
 "tiflash_replica": null,
 "is_columnar": false,
 "temp_table_type": 0,
 "cache_table_status": 0,
 "policy_ref_info": null,
 "stats_options": null,
 "exchange_partition_info": null,
 "ttl_info": null,
 "revision": 0
}
```

## Interaction 1: GET /schema/tcae_shop/tcae_customers

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
Transfer-Encoding: chunked
```
### Response body recorded for playback (200: application/json):

```
{
 "id": 1002,
 "name": {
  "O": "tcae_customers",
  "L": "tcae_customers"
 },
 "charset": "utf8mb4",
 "collate": "utf8mb4_bin",
 "cols": [
  {
   "id": 1,
   "name": {
    "O": "id",
    "L": "id"
   },
   "offset": 0,
   "origin_default": null,
   "origin_default_bit": null,
   "default": null,
   "default_bit": null,
   "default_is_expr": false,
   "generated_expr_string": "",
   "generated_stored": false,
   "dependences": null,
   "type": {
    "Tp": 3,
    "Flag": 4099,
    "Flen": 11,
    "Decimal": 0,
    "Charset": "binary",
    "Collate": "binary",
    "Elems": null,
    "ElemsIsBinaryLit": null,
    "Array": false
   },
   "state": 5,
   "comment": "",
   "hidden": false,
   "change_state_info": null,
   "version": 2
  },
  {
   "id": 2,
   "name": {
    "O": "email",
    "L": "email"
   },
   "offset": 1,
   "origin_default": null,
   "origin_default_bit": null,
   "default": null,
   "default_bit": null,
   "default_is_expr": false,
   "generated_expr_string": "",
   "generated_stored": false,
   "dependences": null,
   "type": {
    "Tp": 15,
    "Flag": 4101,
    "Flen": 128,
    "Decimal": 0,
    "Charset": "utf8mb4",
    "Collate": "utf8mb4_bin",
    "Elems": null,
    "ElemsIsBinaryLit": null,
    "Array": false
   },
   "state": 5,
   "comment": "",
   "hidden": false,
   "change_state_info": null,
   "version": 2
  }
 ],
 "index_info": [
  {
   "id": 1,
   "idx_name": {
    "O": "uq_email",
    "L": "uq_email"
   },
   "tbl_name": {
    "O": "",
    "L": ""
   },
   "idx_cols": [
    {
     "name": {
      "O": "email",
      "L": "email"
     },
     "offset": 1,
     "length": -1
    }
   ],
   "state": 5,
   "backfill_state": 0,
   "comment": "",
   "index_type": 1,
   "is_unique": true,
   "is_primary": false,
   "is_invisible": false,
   "is_global": false,
   "mv_index": false,
   "vector_index": null
  }
 ],
 "constraint_info": null,
 "fk_info": null,
 "state": 5,
 "pk_is_handle": true,
 "is_common_handle": false,
 "common_handle_version": 0,
 "comment": "",
 "auto_inc_id": 0,
 "auto_id_cache": 0,
 "auto_rand_id": 0,
 "max_col_id": 2,
 "max_idx_id": 1,
 "max_fk_id": 0,
 "max_cst_id": 0,
 "update_timestamp": 450000000000000000,
 "ShardRowIDBits": 0,
 "max_shard_row_id_bits": 0,
 "auto_random_bits": 0,
 "auto_random_range_bits": 0,
 "pre_split_regions": 0,
 "partition": null,
 "compression": "",
 "view": null,
 "sequence": null,
 "Lock": null,
 "version": 5,
 "tiflash_replica": null,
 "is_columnar": false,
 "temp_table_type": 0,
 "cache_table_status": 0,
 "policy_ref_info": null,
 "stats_options": null,
 "exchange_partition_info": null,
 "ttl_info": null,
 "revision": 0
}
```

## Interaction 2: GET /schema?table_id=1001

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
Transfer-Encoding: chunked
```
### Response body recorded for playback (200: application/json):

```
{
 "id": 1001,
 "name": {
  "O": "tcae_orders",
  "L": "tcae_orders"
 },
 "charset": "utf8mb4",
 "collate": "utf8mb4_bin",
 "cols": [
  {
   "id": 1,
   "name": {
    "O": "id",
    "L": "id"
   },
   "offset": 0,
   "origin_default": null,
   "origin_default_bit": null,
   "default": null,
   "default_bit": null,
   "default_is_expr": false,
   "generated_expr_string": "",
   "generated_stored": false,
   "dependences": null,
   "type": {
    "Tp": 8,
    "Flag": 515,
    "Flen": 20,
    "Decimal": 0,
    "Charset": "binary",
    "Collate": "binary",
    "Elems": null,
    "ElemsIsBinaryLit": null,
    "Array": false
   },
   "state": 5,
   "comment": "",
   "hidden": false,
   "change_state_info": null,
   "version": 2
  },
  {
   "id": 2,
   "name": {
    "O": "customer",
    "L": "customer"
   },
   "offset": 1,
   "origin_default": null,
   "origin_default_bit": null,
   "default": null,
   "default_bit": null,
   "default_is_expr": false,
   "generated_expr_string": "",
   "generated_stored": false,
   "dependences": null,
   "type": {
    "Tp": 15,
    "Flag": 4105,
    "Flen": 64,
    "Decimal": 0,
    "Charset": "utf8mb4",
    "Collate": "utf8mb4_bin",
    "Elems": null,
    "ElemsIsBinaryLit": null,
    "Array": false
   },
   "state": 5,
   "comment": "",
   "hidden": false,
   "change_state_info": null,
   "version": 2
  },
  {
   "id": 3,
   "name": {
    "O": "total",
    "L": "total"
   },
   "offset": 2,
   "origin_default": null,
   "origin_default_bit": null,
   "default": null,
   "default_bit": null,
   "default_is_expr": false,
   "generated_expr_string": "",
   "generated_stored": false,
   "dependences": null,
   "type": {
    "Tp": 246,
    "Flag": 0,
    "Flen": 10,
    "Decimal": 2,
    "Charset": "binary",
    "Collate": "binary",
    "Elems": null,
    "ElemsIsBinaryLit": null,
    "Array": false
   },
   "state": 5,
   "comment": "",
   "hidden": false,
   "change_state_info": null,
   "version": 2
  },
  {
   "id": 4,
   "name": {
    "O": "placed",
    "L": "placed"
   },
   "offset": 3,
   "origin_default": null,
   "origin_default_bit": null,
   "default": null,
   "default_bit": null,
   "default_is_expr": false,
   "generated_expr_string": "",
   "generated_stored": false,
   "dependences": null,
   "type": {
    "Tp": 12,
    "Flag": 128,
    "Flen": 19,
    "Decimal": 0,
    "Charset": "binary",
    "Collate": "binary",
    "Elems": null,
    "ElemsIsBinaryLit": null,
    "Array": false
   },
   "state": 5,
   "comment": "",
   "hidden": false,
   "change_state_info": null,
   "version": 2
  }
 ],
 "index_info": [
  {
   "id": 1,
   "idx_name": {
    "O": "idx_customer",
    "L": "idx_customer"
   },
   "tbl_name": {
    "O": "",
    "L": ""
   },
   "idx_cols": [
    {
     "name": {
      "O": "customer",
      "L": "customer"
     },
     "offset": 1,
     "length": -1
    }
   ],
   "state": 5,
   "backfill_state": 0,
   "comment": "",
   "index_type": 1,
   "is_unique": false,
   "is_primary": false,
   "is_invisible": false,
   "is_global": false,
   "mv_index": false,
   "vector_index": null
  }
 ],
 "constraint_info": null,
 "fk_info": null,
 "state": 5,
 "pk_is_handle": true,
 "is_common_handle": false,
 "common_handle_version": 0,
 "comment": "",
 "auto_inc_id": 0,
 "auto_id_cache": 0,
 "auto_rand_id": 0,
 "max_col_id": 4,
 "max_idx_id": 1,
 "max_fk_id": 0,
 "max_cst_id": 0,
 "update_timestamp": 450000000000000000,
 "ShardRowIDBits": 0,
 "max_shard_row_id_bits": 0,
 "auto_random_bits": 0,
 "auto_random_range_bits": 0,
 "pre_split_regions": 0,
 "partition": null,
 "compression": "",
 "view": null,
 "sequence": null,
 "Lock": null,
 "version": 5,
 "tiflash_replica": null,
 "is_columnar": false,
 "temp_table_type": 0,
 "cache_table_status": 0,
 "policy_ref_info": null,
 "stats_options": null,
 "exchange_partition_info": null,
 "ttl_info": null,
 "revision": 0
}
```

## Interaction 3: GET /schema?table_ids=1001

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
Transfer-Encoding: chunked
```
### Response body recorded for playback (200: application/json):

```
{
 "119": {
  "id": 119,
  "name": {
   "O": "tcae_orders",
   "L": "tcae_orders"
  },
  "charset": "utf8mb4",
  "collate": "utf8mb4_bin",
  "cols": [
   {
    "id": 1,
    "name": {
     "O": "id",
     "L": "id"
    },
    "offset": 0,
    "origin_default": null,
    "origin_default_bit": null,
    "default": null,
    "default_bit": null,
    "default_is_expr": false,
    "generated_expr_string": "",
    "generated_stored": false,
    "dependences": null,
    "type": {
     "Tp": 8,
     "Flag": 515,
     "Flen": 20,
     "Decimal": 0,
     "Charset": "binary",
     "Collate": "binary",
     "Elems": null,
     "ElemsIsBinaryLit": null,
     "Array": false
    },
    "state": 5,
    "comment": "",
    "hidden": false,
    "change_state_info": null,
    "version": 2
   },
   {
    "id": 2,
    "name": {
     "O": "customer",
     "L": "customer"
    },
    "offset": 1,
    "origin_default": null,
    "origin_default_bit": null,
    "default": null,
    "default_bit": null,
    "default_is_expr": false,
    "generated_expr_string": "",
    "generated_stored": false,
    "dependences": null,
    "type": {
     "Tp": 15,
     "Flag": 4105,
     "Flen": 64,
     "Decimal": 0,
     "Charset": "utf8mb4",
     "Collate": "utf8mb4_bin",
     "Elems": null,
     "ElemsIsBinaryLit": null,
     "Array": false
    },
    "state": 5,
    "comment": "",
    "hidden": false,
    "change_state_info": null,
    "version": 2
   },
   {
    "id": 3,
    "name": {
     "O": "total",
     "L": "total"
    },
    "offset": 2,
    "origin_default": null,
    "origin_default_bit": null,
    "default": null,
    "default_bit": null,
    "default_is_expr": false,
    "generated_expr_string": "",
    "generated_stored": false,
    "dependences": null,
    "type": {
     "Tp": 246,
     "Flag": 0,
     "Flen": 10,
     "Decimal": 2,
     "Charset": "binary",
     "Collate": "binary",
     "Elems": null,
     "ElemsIsBinaryLit": null,
     "Array": false
    },
    "state": 5,
    "comment": "",
    "hidden": false,
    "change_state_info": null,
    "version": 2
   },
   {
    "id": 4,
    "name": {
     "O": "placed",
     "L": "placed"
    },
    "offset": 3,
    "origin_default": null,
    "origin_default_bit": null,
    "default": null,
    "default_bit": null,
    "default_is_expr": false,
    "generated_expr_string": "",
    "generated_stored": false,
    "dependences": null,
    "type": {
     "Tp": 12,
     "Flag": 128,
     "Flen": 19,
     "Decimal": 0,
     "Charset": "binary",
     "Collate": "binary",
     "Elems": null,
     "ElemsIsBinaryLit": null,
     "Array": false
    },
    "state": 5,
    "comment": "",
    "hidden": false,
    "change_state_info": null,
    "version": 2
   }
  ],
  "index_info": [
   {
    "id": 1,
    "idx_name": {
     "O": "idx_customer",
     "L": "idx_customer"
    },
    "tbl_name": {
     "O": "",
     "L": ""
    },
    "idx_cols": [
     {
      "name": {
       "O": "customer",
       "L": "customer"
      },
      "offset": 1,
      "length": -1
     }
    ],
    "state": 5,
    "backfill_state": 0,
    "comment": "",
    "index_type": 1,
    "is_unique": false,
    "is_primary": false,
    "is_invisible": false,
    "is_global": false,
    "mv_index": false,
    "vector_index": null
   }
  ],
  "constraint_info": null,
  "fk_info": null,
  "state": 5,
  "pk_is_handle": true,
  "is_common_handle": false,
  "common_handle_version": 0,
  "comment": "",
  "auto_inc_id": 0,
  "auto_id_cache": 0,
  "auto_rand_id": 0,
  "max_col_id": 4,
  "max_idx_id": 1,
  "max_fk_id": 0,
  "max_cst_id": 0,
  "update_timestamp": 450000000000000000,
  "ShardRowIDBits": 0,
  "max_shard_row_id_bits": 0,
  "auto_random_bits": 0,
  "auto_random_range_bits": 0,
  "pre_split_regions": 0,
  "partition": null,
  "compression": "",
  "view": null,
  "sequence": null,
  "Lock": null,
  "version": 5,
  "tiflash_replica": null,
  "is_columnar": false,
  "temp_table_type": 0,
  "cache_table_status": 0,
  "policy_ref_info": null,
  "stats_options": null,
  "exchange_partition_info": null,
  "ttl_info": null,
  "revision": 0
 }
}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–3 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–3 |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | none |
| collapsed | whole recording | `"ip": "[0-9.]+"` | `"ip": "10.0.0.1"` | none |
| collapsed | whole recording | `"advertise-address": "[0-9.]+"` | `"advertise-address": "10.0.0.1"` | none |
| collapsed | whole recording | `"start_timestamp": [0-9]+` | `"start_timestamp": 946684800` | none |
| collapsed | whole recording | `"max_procs": [0-9]+` | `"max_procs": 1` | none |
| collapsed | whole recording | `"connections":[0-9]+` | `"connections":0` | none |
| collapsed | whole recording | `"update_timestamp": [0-9]+` | `"update_timestamp": 450000000000000000` | 0–3 |
| collapsed | whole recording | `(?<=\n "id": )[0-9]+(?=,\n "name": \{\n  "O": "tcae_orders")` | `1001` | 0, 2 |
| collapsed | whole recording | `(?<=\n "id": )[0-9]+(?=,\n "name": \{\n  "O": "tcae_customers")` | `1002` | 1 |
| collapsed | whole recording | `(?<=table_id=)[0-9]{3,4}(?![0-9])` | `1001` | 2 |
| collapsed | whole recording | `(?<=table_ids=)[0-9]{3,4}(?![0-9])` | `1001` | 3 |
| collapsed | whole recording | `(?<=\n  "id": )[0-9]+(?=,\n  "db_name": \{\n   "O": "tcae_shop")` | `110` | none |
| ordered | response body | the root array | sorted by `/db_name/L` | none |
