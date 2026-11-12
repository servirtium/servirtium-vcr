## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a48c121a-b5db-cc87-d590-ef0c1bc8cae3?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).SetAccessPolicyAsync
now: 2026-11-12T00:44:04.2855096+00:00

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
etag: "0x1F19FF425A91890"
last-modified: Thu, 12 Nov 2026 00:44:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9f3ffc8d-fe37-4c9a-9c46-1e7b383f4528
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a48c121a-b5db-cc87-d590-ef0c1bc8cae3?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>obptgceewsmdjobexpdv</Id><AccessPolicy><Start>2026-11-11T23:44:04.2855096Z</Start><Expiry>2026-11-12T01:44:04.2855096Z</Expiry><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x235D1DBF420B3C0"
last-modified: Thu, 12 Nov 2026 00:44:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d15e7380-17fb-40ab-a1c9-6cce4194e089
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:04 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-a48c121a-b5db-cc87-d590-ef0c1bc8cae3?restype=container

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
etag: "0x235D1DBF420B3C0"
last-modified: Thu, 12 Nov 2026 00:44:04 GMT
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ac8b7ff6-289e-4f2a-8df6-33268db0110b
x-ms-version: 2026-06-06
x-ms-has-immutability-policy: false
x-ms-has-legal-hold: false
Date: Thu, 12 Nov 2026 00:44:04 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-a48c121a-b5db-cc87-d590-ef0c1bc8cae3?restype=container&comp=acl

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
etag: "0x235D1DBF420B3C0"
last-modified: Thu, 12 Nov 2026 00:44:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b07dbb7c-a144-4308-8ad8-703f3539cbb8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:04 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><SignedIdentifiers><SignedIdentifier><Id>obptgceewsmdjobexpdv</Id><AccessPolicy><Start>2026-11-11T23:44:04.2855096Z</Start><Expiry>2026-11-12T01:44:04.2855096Z</Expiry><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-a48c121a-b5db-cc87-d590-ef0c1bc8cae3?restype=container

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
x-ms-request-id: 4bf840f4-0f13-4759-9fe6-19eb42911895
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

