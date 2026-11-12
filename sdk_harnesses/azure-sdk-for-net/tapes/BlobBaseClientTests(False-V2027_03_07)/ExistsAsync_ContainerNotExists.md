## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: HEAD /devstoreaccount1/test-container-f665d5f6-e37e-4cfe-1fcc-994e00b439d3/test-blob-aeff7ba9-c882-969f-937c-47ddcfe12910

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).ExistsAsync_ContainerNotExists
now: 2026-11-12T00:46:45.6431351+00:00

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
x-ms-error-code: ContainerNotFound
x-ms-request-id: b85fd5c7-688e-45ff-9976-8bc2d0e9fb53
Date: Thu, 12 Nov 2026 00:46:45 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

