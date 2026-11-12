## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-581df478-5ab5-bc44-07b0-8ac5a2383795?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).ResizeAsync
now: 2026-11-12T00:51:57.5604029+00:00

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
etag: "0x253D72A065DBC20"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9619c4f9-0d62-469f-ad78-4cdb8d24b2bb
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-581df478-5ab5-bc44-07b0-8ac5a2383795/test-blob-d4a226f0-2fa4-2cb5-a13c-d4a93c2d968e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
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
etag: "0x24495B2832E25A0"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 19a68284-9974-4a44-8b98-9f24e9e3d5c2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-581df478-5ab5-bc44-07b0-8ac5a2383795/test-blob-d4a226f0-2fa4-2cb5-a13c-d4a93c2d968e?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-blob-content-length: 8192
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22401FBBB063C40"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bfbb9f3e-f68c-460c-849e-159aea3ca0b8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-581df478-5ab5-bc44-07b0-8ac5a2383795/test-blob-d4a226f0-2fa4-2cb5-a13c-d4a93c2d968e

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
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 8192
content-type: application/octet-stream
etag: "0x22401FBBB063C40"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 888226bf-5714-4933-828b-1dabdf3052ae
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-581df478-5ab5-bc44-07b0-8ac5a2383795?restype=container

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
x-ms-request-id: c22e42f1-852f-496b-968d-f51d6c565e48
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

