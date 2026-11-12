## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1eee15d3-92bc-6428-c5f3-c7f2af719b4a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).SetAccessPolicyAsync_OldProperties
now: 2026-11-12T00:44:05.7900244+00:00

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
etag: "0x1E4DFE0F4F1D350"
last-modified: Thu, 12 Nov 2026 00:44:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 026d0bc0-c337-4d94-9aae-a034c836f426
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1eee15d3-92bc-6428-c5f3-c7f2af719b4a?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>hwaxasgvfgfbtpalopes</Id><AccessPolicy><Start>2026-11-11T23:44:05.7900244Z</Start><Expiry>2026-11-12T01:44:05.7900244Z</Expiry></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20055107C90FAE0"
last-modified: Thu, 12 Nov 2026 00:44:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: edb5fa01-a47a-40bc-8213-4fe0d9216170
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:05 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-1eee15d3-92bc-6428-c5f3-c7f2af719b4a?restype=container&comp=acl

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
etag: "0x20055107C90FAE0"
last-modified: Thu, 12 Nov 2026 00:44:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 21d9f4e6-1c19-4395-8d80-be3c5ab7895c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:05 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><SignedIdentifiers><SignedIdentifier><Id>hwaxasgvfgfbtpalopes</Id><AccessPolicy><Start>2026-11-11T23:44:05.7900244Z</Start><Expiry>2026-11-12T01:44:05.7900244Z</Expiry></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-1eee15d3-92bc-6428-c5f3-c7f2af719b4a?restype=container

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
x-ms-request-id: 06c5c99a-034a-401f-9cf0-82d97875edcf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:05 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

