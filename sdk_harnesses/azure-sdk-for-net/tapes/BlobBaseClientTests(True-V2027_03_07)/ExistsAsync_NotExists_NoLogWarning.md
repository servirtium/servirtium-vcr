## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: HEAD /devstoreaccount1/test-container-5d137afb-7206-3ee7-adf6-28bc44f87843/test-blob-7cfa463c-450d-2578-aa20-44265cfbc952

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).ExistsAsync_NotExists_NoLogWarning
now: 2026-11-12T00:48:01.8693220+00:00

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
x-ms-request-id: 4e7e2d5d-0b8c-49cc-9136-d60bbf0e94be
Date: Thu, 12 Nov 2026 00:48:01 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

