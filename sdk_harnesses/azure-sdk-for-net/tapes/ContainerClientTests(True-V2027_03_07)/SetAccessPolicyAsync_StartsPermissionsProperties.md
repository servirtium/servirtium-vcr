## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-790428ce-df29-acd0-2b22-d682c06f0506?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).SetAccessPolicyAsync_StartsPermissionsProperties
now: 2026-11-12T00:45:10.2872317+00:00

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
etag: "0x21BEC871EB819C0"
last-modified: Thu, 12 Nov 2026 00:45:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 10d40480-21dc-464d-89f9-a185f691bfcc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:10 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-790428ce-df29-acd0-2b22-d682c06f0506?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>jvksyfudqaucchmknoho</Id><AccessPolicy><Start>2026-11-11T23:45:10.2872317Z</Start><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21F7992A0142A40"
last-modified: Thu, 12 Nov 2026 00:45:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e40079a7-c804-4099-bfc2-ebf230fa0dbd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:10 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-790428ce-df29-acd0-2b22-d682c06f0506?restype=container&comp=acl

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
etag: "0x21F7992A0142A40"
last-modified: Thu, 12 Nov 2026 00:45:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 137af7ed-81cd-4232-9979-5204af9a7402
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:10 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><SignedIdentifiers><SignedIdentifier><Id>jvksyfudqaucchmknoho</Id><AccessPolicy><Start>2026-11-11T23:45:10.2872317Z</Start><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-790428ce-df29-acd0-2b22-d682c06f0506?restype=container

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
x-ms-request-id: db9604da-2232-4729-ad10-2a779cd2554a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:10 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

