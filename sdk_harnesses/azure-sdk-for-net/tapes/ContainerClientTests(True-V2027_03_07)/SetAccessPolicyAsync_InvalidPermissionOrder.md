## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-adc55f06-18b8-c4a0-d931-d314b84a327a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).SetAccessPolicyAsync_InvalidPermissionOrder
now: 2026-11-12T00:45:09.6729412+00:00

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
etag: "0x1CCAE4CED236260"
last-modified: Thu, 12 Nov 2026 00:45:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cc7acd79-9ef6-4897-aa39-eac45002ff1d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:09 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-adc55f06-18b8-c4a0-d931-d314b84a327a?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>nbdxaygmlugttvevpvvl</Id><AccessPolicy><Start>2026-11-11T23:45:09.6729412Z</Start><Expiry>2026-11-12T01:45:09.6729412Z</Expiry><Permission>rwdl</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x225EED3A8717E40"
last-modified: Thu, 12 Nov 2026 00:45:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5caa426d-d7c9-4bb1-9a86-714761c2d432
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:09 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-adc55f06-18b8-c4a0-d931-d314b84a327a?restype=container

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
etag: "0x225EED3A8717E40"
last-modified: Thu, 12 Nov 2026 00:45:09 GMT
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6069553c-3c76-4169-8c6d-c4e60d8bb023
x-ms-version: 2026-06-06
x-ms-has-immutability-policy: false
x-ms-has-legal-hold: false
Date: Thu, 12 Nov 2026 00:45:09 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-adc55f06-18b8-c4a0-d931-d314b84a327a?restype=container&comp=acl

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
etag: "0x225EED3A8717E40"
last-modified: Thu, 12 Nov 2026 00:45:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3b2525fc-a9f0-45e8-bf58-7fd38a2c0d69
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:09 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><SignedIdentifiers><SignedIdentifier><Id>nbdxaygmlugttvevpvvl</Id><AccessPolicy><Start>2026-11-11T23:45:09.6729412Z</Start><Expiry>2026-11-12T01:45:09.6729412Z</Expiry><Permission>rwdl</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-adc55f06-18b8-c4a0-d931-d314b84a327a?restype=container

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
x-ms-request-id: 816383e1-6d12-4369-bc90-c4137e8cec14
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:09 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

