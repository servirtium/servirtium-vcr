## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: DELETE /devstoreaccount1/test-container-f498e1b2-f0c8-0784-d2e6-782b0f24db33/test-blob-0b8611d0-9f36-46cc-1521-a71ce9903769

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).DeleteBlobIfExistsAsync_ContainerNotExists
now: 2026-11-12T00:44:41.8896940+00:00

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
x-ms-request-id: 9cc31dea-b24e-4876-8f31-6636c04af5d9
content-type: application/xml
Date: Thu, 12 Nov 2026 00:44:41 GMT
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

## Interaction 1: HEAD /devstoreaccount1/test-container-f498e1b2-f0c8-0784-d2e6-782b0f24db33/test-blob-0b8611d0-9f36-46cc-1521-a71ce9903769

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
x-ms-request-id: 7b811fd2-b34e-4037-86e7-d281a8d038c6
Date: Thu, 12 Nov 2026 00:44:41 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

