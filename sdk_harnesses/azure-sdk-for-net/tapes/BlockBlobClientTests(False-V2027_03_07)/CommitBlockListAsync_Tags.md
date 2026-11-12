## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-947bfb4e-c598-e52e-d2eb-3565920170b4?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).CommitBlockListAsync_Tags
now: 2026-11-12T00:49:38.9272953+00:00

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
etag: "0x26648A34955CD40"
last-modified: Thu, 12 Nov 2026 00:49:38 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 483b22a8-0279-4a96-b7e0-f3330734ee0f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:38 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-947bfb4e-c598-e52e-d2eb-3565920170b4/test-blob-0a685e11-4c3c-13c2-f493-b16389e0a5d1?comp=block&blockid=dGVzdC1ibG9jay0wYzQ1MzhiOS00Nzc1LTgwZDktNGQwYi01ZDA0Mzc1NTAxODA%3D

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
x-ms-request-id: 56960d5f-8d2e-4aad-883f-153668b0490b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:38 GMT
x-ms-content-crc64: jwiCUY+yWZ4=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-947bfb4e-c598-e52e-d2eb-3565920170b4/test-blob-0a685e11-4c3c-13c2-f493-b16389e0a5d1?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-tags: tagKey0=tagValue0&tagKey1=tagValue1
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay0wYzQ1MzhiOS00Nzc1LTgwZDktNGQwYi01ZDA0Mzc1NTAxODA=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21D41A4F8C117A0"
last-modified: Thu, 12 Nov 2026 00:49:38 GMT
content-md5: uj+GIC97WuDnPbFaoqJ/pA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 84cdb250-e6ec-4f21-9e0b-13317216453f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:38 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-947bfb4e-c598-e52e-d2eb-3565920170b4/test-blob-0a685e11-4c3c-13c2-f493-b16389e0a5d1?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: efd1ea11-8c93-41df-b1a9-c4ebf803a4f7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:39 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-947bfb4e-c598-e52e-d2eb-3565920170b4?restype=container

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
x-ms-request-id: 0af9f598-577f-4b7a-8cc3-f002639ca589
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:39 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

