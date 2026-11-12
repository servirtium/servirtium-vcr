## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9b602c6f-d3c2-dea4-382d-8024b34f646d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).SetAccessPolicyAsync_StartsExpiresProperties
now: 2026-11-12T00:44:06.0665035+00:00

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
etag: "0x25E1F99C281BC60"
last-modified: Thu, 12 Nov 2026 00:44:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3ac3a16f-3534-4867-84ce-a1193d2c61f1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9b602c6f-d3c2-dea4-382d-8024b34f646d?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>wxkuxmmpfdllntopumqp</Id><AccessPolicy><Start>2026-11-11T23:44:06.0665035Z</Start><Expiry>2026-11-12T01:44:06.0665035Z</Expiry></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2207344FF3B7020"
last-modified: Thu, 12 Nov 2026 00:44:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6364e6c3-deef-47ac-8a97-c57b8169bed1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-9b602c6f-d3c2-dea4-382d-8024b34f646d?restype=container&comp=acl

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
etag: "0x2207344FF3B7020"
last-modified: Thu, 12 Nov 2026 00:44:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c9c90d5a-9557-44a9-b095-50bca61b338c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:06 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><SignedIdentifiers><SignedIdentifier><Id>wxkuxmmpfdllntopumqp</Id><AccessPolicy><Start>2026-11-11T23:44:06.0665035Z</Start><Expiry>2026-11-12T01:44:06.0665035Z</Expiry></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-9b602c6f-d3c2-dea4-382d-8024b34f646d?restype=container

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
x-ms-request-id: 6164d5b7-e1b6-4626-b2cb-ad25140dd5ce
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

