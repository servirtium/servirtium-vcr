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
Content-Length: 642
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
{"isAdminCreds":true,"isROAdminCreds":false,"isEnterprise":false,"allowedServices":["kv","n1ql","index","fts"],"isDeveloperPreview":false,"packageVariant":"linux/docker","pools":[{"name":"default","uri":"/pools/default?uuid=00000000000000000000000000000000","streamingUri":"/poolsStreaming/default?uuid=00000000000000000000000000000000"}],"settings":{"maxParallelIndexers":"/settings/maxParallelIndexers?uuid=00000000000000000000000000000000","viewUpdateDaemon":"/settings/viewUpdateDaemon?uuid=00000000000000000000000000000000"},"uuid":"00000000000000000000000000000000","implementationVersion":"7.1.1-3175-community","componentsVersion":{}}
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
Content-Length: 6764
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
[{"name":"tcae","nodeLocator":"vbucket","bucketType":"membase","storageBackend":"couchstore","uuid":"00000000000000000000000000000000","uri":"/pools/default/buckets/tcae?bucket_uuid=00000000000000000000000000000000","streamingUri":"/pools/default/bucketsStreaming/tcae?bucket_uuid=00000000000000000000000000000000","bucketCapabilitiesVer":"","bucketCapabilities":["collections","durableWrite","tombstonedUserXAttrs","couchapi","subdoc.ReplaceBodyWithXattr","subdoc.DocumentMacroSupport","subdoc.ReviveDocument","dcp","cbhello","touch","cccp","xdcrCheckpointing","nodesExt","xattr"],"collectionsManifestUid":"0","ddocs":{"uri":"/pools/default/buckets/tcae/ddocs"},"vBucketServerMap":{"hashAlgorithm":"CRC","numReplicas":0,"serverList":["10.0.0.1:11210"],"vBucketMap":[[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0]]},"localRandomKeyUri":"/pools/default/buckets/tcae/localRandomKey","controllers":{"compactAll":"/pools/default/buckets/tcae/controller/compactBucket","compactDB":"/pools/default/buckets/tcae/controller/compactDatabases","purgeDeletes":"/pools/default/buckets/tcae/controller/unsafePurgeBucket","startRecovery":"/pools/default/buckets/tcae/controller/startRecovery"},"nodes":[{"couchApiBase":"http://10.0.0.1:8092/tcae%2B00000000000000000000000000000000","clusterMembership":"active","recoveryType":"none","status":"healthy","otpNode":"ns_1@10.0.0.1","thisNode":true,"hostname":"10.0.0.1:8091","nodeUUID":"00000000000000000000000000000000","clusterCompatibility":458753,"version":"7.1.1-3175-community","os":"aarch64-unknown-linux-gnu","cpuCount":8,"ports":{"direct":11210,"distTCP":21100,"distTLS":21150},"services":["fts","index","kv","n1ql"],"nodeEncryption":false,"addressFamilyOnly":false,"configuredHostname":"10.0.0.1:8091","addressFamily":"inet","externalListeners":[{"afamily":"inet","nodeEncryption":false}],"alternateAddresses":{"external":{"hostname":"localhost","ports":{}}},"replication":0,"nodeHash":0,"systemStats":{"cpu_utilization_rate":0,"cpu_stolen_rate":0,"swap_total":0,"swap_used":0,"mem_total":0,"mem_free":0,"mem_limit":0,"cpu_cores_available":8,"allocstall":0},"interestingStats":{},"uptime":"0","memoryTotal":0,"memoryFree":0,"mcdMemoryReserved":12753,"mcdMemoryAllocated":12753}],"stats":{"uri":"/pools/default/buckets/tcae/stats","directoryURI":"/pools/default/buckets/tcae/stats/Directory","nodeStatsListURI":"/pools/default/buckets/tcae/nodes"},"authType":"sasl","autoCompactionSettings":false,"replicaIndex":false,"replicaNumber":0,"threadsNumber":3,"quota":{"ram":104857600,"rawRAM":104857600},"basicStats":{},"evictionPolicy":"valueOnly","durabilityMinLevel":"none","pitrEnabled":false,"pitrGranularity":600,"pitrMaxHistoryAge":86400,"conflictResolutionType":"seqno"}]
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
| collapsed | whole recording | `"componentsVersion":\{[^}]*\}` | `"componentsVersion":{}` | 0 |
| collapsed | whole recording | `"ports":\{"kv":[0-9]+,"capiSSL":[0-9]+,"capi":[0-9]+,"mgmtSSL":[0-9]+,"mgmt":[0-9]+\}` | `"ports":{}` | 1 |
| collapsed | whole recording | `"nodeHash":[0-9]+` | `"nodeHash":0` | 1 |
| collapsed | whole recording | `"mem_free":[0-9]+` | `"mem_free":0` | 1 |
| collapsed | whole recording | `"memoryFree":[0-9]+` | `"memoryFree":0` | 1 |
| collapsed | whole recording | `"memoryTotal":[0-9]+` | `"memoryTotal":0` | 1 |
| collapsed | whole recording | `"mem_total":[0-9]+` | `"mem_total":0` | 1 |
| collapsed | whole recording | `"mem_limit":[0-9]+` | `"mem_limit":0` | 1 |
| collapsed | whole recording | `"interestingStats":\{[^}]*\}` | `"interestingStats":{}` | 1 |
| collapsed | whole recording | `"basicStats":\{[^}]*\}` | `"basicStats":{}` | 1 |
| collapsed | whole recording | `"uptime":"[0-9]+"` | `"uptime":"0"` | 1 |
