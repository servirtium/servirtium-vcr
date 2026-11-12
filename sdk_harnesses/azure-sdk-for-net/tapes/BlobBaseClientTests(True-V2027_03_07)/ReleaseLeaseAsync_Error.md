## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-bb3969e3-a697-a78f-3eb2-8910b60f910e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).ReleaseLeaseAsync_Error
now: 2026-11-12T00:48:17.5631373+00:00

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
etag: "0x1BF97BD43B13160"
last-modified: Thu, 12 Nov 2026 00:48:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 622f4f0e-6d85-47b1-a92b-a0487558e699
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-bb3969e3-a697-a78f-3eb2-8910b60f910e/test-blob-706eba0d-893d-4f74-e811-ff7d3d98dcdb?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: renew
x-ms-lease-id: bf57fa05-57e0-08de-c020-bf9a67ab1e0e
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
x-ms-request-id: 533ca698-3900-4377-b4e8-cfde5f9da1ae
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:17 GMT
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

## Interaction 2: DELETE /devstoreaccount1/test-container-bb3969e3-a697-a78f-3eb2-8910b60f910e?restype=container

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
x-ms-request-id: 31856b98-3dcc-4edb-8290-8f7168a0f0a5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

