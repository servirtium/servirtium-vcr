## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-42e0e940-c002-a972-c505-8828dd254fca?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).CanGetParentContainerClient_FromBlobClientThatHasExtraQueryParameters
now: 2026-11-12T00:47:37.0274417+00:00

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
etag: "0x211E07299CA5300"
last-modified: Thu, 12 Nov 2026 00:47:37 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cf656e15-994b-42b4-821e-f437e6676a78
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:37 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: GET /devstoreaccount1/test-container-42e0e940-c002-a972-c505-8828dd254fca?restype=container

### Request headers recorded for playback:

```
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
etag: "0x211E07299CA5300"
last-modified: Thu, 12 Nov 2026 00:47:37 GMT
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3acbd81d-da39-413e-8a9a-6ec2486a4c0a
x-ms-version: 2026-06-06
x-ms-has-immutability-policy: false
x-ms-has-legal-hold: false
Date: Thu, 12 Nov 2026 00:47:37 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-42e0e940-c002-a972-c505-8828dd254fca?restype=container

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
x-ms-request-id: 5db0dc0c-f3c9-4af5-8f5a-98dc5ee07989
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:37 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

