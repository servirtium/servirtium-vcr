## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-aa2ed4ed-3e1c-b074-90f3-14d8af740d2c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).ClearPagesAsync_IfTags
now: 2026-11-12T00:51:44.2455495+00:00

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
etag: "0x22CEB9243136180"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2a97a101-c2da-4412-983b-dd5b32fee86d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-aa2ed4ed-3e1c-b074-90f3-14d8af740d2c/test-blob-3e5717c6-30d9-f120-4ed9-fac48eb7a338

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C3D1CB2E376D10"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5c1ffc3f-49b7-4a0a-8bd2-b60559dd2c15
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-aa2ed4ed-3e1c-b074-90f3-14d8af740d2c/test-blob-3e5717c6-30d9-f120-4ed9-fac48eb7a338?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>coolTag</Key><Value>true</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8d6e7711-8e66-4e49-98ff-de456844b0ec
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-aa2ed4ed-3e1c-b074-90f3-14d8af740d2c/test-blob-3e5717c6-30d9-f120-4ed9-fac48eb7a338?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-if-tags: "coolTag" = 'true'
x-ms-page-write: clear
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F5971D2CB459D0"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 26f26a59-9a53-4a01-9645-093b9218bbcf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-aa2ed4ed-3e1c-b074-90f3-14d8af740d2c?restype=container

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
x-ms-request-id: a24b365d-6231-4699-b15b-608debeb1176
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

