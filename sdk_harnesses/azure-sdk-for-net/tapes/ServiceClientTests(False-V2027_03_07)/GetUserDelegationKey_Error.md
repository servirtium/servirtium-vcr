## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: POST /devstoreaccount1?restype=service&comp=userdelegationkey

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ServiceClientTests(False,V2027_03_07).GetUserDelegationKey_Error
now: 2026-11-12T00:45:37.0627241+00:00

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_1
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<KeyInfo><Expiry>2026-11-12T01:45:37Z</Expiry></KeyInfo>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: AuthenticationFailed
x-ms-request-id: ec0a2d5c-4b1c-4476-9e71-6adce188605a
content-type: application/xml
Date: Thu, 12 Nov 2026 00:45:37 GMT
```
### Response body recorded for playback (403: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>AuthenticationFailed</Code>
  <Message>Server failed to authenticate the request. Make sure the value of the Authorization header is formed correctly including the signature.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
  <AuthenticationErrorDetail>Only authentication scheme Bearer is supported</AuthenticationErrorDetail>
</Error>
```

