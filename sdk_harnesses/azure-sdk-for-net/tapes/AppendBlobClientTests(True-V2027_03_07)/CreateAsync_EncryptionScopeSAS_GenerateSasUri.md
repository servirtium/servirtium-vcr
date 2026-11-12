## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5d124b77-c371-53ab-569f-74d9c8f2cf44?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).CreateAsync_EncryptionScopeSAS_GenerateSasUri
now: 2026-11-12T00:50:49.9338961+00:00

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
etag: "0x27D785DAC3E6780"
last-modified: Thu, 12 Nov 2026 00:50:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c9d074bf-d97b-48b0-b923-10cdccabf70f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:49 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5d124b77-c371-53ab-569f-74d9c8f2cf44/test-blob-1265ea3d-54ee-9725-0792-489214417ad4?sv=2027-03-07&se=2026-11-13T00%3A50%3A49Z&sr=b&sp=racwdxyltmei&sig=BG2LIyieBZKwheSCufBtyBx4DJtziN%2BSrpjLHoQGnI8%3D

### Request headers recorded for playback:

```
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21B1D490061DDC0"
last-modified: Thu, 12 Nov 2026 00:50:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f7eecbe0-f925-4b81-b069-dcb65f5297ed
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-5d124b77-c371-53ab-569f-74d9c8f2cf44?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
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
x-ms-request-id: 10dbdf02-d61e-4b0c-863d-cc049f56b108
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:49 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

