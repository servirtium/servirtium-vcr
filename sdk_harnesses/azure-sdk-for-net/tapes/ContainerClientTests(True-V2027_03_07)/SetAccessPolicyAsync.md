## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f4dc0294-736f-9b8a-cb26-0ab3c74aee5e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).SetAccessPolicyAsync
now: 2026-11-12T00:45:08.4564212+00:00

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
etag: "0x1D5BF0ED072E290"
last-modified: Thu, 12 Nov 2026 00:45:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2673bda2-4a99-4106-ada4-e8e52636141b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f4dc0294-736f-9b8a-cb26-0ab3c74aee5e?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>gtakcrkjykcqhuekpwtb</Id><AccessPolicy><Start>2026-11-11T23:45:08.4564212Z</Start><Expiry>2026-11-12T01:45:08.4564212Z</Expiry><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2366CE86EF320C0"
last-modified: Thu, 12 Nov 2026 00:45:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7fef7fcb-a5fb-4524-9cc6-15259141c69c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:08 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-f4dc0294-736f-9b8a-cb26-0ab3c74aee5e?restype=container

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
etag: "0x2366CE86EF320C0"
last-modified: Thu, 12 Nov 2026 00:45:08 GMT
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 58c64835-bcca-46bf-8af7-97c56e69736a
x-ms-version: 2026-06-06
x-ms-has-immutability-policy: false
x-ms-has-legal-hold: false
Date: Thu, 12 Nov 2026 00:45:08 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-f4dc0294-736f-9b8a-cb26-0ab3c74aee5e?restype=container&comp=acl

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
etag: "0x2366CE86EF320C0"
last-modified: Thu, 12 Nov 2026 00:45:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 907b6a1a-5429-4dc0-b6ec-6a9913e002d2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:08 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><SignedIdentifiers><SignedIdentifier><Id>gtakcrkjykcqhuekpwtb</Id><AccessPolicy><Start>2026-11-11T23:45:08.4564212Z</Start><Expiry>2026-11-12T01:45:08.4564212Z</Expiry><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-f4dc0294-736f-9b8a-cb26-0ab3c74aee5e?restype=container

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
x-ms-request-id: dc6f5bfe-5aa0-442d-bf31-09e515fbbcf8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

