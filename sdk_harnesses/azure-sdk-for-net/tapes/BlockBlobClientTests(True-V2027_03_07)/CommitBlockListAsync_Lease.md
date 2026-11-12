## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9bb831a3-cf5b-7ebe-c2bb-42b76305f9f9?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).CommitBlockListAsync_Lease
now: 2026-11-12T00:50:00.7811431+00:00

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
etag: "0x22F9904DE344AE0"
last-modified: Thu, 12 Nov 2026 00:50:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 33863d47-ae59-4853-a6fd-63670f4a1090
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9bb831a3-cf5b-7ebe-c2bb-42b76305f9f9/test-blob-846c6e78-33da-4616-22c2-9cea6dad2140?comp=block&blockid=dGVzdC1ibG9jay1mMDE0YTY1ZS1hM2Q3LWMyNmQtMzIzOS04Mzk2Y2UxZDcwODc%3D

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
x-ms-request-id: 63b2444e-be6f-4a6c-85d1-0a979d86b270
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:00 GMT
x-ms-content-crc64: 5/KL+HNDxZs=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-9bb831a3-cf5b-7ebe-c2bb-42b76305f9f9/test-blob-846c6e78-33da-4616-22c2-9cea6dad2140?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 1f764546-d36f-1249-709f-1a51d695644e
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E0EC0A31F8EF60"
last-modified: Thu, 12 Nov 2026 00:50:00 GMT
x-ms-lease-id: 1f764546-d36f-1249-709f-1a51d695644e
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1c0aaaee-ac00-489f-81ec-f3a6d346819e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-9bb831a3-cf5b-7ebe-c2bb-42b76305f9f9/test-blob-846c6e78-33da-4616-22c2-9cea6dad2140?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-lease-id: 1f764546-d36f-1249-709f-1a51d695644e
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay1mMDE0YTY1ZS1hM2Q3LWMyNmQtMzIzOS04Mzk2Y2UxZDcwODc=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EBD616B11FEFD0"
last-modified: Thu, 12 Nov 2026 00:50:00 GMT
content-md5: jLy/WWFZr7v61pdNlYF6cg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d6499fba-ab94-43b3-b9a0-79aa1e3a47ac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-9bb831a3-cf5b-7ebe-c2bb-42b76305f9f9?restype=container

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
x-ms-request-id: 7b468c88-0d29-42d2-a271-279f1ee3a9b7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

