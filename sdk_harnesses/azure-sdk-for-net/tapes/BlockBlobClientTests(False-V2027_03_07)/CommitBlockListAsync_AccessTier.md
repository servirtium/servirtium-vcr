## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-755e74e3-b688-3536-3d25-82c9e63e3ce4?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).CommitBlockListAsync_AccessTier
now: 2026-11-12T00:49:35.9761402+00:00

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
etag: "0x1D11AF3C6CFE240"
last-modified: Thu, 12 Nov 2026 00:49:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b361bf16-ebde-4362-bf0a-061f0fbdd57d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-755e74e3-b688-3536-3d25-82c9e63e3ce4/test-blob-46df938f-f652-2e71-bd7e-a78db14ddf9a?comp=block&blockid=dGVzdC1ibG9jay0yZDkwMGZlZS1kOTJkLWVhZGMtNWI3ZC0xNDA5ZGYxODZjZDI%3D

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
x-ms-request-id: 18217e0e-2b33-4003-93d7-dfe7b0947eb1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:35 GMT
x-ms-content-crc64: bzIWtS2j2Dc=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-755e74e3-b688-3536-3d25-82c9e63e3ce4/test-blob-46df938f-f652-2e71-bd7e-a78db14ddf9a?comp=block&blockid=dGVzdC1ibG9jay1iMzU1OGZjMi02ZDQ0LWIzMGItNDc2Zi0zNTQ5ODIwZmEzZTE%3D

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
x-ms-request-id: 64cbcb86-482b-4f0a-a452-1f7de1619c6c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:36 GMT
x-ms-content-crc64: bzIWtS2j2Dc=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-755e74e3-b688-3536-3d25-82c9e63e3ce4/test-blob-46df938f-f652-2e71-bd7e-a78db14ddf9a?comp=blocklist

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
﻿<BlockList><Latest>dGVzdC1ibG9jay0yZDkwMGZlZS1kOTJkLWVhZGMtNWI3ZC0xNDA5ZGYxODZjZDI=</Latest><Latest>dGVzdC1ibG9jay1iMzU1OGZjMi02ZDQ0LWIzMGItNDc2Zi0zNTQ5ODIwZmEzZTE=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2327C548708F3E0"
last-modified: Thu, 12 Nov 2026 00:49:36 GMT
content-md5: aIZJmlJ6DE9gaf2dOhRFTA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 80ab2352-323f-426c-95ff-e9f4abdc45d6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-755e74e3-b688-3536-3d25-82c9e63e3ce4/test-blob-46df938f-f652-2e71-bd7e-a78db14ddf9a?comp=block&blockid=dGVzdC1ibG9jay04NDlmZmIwYy1jYzRhLWI0NTYtNjlhMi02ZjFmZmNlMmZkOTQ%3D

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
x-ms-request-id: 41da24bb-6f58-4842-a4df-1f38a202b17a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:36 GMT
x-ms-content-crc64: bzIWtS2j2Dc=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: GET /devstoreaccount1/test-container-755e74e3-b688-3536-3d25-82c9e63e3ce4/test-blob-46df938f-f652-2e71-bd7e-a78db14ddf9a?comp=blocklist&blocklisttype=all

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
last-modified: Thu, 12 Nov 2026 00:49:36 GMT
etag: "0x2327C548708F3E0"
content-type: application/xml
x-ms-blob-content-length: 8192
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 92f746f6-1d7a-40d9-bf37-8cc1c8cc0c17
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:36 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><BlockList><CommittedBlocks><Block><Name>dGVzdC1ibG9jay0yZDkwMGZlZS1kOTJkLWVhZGMtNWI3ZC0xNDA5ZGYxODZjZDI=</Name><Size>4096</Size></Block><Block><Name>dGVzdC1ibG9jay1iMzU1OGZjMi02ZDQ0LWIzMGItNDc2Zi0zNTQ5ODIwZmEzZTE=</Name><Size>4096</Size></Block></CommittedBlocks><UncommittedBlocks><Block><Name>dGVzdC1ibG9jay04NDlmZmIwYy1jYzRhLWI0NTYtNjlhMi02ZjFmZmNlMmZkOTQ=</Name><Size>4096</Size></Block></UncommittedBlocks></BlockList>
```

## Interaction 6: HEAD /devstoreaccount1/test-container-755e74e3-b688-3536-3d25-82c9e63e3ce4/test-blob-46df938f-f652-2e71-bd7e-a78db14ddf9a

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
last-modified: Thu, 12 Nov 2026 00:49:36 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:35 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 8192
content-type: application/octet-stream
etag: "0x2327C548708F3E0"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 337db434-50de-415b-bf7c-9b4e3ee3a105
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:36 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Cool
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-755e74e3-b688-3536-3d25-82c9e63e3ce4?restype=container

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
x-ms-request-id: ebcfff2e-4e50-4055-b7d6-753888df3e24
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

