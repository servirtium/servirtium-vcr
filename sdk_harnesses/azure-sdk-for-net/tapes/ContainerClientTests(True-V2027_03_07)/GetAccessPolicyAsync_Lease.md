## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-36bffa48-6de9-49e5-794a-6afa411fa13c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).GetAccessPolicyAsync_Lease
now: 2026-11-12T00:44:48.5496938+00:00

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
etag: "0x2467095AFC1F8A0"
last-modified: Thu, 12 Nov 2026 00:44:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b1fc43d7-8439-4168-9bc6-d64d207f5788
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-36bffa48-6de9-49e5-794a-6afa411fa13c?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 9b1413d4-0503-5701-a9ce-8b66944d03e4
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2467095AFC1F8A0"
last-modified: Thu, 12 Nov 2026 00:44:48 GMT
x-ms-lease-id: 9b1413d4-0503-5701-a9ce-8b66944d03e4
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 545171e4-959e-4a57-8fd1-d2bf6791dd1a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-36bffa48-6de9-49e5-794a-6afa411fa13c?restype=container&comp=acl

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-id: 9b1413d4-0503-5701-a9ce-8b66944d03e4
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2467095AFC1F8A0"
last-modified: Thu, 12 Nov 2026 00:44:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9445adf1-9e13-4aa1-be1b-422aeef78128
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:48 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><SignedIdentifiers/>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-36bffa48-6de9-49e5-794a-6afa411fa13c?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-id: 9b1413d4-0503-5701-a9ce-8b66944d03e4
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
x-ms-request-id: bb2f6bbd-4003-4b8b-8735-b989c0610b32
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:48 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

