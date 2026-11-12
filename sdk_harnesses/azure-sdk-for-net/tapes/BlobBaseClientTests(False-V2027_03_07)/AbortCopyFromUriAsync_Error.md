## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-356d509e-b1ee-9387-be7b-b849eb3eb895?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).AbortCopyFromUriAsync_Error
now: 2026-11-12T00:46:15.4350278+00:00

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
etag: "0x2650DA3014D3F60"
last-modified: Thu, 12 Nov 2026 00:46:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e234d85e-7548-419a-aeea-07d067c7ae97
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-356d509e-b1ee-9387-be7b-b849eb3eb895/test-blob-d923e018-23aa-9868-e0b7-4406054c4dc7?comp=copy&copyid=217cc4a0-ba2d-8595-21f0-02975f82a909

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-copy-action: abort
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
x-ms-request-id: bec10911-9718-4c5b-80a8-508d8383aa61
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:15 GMT
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

## Interaction 2: DELETE /devstoreaccount1/test-container-356d509e-b1ee-9387-be7b-b849eb3eb895?restype=container

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
x-ms-request-id: 10b0de80-6a64-4684-b828-cac0430c5047
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

