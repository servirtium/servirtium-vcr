## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0aeb60ad-e6da-be17-0267-bcb4aa32d342?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).SetAccessPolicyAsync_InvalidPermissionOrder
now: 2026-11-12T00:44:05.5842435+00:00

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
etag: "0x1D8835BA246AB30"
last-modified: Thu, 12 Nov 2026 00:44:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4846dd71-f97d-439c-93db-4828c0afb1a6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0aeb60ad-e6da-be17-0267-bcb4aa32d342?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>trwvycfpcdbfwktgovcb</Id><AccessPolicy><Start>2026-11-11T23:44:05.5842435Z</Start><Expiry>2026-11-12T01:44:05.5842435Z</Expiry><Permission>rwdl</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E50226C9AD4380"
last-modified: Thu, 12 Nov 2026 00:44:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 677626d3-9f98-4275-9af2-bbf6bb79a5a3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:05 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-0aeb60ad-e6da-be17-0267-bcb4aa32d342?restype=container

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
etag: "0x1E50226C9AD4380"
last-modified: Thu, 12 Nov 2026 00:44:05 GMT
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 460f47e0-f3e7-492d-83c4-2e52b63ee619
x-ms-version: 2026-06-06
x-ms-has-immutability-policy: false
x-ms-has-legal-hold: false
Date: Thu, 12 Nov 2026 00:44:05 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-0aeb60ad-e6da-be17-0267-bcb4aa32d342?restype=container&comp=acl

### Request headers recorded for playback:

```
Accept: application/xml
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
etag: "0x1E50226C9AD4380"
last-modified: Thu, 12 Nov 2026 00:44:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9c05d3cd-83d8-4215-9869-41a265a6f76f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:05 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><SignedIdentifiers><SignedIdentifier><Id>trwvycfpcdbfwktgovcb</Id><AccessPolicy><Start>2026-11-11T23:44:05.5842435Z</Start><Expiry>2026-11-12T01:44:05.5842435Z</Expiry><Permission>rwdl</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-0aeb60ad-e6da-be17-0267-bcb4aa32d342?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
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
x-ms-request-id: f7f41613-96b5-4577-8153-68f9f10ea4a0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:05 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

