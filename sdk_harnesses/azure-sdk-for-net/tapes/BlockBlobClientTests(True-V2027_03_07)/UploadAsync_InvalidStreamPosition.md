## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7e2bbd9f-0904-879d-c206-8fabc49d27d0?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).UploadAsync_InvalidStreamPosition
now: 2026-11-12T00:50:12.8126801+00:00

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
etag: "0x216B0A5E5091A20"
last-modified: Thu, 12 Nov 2026 00:50:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 58eab2de-cccf-4d46-9166-14b047ba4233
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: DELETE /devstoreaccount1/test-container-7e2bbd9f-0904-879d-c206-8fabc49d27d0?restype=container

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
x-ms-request-id: 7c16ff5d-76cb-4ef2-ba14-e8bd505616d7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

