## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d27314ef-006f-ad0e-2df6-2478cd91385b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).StartCopyFromUriAsync_Error
now: 2026-11-12T00:48:29.9187800+00:00

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
etag: "0x244699D76DC26C0"
last-modified: Thu, 12 Nov 2026 00:48:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 266d4588-6625-48cb-86cc-d559ce3162e8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:29 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d27314ef-006f-ad0e-2df6-2478cd91385b/test-blob-3750a0d0-6bf4-8630-9727-9fcd7a714a0f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-d27314ef-006f-ad0e-2df6-2478cd91385b/test-blob-93e1035e-d1e2-888a-c0bb-1921f863ada9
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
x-ms-request-id: 6fc4e995-45bc-46f7-9710-4c84694c2789
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:29 GMT
```
### Response body recorded for playback (404: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>BlobNotFound</Code>
  <Message>The specified blob does not exist.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 2: DELETE /devstoreaccount1/test-container-d27314ef-006f-ad0e-2df6-2478cd91385b?restype=container

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
x-ms-request-id: 65f67b88-bd7d-4619-bf53-76ff181bdb2d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:29 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

