## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a97112b9-25b2-da3b-ff0c-5c3eea223412?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).CreateAsync_SequenceNumber
now: 2026-11-12T00:51:46.6994667+00:00

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
etag: "0x214CD926B88E1C0"
last-modified: Thu, 12 Nov 2026 00:51:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: be08aaa1-0179-465b-bf73-cb6b284d330a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a97112b9-25b2-da3b-ff0c-5c3eea223412/test-blob-ab17b67f-87c1-a30e-b270-3400411a6665

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 2
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
etag: "0x1C94D58B2645BB0"
last-modified: Thu, 12 Nov 2026 00:51:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8564d918-f757-4121-a3aa-058ad216092d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-a97112b9-25b2-da3b-ff0c-5c3eea223412/test-blob-ab17b67f-87c1-a30e-b270-3400411a6665

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
last-modified: Thu, 12 Nov 2026 00:51:46 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:46 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1C94D58B2645BB0"
x-ms-blob-sequence-number: 2
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 24685834-574b-4da0-9e06-e2dd67b81434
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:46 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-a97112b9-25b2-da3b-ff0c-5c3eea223412?restype=container

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
x-ms-request-id: 770b38d0-9c19-480c-9829-6afa8b54b8fa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

