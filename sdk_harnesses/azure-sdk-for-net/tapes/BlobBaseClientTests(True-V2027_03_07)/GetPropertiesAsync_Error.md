## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3b915d38-7f27-dcd7-5b8c-33b80221e26d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetPropertiesAsync_Error
now: 2026-11-12T00:48:10.3549919+00:00

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
etag: "0x1C611E3A3917360"
last-modified: Thu, 12 Nov 2026 00:48:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 851c7bc5-92f8-4ed2-a936-0f9bc4233693
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:10 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: HEAD /devstoreaccount1/test-container-3b915d38-7f27-dcd7-5b8c-33b80221e26d/test-blob-642f19fa-aa8d-b654-9bbc-aa411634fe63

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
x-ms-error-code: BlobNotFound
x-ms-request-id: 720ae063-2198-467c-abd3-7a070c51c9a7
Date: Thu, 12 Nov 2026 00:48:10 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-3b915d38-7f27-dcd7-5b8c-33b80221e26d?restype=container

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
x-ms-request-id: 2630f3e7-5ce3-484d-a786-1d74ef9f2516
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:10 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

