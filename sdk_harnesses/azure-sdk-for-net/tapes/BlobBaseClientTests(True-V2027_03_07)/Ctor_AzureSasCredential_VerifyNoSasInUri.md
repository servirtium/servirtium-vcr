## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2399ecda-5d9a-74af-0f0f-b3ddcffae102?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).Ctor_AzureSasCredential_VerifyNoSasInUri
now: 2026-11-12T00:47:42.6823664+00:00

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
etag: "0x24872B0E9D5C720"
last-modified: Thu, 12 Nov 2026 00:47:42 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: edd5b0ea-7a12-4c6a-8d97-a2aaf5863b7c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:42 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: DELETE /devstoreaccount1/test-container-2399ecda-5d9a-74af-0f0f-b3ddcffae102?restype=container

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
x-ms-request-id: d56368c5-dbb6-4247-b8d3-0068e65b2b73
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:42 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

