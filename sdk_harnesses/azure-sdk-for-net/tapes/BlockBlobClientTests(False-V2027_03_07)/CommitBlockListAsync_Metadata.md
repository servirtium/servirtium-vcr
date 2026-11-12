## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b270563a-cf92-d605-df15-45256b0f6675?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).CommitBlockListAsync_Metadata
now: 2026-11-12T00:49:38.7245980+00:00

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
etag: "0x229FCD2EEE64440"
last-modified: Thu, 12 Nov 2026 00:49:38 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5fd06fc9-2b1d-4d4c-ac87-c84b14f27f41
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:38 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b270563a-cf92-d605-df15-45256b0f6675/test-blob-e7dd96f0-3d8d-d7bd-098e-2e7bb803e420?comp=block&blockid=dGVzdC1ibG9jay0yYzhhNzk4Zi1jNmUyLTQ3OGUtNjUxYi0yNzY2NzUwMWQ4ZWQ%3D

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
x-ms-request-id: be7c2bd1-711a-4da5-934a-70054f7760c5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:38 GMT
x-ms-content-crc64: dlmrrVOnfEs=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-b270563a-cf92-d605-df15-45256b0f6675/test-blob-e7dd96f0-3d8d-d7bd-098e-2e7bb803e420?comp=blocklist

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
﻿<BlockList><Latest>dGVzdC1ibG9jay0yYzhhNzk4Zi1jNmUyLTQ3OGUtNjUxYi0yNzY2NzUwMWQ4ZWQ=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26B68CBD6F10480"
last-modified: Thu, 12 Nov 2026 00:49:38 GMT
content-md5: ZLMGDWPkfkk8oYX21i8nCA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6564e27e-2071-43a9-8435-6f8a2e098fa0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:38 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-b270563a-cf92-d605-df15-45256b0f6675/test-blob-e7dd96f0-3d8d-d7bd-098e-2e7bb803e420

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
last-modified: Thu, 12 Nov 2026 00:49:38 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:38 GMT
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-Capital: letter
x-ms-meta-UPPER: case
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x26B68CBD6F10480"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 35e0af57-90ce-48e9-9e54-5620b7af9274
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:38 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-b270563a-cf92-d605-df15-45256b0f6675?restype=container

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
x-ms-request-id: acb988d3-acc5-49e4-849d-f537f0339c80
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:38 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

