## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d7e53186-6840-bab5-bc52-771ffcd9496c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).CommitBlockListAsync_AccessConditions
now: 2026-11-12T00:49:56.7091277+00:00

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
etag: "0x2120119566A0E00"
last-modified: Thu, 12 Nov 2026 00:49:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ef328032-6643-4c69-b061-3806735a31a0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d7e53186-6840-bab5-bc52-771ffcd9496c/test-blob-40d23aff-2c82-0f2c-f3c6-d82d0a9d3d84

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
etag: "0x2650DA7F58D2940"
last-modified: Thu, 12 Nov 2026 00:49:56 GMT
content-md5: W+XGJYPRBJ6EmYkHGdT/Xw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2000f503-01aa-4e89-a3ca-61316ea2c02b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-d7e53186-6840-bab5-bc52-771ffcd9496c/test-blob-40d23aff-2c82-0f2c-f3c6-d82d0a9d3d84?comp=block&blockid=dGVzdC1ibG9jay05MTA1OGM1NC03MTAwLTY0YWEtYWYzYi0yNTU2ZmZmYjMyN2M%3D

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
x-ms-request-id: 2acde775-54fd-4dd9-81ea-cf93b2911c88
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:56 GMT
x-ms-content-crc64: VeL1yztw3jo=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-d7e53186-6840-bab5-bc52-771ffcd9496c/test-blob-40d23aff-2c82-0f2c-f3c6-d82d0a9d3d84?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay05MTA1OGM1NC03MTAwLTY0YWEtYWYzYi0yNTU2ZmZmYjMyN2M=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25FB2BE8ACD96E0"
last-modified: Thu, 12 Nov 2026 00:49:56 GMT
content-md5: /Gwt+F/zNRvLwEA2+WeM1Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1916ad76-b5b0-480e-85a7-bc49ce5ac1fe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-d7e53186-6840-bab5-bc52-771ffcd9496c?restype=container

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
x-ms-request-id: 2133a94f-35f2-4e46-98b4-c63194820e0b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:56 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-2afea022-e829-1a5c-b40d-4e25001019d4?restype=container

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
etag: "0x1EC45112271AF60"
last-modified: Thu, 12 Nov 2026 00:49:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 134e241a-b681-4ad6-a1de-100d651175e3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-2afea022-e829-1a5c-b40d-4e25001019d4/test-blob-74c4598e-4d8d-6c04-3a3e-acbd2e58eef0

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
etag: "0x1E7E097C519C560"
last-modified: Thu, 12 Nov 2026 00:49:56 GMT
content-md5: bgYNvmt42yLe6KR7R/0DOw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 655a363c-3762-448e-9c8b-e2239e4ec245
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-2afea022-e829-1a5c-b40d-4e25001019d4/test-blob-74c4598e-4d8d-6c04-3a3e-acbd2e58eef0?comp=block&blockid=dGVzdC1ibG9jay01MGVhZjVkYS02ZDJiLWNmOTYtNTc3Ni0zZDFjMzFjODUzOTM%3D

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
x-ms-request-id: c9f214eb-8348-4e5f-acd9-f95d3fb012d2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:56 GMT
x-ms-content-crc64: Rvg8XgbW5Ds=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-2afea022-e829-1a5c-b40d-4e25001019d4/test-blob-74c4598e-4d8d-6c04-3a3e-acbd2e58eef0?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
Content-Type: application/xml
If-Modified-Since: Wed, 11 Nov 2026 00:49:56 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay01MGVhZjVkYS02ZDJiLWNmOTYtNTc3Ni0zZDFjMzFjODUzOTM=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2038D44E92C5980"
last-modified: Thu, 12 Nov 2026 00:49:56 GMT
content-md5: 8lWz4OmMk5sdrMF/qK6vmQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9d9c8a04-47b2-4961-91a2-48872d90240f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: DELETE /devstoreaccount1/test-container-2afea022-e829-1a5c-b40d-4e25001019d4?restype=container

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
x-ms-request-id: 7e453b35-b002-43e7-bf42-54c225b4b224
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-df008060-96f7-c37a-3a18-8cfacf867b53?restype=container

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
etag: "0x23D4C449FB90B60"
last-modified: Thu, 12 Nov 2026 00:49:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a15f771c-64f9-4266-9084-0cb2be8ccc6e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-df008060-96f7-c37a-3a18-8cfacf867b53/test-blob-bde74270-5636-b30f-6fdc-d5b1ded03c1c

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
etag: "0x2364AA890F63660"
last-modified: Thu, 12 Nov 2026 00:49:57 GMT
content-md5: bYinIA5Lb5cPOQ+FTtixQQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d0c31499-2512-4d7b-abce-ea1347b9e38c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-df008060-96f7-c37a-3a18-8cfacf867b53/test-blob-bde74270-5636-b30f-6fdc-d5b1ded03c1c?comp=block&blockid=dGVzdC1ibG9jay02ZmJlYTg4NS01YmJmLTE3ZWMtYTUxNy1lZWRmMmJkY2E2MmQ%3D

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
x-ms-request-id: e0572c36-c080-4f2d-bbb2-903947fd8391
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:57 GMT
x-ms-content-crc64: S8nfOvrqPvE=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-df008060-96f7-c37a-3a18-8cfacf867b53/test-blob-bde74270-5636-b30f-6fdc-d5b1ded03c1c?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
Content-Type: application/xml
If-Unmodified-Since: Fri, 13 Nov 2026 00:49:56 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay02ZmJlYTg4NS01YmJmLTE3ZWMtYTUxNy1lZWRmMmJkY2E2MmQ=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FB8D0FCAC856B0"
last-modified: Thu, 12 Nov 2026 00:49:57 GMT
content-md5: Jm6fzULCXsQkMf1PoUo+hg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c2bfa30a-fc7e-43f7-9627-2fb9b39f5be2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: DELETE /devstoreaccount1/test-container-df008060-96f7-c37a-3a18-8cfacf867b53?restype=container

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
x-ms-request-id: 626879a7-9063-4a0f-94b5-ebae41d0a530
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-6aba3291-ee57-3410-3bcb-513843fb2a73?restype=container

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
etag: "0x257F8B6E67CD520"
last-modified: Thu, 12 Nov 2026 00:49:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1ca6a69e-543c-4213-a6f4-527b8fd61445
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-6aba3291-ee57-3410-3bcb-513843fb2a73/test-blob-7f1f8c74-bb29-480d-7cd2-14e2d9f7d086

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
etag: "0x25843C9C73666C0"
last-modified: Thu, 12 Nov 2026 00:49:57 GMT
content-md5: Kq3TOHlmKk7gKOeH/jPnEQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2f2b248d-c7c8-47f6-ac29-f2a5c819581a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-6aba3291-ee57-3410-3bcb-513843fb2a73/test-blob-7f1f8c74-bb29-480d-7cd2-14e2d9f7d086?comp=block&blockid=dGVzdC1ibG9jay05MTQ4MzA2Zi1kYzgzLWVhMzctYjEzNC0wYjE5MzBiMGI0ODg%3D

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
x-ms-request-id: 319ef0df-c255-4966-a7a1-7d7a21d9ffe9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:57 GMT
x-ms-content-crc64: 9bEQqini+YE=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: HEAD /devstoreaccount1/test-container-6aba3291-ee57-3410-3bcb-513843fb2a73/test-blob-7f1f8c74-bb29-480d-7cd2-14e2d9f7d086

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
last-modified: Thu, 12 Nov 2026 00:49:57 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:57 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x25843C9C73666C0"
content-md5: Kq3TOHlmKk7gKOeH/jPnEQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 179d5b5b-2939-4484-82ae-eee3348edd13
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:57 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:57 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-6aba3291-ee57-3410-3bcb-513843fb2a73/test-blob-7f1f8c74-bb29-480d-7cd2-14e2d9f7d086?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
Content-Type: application/xml
If-Match: "0x25843C9C73666C0"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay05MTQ4MzA2Zi1kYzgzLWVhMzctYjEzNC0wYjE5MzBiMGI0ODg=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26AAB7B43102020"
last-modified: Thu, 12 Nov 2026 00:49:57 GMT
content-md5: 9OfX4+5hLGv2WfxoVuLjrw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 00632a16-12ab-4efd-9d2f-e4860188cf69
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-6aba3291-ee57-3410-3bcb-513843fb2a73?restype=container

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
x-ms-request-id: 9bc72f48-e43b-443f-b9ce-b2c2596ba5cb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-a13d91e5-7c43-fc76-64a5-a37d107a3724?restype=container

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
etag: "0x27D40DF30C6D400"
last-modified: Thu, 12 Nov 2026 00:49:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a44154e1-ddac-40da-bbfc-8f7aa593a21d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-a13d91e5-7c43-fc76-64a5-a37d107a3724/test-blob-84fb2f76-2ef3-882b-3a36-6e669a263484

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
etag: "0x255A6A716B5BEC0"
last-modified: Thu, 12 Nov 2026 00:49:57 GMT
content-md5: ZSByp0tvaG/v7U3Qt/Oj/Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 01a254ba-d960-411a-85c3-d1edbd675a17
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-a13d91e5-7c43-fc76-64a5-a37d107a3724/test-blob-84fb2f76-2ef3-882b-3a36-6e669a263484?comp=block&blockid=dGVzdC1ibG9jay02MGUzY2Y5Ny00ODY1LThhZjUtOTgzYi1hYWRlZDllOTFiZGI%3D

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
x-ms-request-id: c136a0d5-e9b9-49dd-b597-165edde967b8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:57 GMT
x-ms-content-crc64: /OxcoL2V89s=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-a13d91e5-7c43-fc76-64a5-a37d107a3724/test-blob-84fb2f76-2ef3-882b-3a36-6e669a263484?comp=blocklist

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
﻿<BlockList><Latest>dGVzdC1ibG9jay02MGUzY2Y5Ny00ODY1LThhZjUtOTgzYi1hYWRlZDllOTFiZGI=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x277E453F8D31EA0"
last-modified: Thu, 12 Nov 2026 00:49:57 GMT
content-md5: POFWLC1HZ1bi4TKxUlDS5w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b9eda92a-9e33-462d-acd7-e4dc56f8a753
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-a13d91e5-7c43-fc76-64a5-a37d107a3724?restype=container

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
x-ms-request-id: d3ed3787-efaa-4241-8181-9ddca55ad53f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

