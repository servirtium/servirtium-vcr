## Interaction 0: GET /settings

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
 "host": "0.0.0.0",
 "advertise-address": "10.0.0.1",
 "port": 4000,
 "cors": "",
 "store": "unistore",
 "path": "/tmp/tidb",
 "socket": "/tmp/tidb-4000.sock",
 "lease": "45s",
 "split-table": true,
 "token-limit": 1000,
 "temp-dir": "/tmp/tidb",
 "tmp-storage-path": "/tmp/0_tidb/MC4wLjAuMDo0MDAwLzAuMC4wLjA6MTAwODA=/tmp-storage",
 "tmp-storage-quota": -1,
 "server-version": "",
 "version-comment": "",
 "tidb-edition": "",
 "tidb-release-version": "",
 "keyspace-name": "",
 "log": {
  "level": "info",
  "format": "text",
  "disable-timestamp": null,
  "enable-timestamp": null,
  "disable-error-stack": null,
  "enable-error-stack": null,
  "file": {
   "filename": "",
   "max-size": 300,
   "max-days": 0,
   "max-backups": 0,
   "compression": ""
  },
  "slow-query-file": "tidb-slow.log",
  "expensive-threshold": 10000,
  "general-log-file": "",
  "query-log-max-len": 4096,
  "enable-slow-log": true,
  "slow-threshold": 300,
  "record-plan-in-slow-log": 1,
  "timeout": 0
 },
 "instance": {
  "tidb_general_log": false,
  "tidb_pprof_sql_cpu": false,
  "ddl_slow_threshold": 300,
  "tidb_expensive_query_time_threshold": 60,
  "tidb_expensive_txn_time_threshold": 600,
  "tidb_stmt_summary_enable_persistent": false,
  "tidb_stmt_summary_filename": "tidb-statements.log",
  "tidb_stmt_summary_file_max_days": 3,
  "tidb_stmt_summary_file_max_size": 64,
  "tidb_stmt_summary_file_max_backups": 0,
  "tidb_enable_slow_log": true,
  "tidb_slow_log_threshold": 300,
  "tidb_record_plan_in_slow_log": 1,
  "tidb_check_mb4_value_in_utf8": true,
  "tidb_force_priority": "NO_PRIORITY",
  "tidb_memory_usage_alarm_ratio": 0.8,
  "tidb_enable_collect_execution_info": true,
  "plugin_dir": "/data/deploy/plugin",
  "plugin_load": "",
  "max_connections": 0,
  "tidb_enable_ddl": true,
  "tidb_enable_stats_owner": true,
  "tidb_rc_read_check_ts": false,
  "tidb_service_scope": ""
 },
 "security": {
  "skip-grant-table": false,
  "ssl-ca": "",
  "ssl-cert": "",
  "ssl-key": "",
  "cluster-ssl-ca": "",
  "cluster-ssl-cert": "",
  "cluster-ssl-key": "",
  "cluster-verify-cn": null,
  "session-token-signing-cert": "",
  "session-token-signing-key": "",
  "spilled-file-encryption-method": "plaintext",
  "enable-sem": false,
  "auto-tls": false,
  "tls-version": "",
  "rsa-key-size": 4096,
  "secure-bootstrap": false,
  "auth-token-jwks": "",
  "auth-token-refresh-interval": "1h0m0s",
  "disconnect-on-expired-password": true
 },
 "status": {
  "status-host": "0.0.0.0",
  "metrics-addr": "",
  "status-port": 10080,
  "metrics-interval": 15,
  "report-status": true,
  "record-db-qps": false,
  "record-db-label": false,
  "grpc-keepalive-time": 10,
  "grpc-keepalive-timeout": 3,
  "grpc-concurrent-streams": 1024,
  "grpc-initial-window-size": 2097152,
  "grpc-max-send-msg-size": 2147483647
 },
 "performance": {
  "max-procs": 0,
  "max-memory": 0,
  "server-memory-quota": 0,
  "stats-lease": "3s",
  "stmt-count-limit": 5000,
  "pseudo-estimate-ratio": 0.8,
  "bind-info-lease": "3s",
  "txn-entry-size-limit": 6291456,
  "txn-total-size-limit": 104857600,
  "tcp-keep-alive": true,
  "tcp-no-delay": true,
  "cross-join": true,
  "distinct-agg-push-down": false,
  "max-txn-ttl": 3600000,
  "index-usage-sync-lease": "",
  "plan-replayer-gc-lease": "10m",
  "gogc": 100,
  "enforce-mpp": false,
  "stats-load-concurrency": 0,
  "stats-load-queue-size": 1000,
  "analyze-partition-concurrency-quota": 16,
  "plan-replayer-dump-worker-concurrency": 1,
  "enable-stats-cache-mem-quota": true,
  "committer-concurrency": 128,
  "run-auto-analyze": true,
  "force-priority": "NO_PRIORITY",
  "memory-usage-alarm-ratio": 0.8,
  "enable-load-fmsketch": false,
  "lite-init-stats": true,
  "force-init-stats": true,
  "concurrently-init-stats": true,
  "projection-push-down": true
 },
 "prepared-plan-cache": {
  "enabled": true,
  "capacity": 100,
  "memory-guard-ratio": 0.1
 },
 "opentracing": {
  "enable": false,
  "rpc-metrics": false,
  "sampler": {
   "type": "const",
   "param": 1,
   "sampling-server-url": "",
   "max-operations": 0,
   "sampling-refresh-interval": 0
  },
  "reporter": {
   "queue-size": 0,
   "buffer-flush-interval": 0,
   "log-spans": false,
   "local-agent-host-port": ""
  }
 },
 "proxy-protocol": {
  "networks": "",
  "header-timeout": 5,
  "fallbackable": false
 },
 "pd-client": {
  "pd-server-timeout": 3
 },
 "tikv-client": {
  "grpc-connection-count": 4,
  "grpc-keepalive-time": 10,
  "grpc-keepalive-timeout": 3,
  "grpc-compression-type": "none",
  "grpc-shared-buffer-pool": false,
  "grpc-initial-window-size": 134217728,
  "grpc-initial-conn-window-size": 134217728,
  "commit-timeout": "41s",
  "async-commit": {
   "keys-limit": 256,
   "total-key-size-limit": 4096,
   "safe-window": 2000000000,
   "allowed-clock-drift": 500000000
  },
  "batch-policy": "standard",
  "max-batch-size": 128,
  "overload-threshold": 200,
  "max-batch-wait-time": 0,
  "batch-wait-size": 8,
  "enable-chunk-rpc": true,
  "region-cache-ttl": 600,
  "store-limit": 0,
  "store-liveness-timeout": "1s",
  "copr-cache": {
   "capacity-mb": 1000
  },
  "copr-req-timeout": 60000000000,
  "ttl-refreshed-txn-size": 33554432,
  "resolve-lock-lite-threshold": 16,
  "max-concurrency-request-limit": 9223372036854775807,
  "enable-replica-selector-v2": true
 },
 "compatible-kill-query": false,
 "pessimistic-txn": {
  "max-retry-count": 256,
  "deadlock-history-capacity": 10,
  "deadlock-history-collect-retryable": false,
  "pessimistic-auto-commit": false,
  "constraint-check-in-place-pessimistic": true
 },
 "max-index-length": 3072,
 "index-limit": 64,
 "table-column-count-limit": 1017,
 "graceful-wait-before-shutdown": 0,
 "alter-primary-key": false,
 "treat-old-version-utf8-as-utf8mb4": true,
 "enable-table-lock": false,
 "delay-clean-table-lock": 0,
 "split-region-max-num": 1000,
 "top-sql": {
  "receiver-address": ""
 },
 "repair-mode": false,
 "repair-table-list": [],
 "isolation-read": {
  "engines": [
   "tikv",
   "tiflash",
   "tidb"
  ]
 },
 "new_collations_enabled_on_first_bootstrap": true,
 "experimental": {
  "allow-expression-index": false
 },
 "skip-register-to-dashboard": false,
 "enable-telemetry": false,
 "labels": {},
 "enable-global-index": false,
 "deprecate-integer-display-length": false,
 "enable-enum-length-limit": true,
 "stores-refresh-interval": 60,
 "enable-tcp4-only": false,
 "enable-forwarding": false,
 "max-ballast-object-size": 0,
 "ballast-object-size": 0,
 "transaction-summary": {
  "transaction-summary-capacity": 500,
  "transaction-id-digest-min-duration": 2147483647
 },
 "enable-global-kill": true,
 "enable-32bits-connection-id": true,
 "initialize-sql-file": "",
 "enable-batch-dml": false,
 "mem-quota-query": 1073741824,
 "oom-action": "cancel",
 "oom-use-tmp-storage": true,
 "check-mb4-value-in-utf8": true,
 "enable-collect-execution-info": true,
 "plugin": {
  "dir": "/data/deploy/plugin",
  "load": ""
 },
 "max-server-connections": 0,
 "run-ddl": true,
 "disaggregated-tiflash": false,
 "autoscaler-type": "aws",
 "autoscaler-addr": "tiflash-autoscale-lb.tiflash-autoscale.svc.cluster.local:8081",
 "is-tiflashcompute-fixed-pool": false,
 "autoscaler-cluster-id": "",
 "use-autoscaler": false,
 "tidb-max-reuse-chunk": 64,
 "tidb-max-reuse-column": 256,
 "tidb-enable-exit-check": false,
 "in-mem-slow-query-topn-num": 30,
 "in-mem-slow-query-recent-num": 500
}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0 |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | none |
| collapsed | whole recording | `"ip": "[0-9.]+"` | `"ip": "10.0.0.1"` | none |
| collapsed | whole recording | `"advertise-address": "[0-9.]+"` | `"advertise-address": "10.0.0.1"` | 0 |
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
