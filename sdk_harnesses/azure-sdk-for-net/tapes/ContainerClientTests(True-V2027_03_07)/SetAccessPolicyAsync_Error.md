## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-91af6b25-8f66-1d8b-9e23-9fc7ab6faca7?restype=container&comp=acl

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).SetAccessPolicyAsync_Error
now: 2026-11-12T00:45:09.4690999+00:00

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_1
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>oloopcskxfxmurqgoyae</Id><AccessPolicy><Start>2026-11-11T23:45:09.4690999Z</Start><Expiry>2026-11-12T01:45:09.4690999Z</Expiry><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ContainerNotFound
x-ms-request-id: fa44f3be-6b31-4a01-ad5f-2f282a24ba2d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:45:09 GMT
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

