## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f63ed1a9-9868-e756-efc2-b2c490c5ce11?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).CommitBlockListAsync_ColdTier
now: 2026-11-12T00:49:58.7601108+00:00

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
etag: "0x1E56AA059DDF2E0"
last-modified: Thu, 12 Nov 2026 00:49:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5166256f-230f-442b-9e7e-9340cfc21418
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f63ed1a9-9868-e756-efc2-b2c490c5ce11/test-blob-c87efbf7-c8ab-296a-3405-5e692a715632?comp=block&blockid=dGVzdC1ibG9jay1lNGFlNmQ2Ni01NTM4LTUxOGItYTNlNi1lZmE3NzFiMWUzYTI%3D

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
x-ms-request-id: 24c85de7-1ff2-4b8a-8953-03d7259dabb0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:58 GMT
x-ms-content-crc64: /5hWmgKv5CA=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-f63ed1a9-9868-e756-efc2-b2c490c5ce11/test-blob-c87efbf7-c8ab-296a-3405-5e692a715632?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-access-tier: Cold
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay1lNGFlNmQ2Ni01NTM4LTUxOGItYTNlNi1lZmE3NzFiMWUzYTI=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2664560215B0B60"
last-modified: Thu, 12 Nov 2026 00:49:58 GMT
content-md5: kw6Ja98dEMBXtrLjsY9NfA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2a52fdf2-e999-4071-86de-3673e351d178
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-f63ed1a9-9868-e756-efc2-b2c490c5ce11/test-blob-c87efbf7-c8ab-296a-3405-5e692a715632

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
last-modified: Thu, 12 Nov 2026 00:49:58 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:58 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x2664560215B0B60"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bec50973-6769-4792-85bb-e9ad0802c8c9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:58 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Cold
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-f63ed1a9-9868-e756-efc2-b2c490c5ce11?restype=container

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
x-ms-request-id: 37837348-76e7-4065-905a-b49735472ca1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

