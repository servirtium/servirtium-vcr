## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7bcef426-00fa-ba9a-b5b1-dc89fc7c27e1?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).SetAccessPolicyAsync_OldProperties
now: 2026-11-12T00:45:09.8789053+00:00

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
etag: "0x203218898F91940"
last-modified: Thu, 12 Nov 2026 00:45:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: af0c9cdb-cf37-49c3-ac52-6b794ffb67c5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:09 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7bcef426-00fa-ba9a-b5b1-dc89fc7c27e1?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>avdulewxohcceuaxxhyv</Id><AccessPolicy><Start>2026-11-11T23:45:09.8789053Z</Start><Expiry>2026-11-12T01:45:09.8789053Z</Expiry></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DF65F67F67B1A0"
last-modified: Thu, 12 Nov 2026 00:45:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6622cc14-2415-44a3-88b1-7ade7b0fcc76
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:09 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-7bcef426-00fa-ba9a-b5b1-dc89fc7c27e1?restype=container&comp=acl

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
etag: "0x1DF65F67F67B1A0"
last-modified: Thu, 12 Nov 2026 00:45:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0cceb0b5-110d-476b-a16b-c5baff659dbc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:09 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><SignedIdentifiers><SignedIdentifier><Id>avdulewxohcceuaxxhyv</Id><AccessPolicy><Start>2026-11-11T23:45:09.8789053Z</Start><Expiry>2026-11-12T01:45:09.8789053Z</Expiry></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-7bcef426-00fa-ba9a-b5b1-dc89fc7c27e1?restype=container

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
x-ms-request-id: a0923e58-f0fd-4d6d-b966-ce3c4eba0e18
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:09 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

