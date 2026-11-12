## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f276b04b-163a-5ce6-f117-34e1173cc8ed/test-blob-73fd670d-73ab-ab9c-5a03-d2d489203b12

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).CreateIfNotExistsAsync_Error
now: 2026-11-12T00:50:51.6547715+00:00

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_1
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
x-ms-error-code: ContainerNotFound
x-ms-request-id: 8d53ea3d-a810-4699-81a8-90daf3cc5f5e
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:51 GMT
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

