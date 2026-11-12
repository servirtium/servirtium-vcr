## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-53eb91e6-49e7-b56e-9e03-6e363ea83eb4?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).UploadAsync_IfTags
now: 2026-11-12T00:49:49.9439158+00:00

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
etag: "0x1CB7B7EECA35FA0"
last-modified: Thu, 12 Nov 2026 00:49:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4faa7035-ecfd-46cf-9206-304b7daddd31
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:49 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-53eb91e6-49e7-b56e-9e03-6e363ea83eb4/test-blob-ca4595e2-ec4e-61c5-ab86-c02a8e2b186a

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
etag: "0x266455FEE397340"
last-modified: Thu, 12 Nov 2026 00:49:49 GMT
content-md5: i3emBLcYW4oRS4utBqgDAA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 34e24a62-71a1-4a32-89e2-dab9111b076b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-53eb91e6-49e7-b56e-9e03-6e363ea83eb4/test-blob-ca4595e2-ec4e-61c5-ab86-c02a8e2b186a?comp=tags

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
x-ms-request-id: 96779d8d-0e12-405a-89d4-60a6d19127a7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:50 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-53eb91e6-49e7-b56e-9e03-6e363ea83eb4/test-blob-ca4595e2-ec4e-61c5-ab86-c02a8e2b186a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-if-tags: "coolTag" = 'true'
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
etag: "0x1F8A81DB19222C0"
last-modified: Thu, 12 Nov 2026 00:49:50 GMT
content-md5: i3emBLcYW4oRS4utBqgDAA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 32af21b6-6e53-4a63-8f83-94ad84b2ed72
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-53eb91e6-49e7-b56e-9e03-6e363ea83eb4?restype=container

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
x-ms-request-id: 97368e88-54ae-4007-97ff-34d4c2f62ac3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

