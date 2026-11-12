## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-cf2d4ca6-b761-2fb6-889a-fc39f6609632?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).UpdateSequenceNumberAsync_IfTags
now: 2026-11-12T00:52:00.5563701+00:00

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
etag: "0x217E51C86065CC0"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 25c56e32-6b2b-43b8-9dd0-12fab7ee6e4d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-cf2d4ca6-b761-2fb6-889a-fc39f6609632/test-blob-a38e17df-130c-fa64-e285-d66c57bb3e5b

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
etag: "0x239B08B70064A40"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b3b715eb-4ae1-481d-9f2d-665fad484013
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-cf2d4ca6-b761-2fb6-889a-fc39f6609632/test-blob-a38e17df-130c-fa64-e285-d66c57bb3e5b?comp=tags

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
x-ms-request-id: 27fd97e3-89c3-4619-8f7b-2496fa7ea0a9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-cf2d4ca6-b761-2fb6-889a-fc39f6609632/test-blob-a38e17df-130c-fa64-e285-d66c57bb3e5b?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-blob-sequence-number: 5
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-sequence-number-action: update
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DA5141B7C94AB0"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-blob-sequence-number: 5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1bf1ebd0-d14b-47d7-9701-05a408b3bc75
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-cf2d4ca6-b761-2fb6-889a-fc39f6609632?restype=container

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
x-ms-request-id: aab39902-e3ae-4c52-b381-62535cddaf84
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

