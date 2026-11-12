## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-efa709d6-fc5d-be61-b8a5-fe02765db81c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).CommitBlockListAsync_Metadata
now: 2026-11-12T00:50:01.0489104+00:00

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_1
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2070BA050645BE0"
last-modified: Thu, 12 Nov 2026 00:50:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ed863c88-3fd5-4613-941c-a0893b3b542b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-efa709d6-fc5d-be61-b8a5-fe02765db81c/test-blob-292dbb06-2972-7b0f-8795-51559c3f7bef?comp=block&blockid=dGVzdC1ibG9jay0wN2Q5ZWZkYi0zZjgyLWQ5NzctNTZiMi1mZGQ1ZGJlNzFhNmQ%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c1575b5a-f59c-4dcb-8f27-bf23ffe18cff
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:01 GMT
x-ms-content-crc64: JQgxTE5LY1E=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-efa709d6-fc5d-be61-b8a5-fe02765db81c/test-blob-292dbb06-2972-7b0f-8795-51559c3f7bef?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay0wN2Q5ZWZkYi0zZjgyLWQ5NzctNTZiMi1mZGQ1ZGJlNzFhNmQ=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27C29CB30AA7B60"
last-modified: Thu, 12 Nov 2026 00:50:01 GMT
content-md5: sRqhlfY0PW45OJht2fJXvw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 83317f3e-a53e-4a3a-b839-1c4d4f7a6b12
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-efa709d6-fc5d-be61-b8a5-fe02765db81c/test-blob-292dbb06-2972-7b0f-8795-51559c3f7bef

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:50:01 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:01 GMT
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-Capital: letter
x-ms-meta-UPPER: case
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x27C29CB30AA7B60"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7a0d60df-fbbf-4b68-a930-711dc4ade966
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:01 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-efa709d6-fc5d-be61-b8a5-fe02765db81c?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 715b7829-7f89-4d34-8c1e-4be12d27f4ef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

