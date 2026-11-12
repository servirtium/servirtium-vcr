## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-92a77f2d-35a6-8b6a-b580-9421f0e72650?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).CanGetParentContainerClient_WithAccountSAS
now: 2026-11-12T00:47:37.2444185+00:00

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
etag: "0x1D2DF04D1AEFF60"
last-modified: Thu, 12 Nov 2026 00:47:37 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6edd03d4-54cc-41f3-8509-2d2b67c2dafe
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:37 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: GET /devstoreaccount1/test-container-92a77f2d-35a6-8b6a-b580-9421f0e72650?sv=2027-03-07&ss=b&srt=sco&st=2026-11-11T23%3A47%3A37Z&se=2026-11-12T01%3A47%3A37Z&sp=rwdxylacuptfi&sig=yfl9uhuseM0BvSyPqYOvr7aTKyjOppwzMZVI%2Boiq4aU%3D&restype=container

### Request headers recorded for playback:

```
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D2DF04D1AEFF60"
last-modified: Thu, 12 Nov 2026 00:47:37 GMT
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0b042f80-4534-4372-bf31-1ae9682a27fc
x-ms-version: 2026-06-06
x-ms-has-immutability-policy: false
x-ms-has-legal-hold: false
Date: Thu, 12 Nov 2026 00:47:37 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-92a77f2d-35a6-8b6a-b580-9421f0e72650?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ce9a7e45-9940-4bcb-b169-735bd7ceb9f3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:37 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

