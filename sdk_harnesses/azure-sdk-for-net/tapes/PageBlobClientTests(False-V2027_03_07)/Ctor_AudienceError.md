## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5ce0c1e7-fa15-7c17-20b7-233379f1c5a0?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).Ctor_AudienceError
now: 2026-11-12T00:51:17.6223767+00:00

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
etag: "0x1F668034DE45AD0"
last-modified: Thu, 12 Nov 2026 00:51:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b9172c2f-4fc5-43f8-b9e3-39a25161b144
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5ce0c1e7-fa15-7c17-20b7-233379f1c5a0/test-blob-04aa05cd-5645-9758-e945-c6e14ba0d4e3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x258F26C532B0F80"
last-modified: Thu, 12 Nov 2026 00:51:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fb129ba4-9bb3-4c8a-9607-a2575a5edfc0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-5ce0c1e7-fa15-7c17-20b7-233379f1c5a0?restype=container

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
x-ms-request-id: af28a256-7e4c-4f7c-96e6-f48ba5340506
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

