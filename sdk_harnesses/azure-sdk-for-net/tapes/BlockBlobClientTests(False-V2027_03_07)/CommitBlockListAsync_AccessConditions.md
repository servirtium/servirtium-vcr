## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ee2709bf-b951-44ec-b6f7-04603885fc6b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).CommitBlockListAsync_AccessConditions
now: 2026-11-12T00:49:34.3040274+00:00

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
etag: "0x25DFD5B30B61380"
last-modified: Thu, 12 Nov 2026 00:49:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 42b8649c-bea0-413f-80ad-0be9c45d35d4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ee2709bf-b951-44ec-b6f7-04603885fc6b/test-blob-3c368972-e571-c132-2dd4-9c7ff702c93e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
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
etag: "0x1F5E8B4E08C5130"
last-modified: Thu, 12 Nov 2026 00:49:34 GMT
content-md5: +wRAgjEzwfaQwD6i2UG5Vg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 15d6976d-0337-47ef-99c6-05cbc097d103
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-ee2709bf-b951-44ec-b6f7-04603885fc6b/test-blob-3c368972-e571-c132-2dd4-9c7ff702c93e?comp=block&blockid=dGVzdC1ibG9jay02MTcwNzljYy0yOGNmLWZhYTctODc5MS0zODYzZTBhMTYwMGM%3D

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
x-ms-request-id: 4917c25f-cadc-46c5-a6b6-97a53f24bcc7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:34 GMT
x-ms-content-crc64: Kn3TEitgbPk=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-ee2709bf-b951-44ec-b6f7-04603885fc6b/test-blob-3c368972-e571-c132-2dd4-9c7ff702c93e?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay02MTcwNzljYy0yOGNmLWZhYTctODc5MS0zODYzZTBhMTYwMGM=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x226026E9859A4E0"
last-modified: Thu, 12 Nov 2026 00:49:34 GMT
content-md5: EqsRHoIq1ZNr/KKKzQ+oRA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 39c5b7f3-43dc-4127-a1af-5e9003fe5212
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-ee2709bf-b951-44ec-b6f7-04603885fc6b?restype=container

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
x-ms-request-id: 18d720e5-f7e9-4b42-b8db-7f3d3d872e68
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-0ddcc8b9-928a-bfca-cb0b-c747a5400ba4?restype=container

### Request headers recorded for playback:

```
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
etag: "0x20E8AE6978BF6A0"
last-modified: Thu, 12 Nov 2026 00:49:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2bc8e583-80e5-4fa5-8ce1-25f6c3b15213
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-0ddcc8b9-928a-bfca-cb0b-c747a5400ba4/test-blob-ed369276-b435-0737-7156-5c1349a1bdf4

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
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
etag: "0x1F873E3C0AB0460"
last-modified: Thu, 12 Nov 2026 00:49:34 GMT
content-md5: BYhs6WrACSs5XTM8tNSX2A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2f058066-4620-4bfd-b305-56a5db0c2f51
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-0ddcc8b9-928a-bfca-cb0b-c747a5400ba4/test-blob-ed369276-b435-0737-7156-5c1349a1bdf4?comp=block&blockid=dGVzdC1ibG9jay1mMWIwZTgxMi0zNzA0LTA2OWYtNDBkMS05NzVkMDhhNzVlMTY%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
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
x-ms-request-id: bc9e50d6-b727-495a-b03d-8abb7d6a83e3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:34 GMT
x-ms-content-crc64: pOZfdVkWPgU=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-0ddcc8b9-928a-bfca-cb0b-c747a5400ba4/test-blob-ed369276-b435-0737-7156-5c1349a1bdf4?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
Content-Type: application/xml
If-Modified-Since: Wed, 11 Nov 2026 00:49:34 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay1mMWIwZTgxMi0zNzA0LTA2OWYtNDBkMS05NzVkMDhhNzVlMTY=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x206E959FA2DE540"
last-modified: Thu, 12 Nov 2026 00:49:34 GMT
content-md5: oiX1zmNFOP2CkTtA6s9rBw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4ed9b30f-d1fc-46e3-81cd-c9cc03bdfeac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: DELETE /devstoreaccount1/test-container-0ddcc8b9-928a-bfca-cb0b-c747a5400ba4?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
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
x-ms-request-id: 8cba92e2-10e2-4add-8ead-73cd67b5caca
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-ecfe65a7-d0c3-3c9a-ed12-781675f99205?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C077555ACFCB20"
last-modified: Thu, 12 Nov 2026 00:49:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5ad24e3a-f7ec-4629-8f79-4a276a370ed4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-ecfe65a7-d0c3-3c9a-ed12-781675f99205/test-blob-67e3164c-7b84-b44a-d608-6135100c2e01

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
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
etag: "0x212D3A153C9A820"
last-modified: Thu, 12 Nov 2026 00:49:34 GMT
content-md5: jSPE+TaZmA90E2l5zn46jw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8f706b61-013c-4787-abee-bc484ef09de0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-ecfe65a7-d0c3-3c9a-ed12-781675f99205/test-blob-67e3164c-7b84-b44a-d608-6135100c2e01?comp=block&blockid=dGVzdC1ibG9jay0zNWUzZWEyYi1mNmQ2LTEwMTEtZDE2OC01MmYwMjQ0ZTI1ZTU%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
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
x-ms-request-id: 186c81f9-b4a4-4a65-8db8-8cfce3de2f67
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:34 GMT
x-ms-content-crc64: tX7LGL1hOYc=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-ecfe65a7-d0c3-3c9a-ed12-781675f99205/test-blob-67e3164c-7b84-b44a-d608-6135100c2e01?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
Content-Type: application/xml
If-Unmodified-Since: Fri, 13 Nov 2026 00:49:34 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay0zNWUzZWEyYi1mNmQ2LTEwMTEtZDE2OC01MmYwMjQ0ZTI1ZTU=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F816DD0FCA9920"
last-modified: Thu, 12 Nov 2026 00:49:34 GMT
content-md5: 5X3TYBO7VE4Y6mBYwyGXPA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 571a22e2-01f5-445d-9415-c1b6f59a9709
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: DELETE /devstoreaccount1/test-container-ecfe65a7-d0c3-3c9a-ed12-781675f99205?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_15
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
x-ms-request-id: 37ce4bc4-23f1-4377-abff-07d2945bfda5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-ed0e5642-c714-9034-50d8-f301be95fcf0?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CAFDD3F0976060"
last-modified: Thu, 12 Nov 2026 00:49:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ee4fe1a6-b0b4-40c2-a1b0-1839ed4a6f01
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-ed0e5642-c714-9034-50d8-f301be95fcf0/test-blob-8b242d50-9aba-b342-31d3-85d5806e3246

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
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
etag: "0x2581C9E0BFD4DE0"
last-modified: Thu, 12 Nov 2026 00:49:34 GMT
content-md5: xx8G954hhPs25g9KgsTrAQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3971301b-9dea-404b-8710-8ff10a3f19a9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-ed0e5642-c714-9034-50d8-f301be95fcf0/test-blob-8b242d50-9aba-b342-31d3-85d5806e3246?comp=block&blockid=dGVzdC1ibG9jay03ZDZlYjdkZC03ZTM3LTliNzMtNDZiNC05ZWUzMjc3ODMxN2I%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_18
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
x-ms-request-id: bdeb7301-2cf1-4ddd-a30b-7b79444d5479
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:34 GMT
x-ms-content-crc64: Z/9lfGFZ3jM=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: HEAD /devstoreaccount1/test-container-ed0e5642-c714-9034-50d8-f301be95fcf0/test-blob-8b242d50-9aba-b342-31d3-85d5806e3246

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:49:34 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:34 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x2581C9E0BFD4DE0"
content-md5: xx8G954hhPs25g9KgsTrAQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 636e7d9f-cedb-4636-b090-c4cc45a59975
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:34 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:34 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-ed0e5642-c714-9034-50d8-f301be95fcf0/test-blob-8b242d50-9aba-b342-31d3-85d5806e3246?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
Content-Type: application/xml
If-Match: "0x2581C9E0BFD4DE0"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay03ZDZlYjdkZC03ZTM3LTliNzMtNDZiNC05ZWUzMjc3ODMxN2I=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x273AA48EF14B1E0"
last-modified: Thu, 12 Nov 2026 00:49:34 GMT
content-md5: yPkCTZfRt+jxAEnOgpf8rA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6a8dfb67-aa67-4af8-a923-32b7835df2cf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-ed0e5642-c714-9034-50d8-f301be95fcf0?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
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
x-ms-request-id: a2c63824-f315-4625-844c-27f67c3c7249
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-400a1ae9-7f56-116b-3d13-98cf7a2a097b?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_22
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C7607662FD7CB0"
last-modified: Thu, 12 Nov 2026 00:49:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 84a8772b-c616-42c1-92ad-b1325fe6567d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-400a1ae9-7f56-116b-3d13-98cf7a2a097b/test-blob-6ada2ed1-98ff-2e00-b7cd-cccc81fc2e4a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
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
etag: "0x1F1154103328560"
last-modified: Thu, 12 Nov 2026 00:49:34 GMT
content-md5: nX7f9sh0Hui+0aBsSZlZgA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2b3c5979-2f4e-4679-adce-db697131f3d4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-400a1ae9-7f56-116b-3d13-98cf7a2a097b/test-blob-6ada2ed1-98ff-2e00-b7cd-cccc81fc2e4a?comp=block&blockid=dGVzdC1ibG9jay0xNTY5ZTBmZi04YTRkLTlmYmItMzk0YS00NjYyZjk1OWMzYjY%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
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
x-ms-request-id: 849238fc-365f-4dc0-a6a0-722e10ced204
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:34 GMT
x-ms-content-crc64: XnJF8iIEcK8=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-400a1ae9-7f56-116b-3d13-98cf7a2a097b/test-blob-6ada2ed1-98ff-2e00-b7cd-cccc81fc2e4a?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
Content-Type: application/xml
If-None-Match: "garbage"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay0xNTY5ZTBmZi04YTRkLTlmYmItMzk0YS00NjYyZjk1OWMzYjY=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D157566C5DEFD0"
last-modified: Thu, 12 Nov 2026 00:49:35 GMT
content-md5: UWi2uU8CZS+3b5v9ZTUyew==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fba92a85-0d5f-4726-8039-2ea1dc6a63dd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-400a1ae9-7f56-116b-3d13-98cf7a2a097b?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_26
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
x-ms-request-id: 9e1b17be-d37e-4974-80bc-7d2f3d23d466
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

