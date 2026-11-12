## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-42691e28-0f90-fdc1-9c1e-99cd7ab382fc?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).SetAccessPolicyAsync_AccessConditions
now: 2026-11-12T00:45:08.6821399+00:00

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
etag: "0x1FBFDA6C1CA9F10"
last-modified: Thu, 12 Nov 2026 00:45:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4e5db2aa-18e1-4f53-90a0-1f5ecd9ccfce
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-42691e28-0f90-fdc1-9c1e-99cd7ab382fc?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>drskwnhxlhdqlothvbbl</Id><AccessPolicy><Start>2026-11-11T23:45:08.6821399Z</Start><Expiry>2026-11-12T01:45:08.6821399Z</Expiry><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DE65BB9F3C9F30"
last-modified: Thu, 12 Nov 2026 00:45:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 77de971a-be3d-435a-944d-6fc71aaf3887
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:08 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-42691e28-0f90-fdc1-9c1e-99cd7ab382fc?restype=container

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
x-ms-request-id: 93bf8e39-69df-4f9f-b38a-da45c0cbb6b2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-752d5a2f-61d0-2df8-b809-c764f5b1c25c?restype=container

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
etag: "0x21C35F829B28420"
last-modified: Thu, 12 Nov 2026 00:45:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c175813c-0d16-4f33-acea-5a7f85c854fc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-752d5a2f-61d0-2df8-b809-c764f5b1c25c?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/xml
If-Modified-Since: Wed, 11 Nov 2026 00:45:08 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>pqtkggwxciprccxgcett</Id><AccessPolicy><Start>2026-11-11T23:45:08.6821399Z</Start><Expiry>2026-11-12T01:45:08.6821399Z</Expiry><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2377D754F76A800"
last-modified: Thu, 12 Nov 2026 00:45:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fdf173e0-227c-42c5-ba48-b57796520979
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:08 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-752d5a2f-61d0-2df8-b809-c764f5b1c25c?restype=container

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
x-ms-request-id: 9d162b9b-d886-4239-83db-92ad5e02a357
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-d54d95f1-3941-54ef-39b3-01e9c1232a6d?restype=container

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
etag: "0x267BB1631F4DBA0"
last-modified: Thu, 12 Nov 2026 00:45:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 474c7dd2-fa6f-4132-8d70-0cba41caf541
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-d54d95f1-3941-54ef-39b3-01e9c1232a6d?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
Content-Type: application/xml
If-Unmodified-Since: Fri, 13 Nov 2026 00:45:08 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>hqevlwqrartclhxbvnrq</Id><AccessPolicy><Start>2026-11-11T23:45:08.6821399Z</Start><Expiry>2026-11-12T01:45:08.6821399Z</Expiry><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24D8DF0BAF88740"
last-modified: Thu, 12 Nov 2026 00:45:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e49d5121-912e-4d4d-b247-54ae0fc39532
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:08 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 8: DELETE /devstoreaccount1/test-container-d54d95f1-3941-54ef-39b3-01e9c1232a6d?restype=container

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
x-ms-request-id: 3fae828a-e690-4701-a4a1-06cfc12bbb61
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-7daed41a-90d1-4555-c877-577bed8b4776?restype=container

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
etag: "0x2454AD1D3A15A80"
last-modified: Thu, 12 Nov 2026 00:45:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7939e498-70ab-4ff9-8035-c7e61764bf22
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-7daed41a-90d1-4555-c877-577bed8b4776?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: e49c6e78-3849-883c-8812-b284f3502383
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2454AD1D3A15A80"
last-modified: Thu, 12 Nov 2026 00:45:08 GMT
x-ms-lease-id: e49c6e78-3849-883c-8812-b284f3502383
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ea8f879e-4a07-4523-b56d-1e62823cd00b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-7daed41a-90d1-4555-c877-577bed8b4776?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
Content-Type: application/xml
x-ms-lease-id: e49c6e78-3849-883c-8812-b284f3502383
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>yxiyhqfkpromdjwsnaxs</Id><AccessPolicy><Start>2026-11-11T23:45:08.6821399Z</Start><Expiry>2026-11-12T01:45:08.6821399Z</Expiry><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23A745B11633360"
last-modified: Thu, 12 Nov 2026 00:45:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fa6f958d-52d7-45bb-ab4a-0d801199258a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:08 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 12: DELETE /devstoreaccount1/test-container-7daed41a-90d1-4555-c877-577bed8b4776?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-lease-id: e49c6e78-3849-883c-8812-b284f3502383
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
x-ms-request-id: 0f63a6e3-41b6-4140-81e8-98ca35abc517
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

