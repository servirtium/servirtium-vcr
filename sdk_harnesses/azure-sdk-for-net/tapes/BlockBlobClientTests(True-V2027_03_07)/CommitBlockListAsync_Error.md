## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ce4b611d-4653-50ff-f258-ec380eef404f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).CommitBlockListAsync_Error
now: 2026-11-12T00:49:59.6595050+00:00

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
etag: "0x23654736E4F7EE0"
last-modified: Thu, 12 Nov 2026 00:49:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1cc93d63-5c98-470f-949f-a957e63b9b1b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:59 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ce4b611d-4653-50ff-f258-ec380eef404f/test-blob-48a5404c-1462-e0cd-1600-246af27321e8?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay03ODc2ODQ2ZC05NGRlLTE4ZTUtMmRlZS01OWU5YjYyZmFlNDY=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: InvalidBlockList
x-ms-request-id: 3ffb58fb-e763-4aad-a7ca-3176ba2b3e04
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:59 GMT
```
### Response body recorded for playback (400: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>InvalidBlockList</Code>
  <Message>The specified block list is invalid.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 2: DELETE /devstoreaccount1/test-container-ce4b611d-4653-50ff-f258-ec380eef404f?restype=container

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
x-ms-request-id: 95acf8f2-20c0-4c52-9663-9ac08194bc31
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:59 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

