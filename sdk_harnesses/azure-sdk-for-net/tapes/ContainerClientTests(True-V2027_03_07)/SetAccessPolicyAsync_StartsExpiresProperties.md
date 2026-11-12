## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0277b274-c7b9-4e2d-fa75-67a639c9c5e6?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).SetAccessPolicyAsync_StartsExpiresProperties
now: 2026-11-12T00:45:10.0843321+00:00

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
etag: "0x1E9EE16C86AD710"
last-modified: Thu, 12 Nov 2026 00:45:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 24ccd749-8ed5-4fbb-b37d-c997573d2e98
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:10 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0277b274-c7b9-4e2d-fa75-67a639c9c5e6?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>jospeyiaoytpreeewtfk</Id><AccessPolicy><Start>2026-11-11T23:45:10.0843321Z</Start><Expiry>2026-11-12T01:45:10.0843321Z</Expiry></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23B300A479F5020"
last-modified: Thu, 12 Nov 2026 00:45:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7fc9abba-7cd2-4a68-95e0-4f818e25c42a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:10 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-0277b274-c7b9-4e2d-fa75-67a639c9c5e6?restype=container&comp=acl

### Request headers recorded for playback:

```
Accept: application/xml
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
etag: "0x23B300A479F5020"
last-modified: Thu, 12 Nov 2026 00:45:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b3c7cf5c-b306-4be2-9139-33454079d4ff
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:10 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><SignedIdentifiers><SignedIdentifier><Id>jospeyiaoytpreeewtfk</Id><AccessPolicy><Start>2026-11-11T23:45:10.0843321Z</Start><Expiry>2026-11-12T01:45:10.0843321Z</Expiry></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-0277b274-c7b9-4e2d-fa75-67a639c9c5e6?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 27bc644c-6dc6-4b6c-a955-d874a0ecf37c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:10 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

