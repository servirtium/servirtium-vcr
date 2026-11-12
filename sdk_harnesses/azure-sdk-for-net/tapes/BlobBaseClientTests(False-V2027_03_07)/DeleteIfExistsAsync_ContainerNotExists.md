## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: DELETE /devstoreaccount1/test-container-ec33b730-aeea-86d0-8460-d8b388d400ea/test-blob-3f2272c6-a75c-5923-ed28-b4b4330c368f

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DeleteIfExistsAsync_ContainerNotExists
now: 2026-11-12T00:46:32.9204087+00:00

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
x-ms-request-id: c1bd3244-8d2d-4b19-ae01-765c9e59e4a9
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:32 GMT
```
### Response body recorded for playback (404: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ContainerNotFound</Code>
  <Message>The specified container does not exist.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 1: HEAD /devstoreaccount1/test-container-ec33b730-aeea-86d0-8460-d8b388d400ea/test-blob-3f2272c6-a75c-5923-ed28-b4b4330c368f

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
x-ms-error-code: ContainerNotFound
x-ms-request-id: 1cb71638-64bd-4b8e-892d-029fb55e417d
Date: Thu, 12 Nov 2026 00:46:32 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

