## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ed30e34f-567a-e5c2-db61-089e0afbaa9c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).GetAccessPolicyAsync
now: 2026-11-12T00:43:42.7932967+00:00

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
etag: "0x1FA9D20046352F0"
last-modified: Thu, 12 Nov 2026 00:43:42 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3ab447fd-fc3e-485e-8584-1cc1b3650e79
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:42 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: GET /devstoreaccount1/test-container-ed30e34f-567a-e5c2-db61-089e0afbaa9c?restype=container&comp=acl

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_2
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FA9D20046352F0"
last-modified: Thu, 12 Nov 2026 00:43:42 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fd34ea0a-6aa2-4d87-991e-9118552a2404
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:42 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><SignedIdentifiers/>
```

## Interaction 2: DELETE /devstoreaccount1/test-container-ed30e34f-567a-e5c2-db61-089e0afbaa9c?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ef41aea0-dd06-40ff-a3dd-40fa8c6f3531
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:42 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

