## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1310ee1f-b050-b049-a033-429d9fdfdb34?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).CommitBlockListAsync_EncryptionScope
now: 2026-11-12T00:49:59.3898873+00:00

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
etag: "0x213F13D1A8BAF80"
last-modified: Thu, 12 Nov 2026 00:49:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cb660911-06e2-4be2-b05c-6c348c983de8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:59 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1310ee1f-b050-b049-a033-429d9fdfdb34/test-blob-b35ed403-ec34-f1cf-4c21-ff8e15e3f69c?comp=block&blockid=dGVzdC1ibG9jay00YWI0YWZkYi1lZWEwLTE2ZTktMGIzMy1jZGQ5Zjg1YWEzMmI%3D

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
x-ms-request-id: 998abd43-ad3f-417b-9f3f-b59db2b8cb8d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:59 GMT
x-ms-content-crc64: bhbvGvobbH4=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-1310ee1f-b050-b049-a033-429d9fdfdb34/test-blob-b35ed403-ec34-f1cf-4c21-ff8e15e3f69c?comp=block&blockid=dGVzdC1ibG9jay05ZDAzZmQzYS1jODM5LTc3MzYtNWFlYi1iZTA3YzU2M2JlODA%3D

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
x-ms-request-id: 60f9db6b-6ffa-4b7d-91b8-4a89d60cbfb9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:59 GMT
x-ms-content-crc64: bhbvGvobbH4=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-1310ee1f-b050-b049-a033-429d9fdfdb34/test-blob-b35ed403-ec34-f1cf-4c21-ff8e15e3f69c?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay00YWI0YWZkYi1lZWEwLTE2ZTktMGIzMy1jZGQ5Zjg1YWEzMmI=</Latest><Latest>dGVzdC1ibG9jay05ZDAzZmQzYS1jODM5LTc3MzYtNWFlYi1iZTA3YzU2M2JlODA=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FE635196BE0DE0"
last-modified: Thu, 12 Nov 2026 00:49:59 GMT
content-md5: CcRZGNIugzbWluhrzCvTpQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 619801cc-2ddd-4409-aff5-126bdca87dcb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-1310ee1f-b050-b049-a033-429d9fdfdb34?restype=container

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
x-ms-request-id: 8b8ac9e9-05d9-4b1b-91e3-4ca9da9112b7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:59 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

