## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9ab68709-113d-b61e-2f0d-eb123c4506a8?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).SetAccessPolicyAsync_AccessConditionsFail
now: 2026-11-12T00:45:09.0870919+00:00

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
etag: "0x21145649565C940"
last-modified: Thu, 12 Nov 2026 00:45:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 854567f2-9f5b-4a4a-bbde-6d401a093225
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:09 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9ab68709-113d-b61e-2f0d-eb123c4506a8?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/xml
If-Modified-Since: Fri, 13 Nov 2026 00:45:09 GMT
x-ms-blob-public-access: container
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>globpdwlxqgeljxfqrhx</Id><AccessPolicy><Start>2026-11-11T23:45:09.0870919Z</Start><Expiry>2026-11-12T01:45:09.0870919Z</Expiry><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: d06e5795-6401-4958-bd21-444f01a9e69d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:45:09 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 2: DELETE /devstoreaccount1/test-container-9ab68709-113d-b61e-2f0d-eb123c4506a8?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d006c3e9-1699-44e5-a75c-17c5132ad778
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:09 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-3340ced6-037a-5c5f-6900-9136fa9b1110?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22FA7AF1F4A8B00"
last-modified: Thu, 12 Nov 2026 00:45:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 93fc058a-51c4-45cf-a31d-233e7512cece
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:09 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-3340ced6-037a-5c5f-6900-9136fa9b1110?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/xml
If-Unmodified-Since: Wed, 11 Nov 2026 00:45:09 GMT
x-ms-blob-public-access: container
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>afavnisrfpqhewxomfxg</Id><AccessPolicy><Start>2026-11-11T23:45:09.0870919Z</Start><Expiry>2026-11-12T01:45:09.0870919Z</Expiry><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 15b985a7-7206-4e35-a899-24e77d8e9a67
content-type: application/xml
Date: Thu, 12 Nov 2026 00:45:09 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-3340ced6-037a-5c5f-6900-9136fa9b1110?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 31dfcbe3-e166-456f-be54-eb9bbbffd497
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:09 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-e651718b-bb44-12d3-c606-4720196d25b1?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2663B8ED287EEC0"
last-modified: Thu, 12 Nov 2026 00:45:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c658e1c9-602c-469d-b9b6-b454d6591f7e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:09 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-e651718b-bb44-12d3-c606-4720196d25b1?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
Content-Type: application/xml
x-ms-blob-public-access: container
x-ms-lease-id: "garbage"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>qljpgvnwtlnfjtrmckyf</Id><AccessPolicy><Start>2026-11-11T23:45:09.0870919Z</Start><Expiry>2026-11-12T01:45:09.0870919Z</Expiry><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseNotPresentWithContainerOperation
x-ms-request-id: a5e28bcf-5191-4d7f-9865-af03caa32eb4
content-type: application/xml
Date: Thu, 12 Nov 2026 00:45:09 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>LeaseNotPresentWithContainerOperation</Code>
  <Message>A lease ID was specified, but the lease for the container has expired.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 8: DELETE /devstoreaccount1/test-container-e651718b-bb44-12d3-c606-4720196d25b1?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9fb8e986-9b92-4b1c-9d5b-43178afa61ac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:09 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

