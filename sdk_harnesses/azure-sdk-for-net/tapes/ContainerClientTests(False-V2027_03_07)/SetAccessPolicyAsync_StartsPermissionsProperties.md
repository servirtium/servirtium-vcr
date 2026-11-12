## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9e37ea11-1160-d5cf-a762-a1497f1a0bce?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).SetAccessPolicyAsync_StartsPermissionsProperties
now: 2026-11-12T00:44:06.2718399+00:00

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
etag: "0x22D1E20CC092980"
last-modified: Thu, 12 Nov 2026 00:44:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a19caeb4-f5e9-4fb7-89c5-9d1cdfa4b8e0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9e37ea11-1160-d5cf-a762-a1497f1a0bce?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>fodjldarwkylbhbrlgsm</Id><AccessPolicy><Start>2026-11-11T23:44:06.2718399Z</Start><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2030426F913FA20"
last-modified: Thu, 12 Nov 2026 00:44:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cd27655d-1c45-4067-ae9d-14073ff3798e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-9e37ea11-1160-d5cf-a762-a1497f1a0bce?restype=container&comp=acl

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
etag: "0x2030426F913FA20"
last-modified: Thu, 12 Nov 2026 00:44:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f38f0b25-7c65-4fbc-b8c6-614bb2bbb1b8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:06 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><SignedIdentifiers><SignedIdentifier><Id>fodjldarwkylbhbrlgsm</Id><AccessPolicy><Start>2026-11-11T23:44:06.2718399Z</Start><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-9e37ea11-1160-d5cf-a762-a1497f1a0bce?restype=container

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
x-ms-request-id: 021fd7aa-197c-4af1-b2c7-1b46d7e37f38
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

