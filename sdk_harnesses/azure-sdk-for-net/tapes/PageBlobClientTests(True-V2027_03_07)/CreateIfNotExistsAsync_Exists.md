## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-239d6870-8cba-dee3-8109-c50501db58c4?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).CreateIfNotExistsAsync_Exists
now: 2026-11-12T00:51:47.3499920+00:00

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
etag: "0x25BF17BC8B415C0"
last-modified: Thu, 12 Nov 2026 00:51:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d372a611-4c74-4d7c-93c3-78b6051b5472
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:47 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-239d6870-8cba-dee3-8109-c50501db58c4/test-blob-82a54677-e68a-2379-1263-ea77061e89ac

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
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
etag: "0x26857CC1F43C580"
last-modified: Thu, 12 Nov 2026 00:51:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6ee39e73-b42b-4d52-9a75-daabdebbfb7d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-239d6870-8cba-dee3-8109-c50501db58c4/test-blob-82a54677-e68a-2379-1263-ea77061e89ac

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
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
x-ms-error-code: BlobAlreadyExists
x-ms-request-id: db5bb6ac-726b-45a9-a3b1-2a601efc85d2
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:47 GMT
```
### Response body recorded for playback (409: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>BlobAlreadyExists</Code>
  <Message>The specified blob already exists.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-239d6870-8cba-dee3-8109-c50501db58c4?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
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
x-ms-request-id: 68e185d4-e504-495f-b012-547133fa30b0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:47 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

