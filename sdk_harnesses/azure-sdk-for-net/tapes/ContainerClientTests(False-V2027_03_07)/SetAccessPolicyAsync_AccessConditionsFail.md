## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-60573123-402e-6b6e-aa36-a5578a93e4b2?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).SetAccessPolicyAsync_AccessConditionsFail
now: 2026-11-12T00:44:04.9926836+00:00

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
etag: "0x22378DAEFE67A80"
last-modified: Thu, 12 Nov 2026 00:44:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 31911d7b-52cd-425d-b850-127899e404cf
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-60573123-402e-6b6e-aa36-a5578a93e4b2?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/xml
If-Modified-Since: Fri, 13 Nov 2026 00:44:04 GMT
x-ms-blob-public-access: container
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>okbbdtssuxciscbkhrfs</Id><AccessPolicy><Start>2026-11-11T23:44:04.9926836Z</Start><Expiry>2026-11-12T01:44:04.9926836Z</Expiry><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 23380f13-df14-4b24-bacf-e93738f486bb
content-type: application/xml
Date: Thu, 12 Nov 2026 00:44:05 GMT
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

## Interaction 2: DELETE /devstoreaccount1/test-container-60573123-402e-6b6e-aa36-a5578a93e4b2?restype=container

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
x-ms-request-id: 91f39e8e-5295-4cd8-bebe-e260f9748558
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:05 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-82645a6d-19a1-624f-38bc-22be2e500490?restype=container

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
etag: "0x22024EE7FACDE00"
last-modified: Thu, 12 Nov 2026 00:44:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 955df650-882d-4e2a-aa0a-2440066d03c4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-82645a6d-19a1-624f-38bc-22be2e500490?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/xml
If-Unmodified-Since: Wed, 11 Nov 2026 00:44:04 GMT
x-ms-blob-public-access: container
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>dclurirtytjmuseegxok</Id><AccessPolicy><Start>2026-11-11T23:44:04.9926836Z</Start><Expiry>2026-11-12T01:44:04.9926836Z</Expiry><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 09f29082-74fe-4d1a-b555-068977ef24d2
content-type: application/xml
Date: Thu, 12 Nov 2026 00:44:05 GMT
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

## Interaction 5: DELETE /devstoreaccount1/test-container-82645a6d-19a1-624f-38bc-22be2e500490?restype=container

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
x-ms-request-id: 1bbb340e-505e-4167-8187-f304af2dfe8e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:05 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-7d5ecf0a-f1c5-2c2a-5385-2e63731814cf?restype=container

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
etag: "0x1DAF12A09DE6F80"
last-modified: Thu, 12 Nov 2026 00:44:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 650ebc95-defb-40db-90c0-172d877ad600
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-7d5ecf0a-f1c5-2c2a-5385-2e63731814cf?restype=container&comp=acl

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
﻿<SignedIdentifiers><SignedIdentifier><Id>fjbvmocmysfyyqocjxue</Id><AccessPolicy><Start>2026-11-11T23:44:04.9926836Z</Start><Expiry>2026-11-12T01:44:04.9926836Z</Expiry><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseNotPresentWithContainerOperation
x-ms-request-id: 3c971f56-43c1-4dc3-8d30-d26437467690
content-type: application/xml
Date: Thu, 12 Nov 2026 00:44:05 GMT
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

## Interaction 8: DELETE /devstoreaccount1/test-container-7d5ecf0a-f1c5-2c2a-5385-2e63731814cf?restype=container

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
x-ms-request-id: 3afe6ba3-7faf-43e4-871a-db7f829cdccf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:05 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

