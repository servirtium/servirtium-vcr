## LICENSE NOTICE

CockroachDB v23.1.30 is under the CockroachDB Software License (Cockroach Labs, Inc.; /licenses/LICENSE in the image cockroachdb/cockroach:v23.1.30). These tapes record a single-node test cluster, the 'Limited Non-Production Use' the licence allows without a licence key (testing, one node).

The licence has no clause against reverse engineering and none against recording or publishing HTTP responses. It does forbid circumventing its Protective Measures (licence-key and telemetry requirements), forbids removing the Licensor's notices, and defines 'Benchmark' as any benchmark, comparative test or evaluation of the Software, to be disclosed with the information needed to replicate it. Honour those terms as you would if you ran the image, and do not use these tapes as an evaluation or comparison of CockroachDB. See UPSTREAM-TERMS.md.

## Interaction 0: GET /api/v2/health/

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
{}
```

## Interaction 1: GET /api/v2/health/?ready=true

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
{}
```

## Interaction 2: GET /api/v2/rules/

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
Content-Type: text/plain
Vary: Accept-Encoding
Transfer-Encoding: chunked
```
### Response body recorded for playback (200: text/plain):

```
rules/alerts:
    rules:
        - alert: UnavailableRanges
          expr: (sum by(instance, cluster) (ranges_unavailable)) > 0
          for: 10m0s
          annotations:
            summary: Instance {{ $labels.instance }} has {{ $value }} unavailable ranges
        - alert: TrippedReplicaCircuitBreakers
          expr: (sum by(instance, cluster) (kv_replica_circuit_breaker_num_tripped_replicas)) > 0
          for: 10m0s
          annotations:
            summary: Instance {{ $labels.instance }} has {{ $value }} tripped per-Replica circuit breakers
        - alert: UnderreplicatedRanges
          expr: (sum by(instance, cluster) (ranges_underreplicated)) > 0
          for: 1h0m0s
          annotations:
            summary: Instance {{ $labels.instance }} has {{ $value }} under-replicated ranges
        - alert: RequestsStuckInRaft
          expr: requests_slow_raft > 0
          for: 10m0s
          annotations:
            summary: '{{ $value }} requests stuck in raft on {{ $labels.instance }}'
        - alert: HighOpenFDCount
          expr: sys_fd_open / sys_fd_softlimit > 0.8
          for: 10m0s
          annotations:
            summary: 'Too many open file descriptors on {{ $labels.instance }}: {{ $value }} fraction used'
        - alert: NodeCapacityLow
          expr: capacity_available:ratio < 0.15
          annotations:
            summary: Store {{ $labels.store }} on node {{ $labels.instance }} at {{ $value}} available disk fraction
        - alert: NodeRestart
          expr: resets(sys_uptime[10m]) > 5
          annotations:
            description: '{{ $labels.instance }} for cluster {{ $labels.cluster }} restarted {{ $value }} time(s) in 10m'
            summary: Instance {{ $labels.instance }} restarted
        - alert: NodeCACertExpiry
          expr: (security_certificate_expiration_ca > 0) and (security_certificate_expiration_ca - time()) < 86400 * 366
          labels:
            frequency: daily
          annotations:
            summary: CA certificate for {{ $labels.instance }} expires in less than a year
        - alert: NodeCertExpiry
          expr: (security_certificate_expiration_node > 0) and (security_certificate_expiration_node - time()) < 86400 * 183
          labels:
            frequency: daily
          annotations:
            summary: Node certificate for {{ $labels.instance }} expires in less than 6 months
rules/recording:
    rules:
        - record: node:capacity
          expr: sum without(store) (capacity)
        - record: cluster:capacity
          expr: sum without(instance) (node:capacity)
        - record: node:capacity_available
          expr: sum without(store) (capacity_available)
        - record: cluster:capacity_available
          expr: sum without(instance) (node:capacity_available)
        - record: capacity_available:ratio
          expr: capacity_available / capacity
        - record: node:capacity_available:ratio
          expr: node:capacity_available / node:capacity
        - record: cluster:capacity_available:ratio
          expr: cluster:capacity_available/cluster:capacity

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–2 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `Content-Length` | (left out) | 0, 1 |
| redacted credential | request and response headers | `X-Cockroach-API-Session` | `X_COCKROACH_API_SESSION_N` | 0–2 |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[tcaeuser]` | none |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[tcae_reader]` | none |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[wrong-password]` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–2 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | none |
| collapsed | whole recording | `Timestamp\\":[0-9]+` | `Timestamp\\":946684800000000000` | none |
| collapsed | whole recording | `"unique_id":"[A-Za-z0-9+/]{22}=="` | `"unique_id":"AAAAAAAAAAAAAAAAAAAAAA=="` | none |
| collapsed | whole recording | `"id":"[A-Za-z0-9+/]{22}=="` | `"id":"AAAAAAAAAAAAAAAAAAAAAA=="` | none |
| collapsed | whole recording | `"client_address":"[0-9.:a-f]+"` | `"client_address":"10.0.0.1:50000"` | none |
| collapsed | whole recording | `"total_active_time":[0-9]+` | `"total_active_time":1000000` | none |
| collapsed | whole recording | `"descriptor_id":[0-9]+` | `"descriptor_id":100` | none |
| collapsed | whole recording | `"started_at":[0-9]+` | `"started_at":946684800000000000` | none |
| collapsed | whole recording | `"updated_at":[0-9]+` | `"updated_at":946684800000000000` | none |
| collapsed | whole recording | `"total_system_memory":[0-9]+` | `"total_system_memory":8589934592` | none |
| collapsed | whole recording | `"num_cpus":[0-9]+` | `"num_cpus":4` | none |
| collapsed | whole recording | `"metrics":\{[^{}]*\}` | `"metrics":{"liveness.livenodes":1}` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
