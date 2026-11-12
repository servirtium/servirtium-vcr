## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: DELETE /devstoreaccount1/test-container-525280da-57ce-6b40-978f-267f75c536b0/test-blob-6c63a075-0745-db6d-a24f-46e195fa33de

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DeleteIfExistsAsync_ContainerNotExists
now: 2026-11-12T00:47:48.5302420+00:00

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
x-ms-request-id: c5b9df42-581c-4abd-b6dc-17a40ca9cfa3
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:48 GMT
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

## Interaction 1: HEAD /devstoreaccount1/test-container-525280da-57ce-6b40-978f-267f75c536b0/test-blob-6c63a075-0745-db6d-a24f-46e195fa33de

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
x-ms-request-id: a3452ee0-4c6c-45a4-8b3e-7d76d40d51f0
Date: Thu, 12 Nov 2026 00:47:48 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

