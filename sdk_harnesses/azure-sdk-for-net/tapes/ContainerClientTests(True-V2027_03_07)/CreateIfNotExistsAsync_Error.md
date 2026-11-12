## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-19caf5ff-a864-99d0-e795-46e715971079?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).CreateIfNotExistsAsync_Error
now: 2026-11-12T00:44:37.1563147+00:00

### Request headers recorded for playback:

```
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: AuthorizationFailure
x-ms-request-id: 78812ad9-48b2-40f8-8493-b83623468dc1
content-type: application/xml
Date: Thu, 12 Nov 2026 00:44:37 GMT
```
### Response body recorded for playback (403: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>AuthorizationFailure</Code>
  <Message>Server failed to authenticate the request. Make sure the value of the Authorization header is formed correctly including the signature.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

