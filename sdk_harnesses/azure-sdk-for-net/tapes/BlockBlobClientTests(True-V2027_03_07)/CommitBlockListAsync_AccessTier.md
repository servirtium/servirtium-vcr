## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e12a3d97-0826-b8d2-a69a-729cb4c62070?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).CommitBlockListAsync_AccessTier
now: 2026-11-12T00:49:58.2425460+00:00

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
etag: "0x266660426781560"
last-modified: Thu, 12 Nov 2026 00:49:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fc2153a2-d55b-4f67-b5b2-868a7adde2c0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-e12a3d97-0826-b8d2-a69a-729cb4c62070/test-blob-dfffa6c8-c26b-5a88-2b2c-c81b5dc1d5cd?comp=block&blockid=dGVzdC1ibG9jay02MzczM2IwYy0wN2IwLTA2ZDQtMTc0MS1lODVhNGQ3MDJlMDQ%3D

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
x-ms-request-id: 98809cb5-c46e-4d3b-a35c-c4eff2e3a7ad
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:58 GMT
x-ms-content-crc64: lscTy92vf9g=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-e12a3d97-0826-b8d2-a69a-729cb4c62070/test-blob-dfffa6c8-c26b-5a88-2b2c-c81b5dc1d5cd?comp=block&blockid=dGVzdC1ibG9jay1hMTJkYTZjMS04NjJkLWYyOWItMTZjZi1lZTM0NDRiNTQ3N2E%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
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
x-ms-request-id: 88551d06-8966-4d5d-97df-ab0be248db43
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:58 GMT
x-ms-content-crc64: lscTy92vf9g=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-e12a3d97-0826-b8d2-a69a-729cb4c62070/test-blob-dfffa6c8-c26b-5a88-2b2c-c81b5dc1d5cd?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-access-tier: Cool
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay02MzczM2IwYy0wN2IwLTA2ZDQtMTc0MS1lODVhNGQ3MDJlMDQ=</Latest><Latest>dGVzdC1ibG9jay1hMTJkYTZjMS04NjJkLWYyOWItMTZjZi1lZTM0NDRiNTQ3N2E=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E748D03D5C33C0"
last-modified: Thu, 12 Nov 2026 00:49:58 GMT
content-md5: tlXSKWMqxjupahya4nvYiQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 58c986bd-ef98-4c7a-a32a-73d4b04791b7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-e12a3d97-0826-b8d2-a69a-729cb4c62070/test-blob-dfffa6c8-c26b-5a88-2b2c-c81b5dc1d5cd?comp=block&blockid=dGVzdC1ibG9jay1mY2NiNTA2Yy04ZDQ3LTQ3OTAtNzZiMC03M2UyOGI2MjcxOTc%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
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
x-ms-request-id: 59e6ea60-aa16-4c3c-903f-c25518c27ea9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:58 GMT
x-ms-content-crc64: lscTy92vf9g=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: GET /devstoreaccount1/test-container-e12a3d97-0826-b8d2-a69a-729cb4c62070/test-blob-dfffa6c8-c26b-5a88-2b2c-c81b5dc1d5cd?comp=blocklist&blocklisttype=all

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_6
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:49:58 GMT
etag: "0x1E748D03D5C33C0"
content-type: application/xml
x-ms-blob-content-length: 8192
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f4708f5d-f57c-48cd-8fdb-00c393410b43
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:58 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><BlockList><CommittedBlocks><Block><Name>dGVzdC1ibG9jay02MzczM2IwYy0wN2IwLTA2ZDQtMTc0MS1lODVhNGQ3MDJlMDQ=</Name><Size>4096</Size></Block><Block><Name>dGVzdC1ibG9jay1hMTJkYTZjMS04NjJkLWYyOWItMTZjZi1lZTM0NDRiNTQ3N2E=</Name><Size>4096</Size></Block></CommittedBlocks><UncommittedBlocks><Block><Name>dGVzdC1ibG9jay1mY2NiNTA2Yy04ZDQ3LTQ3OTAtNzZiMC03M2UyOGI2MjcxOTc=</Name><Size>4096</Size></Block></UncommittedBlocks></BlockList>
```

## Interaction 6: HEAD /devstoreaccount1/test-container-e12a3d97-0826-b8d2-a69a-729cb4c62070/test-blob-dfffa6c8-c26b-5a88-2b2c-c81b5dc1d5cd

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:49:58 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:58 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 8192
content-type: application/octet-stream
etag: "0x1E748D03D5C33C0"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fe20a3ef-eb1f-4a01-bad9-931b90406c9e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:58 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Cool
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-e12a3d97-0826-b8d2-a69a-729cb4c62070?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
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
x-ms-request-id: 86dd351c-ba48-4876-99bb-cb9c0de7ec2f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

