## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5352e0d5-a696-b61f-c874-b0d4d76db24f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).CommitBlockListAsync
now: 2026-11-12T00:49:33.8014494+00:00

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
etag: "0x1C58A6F7BB78A30"
last-modified: Thu, 12 Nov 2026 00:49:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 906d09ef-d4c7-4834-b475-abf371313beb
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5352e0d5-a696-b61f-c874-b0d4d76db24f/test-blob-0d339ffc-5407-296e-a2d1-b66760243660?comp=block&blockid=dGVzdC1ibG9jay1mNWFhYTJmNy1kZjhjLTlhZjctMDQ5Yi05ZDUxMWEyN2M0MGY%3D

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
x-ms-request-id: a8ae1a34-dc1b-487f-9e9a-f769fee23822
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:33 GMT
x-ms-content-crc64: MIxj2DtZDAc=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-5352e0d5-a696-b61f-c874-b0d4d76db24f/test-blob-0d339ffc-5407-296e-a2d1-b66760243660?comp=block&blockid=dGVzdC1ibG9jay1kZTAyMmUyZC1lMjQyLWIyZmQtN2UzNy0wMTBlOWU1Yjc2MzE%3D

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
x-ms-request-id: b3e7e14f-8b0d-4fe5-88e1-0d3ae07f51af
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:33 GMT
x-ms-content-crc64: MIxj2DtZDAc=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-5352e0d5-a696-b61f-c874-b0d4d76db24f/test-blob-0d339ffc-5407-296e-a2d1-b66760243660?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay1mNWFhYTJmNy1kZjhjLTlhZjctMDQ5Yi05ZDUxMWEyN2M0MGY=</Latest><Latest>dGVzdC1ibG9jay1kZTAyMmUyZC1lMjQyLWIyZmQtN2UzNy0wMTBlOWU1Yjc2MzE=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2007418DBE408C0"
last-modified: Thu, 12 Nov 2026 00:49:33 GMT
content-md5: v7p8kCCF207Lg0U9WUljCQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 363a5bd9-a554-4968-8aa9-3522e615c435
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-5352e0d5-a696-b61f-c874-b0d4d76db24f/test-blob-0d339ffc-5407-296e-a2d1-b66760243660?comp=block&blockid=dGVzdC1ibG9jay03ZTUyYjk2Mi04NWMwLTg2MTQtOWNmYS0yNmQ3M2UxODE0MzE%3D

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
x-ms-request-id: 19ba1ac5-4398-400f-8880-27b953ff9ff1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:34 GMT
x-ms-content-crc64: MIxj2DtZDAc=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: GET /devstoreaccount1/test-container-5352e0d5-a696-b61f-c874-b0d4d76db24f/test-blob-0d339ffc-5407-296e-a2d1-b66760243660?comp=blocklist&blocklisttype=all

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
last-modified: Thu, 12 Nov 2026 00:49:33 GMT
etag: "0x2007418DBE408C0"
content-type: application/xml
x-ms-blob-content-length: 8192
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cd036fe4-8536-4f41-90f2-c8d3e2f3f054
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:34 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><BlockList><CommittedBlocks><Block><Name>dGVzdC1ibG9jay1mNWFhYTJmNy1kZjhjLTlhZjctMDQ5Yi05ZDUxMWEyN2M0MGY=</Name><Size>4096</Size></Block><Block><Name>dGVzdC1ibG9jay1kZTAyMmUyZC1lMjQyLWIyZmQtN2UzNy0wMTBlOWU1Yjc2MzE=</Name><Size>4096</Size></Block></CommittedBlocks><UncommittedBlocks><Block><Name>dGVzdC1ibG9jay03ZTUyYjk2Mi04NWMwLTg2MTQtOWNmYS0yNmQ3M2UxODE0MzE=</Name><Size>4096</Size></Block></UncommittedBlocks></BlockList>
```

## Interaction 6: DELETE /devstoreaccount1/test-container-5352e0d5-a696-b61f-c874-b0d4d76db24f?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d07fbcbf-2516-48b3-a0d0-ecabda6038e2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

