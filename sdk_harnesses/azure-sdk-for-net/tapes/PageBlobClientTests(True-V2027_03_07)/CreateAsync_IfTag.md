## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1d9c9e46-ef66-4252-baed-8307b54a2f76?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).CreateAsync_IfTag
now: 2026-11-12T00:51:45.6466601+00:00

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
etag: "0x1CA6FD962712CF0"
last-modified: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fde2225e-e49e-4988-b04e-96d0da783c4a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1d9c9e46-ef66-4252-baed-8307b54a2f76/test-blob-a5c4a21c-5736-c2a0-b899-18467fe45f03

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-content-length: 1024
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
etag: "0x1F4D344FE3EEAC0"
last-modified: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5cfc70c5-8fb0-445b-9af7-8079bfdc6be3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-1d9c9e46-ef66-4252-baed-8307b54a2f76/test-blob-a5c4a21c-5736-c2a0-b899-18467fe45f03?comp=tags

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
x-ms-request-id: 37fee598-1448-4421-a433-82cf04db5523
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:45 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-1d9c9e46-ef66-4252-baed-8307b54a2f76/test-blob-a5c4a21c-5736-c2a0-b899-18467fe45f03

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20E9170529CFC40"
last-modified: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 459adab4-2f85-489c-89b3-d5e747e10e33
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-1d9c9e46-ef66-4252-baed-8307b54a2f76?restype=container

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
x-ms-request-id: 736e35d7-45f0-4d62-96cd-d4fd5d083fc0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

