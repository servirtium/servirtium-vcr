## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: DELETE /devstoreaccount1/test-container-351e4f74-34a8-bc93-16be-76bf7a7a5e54/test-blob-6fdfe7d0-067a-bb32-b37c-0fd821791154

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).DeleteBlobIfExistsAsync_ContainerNotExists
now: 2026-11-12T00:43:36.5702219+00:00

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
x-ms-request-id: 758f6ca0-648b-48fc-824c-311741eae494
content-type: application/xml
Date: Thu, 12 Nov 2026 00:43:36 GMT
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

## Interaction 1: HEAD /devstoreaccount1/test-container-351e4f74-34a8-bc93-16be-76bf7a7a5e54/test-blob-6fdfe7d0-067a-bb32-b37c-0fd821791154

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
x-ms-request-id: a515e0f5-1878-416f-a9e3-e7d15c209c7f
Date: Thu, 12 Nov 2026 00:43:36 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

