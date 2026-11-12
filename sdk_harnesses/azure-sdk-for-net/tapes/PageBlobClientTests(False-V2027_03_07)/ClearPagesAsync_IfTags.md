## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-6748b10f-77eb-4ca0-1a1f-5de2ec7ce2e9?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).ClearPagesAsync_IfTags
now: 2026-11-12T00:51:14.3447168+00:00

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
etag: "0x258CB41030AC5C0"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e305b792-9348-40d7-96bf-d1578ba43bf0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-6748b10f-77eb-4ca0-1a1f-5de2ec7ce2e9/test-blob-97e66964-bb8d-d893-66f9-4e781e19da4d

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
etag: "0x234D1A9F881C120"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2f233729-d277-4516-8fbb-59c77c28c5b8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-6748b10f-77eb-4ca0-1a1f-5de2ec7ce2e9/test-blob-97e66964-bb8d-d893-66f9-4e781e19da4d?comp=tags

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
x-ms-request-id: 8ac8085d-1036-4265-9ed3-30133e919a9c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-6748b10f-77eb-4ca0-1a1f-5de2ec7ce2e9/test-blob-97e66964-bb8d-d893-66f9-4e781e19da4d?comp=page

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
etag: "0x1D84A43F9715AF0"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: de538594-2845-4cfc-a138-44f8cf45a167
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-6748b10f-77eb-4ca0-1a1f-5de2ec7ce2e9?restype=container

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
x-ms-request-id: 8230c394-c8ca-49c1-989d-4a41de2cd3c8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

