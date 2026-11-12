## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-6a5fd279-92a7-54dd-be9a-9eb71f4db45b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadToAsync_ZeroSizeBlob_ContentValidationEnabled(StorageCrc64)
now: 2026-11-12T00:47:27.6998645+00:00

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
etag: "0x27B02618680FDE0"
last-modified: Thu, 12 Nov 2026 00:47:27 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b525a5e6-9be9-4538-b7d2-ea70132cf60d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:27 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-6a5fd279-92a7-54dd-be9a-9eb71f4db45b/test-blob-6ae8c461-0636-01de-2c72-578a346dc129

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27AC5FEDD3D01C0"
last-modified: Thu, 12 Nov 2026 00:47:27 GMT
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 97161b52-2b96-4ef8-aacb-b6443a5ffa77
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:27 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-6a5fd279-92a7-54dd-be9a-9eb71f4db45b/test-blob-6ae8c461-0636-01de-2c72-578a346dc129

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
x-ms-range: bytes=0-4194303
x-ms-return-client-request-id: true
x-ms-structured-body: XSM/1.0; properties=crc64
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: InvalidRange
x-ms-request-id: 31cedfde-ab71-4c55-856c-86c12e866b4b
Content-Range: bytes */0
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:27 GMT
```
### Response body recorded for playback (416: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>InvalidRange</Code>
  <Message>The range specified is invalid for the current size of the resource.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: GET /devstoreaccount1/test-container-6a5fd279-92a7-54dd-be9a-9eb71f4db45b/test-blob-6ae8c461-0636-01de-2c72-578a346dc129

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:47:27 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:27 GMT
content-length: 0
content-type: application/octet-stream
etag: "0x27AC5FEDD3D01C0"
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 74dbb40d-8652-4155-a13a-2b8f63da1da1
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:27 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-6a5fd279-92a7-54dd-be9a-9eb71f4db45b?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
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
x-ms-request-id: ec0900fd-c1ba-4400-afb6-a6f50305d8ad
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:27 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

