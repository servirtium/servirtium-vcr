## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d423c0e6-2acb-41af-3ab8-8344a522fe70?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).SetAccessPolicyAsync_AccessConditions
now: 2026-11-12T00:44:04.5972018+00:00

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
etag: "0x1CC204F176E4790"
last-modified: Thu, 12 Nov 2026 00:44:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 24c96eb6-97b7-4fad-b5d8-0a42690fad90
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d423c0e6-2acb-41af-3ab8-8344a522fe70?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>fibxrvixlvevtbchmqpd</Id><AccessPolicy><Start>2026-11-11T23:44:04.5972018Z</Start><Expiry>2026-11-12T01:44:04.5972018Z</Expiry><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21017760A58F160"
last-modified: Thu, 12 Nov 2026 00:44:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 011d497c-c352-4247-b3ae-3a9d0516715f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:04 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-d423c0e6-2acb-41af-3ab8-8344a522fe70?restype=container

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
x-ms-request-id: a6700aae-5cc5-422c-819a-40a5c3aae8b9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-c75124fa-c894-f760-1451-a0402fe6341b?restype=container

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
etag: "0x1E4F032F3EAC0D0"
last-modified: Thu, 12 Nov 2026 00:44:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 920010b5-4258-4dff-a5c4-c77d2e7500b2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-c75124fa-c894-f760-1451-a0402fe6341b?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/xml
If-Modified-Since: Wed, 11 Nov 2026 00:44:04 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>cnheqljosnptsjbthkjs</Id><AccessPolicy><Start>2026-11-11T23:44:04.5972018Z</Start><Expiry>2026-11-12T01:44:04.5972018Z</Expiry><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2261AE2FEE651A0"
last-modified: Thu, 12 Nov 2026 00:44:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: acf5869d-0006-4dae-ac00-f665537f23a4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:04 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-c75124fa-c894-f760-1451-a0402fe6341b?restype=container

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
x-ms-request-id: 3a32d488-cbef-4e2e-9f14-0e1aca51d8c7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-8dfac3f4-6630-98cc-a5f4-5b766f612d8b?restype=container

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
etag: "0x20DEC917EB2F040"
last-modified: Thu, 12 Nov 2026 00:44:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8199d451-2627-406e-9b8b-9ecf2d376823
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-8dfac3f4-6630-98cc-a5f4-5b766f612d8b?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
Content-Type: application/xml
If-Unmodified-Since: Fri, 13 Nov 2026 00:44:04 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>jkmibnamygloibppkdgs</Id><AccessPolicy><Start>2026-11-11T23:44:04.5972018Z</Start><Expiry>2026-11-12T01:44:04.5972018Z</Expiry><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26E197C8FD2F400"
last-modified: Thu, 12 Nov 2026 00:44:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f2061799-c2db-465b-9dfa-32f54f8e09a4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:04 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 8: DELETE /devstoreaccount1/test-container-8dfac3f4-6630-98cc-a5f4-5b766f612d8b?restype=container

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
x-ms-request-id: fe9094bb-2bd7-4677-ba1c-aacae3036e9b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-fd243e88-5374-01de-c86e-27daafa98f20?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20C94355B4EF6A0"
last-modified: Thu, 12 Nov 2026 00:44:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 01f617c9-80f1-4a86-85dd-37f9dabe4df4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-fd243e88-5374-01de-c86e-27daafa98f20?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: e544c7b2-d0ed-75a6-a1e1-8973dc2849b5
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20C94355B4EF6A0"
last-modified: Thu, 12 Nov 2026 00:44:04 GMT
x-ms-lease-id: e544c7b2-d0ed-75a6-a1e1-8973dc2849b5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c43369de-c44c-4c70-8b8d-f5697a5132e9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-fd243e88-5374-01de-c86e-27daafa98f20?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
Content-Type: application/xml
x-ms-lease-id: e544c7b2-d0ed-75a6-a1e1-8973dc2849b5
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>xbqrikdnrkrwoepbilhe</Id><AccessPolicy><Start>2026-11-11T23:44:04.5972018Z</Start><Expiry>2026-11-12T01:44:04.5972018Z</Expiry><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EDC2F061CA6860"
last-modified: Thu, 12 Nov 2026 00:44:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5b90719d-f70d-4815-b56c-b74083db0ab8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:04 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 12: DELETE /devstoreaccount1/test-container-fd243e88-5374-01de-c86e-27daafa98f20?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-lease-id: e544c7b2-d0ed-75a6-a1e1-8973dc2849b5
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
x-ms-request-id: 25f6b1c6-c865-4394-9ba3-71a7bff984cb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

