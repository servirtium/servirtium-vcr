## Interaction 0: GET /api/v1/tables

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
Content-Type: text/plain
Content-Length: 136158
X-Content-Type-Options: nosniff
Access-Control-Allow-Origin: *
```
### Response body recorded for playback (200: text/plain):

```
{
  "user": [
    {
      "keyspace": "yugabyte",
      "table_name": "tcae_sql",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000004000",
      "ysql_oid": "16384",
      "hidden": false,
      "on_disk_size": {
        "wal_files_size": "X",
        "wal_files_size_bytes": 0,
        "sst_files_size": "X",
        "sst_files_size_bytes": 0,
        "uncompressed_sst_file_size": "X",
        "uncompressed_sst_file_size_bytes": 0,
        "has_missing_size": false
      }
    },
    {
      "keyspace": "tcae_ks",
      "table_name": "items",
      "state": "RUNNING",
      "message": "",
      "uuid": "{{uuid-1}}",
      "ysql_oid": "",
      "hidden": false,
      "on_disk_size": {
        "wal_files_size": "X",
        "wal_files_size_bytes": 0,
        "sst_files_size": "X",
        "sst_files_size_bytes": 0,
        "uncompressed_sst_file_size": "X",
        "uncompressed_sst_file_size_bytes": 0,
        "has_missing_size": false
      }
    }
  ],
  "index": [],
  "system": [
    {
      "keyspace": "postgres",
      "table_name": "pg_aggregate",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a28",
      "ysql_oid": "2600",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_am",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a29",
      "ysql_oid": "2601",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_am_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a5b",
      "ysql_oid": "2651",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_amop",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a2a",
      "ysql_oid": "2602",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_amop_fam_strat_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a5d",
      "ysql_oid": "2653",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_amop_opr_fam_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a5e",
      "ysql_oid": "2654",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_amproc",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a2b",
      "ysql_oid": "2603",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_amproc_fam_proc_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a5f",
      "ysql_oid": "2655",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_attrdef",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a2c",
      "ysql_oid": "2604",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_attrdef_adrelid_adnum_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a60",
      "ysql_oid": "2656",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_attribute",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c10000300080000000000004e1",
      "ysql_oid": "1249",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_attribute_relid_attnam_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a62",
      "ysql_oid": "2658",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_cast",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a2d",
      "ysql_oid": "2605",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_cast_source_target_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a65",
      "ysql_oid": "2661",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_class",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c10000300080000000000004eb",
      "ysql_oid": "1259",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_class_relname_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a67",
      "ysql_oid": "2663",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_class_tblspc_relfilenode_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000d7f",
      "ysql_oid": "3455",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_collation",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000d80",
      "ysql_oid": "3456",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_collation_name_enc_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000c5c",
      "ysql_oid": "3164",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_constraint",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a2e",
      "ysql_oid": "2606",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_constraint_conname_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a68",
      "ysql_oid": "2664",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_constraint_conparentid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a13",
      "ysql_oid": "2579",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_constraint_conrelid_contypid_conname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a69",
      "ysql_oid": "2665",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_constraint_contypid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a6a",
      "ysql_oid": "2666",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_conversion",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a2f",
      "ysql_oid": "2607",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_conversion_default_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a6c",
      "ysql_oid": "2668",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_conversion_name_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a6d",
      "ysql_oid": "2669",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_default_acl",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c100003000800000000000033a",
      "ysql_oid": "826",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_default_acl_role_nsp_obj_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c100003000800000000000033b",
      "ysql_oid": "827",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_depend",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a30",
      "ysql_oid": "2608",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_depend_depender_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a71",
      "ysql_oid": "2673",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_depend_reference_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a72",
      "ysql_oid": "2674",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_description",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a31",
      "ysql_oid": "2609",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_enum",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000dad",
      "ysql_oid": "3501",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_enum_typid_label_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000daf",
      "ysql_oid": "3503",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_enum_typid_sortorder_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000dce",
      "ysql_oid": "3534",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_event_trigger",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000d8a",
      "ysql_oid": "3466",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_event_trigger_evtname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000d8b",
      "ysql_oid": "3467",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_extension",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000c07",
      "ysql_oid": "3079",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_extension_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000c09",
      "ysql_oid": "3081",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_foreign_data_wrapper",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000918",
      "ysql_oid": "2328",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_foreign_data_wrapper_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000224",
      "ysql_oid": "548",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_foreign_server",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000589",
      "ysql_oid": "1417",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_foreign_server_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000225",
      "ysql_oid": "549",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_foreign_table",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000c2e",
      "ysql_oid": "3118",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a32",
      "ysql_oid": "2610",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_index_indrelid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a76",
      "ysql_oid": "2678",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_inherits",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a33",
      "ysql_oid": "2611",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_inherits_parent_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c100003000800000000000088b",
      "ysql_oid": "2187",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_init_privs",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000d42",
      "ysql_oid": "3394",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_language",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a34",
      "ysql_oid": "2612",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_language_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a79",
      "ysql_oid": "2681",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_largeobject",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a35",
      "ysql_oid": "2613",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_largeobject_metadata",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000bb3",
      "ysql_oid": "2995",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_namespace",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a37",
      "ysql_oid": "2615",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_namespace_nspname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a7c",
      "ysql_oid": "2684",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_opclass",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a38",
      "ysql_oid": "2616",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_opclass_am_name_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a7e",
      "ysql_oid": "2686",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_operator",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a39",
      "ysql_oid": "2617",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_operator_oprname_l_r_n_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a81",
      "ysql_oid": "2689",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_opfamily",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000ac1",
      "ysql_oid": "2753",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_opfamily_am_name_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000ac2",
      "ysql_oid": "2754",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_partitioned_table",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000d16",
      "ysql_oid": "3350",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_policy",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000cb8",
      "ysql_oid": "3256",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_policy_polrelid_polname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000cba",
      "ysql_oid": "3258",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_proc",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c10000300080000000000004e7",
      "ysql_oid": "1255",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_proc_proname_args_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a83",
      "ysql_oid": "2691",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_publication",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c10000300080000000000017d8",
      "ysql_oid": "6104",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_publication_pubname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c10000300080000000000017df",
      "ysql_oid": "6111",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_publication_rel",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c10000300080000000000017da",
      "ysql_oid": "6106",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_publication_rel_prrelid_prpubid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c10000300080000000000017e1",
      "ysql_oid": "6113",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_range",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000dd5",
      "ysql_oid": "3541",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_rewrite",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a3a",
      "ysql_oid": "2618",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_rewrite_rel_rulename_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a85",
      "ysql_oid": "2693",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_seclabel",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000e0c",
      "ysql_oid": "3596",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_sequence",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c10000300080000000000008b0",
      "ysql_oid": "2224",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_statistic",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a3b",
      "ysql_oid": "2619",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_statistic_ext",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000d35",
      "ysql_oid": "3381",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_statistic_ext_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000f9d",
      "ysql_oid": "3997",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_statistic_ext_relid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000d33",
      "ysql_oid": "3379",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_subscription_rel",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c10000300080000000000017d6",
      "ysql_oid": "6102",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_transform",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000df8",
      "ysql_oid": "3576",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_transform_type_lang_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000df7",
      "ysql_oid": "3575",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_trigger",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a3c",
      "ysql_oid": "2620",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_trigger_tgconstraint_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a8b",
      "ysql_oid": "2699",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_trigger_tgrelid_tgname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a8d",
      "ysql_oid": "2701",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_ts_config",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000e12",
      "ysql_oid": "3602",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_ts_config_cfgname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000e18",
      "ysql_oid": "3608",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_ts_config_map",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000e13",
      "ysql_oid": "3603",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_ts_dict",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000e10",
      "ysql_oid": "3600",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_ts_dict_dictname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000e14",
      "ysql_oid": "3604",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_ts_parser",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000e11",
      "ysql_oid": "3601",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_ts_parser_prsname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000e16",
      "ysql_oid": "3606",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_ts_template",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000eb4",
      "ysql_oid": "3764",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_ts_template_tmplname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000eb6",
      "ysql_oid": "3766",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_type",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c10000300080000000000004df",
      "ysql_oid": "1247",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_type_typname_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000000a90",
      "ysql_oid": "2704",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_user_mapping",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c100003000800000000000058a",
      "ysql_oid": "1418",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_user_mapping_user_server_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c10000300080000000000000af",
      "ysql_oid": "175",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_yb_migration",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000001f5b",
      "ysql_oid": "8027",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "pg_yb_tablegroup",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000001f64",
      "ysql_oid": "8036",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "sql_features",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000003343",
      "ysql_oid": "13123",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "sql_implementation_info",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000003345",
      "ysql_oid": "13125",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "sql_languages",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000003347",
      "ysql_oid": "13127",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "sql_packages",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c1000030008000000000003349",
      "ysql_oid": "13129",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "sql_parts",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c100003000800000000000334b",
      "ysql_oid": "13131",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "sql_sizing",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c100003000800000000000334d",
      "ysql_oid": "13133",
      "hidden": false
    },
    {
      "keyspace": "postgres",
      "table_name": "sql_sizing_profiles",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c100003000800000000000334f",
      "ysql_oid": "13135",
      "hidden": false
    },
    {
      "keyspace": "system",
      "table_name": "local",
      "state": "RUNNING",
      "message": "",
      "uuid": "{{uuid-2}}",
      "ysql_oid": "",
      "hidden": false
    },
    {
      "keyspace": "system",
      "table_name": "metrics",
      "state": "RUNNING",
      "message": "",
      "uuid": "{{uuid-3}}",
      "ysql_oid": "",
      "hidden": false
    },
    {
      "keyspace": "system",
      "table_name": "partitions",
      "state": "RUNNING",
      "message": "",
      "uuid": "{{uuid-4}}",
      "ysql_oid": "",
      "hidden": false
    },
    {
      "keyspace": "system",
      "table_name": "peers",
      "state": "RUNNING",
      "message": "",
      "uuid": "{{uuid-5}}",
      "ysql_oid": "",
      "hidden": false
    },
    {
      "keyspace": "system",
      "table_name": "size_estimates",
      "state": "RUNNING",
      "message": "",
      "uuid": "{{uuid-6}}",
      "ysql_oid": "",
      "hidden": false
    },
    {
      "keyspace": "system",
      "table_name": "transactions",
      "state": "RUNNING",
      "message": "",
      "uuid": "{{uuid-7}}",
      "ysql_oid": "",
      "hidden": false
    },
    {
      "keyspace": "system_auth",
      "table_name": "resource_role_permissions_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "{{uuid-8}}",
      "ysql_oid": "",
      "hidden": false
    },
    {
      "keyspace": "system_auth",
      "table_name": "role_permissions",
      "state": "RUNNING",
      "message": "",
      "uuid": "{{uuid-9}}",
      "ysql_oid": "",
      "hidden": false
    },
    {
      "keyspace": "system_auth",
      "table_name": "roles",
      "state": "RUNNING",
      "message": "",
      "uuid": "{{uuid-10}}",
      "ysql_oid": "",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_aggregate",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a28",
      "ysql_oid": "2600",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_am",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a29",
      "ysql_oid": "2601",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_am_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a5b",
      "ysql_oid": "2651",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_amop",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a2a",
      "ysql_oid": "2602",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_amop_fam_strat_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a5d",
      "ysql_oid": "2653",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_amop_opr_fam_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a5e",
      "ysql_oid": "2654",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_amproc",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a2b",
      "ysql_oid": "2603",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_amproc_fam_proc_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a5f",
      "ysql_oid": "2655",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_attrdef",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a2c",
      "ysql_oid": "2604",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_attrdef_adrelid_adnum_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a60",
      "ysql_oid": "2656",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_attribute",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c40000300080000000000004e1",
      "ysql_oid": "1249",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_attribute_relid_attnam_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a62",
      "ysql_oid": "2658",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_cast",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a2d",
      "ysql_oid": "2605",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_cast_source_target_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a65",
      "ysql_oid": "2661",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_class",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c40000300080000000000004eb",
      "ysql_oid": "1259",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_class_relname_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a67",
      "ysql_oid": "2663",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_class_tblspc_relfilenode_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000d7f",
      "ysql_oid": "3455",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_collation",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000d80",
      "ysql_oid": "3456",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_collation_name_enc_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000c5c",
      "ysql_oid": "3164",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_constraint",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a2e",
      "ysql_oid": "2606",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_constraint_conname_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a68",
      "ysql_oid": "2664",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_constraint_conparentid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a13",
      "ysql_oid": "2579",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_constraint_conrelid_contypid_conname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a69",
      "ysql_oid": "2665",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_constraint_contypid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a6a",
      "ysql_oid": "2666",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_conversion",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a2f",
      "ysql_oid": "2607",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_conversion_default_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a6c",
      "ysql_oid": "2668",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_conversion_name_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a6d",
      "ysql_oid": "2669",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_default_acl",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c400003000800000000000033a",
      "ysql_oid": "826",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_default_acl_role_nsp_obj_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c400003000800000000000033b",
      "ysql_oid": "827",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_depend",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a30",
      "ysql_oid": "2608",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_depend_depender_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a71",
      "ysql_oid": "2673",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_depend_reference_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a72",
      "ysql_oid": "2674",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_description",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a31",
      "ysql_oid": "2609",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_enum",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000dad",
      "ysql_oid": "3501",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_enum_typid_label_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000daf",
      "ysql_oid": "3503",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_enum_typid_sortorder_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000dce",
      "ysql_oid": "3534",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_event_trigger",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000d8a",
      "ysql_oid": "3466",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_event_trigger_evtname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000d8b",
      "ysql_oid": "3467",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_extension",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000c07",
      "ysql_oid": "3079",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_extension_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000c09",
      "ysql_oid": "3081",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_foreign_data_wrapper",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000918",
      "ysql_oid": "2328",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_foreign_data_wrapper_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000224",
      "ysql_oid": "548",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_foreign_server",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000589",
      "ysql_oid": "1417",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_foreign_server_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000225",
      "ysql_oid": "549",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_foreign_table",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000c2e",
      "ysql_oid": "3118",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a32",
      "ysql_oid": "2610",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_index_indrelid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a76",
      "ysql_oid": "2678",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_inherits",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a33",
      "ysql_oid": "2611",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_inherits_parent_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c400003000800000000000088b",
      "ysql_oid": "2187",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_init_privs",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000d42",
      "ysql_oid": "3394",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_language",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a34",
      "ysql_oid": "2612",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_language_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a79",
      "ysql_oid": "2681",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_largeobject",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a35",
      "ysql_oid": "2613",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_largeobject_metadata",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000bb3",
      "ysql_oid": "2995",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_namespace",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a37",
      "ysql_oid": "2615",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_namespace_nspname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a7c",
      "ysql_oid": "2684",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_opclass",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a38",
      "ysql_oid": "2616",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_opclass_am_name_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a7e",
      "ysql_oid": "2686",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_operator",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a39",
      "ysql_oid": "2617",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_operator_oprname_l_r_n_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a81",
      "ysql_oid": "2689",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_opfamily",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000ac1",
      "ysql_oid": "2753",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_opfamily_am_name_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000ac2",
      "ysql_oid": "2754",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_partitioned_table",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000d16",
      "ysql_oid": "3350",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_policy",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000cb8",
      "ysql_oid": "3256",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_policy_polrelid_polname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000cba",
      "ysql_oid": "3258",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_proc",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c40000300080000000000004e7",
      "ysql_oid": "1255",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_proc_proname_args_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a83",
      "ysql_oid": "2691",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_publication",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c40000300080000000000017d8",
      "ysql_oid": "6104",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_publication_pubname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c40000300080000000000017df",
      "ysql_oid": "6111",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_publication_rel",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c40000300080000000000017da",
      "ysql_oid": "6106",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_publication_rel_prrelid_prpubid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c40000300080000000000017e1",
      "ysql_oid": "6113",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_range",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000dd5",
      "ysql_oid": "3541",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_rewrite",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a3a",
      "ysql_oid": "2618",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_rewrite_rel_rulename_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a85",
      "ysql_oid": "2693",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_seclabel",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000e0c",
      "ysql_oid": "3596",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_sequence",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c40000300080000000000008b0",
      "ysql_oid": "2224",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_statistic",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a3b",
      "ysql_oid": "2619",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_statistic_ext",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000d35",
      "ysql_oid": "3381",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_statistic_ext_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000f9d",
      "ysql_oid": "3997",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_statistic_ext_relid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000d33",
      "ysql_oid": "3379",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_subscription_rel",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c40000300080000000000017d6",
      "ysql_oid": "6102",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_transform",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000df8",
      "ysql_oid": "3576",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_transform_type_lang_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000df7",
      "ysql_oid": "3575",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_trigger",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a3c",
      "ysql_oid": "2620",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_trigger_tgconstraint_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a8b",
      "ysql_oid": "2699",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_trigger_tgrelid_tgname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a8d",
      "ysql_oid": "2701",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_ts_config",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000e12",
      "ysql_oid": "3602",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_ts_config_cfgname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000e18",
      "ysql_oid": "3608",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_ts_config_map",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000e13",
      "ysql_oid": "3603",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_ts_dict",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000e10",
      "ysql_oid": "3600",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_ts_dict_dictname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000e14",
      "ysql_oid": "3604",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_ts_parser",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000e11",
      "ysql_oid": "3601",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_ts_parser_prsname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000e16",
      "ysql_oid": "3606",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_ts_template",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000eb4",
      "ysql_oid": "3764",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_ts_template_tmplname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000eb6",
      "ysql_oid": "3766",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_type",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c40000300080000000000004df",
      "ysql_oid": "1247",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_type_typname_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000000a90",
      "ysql_oid": "2704",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_user_mapping",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c400003000800000000000058a",
      "ysql_oid": "1418",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_user_mapping_user_server_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c40000300080000000000000af",
      "ysql_oid": "175",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_yb_migration",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000001f5b",
      "ysql_oid": "8027",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "pg_yb_tablegroup",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000001f64",
      "ysql_oid": "8036",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "sql_features",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000003343",
      "ysql_oid": "13123",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "sql_implementation_info",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000003345",
      "ysql_oid": "13125",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "sql_languages",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000003347",
      "ysql_oid": "13127",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "sql_packages",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c4000030008000000000003349",
      "ysql_oid": "13129",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "sql_parts",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c400003000800000000000334b",
      "ysql_oid": "13131",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "sql_sizing",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c400003000800000000000334d",
      "ysql_oid": "13133",
      "hidden": false
    },
    {
      "keyspace": "system_platform",
      "table_name": "sql_sizing_profiles",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c400003000800000000000334f",
      "ysql_oid": "13135",
      "hidden": false
    },
    {
      "keyspace": "system_schema",
      "table_name": "aggregates",
      "state": "RUNNING",
      "message": "",
      "uuid": "{{uuid-11}}",
      "ysql_oid": "",
      "hidden": false
    },
    {
      "keyspace": "system_schema",
      "table_name": "columns",
      "state": "RUNNING",
      "message": "",
      "uuid": "{{uuid-12}}",
      "ysql_oid": "",
      "hidden": false
    },
    {
      "keyspace": "system_schema",
      "table_name": "functions",
      "state": "RUNNING",
      "message": "",
      "uuid": "{{uuid-13}}",
      "ysql_oid": "",
      "hidden": false
    },
    {
      "keyspace": "system_schema",
      "table_name": "indexes",
      "state": "RUNNING",
      "message": "",
      "uuid": "{{uuid-14}}",
      "ysql_oid": "",
      "hidden": false
    },
    {
      "keyspace": "system_schema",
      "table_name": "keyspaces",
      "state": "RUNNING",
      "message": "",
      "uuid": "{{uuid-15}}",
      "ysql_oid": "",
      "hidden": false
    },
    {
      "keyspace": "system_schema",
      "table_name": "sys.catalog",
      "state": "RUNNING",
      "message": "",
      "uuid": "sys.catalog.uuid",
      "ysql_oid": "",
      "hidden": false
    },
    {
      "keyspace": "system_schema",
      "table_name": "tables",
      "state": "RUNNING",
      "message": "",
      "uuid": "{{uuid-16}}",
      "ysql_oid": "",
      "hidden": false
    },
    {
      "keyspace": "system_schema",
      "table_name": "triggers",
      "state": "RUNNING",
      "message": "",
      "uuid": "{{uuid-17}}",
      "ysql_oid": "",
      "hidden": false
    },
    {
      "keyspace": "system_schema",
      "table_name": "types",
      "state": "RUNNING",
      "message": "",
      "uuid": "{{uuid-18}}",
      "ysql_oid": "",
      "hidden": false
    },
    {
      "keyspace": "system_schema",
      "table_name": "views",
      "state": "RUNNING",
      "message": "",
      "uuid": "{{uuid-19}}",
      "ysql_oid": "",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_aggregate",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a28",
      "ysql_oid": "2600",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_am",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a29",
      "ysql_oid": "2601",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_am_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a5b",
      "ysql_oid": "2651",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_amop",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a2a",
      "ysql_oid": "2602",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_amop_fam_strat_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a5d",
      "ysql_oid": "2653",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_amop_opr_fam_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a5e",
      "ysql_oid": "2654",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_amproc",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a2b",
      "ysql_oid": "2603",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_amproc_fam_proc_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a5f",
      "ysql_oid": "2655",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_attrdef",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a2c",
      "ysql_oid": "2604",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_attrdef_adrelid_adnum_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a60",
      "ysql_oid": "2656",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_attribute",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c00000300080000000000004e1",
      "ysql_oid": "1249",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_attribute_relid_attnam_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a62",
      "ysql_oid": "2658",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_cast",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a2d",
      "ysql_oid": "2605",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_cast_source_target_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a65",
      "ysql_oid": "2661",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_class",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c00000300080000000000004eb",
      "ysql_oid": "1259",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_class_relname_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a67",
      "ysql_oid": "2663",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_class_tblspc_relfilenode_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000d7f",
      "ysql_oid": "3455",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_collation",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000d80",
      "ysql_oid": "3456",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_collation_name_enc_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000c5c",
      "ysql_oid": "3164",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_constraint",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a2e",
      "ysql_oid": "2606",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_constraint_conname_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a68",
      "ysql_oid": "2664",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_constraint_conparentid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a13",
      "ysql_oid": "2579",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_constraint_conrelid_contypid_conname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a69",
      "ysql_oid": "2665",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_constraint_contypid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a6a",
      "ysql_oid": "2666",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_conversion",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a2f",
      "ysql_oid": "2607",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_conversion_default_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a6c",
      "ysql_oid": "2668",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_conversion_name_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a6d",
      "ysql_oid": "2669",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_default_acl",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c000003000800000000000033a",
      "ysql_oid": "826",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_default_acl_role_nsp_obj_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c000003000800000000000033b",
      "ysql_oid": "827",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_depend",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a30",
      "ysql_oid": "2608",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_depend_depender_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a71",
      "ysql_oid": "2673",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_depend_reference_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a72",
      "ysql_oid": "2674",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_description",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a31",
      "ysql_oid": "2609",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_enum",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000dad",
      "ysql_oid": "3501",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_enum_typid_label_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000daf",
      "ysql_oid": "3503",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_enum_typid_sortorder_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000dce",
      "ysql_oid": "3534",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_event_trigger",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000d8a",
      "ysql_oid": "3466",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_event_trigger_evtname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000d8b",
      "ysql_oid": "3467",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_extension",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000c07",
      "ysql_oid": "3079",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_extension_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000c09",
      "ysql_oid": "3081",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_foreign_data_wrapper",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000918",
      "ysql_oid": "2328",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_foreign_data_wrapper_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000224",
      "ysql_oid": "548",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_foreign_server",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000589",
      "ysql_oid": "1417",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_foreign_server_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000225",
      "ysql_oid": "549",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_foreign_table",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000c2e",
      "ysql_oid": "3118",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a32",
      "ysql_oid": "2610",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_index_indrelid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a76",
      "ysql_oid": "2678",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_inherits",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a33",
      "ysql_oid": "2611",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_inherits_parent_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c000003000800000000000088b",
      "ysql_oid": "2187",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_init_privs",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000d42",
      "ysql_oid": "3394",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_language",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a34",
      "ysql_oid": "2612",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_language_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a79",
      "ysql_oid": "2681",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_largeobject",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a35",
      "ysql_oid": "2613",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_largeobject_metadata",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000bb3",
      "ysql_oid": "2995",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_namespace",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a37",
      "ysql_oid": "2615",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_namespace_nspname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a7c",
      "ysql_oid": "2684",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_opclass",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a38",
      "ysql_oid": "2616",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_opclass_am_name_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a7e",
      "ysql_oid": "2686",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_operator",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a39",
      "ysql_oid": "2617",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_operator_oprname_l_r_n_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a81",
      "ysql_oid": "2689",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_opfamily",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000ac1",
      "ysql_oid": "2753",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_opfamily_am_name_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000ac2",
      "ysql_oid": "2754",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_partitioned_table",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000d16",
      "ysql_oid": "3350",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_policy",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000cb8",
      "ysql_oid": "3256",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_policy_polrelid_polname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000cba",
      "ysql_oid": "3258",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_proc",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c00000300080000000000004e7",
      "ysql_oid": "1255",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_proc_proname_args_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a83",
      "ysql_oid": "2691",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_publication",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c00000300080000000000017d8",
      "ysql_oid": "6104",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_publication_pubname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c00000300080000000000017df",
      "ysql_oid": "6111",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_publication_rel",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c00000300080000000000017da",
      "ysql_oid": "6106",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_publication_rel_prrelid_prpubid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c00000300080000000000017e1",
      "ysql_oid": "6113",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_range",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000dd5",
      "ysql_oid": "3541",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_rewrite",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a3a",
      "ysql_oid": "2618",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_rewrite_rel_rulename_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a85",
      "ysql_oid": "2693",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_seclabel",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000e0c",
      "ysql_oid": "3596",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_sequence",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c00000300080000000000008b0",
      "ysql_oid": "2224",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_statistic",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a3b",
      "ysql_oid": "2619",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_statistic_ext",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000d35",
      "ysql_oid": "3381",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_statistic_ext_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000f9d",
      "ysql_oid": "3997",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_statistic_ext_relid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000d33",
      "ysql_oid": "3379",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_subscription_rel",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c00000300080000000000017d6",
      "ysql_oid": "6102",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_transform",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000df8",
      "ysql_oid": "3576",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_transform_type_lang_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000df7",
      "ysql_oid": "3575",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_trigger",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a3c",
      "ysql_oid": "2620",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_trigger_tgconstraint_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a8b",
      "ysql_oid": "2699",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_trigger_tgrelid_tgname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a8d",
      "ysql_oid": "2701",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_ts_config",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000e12",
      "ysql_oid": "3602",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_ts_config_cfgname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000e18",
      "ysql_oid": "3608",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_ts_config_map",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000e13",
      "ysql_oid": "3603",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_ts_dict",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000e10",
      "ysql_oid": "3600",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_ts_dict_dictname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000e14",
      "ysql_oid": "3604",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_ts_parser",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000e11",
      "ysql_oid": "3601",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_ts_parser_prsname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000e16",
      "ysql_oid": "3606",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_ts_template",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000eb4",
      "ysql_oid": "3764",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_ts_template_tmplname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000eb6",
      "ysql_oid": "3766",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_type",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c00000300080000000000004df",
      "ysql_oid": "1247",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_type_typname_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000000a90",
      "ysql_oid": "2704",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_user_mapping",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c000003000800000000000058a",
      "ysql_oid": "1418",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_user_mapping_user_server_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c00000300080000000000000af",
      "ysql_oid": "175",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_yb_migration",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000001f5b",
      "ysql_oid": "8027",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "pg_yb_tablegroup",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000001f64",
      "ysql_oid": "8036",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "sql_features",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000003343",
      "ysql_oid": "13123",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "sql_implementation_info",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000003345",
      "ysql_oid": "13125",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "sql_languages",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000003347",
      "ysql_oid": "13127",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "sql_packages",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c0000030008000000000003349",
      "ysql_oid": "13129",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "sql_parts",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c000003000800000000000334b",
      "ysql_oid": "13131",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "sql_sizing",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c000003000800000000000334d",
      "ysql_oid": "13133",
      "hidden": false
    },
    {
      "keyspace": "template0",
      "table_name": "sql_sizing_profiles",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c000003000800000000000334f",
      "ysql_oid": "13135",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_aggregate",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a28",
      "ysql_oid": "2600",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_am",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a29",
      "ysql_oid": "2601",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_am_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a5b",
      "ysql_oid": "2651",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_amop",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a2a",
      "ysql_oid": "2602",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_amop_fam_strat_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a5d",
      "ysql_oid": "2653",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_amop_opr_fam_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a5e",
      "ysql_oid": "2654",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_amproc",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a2b",
      "ysql_oid": "2603",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_amproc_fam_proc_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a5f",
      "ysql_oid": "2655",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_attrdef",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a2c",
      "ysql_oid": "2604",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_attrdef_adrelid_adnum_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a60",
      "ysql_oid": "2656",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_attribute",
      "state": "RUNNING",
      "message": "",
      "uuid": "000000010000300080000000000004e1",
      "ysql_oid": "1249",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_attribute_relid_attnam_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a62",
      "ysql_oid": "2658",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_auth_members",
      "state": "RUNNING",
      "message": "",
      "uuid": "000000010000300080000000000004ed",
      "ysql_oid": "1261",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_auth_members_member_role_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a87",
      "ysql_oid": "2695",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_authid",
      "state": "RUNNING",
      "message": "",
      "uuid": "000000010000300080000000000004ec",
      "ysql_oid": "1260",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_authid_rolname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a74",
      "ysql_oid": "2676",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_cast",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a2d",
      "ysql_oid": "2605",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_cast_source_target_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a65",
      "ysql_oid": "2661",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_class",
      "state": "RUNNING",
      "message": "",
      "uuid": "000000010000300080000000000004eb",
      "ysql_oid": "1259",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_class_relname_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a67",
      "ysql_oid": "2663",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_class_tblspc_relfilenode_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000d7f",
      "ysql_oid": "3455",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_collation",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000d80",
      "ysql_oid": "3456",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_collation_name_enc_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000c5c",
      "ysql_oid": "3164",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_constraint",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a2e",
      "ysql_oid": "2606",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_constraint_conname_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a68",
      "ysql_oid": "2664",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_constraint_conparentid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a13",
      "ysql_oid": "2579",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_constraint_conrelid_contypid_conname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a69",
      "ysql_oid": "2665",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_constraint_contypid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a6a",
      "ysql_oid": "2666",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_conversion",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a2f",
      "ysql_oid": "2607",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_conversion_default_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a6c",
      "ysql_oid": "2668",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_conversion_name_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a6d",
      "ysql_oid": "2669",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_database",
      "state": "RUNNING",
      "message": "",
      "uuid": "000000010000300080000000000004ee",
      "ysql_oid": "1262",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_database_datname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a6f",
      "ysql_oid": "2671",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_db_role_setting",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000b94",
      "ysql_oid": "2964",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_default_acl",
      "state": "RUNNING",
      "message": "",
      "uuid": "0000000100003000800000000000033a",
      "ysql_oid": "826",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_default_acl_role_nsp_obj_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "0000000100003000800000000000033b",
      "ysql_oid": "827",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_depend",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a30",
      "ysql_oid": "2608",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_depend_depender_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a71",
      "ysql_oid": "2673",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_depend_reference_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a72",
      "ysql_oid": "2674",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_description",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a31",
      "ysql_oid": "2609",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_enum",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000dad",
      "ysql_oid": "3501",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_enum_typid_label_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000daf",
      "ysql_oid": "3503",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_enum_typid_sortorder_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000dce",
      "ysql_oid": "3534",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_event_trigger",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000d8a",
      "ysql_oid": "3466",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_event_trigger_evtname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000d8b",
      "ysql_oid": "3467",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_extension",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000c07",
      "ysql_oid": "3079",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_extension_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000c09",
      "ysql_oid": "3081",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_foreign_data_wrapper",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000918",
      "ysql_oid": "2328",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_foreign_data_wrapper_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000224",
      "ysql_oid": "548",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_foreign_server",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000589",
      "ysql_oid": "1417",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_foreign_server_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000225",
      "ysql_oid": "549",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_foreign_table",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000c2e",
      "ysql_oid": "3118",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a32",
      "ysql_oid": "2610",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_index_indrelid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a76",
      "ysql_oid": "2678",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_inherits",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a33",
      "ysql_oid": "2611",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_inherits_parent_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "0000000100003000800000000000088b",
      "ysql_oid": "2187",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_init_privs",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000d42",
      "ysql_oid": "3394",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_language",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a34",
      "ysql_oid": "2612",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_language_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a79",
      "ysql_oid": "2681",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_largeobject",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a35",
      "ysql_oid": "2613",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_largeobject_metadata",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000bb3",
      "ysql_oid": "2995",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_namespace",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a37",
      "ysql_oid": "2615",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_namespace_nspname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a7c",
      "ysql_oid": "2684",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_opclass",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a38",
      "ysql_oid": "2616",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_opclass_am_name_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a7e",
      "ysql_oid": "2686",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_operator",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a39",
      "ysql_oid": "2617",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_operator_oprname_l_r_n_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a81",
      "ysql_oid": "2689",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_opfamily",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000ac1",
      "ysql_oid": "2753",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_opfamily_am_name_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000ac2",
      "ysql_oid": "2754",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_partitioned_table",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000d16",
      "ysql_oid": "3350",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_pltemplate",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000470",
      "ysql_oid": "1136",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_policy",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000cb8",
      "ysql_oid": "3256",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_policy_polrelid_polname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000cba",
      "ysql_oid": "3258",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_proc",
      "state": "RUNNING",
      "message": "",
      "uuid": "000000010000300080000000000004e7",
      "ysql_oid": "1255",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_proc_proname_args_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a83",
      "ysql_oid": "2691",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_publication",
      "state": "RUNNING",
      "message": "",
      "uuid": "000000010000300080000000000017d8",
      "ysql_oid": "6104",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_publication_pubname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000000010000300080000000000017df",
      "ysql_oid": "6111",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_publication_rel",
      "state": "RUNNING",
      "message": "",
      "uuid": "000000010000300080000000000017da",
      "ysql_oid": "6106",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_publication_rel_prrelid_prpubid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000000010000300080000000000017e1",
      "ysql_oid": "6113",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_range",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000dd5",
      "ysql_oid": "3541",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_replication_origin",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000001770",
      "ysql_oid": "6000",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_replication_origin_roname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000001772",
      "ysql_oid": "6002",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_rewrite",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a3a",
      "ysql_oid": "2618",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_rewrite_rel_rulename_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a85",
      "ysql_oid": "2693",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_seclabel",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000e0c",
      "ysql_oid": "3596",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_sequence",
      "state": "RUNNING",
      "message": "",
      "uuid": "000000010000300080000000000008b0",
      "ysql_oid": "2224",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_shdepend",
      "state": "RUNNING",
      "message": "",
      "uuid": "000000010000300080000000000004be",
      "ysql_oid": "1214",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_shdepend_depender_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000000010000300080000000000004d0",
      "ysql_oid": "1232",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_shdepend_reference_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000000010000300080000000000004d1",
      "ysql_oid": "1233",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_shdescription",
      "state": "RUNNING",
      "message": "",
      "uuid": "0000000100003000800000000000095c",
      "ysql_oid": "2396",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_shseclabel",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000e08",
      "ysql_oid": "3592",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_statistic",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a3b",
      "ysql_oid": "2619",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_statistic_ext",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000d35",
      "ysql_oid": "3381",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_statistic_ext_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000f9d",
      "ysql_oid": "3997",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_statistic_ext_relid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000d33",
      "ysql_oid": "3379",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_subscription",
      "state": "RUNNING",
      "message": "",
      "uuid": "000000010000300080000000000017d4",
      "ysql_oid": "6100",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_subscription_rel",
      "state": "RUNNING",
      "message": "",
      "uuid": "000000010000300080000000000017d6",
      "ysql_oid": "6102",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_subscription_subname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000000010000300080000000000017e3",
      "ysql_oid": "6115",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_tablespace",
      "state": "RUNNING",
      "message": "",
      "uuid": "000000010000300080000000000004bd",
      "ysql_oid": "1213",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_tablespace_spcname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a8a",
      "ysql_oid": "2698",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_transform",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000df8",
      "ysql_oid": "3576",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_transform_type_lang_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000df7",
      "ysql_oid": "3575",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_trigger",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a3c",
      "ysql_oid": "2620",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_trigger_tgconstraint_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a8b",
      "ysql_oid": "2699",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_trigger_tgrelid_tgname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a8d",
      "ysql_oid": "2701",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_ts_config",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000e12",
      "ysql_oid": "3602",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_ts_config_cfgname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000e18",
      "ysql_oid": "3608",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_ts_config_map",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000e13",
      "ysql_oid": "3603",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_ts_dict",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000e10",
      "ysql_oid": "3600",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_ts_dict_dictname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000e14",
      "ysql_oid": "3604",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_ts_parser",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000e11",
      "ysql_oid": "3601",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_ts_parser_prsname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000e16",
      "ysql_oid": "3606",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_ts_template",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000eb4",
      "ysql_oid": "3764",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_ts_template_tmplname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000eb6",
      "ysql_oid": "3766",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_type",
      "state": "RUNNING",
      "message": "",
      "uuid": "000000010000300080000000000004df",
      "ysql_oid": "1247",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_type_typname_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000000a90",
      "ysql_oid": "2704",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_user_mapping",
      "state": "RUNNING",
      "message": "",
      "uuid": "0000000100003000800000000000058a",
      "ysql_oid": "1418",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_user_mapping_user_server_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000000010000300080000000000000af",
      "ysql_oid": "175",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_yb_catalog_version",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000001f4a",
      "ysql_oid": "8010",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_yb_migration",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000001f5b",
      "ysql_oid": "8027",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_yb_profile",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000001f73",
      "ysql_oid": "8051",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_yb_profile_prfname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000001f79",
      "ysql_oid": "8057",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_yb_role_profile",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000001f76",
      "ysql_oid": "8054",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "pg_yb_tablegroup",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000001f64",
      "ysql_oid": "8036",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "sql_features",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000003343",
      "ysql_oid": "13123",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "sql_implementation_info",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000003345",
      "ysql_oid": "13125",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "sql_languages",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000003347",
      "ysql_oid": "13127",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "sql_packages",
      "state": "RUNNING",
      "message": "",
      "uuid": "00000001000030008000000000003349",
      "ysql_oid": "13129",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "sql_parts",
      "state": "RUNNING",
      "message": "",
      "uuid": "0000000100003000800000000000334b",
      "ysql_oid": "13131",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "sql_sizing",
      "state": "RUNNING",
      "message": "",
      "uuid": "0000000100003000800000000000334d",
      "ysql_oid": "13133",
      "hidden": false
    },
    {
      "keyspace": "template1",
      "table_name": "sql_sizing_profiles",
      "state": "RUNNING",
      "message": "",
      "uuid": "0000000100003000800000000000334f",
      "ysql_oid": "13135",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_aggregate",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a28",
      "ysql_oid": "2600",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_am",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a29",
      "ysql_oid": "2601",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_am_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a5b",
      "ysql_oid": "2651",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_amop",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a2a",
      "ysql_oid": "2602",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_amop_fam_strat_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a5d",
      "ysql_oid": "2653",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_amop_opr_fam_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a5e",
      "ysql_oid": "2654",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_amproc",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a2b",
      "ysql_oid": "2603",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_amproc_fam_proc_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a5f",
      "ysql_oid": "2655",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_attrdef",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a2c",
      "ysql_oid": "2604",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_attrdef_adrelid_adnum_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a60",
      "ysql_oid": "2656",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_attribute",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c30000300080000000000004e1",
      "ysql_oid": "1249",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_attribute_relid_attnam_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a62",
      "ysql_oid": "2658",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_cast",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a2d",
      "ysql_oid": "2605",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_cast_source_target_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a65",
      "ysql_oid": "2661",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_class",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c30000300080000000000004eb",
      "ysql_oid": "1259",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_class_relname_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a67",
      "ysql_oid": "2663",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_class_tblspc_relfilenode_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000d7f",
      "ysql_oid": "3455",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_collation",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000d80",
      "ysql_oid": "3456",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_collation_name_enc_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000c5c",
      "ysql_oid": "3164",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_constraint",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a2e",
      "ysql_oid": "2606",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_constraint_conname_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a68",
      "ysql_oid": "2664",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_constraint_conparentid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a13",
      "ysql_oid": "2579",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_constraint_conrelid_contypid_conname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a69",
      "ysql_oid": "2665",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_constraint_contypid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a6a",
      "ysql_oid": "2666",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_conversion",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a2f",
      "ysql_oid": "2607",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_conversion_default_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a6c",
      "ysql_oid": "2668",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_conversion_name_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a6d",
      "ysql_oid": "2669",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_default_acl",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c300003000800000000000033a",
      "ysql_oid": "826",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_default_acl_role_nsp_obj_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c300003000800000000000033b",
      "ysql_oid": "827",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_depend",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a30",
      "ysql_oid": "2608",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_depend_depender_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a71",
      "ysql_oid": "2673",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_depend_reference_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a72",
      "ysql_oid": "2674",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_description",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a31",
      "ysql_oid": "2609",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_enum",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000dad",
      "ysql_oid": "3501",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_enum_typid_label_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000daf",
      "ysql_oid": "3503",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_enum_typid_sortorder_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000dce",
      "ysql_oid": "3534",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_event_trigger",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000d8a",
      "ysql_oid": "3466",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_event_trigger_evtname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000d8b",
      "ysql_oid": "3467",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_extension",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000c07",
      "ysql_oid": "3079",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_extension_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000c09",
      "ysql_oid": "3081",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_foreign_data_wrapper",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000918",
      "ysql_oid": "2328",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_foreign_data_wrapper_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000224",
      "ysql_oid": "548",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_foreign_server",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000589",
      "ysql_oid": "1417",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_foreign_server_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000225",
      "ysql_oid": "549",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_foreign_table",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000c2e",
      "ysql_oid": "3118",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a32",
      "ysql_oid": "2610",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_index_indrelid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a76",
      "ysql_oid": "2678",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_inherits",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a33",
      "ysql_oid": "2611",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_inherits_parent_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c300003000800000000000088b",
      "ysql_oid": "2187",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_init_privs",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000d42",
      "ysql_oid": "3394",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_language",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a34",
      "ysql_oid": "2612",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_language_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a79",
      "ysql_oid": "2681",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_largeobject",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a35",
      "ysql_oid": "2613",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_largeobject_metadata",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000bb3",
      "ysql_oid": "2995",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_namespace",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a37",
      "ysql_oid": "2615",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_namespace_nspname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a7c",
      "ysql_oid": "2684",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_opclass",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a38",
      "ysql_oid": "2616",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_opclass_am_name_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a7e",
      "ysql_oid": "2686",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_operator",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a39",
      "ysql_oid": "2617",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_operator_oprname_l_r_n_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a81",
      "ysql_oid": "2689",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_opfamily",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000ac1",
      "ysql_oid": "2753",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_opfamily_am_name_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000ac2",
      "ysql_oid": "2754",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_partitioned_table",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000d16",
      "ysql_oid": "3350",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_policy",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000cb8",
      "ysql_oid": "3256",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_policy_polrelid_polname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000cba",
      "ysql_oid": "3258",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_proc",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c30000300080000000000004e7",
      "ysql_oid": "1255",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_proc_proname_args_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a83",
      "ysql_oid": "2691",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_publication",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c30000300080000000000017d8",
      "ysql_oid": "6104",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_publication_pubname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c30000300080000000000017df",
      "ysql_oid": "6111",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_publication_rel",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c30000300080000000000017da",
      "ysql_oid": "6106",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_publication_rel_prrelid_prpubid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c30000300080000000000017e1",
      "ysql_oid": "6113",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_range",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000dd5",
      "ysql_oid": "3541",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_rewrite",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a3a",
      "ysql_oid": "2618",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_rewrite_rel_rulename_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a85",
      "ysql_oid": "2693",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_seclabel",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000e0c",
      "ysql_oid": "3596",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_sequence",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c30000300080000000000008b0",
      "ysql_oid": "2224",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_statistic",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a3b",
      "ysql_oid": "2619",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_statistic_ext",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000d35",
      "ysql_oid": "3381",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_statistic_ext_name_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000f9d",
      "ysql_oid": "3997",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_statistic_ext_relid_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000d33",
      "ysql_oid": "3379",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_subscription_rel",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c30000300080000000000017d6",
      "ysql_oid": "6102",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_transform",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000df8",
      "ysql_oid": "3576",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_transform_type_lang_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000df7",
      "ysql_oid": "3575",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_trigger",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a3c",
      "ysql_oid": "2620",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_trigger_tgconstraint_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a8b",
      "ysql_oid": "2699",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_trigger_tgrelid_tgname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a8d",
      "ysql_oid": "2701",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_ts_config",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000e12",
      "ysql_oid": "3602",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_ts_config_cfgname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000e18",
      "ysql_oid": "3608",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_ts_config_map",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000e13",
      "ysql_oid": "3603",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_ts_dict",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000e10",
      "ysql_oid": "3600",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_ts_dict_dictname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000e14",
      "ysql_oid": "3604",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_ts_parser",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000e11",
      "ysql_oid": "3601",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_ts_parser_prsname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000e16",
      "ysql_oid": "3606",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_ts_template",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000eb4",
      "ysql_oid": "3764",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_ts_template_tmplname_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000eb6",
      "ysql_oid": "3766",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_type",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c30000300080000000000004df",
      "ysql_oid": "1247",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_type_typname_nsp_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000000a90",
      "ysql_oid": "2704",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_user_mapping",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c300003000800000000000058a",
      "ysql_oid": "1418",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_user_mapping_user_server_index",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c30000300080000000000000af",
      "ysql_oid": "175",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_yb_migration",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000001f5b",
      "ysql_oid": "8027",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "pg_yb_tablegroup",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000001f64",
      "ysql_oid": "8036",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "sql_features",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000003343",
      "ysql_oid": "13123",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "sql_implementation_info",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000003345",
      "ysql_oid": "13125",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "sql_languages",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000003347",
      "ysql_oid": "13127",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "sql_packages",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c3000030008000000000003349",
      "ysql_oid": "13129",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "sql_parts",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c300003000800000000000334b",
      "ysql_oid": "13131",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "sql_sizing",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c300003000800000000000334d",
      "ysql_oid": "13133",
      "hidden": false
    },
    {
      "keyspace": "yugabyte",
      "table_name": "sql_sizing_profiles",
      "state": "RUNNING",
      "message": "",
      "uuid": "000033c300003000800000000000334f",
      "ysql_oid": "13135",
      "hidden": false
    }
  ]
}
```

## Interaction 1: GET /api/v1/table?id={{uuid-1}}

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
Content-Type: text/plain
Content-Length: 816
X-Content-Type-Options: nosniff
Access-Control-Allow-Origin: *
```
### Response body recorded for playback (200: text/plain):

```
{"table_name":"tcae_ks.items","table_id":"{{uuid-1}}","table_version":0,"table_type":"YQL_TABLE_TYPE","table_state":"Running","table_state_message":"","table_replication_info":{"live_replicas":{"num_replicas":1,"placement_blocks":[{"cloud_info":{"placement_cloud":"cloud1","placement_region":"datacenter1","placement_zone":"rack1"},"min_num_replicas":1}],"placement_uuid":"{{uuid-20}}"}},"columns":[{"column":"id","id":"0","type":"int32 NOT NULL HASH"},{"column":"name","id":"1","type":"string NULLABLE VALUE"}],"tablets":[{"tablet_id":"{{uuid-21}}","partition":"hash_split: [0x0000, 0xFFFF]","split_depth":0,"state":"Running","hidden":"false","message":"Tablet reported with an active leader","locations":[{"uuid":"{{uuid-22}}","role":"LEADER","location":"http://{{ip-1}}:9000/tablet?id={{uuid-21}}"}]}],"Tasks":[]}
```

## Interaction 2: GET /api/v1/table?keyspace_name=tcae_ks&table_name=items

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
Content-Type: text/plain
Content-Length: 816
X-Content-Type-Options: nosniff
Access-Control-Allow-Origin: *
```
### Response body recorded for playback (200: text/plain):

```
{"table_name":"tcae_ks.items","table_id":"{{uuid-1}}","table_version":0,"table_type":"YQL_TABLE_TYPE","table_state":"Running","table_state_message":"","table_replication_info":{"live_replicas":{"num_replicas":1,"placement_blocks":[{"cloud_info":{"placement_cloud":"cloud1","placement_region":"datacenter1","placement_zone":"rack1"},"min_num_replicas":1}],"placement_uuid":"{{uuid-20}}"}},"columns":[{"column":"id","id":"0","type":"int32 NOT NULL HASH"},{"column":"name","id":"1","type":"string NULLABLE VALUE"}],"tablets":[{"tablet_id":"{{uuid-21}}","partition":"hash_split: [0x0000, 0xFFFF]","split_depth":0,"state":"Running","hidden":"false","message":"Tablet reported with an active leader","locations":[{"uuid":"{{uuid-22}}","role":"LEADER","location":"http://{{ip-1}}:9000/tablet?id={{uuid-21}}"}]}],"Tasks":[]}
```

## Interaction 3: GET /api/v1/table?id=000033c3000030008000000000004000

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
Content-Type: text/plain
Content-Length: 844
X-Content-Type-Options: nosniff
Access-Control-Allow-Origin: *
```
### Response body recorded for playback (200: text/plain):

```
{"table_name":"yugabyte.tcae_sql","table_id":"000033c3000030008000000000004000","table_version":0,"table_type":"PGSQL_TABLE_TYPE","table_state":"Running","table_state_message":"","table_replication_info":{"live_replicas":{"num_replicas":1,"placement_blocks":[{"cloud_info":{"placement_cloud":"cloud1","placement_region":"datacenter1","placement_zone":"rack1"},"min_num_replicas":1}],"placement_uuid":"{{uuid-20}}"}},"columns":[{"column":"id","id":"0","type":"int32 NOT NULL HASH"},{"column":"name","id":"1","type":"string NULLABLE VALUE"}],"tablets":[{"tablet_id":"{{uuid-23}}","partition":"hash_split: [0x0000, 0xFFFF]","split_depth":0,"state":"Running","hidden":"false","message":"Tablet reported with an active leader","locations":[{"uuid":"{{uuid-22}}","role":"LEADER","location":"http://{{ip-1}}:9000/tablet?id={{uuid-23}}"}]}],"Tasks":[]}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | none |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–3 |
| collapsed | whole recording | `"instance_seqno":-?[0-9][0-9.eE+-]*` | `"instance_seqno":0` | none |
| collapsed | whole recording | `"start_time_us":-?[0-9][0-9.eE+-]*` | `"start_time_us":0` | none |
| collapsed | whole recording | `"time_since_hb":"[^"]*"` | `"time_since_hb":"X"` | none |
| collapsed | whole recording | `"time_since_hb_sec":-?[0-9][0-9.eE+-]*` | `"time_since_hb_sec":0` | none |
| collapsed | whole recording | `"uptime_seconds":-?[0-9][0-9.eE+-]*` | `"uptime_seconds":0` | none |
| collapsed | whole recording | `"ram_used":"[^"]*"` | `"ram_used":"X"` | none |
| collapsed | whole recording | `"ram_used_bytes":-?[0-9][0-9.eE+-]*` | `"ram_used_bytes":0` | none |
| collapsed | whole recording | `"num_sst_files":-?[0-9][0-9.eE+-]*` | `"num_sst_files":0` | none |
| collapsed | whole recording | `"total_sst_file_size":"[^"]*"` | `"total_sst_file_size":"X"` | none |
| collapsed | whole recording | `"total_sst_file_size_bytes":-?[0-9][0-9.eE+-]*` | `"total_sst_file_size_bytes":0` | none |
| collapsed | whole recording | `"uncompressed_sst_file_size":"[^"]*"` | `"uncompressed_sst_file_size":"X"` | 0 |
| collapsed | whole recording | `"uncompressed_sst_file_size_bytes":-?[0-9][0-9.eE+-]*` | `"uncompressed_sst_file_size_bytes":0` | 0 |
| collapsed | whole recording | `"space_used":-?[0-9][0-9.eE+-]*` | `"space_used":0` | none |
| collapsed | whole recording | `"total_space_size":-?[0-9][0-9.eE+-]*` | `"total_space_size":0` | none |
| collapsed | whole recording | `"read_ops_per_sec":-?[0-9][0-9.eE+-]*` | `"read_ops_per_sec":0` | none |
| collapsed | whole recording | `"write_ops_per_sec":-?[0-9][0-9.eE+-]*` | `"write_ops_per_sec":0` | none |
| collapsed | whole recording | `"user_tablets_total":-?[0-9][0-9.eE+-]*` | `"user_tablets_total":0` | none |
| collapsed | whole recording | `"user_tablets_leaders":-?[0-9][0-9.eE+-]*` | `"user_tablets_leaders":0` | none |
| collapsed | whole recording | `"system_tablets_total":-?[0-9][0-9.eE+-]*` | `"system_tablets_total":0` | none |
| collapsed | whole recording | `"system_tablets_leaders":-?[0-9][0-9.eE+-]*` | `"system_tablets_leaders":0` | none |
| collapsed | whole recording | `"active_tablets":-?[0-9][0-9.eE+-]*` | `"active_tablets":0` | none |
| collapsed | whole recording | `"wal_files_size":"[^"]*"` | `"wal_files_size":"X"` | 0 |
| collapsed | whole recording | `"wal_files_size_bytes":-?[0-9][0-9.eE+-]*` | `"wal_files_size_bytes":0` | 0 |
| collapsed | whole recording | `"sst_files_size":"[^"]*"` | `"sst_files_size":"X"` | 0 |
| collapsed | whole recording | `"sst_files_size_bytes":-?[0-9][0-9.eE+-]*` | `"sst_files_size_bytes":0` | 0 |
| collapsed | whole recording | `"uncompressed_sst_files_size":"[^"]*"` | `"uncompressed_sst_files_size":"X"` | none |
| collapsed | whole recording | `"most_recent_uptime":-?[0-9][0-9.eE+-]*` | `"most_recent_uptime":0` | none |
| collapsed | whole recording | `"name":"mem_tracker_tcmalloc_gc_release_bytes","value":"[0-9]+"` | `"name":"mem_tracker_tcmalloc_gc_release_bytes","value":"0"` | none |
| collapsed | whole recording | `"name":"server_tcmalloc_max_total_thread_cache_bytes","value":"[0-9]+"` | `"name":"server_tcmalloc_max_total_thread_cache_bytes","value":"0"` | none |
| collapsed | whole recording | `"name":"default_memory_limit_to_ram_ratio","value":"[0-9.]+"` | `"name":"default_memory_limit_to_ram_ratio","value":"0"` | none |
| collapsed | whole recording | `"name":"metric_node_name","value":"[^"]*"` | `"name":"metric_node_name","value":"HOST:PORT"` | none |
| collapsed | whole recording | `"name":"heap_profile_path","value":"[^"]*"` | `"name":"heap_profile_path","value":"/tmp/yb-tserver.PID"` | none |
| collapsed | whole recording | `exported_instance="[^"]*"` | `exported_instance="HOST:PORT"` | none |
| collapsed | whole recording | `(?<=\} [0-9]{1,6} )1[0-9]{12}` | `1000000000000` | none |
| normalized | whole recording | `(?<![0-9a-fA-F-])[0-9a-f]{8}-?[0-9a-f]{4}-?4[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}(?![0-9a-fA-F-])` | `{{uuid-N}}` | 0–3 |
| normalized | whole recording | `(?<![0-9.])(?!127\.)[0-9]{1,3}(\.[0-9]{1,3}){3}(?![0-9.])` | `{{ip-N}}` | 1–3 |
| ordered | response body | JSON arrays at `/system`, requests matching `^/api/v1/tables$` | sorted by `/keyspace,/table_name` | 0 |
