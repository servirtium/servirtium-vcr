## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-aae40ed7-3101-745f-219b-9f69447b5e37?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).CreateAsync_IfTag
now: 2026-11-12T00:51:15.6845384+00:00

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
etag: "0x26A4B32BB669D00"
last-modified: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4cd13da9-4880-422b-9400-9dd64361aa9f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-aae40ed7-3101-745f-219b-9f69447b5e37/test-blob-ba0d8639-95fc-f8a1-b0e2-a21aae6a1e75

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
etag: "0x21D3154DD86E7C0"
last-modified: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 59ee1da5-d1dd-4a48-85cc-63815b6c5a1e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-aae40ed7-3101-745f-219b-9f69447b5e37/test-blob-ba0d8639-95fc-f8a1-b0e2-a21aae6a1e75?comp=tags

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
x-ms-request-id: b8a22b47-fd0d-42f6-a339-0fc5a8fdc4e9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:15 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-aae40ed7-3101-745f-219b-9f69447b5e37/test-blob-ba0d8639-95fc-f8a1-b0e2-a21aae6a1e75

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
etag: "0x21A5B131B1A2F40"
last-modified: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d01298ef-17c3-43db-b923-75955f4f126e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-aae40ed7-3101-745f-219b-9f69447b5e37?restype=container

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
x-ms-request-id: 0a6a91de-0266-466a-9eea-9bf0bb32ea93
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

