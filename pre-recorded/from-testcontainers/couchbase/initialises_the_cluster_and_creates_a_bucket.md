## LICENSE NOTICE

Recorded against couchbase:community-7.1.1, under the Couchbase
Community Edition License Agreement (CCELA/Apr2021/v3). It allows
internal business use and products that interact with the software, and
forbids reverse engineering, decompiling or disassembling it. Use of
this tape is subject to those terms; see UPSTREAM-TERMS.md in
servirtium-vcr's pre-recorded/from-testcontainers.

## Interaction 0: GET /pools

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[admin]
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Cache-Control: no-cache,no-store,must-revalidate
Content-Length: 878
Content-Type: application/json
Expires: Thu, 01 Jan 1970 00:00:00 GMT
Pragma: no-cache
Server: Couchbase Server
X-Content-Type-Options: nosniff
X-Frame-Options: DENY
X-Permitted-Cross-Domain-Policies: none
X-XSS-Protection: 1; mode=block
```
### Response body recorded for playback (200: application/json):

```
{"allowedServices":["kv","n1ql","index","fts"],"componentsVersion":{"ale":"0.0.0","asn1":"5.0.17","chronicle":"0.0.1","crypto":"5.0.4","inets":"7.4.2","kernel":"8.1.3","lhttpc":"1.3.0","ns_server":"7.1.1-3175-community","os_mon":"2.7.1","public_key":"1.11.3","sasl":"4.1","ssl":"10.5.3","stdlib":"3.16.1"},"implementationVersion":"7.1.1-3175-community","isAdminCreds":true,"isDeveloperPreview":false,"isEnterprise":false,"isROAdminCreds":false,"packageVariant":"linux/docker","pools":[{"name":"default","streamingUri":"/poolsStreaming/default?uuid=00000000000000000000000000000000","uri":"/pools/default?uuid=00000000000000000000000000000000"}],"settings":{"maxParallelIndexers":"/settings/maxParallelIndexers?uuid=00000000000000000000000000000000","viewUpdateDaemon":"/settings/viewUpdateDaemon?uuid=00000000000000000000000000000000"},"uuid":"00000000000000000000000000000000"}
```

## Interaction 1: GET /pools/default/buckets

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[admin]
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Cache-Control: no-cache,no-store,must-revalidate
Content-Length: 6766
Content-Type: application/json
Expires: Thu, 01 Jan 1970 00:00:00 GMT
Pragma: no-cache
Server: Couchbase Server
X-Content-Type-Options: nosniff
X-Frame-Options: DENY
X-Permitted-Cross-Domain-Policies: none
X-XSS-Protection: 1; mode=block
```
### Response body recorded for playback (200: application/json):

```
[{"authType":"sasl","autoCompactionSettings":false,"basicStats":{},"bucketCapabilities":["collections","durableWrite","tombstonedUserXAttrs","couchapi","subdoc.ReplaceBodyWithXattr","subdoc.DocumentMacroSupport","subdoc.ReviveDocument","dcp","cbhello","touch","cccp","xdcrCheckpointing","nodesExt","xattr"],"bucketCapabilitiesVer":"","bucketType":"membase","collectionsManifestUid":"0","conflictResolutionType":"seqno","controllers":{"compactAll":"/pools/default/buckets/tcae/controller/compactBucket","compactDB":"/pools/default/buckets/tcae/controller/compactDatabases","purgeDeletes":"/pools/default/buckets/tcae/controller/unsafePurgeBucket","startRecovery":"/pools/default/buckets/tcae/controller/startRecovery"},"ddocs":{"uri":"/pools/default/buckets/tcae/ddocs"},"durabilityMinLevel":"none","evictionPolicy":"valueOnly","localRandomKeyUri":"/pools/default/buckets/tcae/localRandomKey","name":"tcae","nodeLocator":"vbucket","nodes":[{"addressFamily":"inet","addressFamilyOnly":false,"alternateAddresses":{"external":{"hostname":"localhost","ports":{}}},"clusterCompatibility":458753,"clusterMembership":"active","configuredHostname":"10.0.0.1:8091","couchApiBase":"http://10.0.0.1:8092/tcae%2B00000000000000000000000000000000","cpuCount":8,"externalListeners":[{"afamily":"inet","nodeEncryption":false}],"hostname":"10.0.0.1:8091","interestingStats":{},"mcdMemoryAllocated":12753,"mcdMemoryReserved":12753,"memoryFree":0,"memoryTotal":0,"nodeEncryption":false,"nodeHash":0,"nodeUUID":"00000000000000000000000000000000","os":"aarch64-unknown-linux-gnu","otpNode":"ns_1@10.0.0.1","ports":{"direct":11210,"distTCP":21100,"distTLS":21150},"recoveryType":"none","replication":0,"services":["fts","index","kv","n1ql"],"status":"healthy","systemStats":{"allocstall":662,"cpu_cores_available":8,"cpu_stolen_rate":0,"cpu_utilization_rate":0,"mem_free":0,"mem_limit":0,"mem_total":0,"swap_total":0,"swap_used":0},"thisNode":true,"uptime":"0","version":"7.1.1-3175-community"}],"pitrEnabled":false,"pitrGranularity":600,"pitrMaxHistoryAge":86400,"quota":{"ram":104857600,"rawRAM":104857600},"replicaIndex":false,"replicaNumber":0,"stats":{"directoryURI":"/pools/default/buckets/tcae/stats/Directory","nodeStatsListURI":"/pools/default/buckets/tcae/nodes","uri":"/pools/default/buckets/tcae/stats"},"storageBackend":"couchstore","streamingUri":"/pools/default/bucketsStreaming/tcae?bucket_uuid=00000000000000000000000000000000","threadsNumber":3,"uri":"/pools/default/buckets/tcae?bucket_uuid=00000000000000000000000000000000","uuid":"00000000000000000000000000000000","vBucketServerMap":{"hashAlgorithm":"CRC","numReplicas":0,"serverList":["10.0.0.1:11210"],"vBucketMap":[[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0]]}}]
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0, 1 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[admin]` | 0, 1 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0, 1 |
| collapsed | whole recording | `[0-9a-f]{32}` | `00000000000000000000000000000000` | 0, 1 |
| collapsed | whole recording | `10\.[0-9]+\.[0-9]+\.[0-9]+` | `10.0.0.1` | 1 |
| collapsed | whole recording | `"ports":\{"capi":[0-9]+,"capiSSL":[0-9]+,"kv":[0-9]+,"mgmt":[0-9]+,"mgmtSSL":[0-9]+\}` | `"ports":{}` | 1 |
| collapsed | whole recording | `"nodeHash":[0-9]+` | `"nodeHash":0` | 1 |
| collapsed | whole recording | `"mem_free":[0-9]+` | `"mem_free":0` | 1 |
| collapsed | whole recording | `"memoryFree":[0-9]+` | `"memoryFree":0` | 1 |
| collapsed | whole recording | `"memoryTotal":[0-9]+` | `"memoryTotal":0` | 1 |
| collapsed | whole recording | `"mem_total":[0-9]+` | `"mem_total":0` | 1 |
| collapsed | whole recording | `"mem_limit":[0-9]+` | `"mem_limit":0` | 1 |
| collapsed | whole recording | `"interestingStats":\{[^}]*\}` | `"interestingStats":{}` | 1 |
| collapsed | whole recording | `"basicStats":\{[^}]*\}` | `"basicStats":{}` | 1 |
| collapsed | whole recording | `"uptime":"[0-9]+"` | `"uptime":"0"` | 1 |
| ordered | response body | JSON object keys | sorted, at every depth | 0, 1 |
