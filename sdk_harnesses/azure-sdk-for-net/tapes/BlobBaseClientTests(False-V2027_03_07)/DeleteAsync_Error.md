## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-07e4f320-a544-d0bf-ff09-6783d337cdb3?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DeleteAsync_Error
now: 2026-11-12T00:46:31.2652678+00:00

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
etag: "0x1D0BAA657989AF0"
last-modified: Thu, 12 Nov 2026 00:46:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 31ddfea2-0f22-4e2b-93f9-4fc2f4b52c7f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: DELETE /devstoreaccount1/test-container-07e4f320-a544-d0bf-ff09-6783d337cdb3/test-blob-c9f68325-b1b5-1cc7-5cd5-ad6203fddf9e

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
x-ms-request-id: f169d0ee-146f-4b75-83c9-43826cfa2531
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:31 GMT
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

## Interaction 2: DELETE /devstoreaccount1/test-container-07e4f320-a544-d0bf-ff09-6783d337cdb3?restype=container

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
x-ms-request-id: b634afab-7991-44b2-893d-4338cdcc11d0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

