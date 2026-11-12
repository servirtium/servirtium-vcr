## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3a2aafee-ef1d-19b7-f604-5eb619c1e49a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).CommitBlockListAsync_Committed_and_Uncommited_Blocks
now: 2026-11-12T00:49:36.8319124+00:00

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
etag: "0x24CB4E6E03CF9A0"
last-modified: Thu, 12 Nov 2026 00:49:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1236e12d-60e0-4250-be25-809c404d308a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-3a2aafee-ef1d-19b7-f604-5eb619c1e49a/test-blob-6c1d243a-9fd0-7c10-80bc-4a86a0d4f7ed?comp=block&blockid=dGVzdC1ibG9jay00MWM4MTg4YS1lZDBiLWQwMGEtN2FjOS1hZjFjZTBkZjAzZGQ%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 05d04048-6267-4198-afef-26141cef21c9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:36 GMT
x-ms-content-crc64: j8AyDV4E6Ys=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-3a2aafee-ef1d-19b7-f604-5eb619c1e49a/test-blob-6c1d243a-9fd0-7c10-80bc-4a86a0d4f7ed?comp=block&blockid=dGVzdC1ibG9jay0yODJlNDEwMS0yNGUwLTkzNzQtY2NmYi1mMzc5ZDAzOTlkMWY%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 699d3b71-6328-4051-99df-5f9807aca325
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:36 GMT
x-ms-content-crc64: j8AyDV4E6Ys=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-3a2aafee-ef1d-19b7-f604-5eb619c1e49a/test-blob-6c1d243a-9fd0-7c10-80bc-4a86a0d4f7ed?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay00MWM4MTg4YS1lZDBiLWQwMGEtN2FjOS1hZjFjZTBkZjAzZGQ=</Latest><Latest>dGVzdC1ibG9jay0yODJlNDEwMS0yNGUwLTkzNzQtY2NmYi1mMzc5ZDAzOTlkMWY=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2372BE0C8AC79A0"
last-modified: Thu, 12 Nov 2026 00:49:36 GMT
content-md5: 54ScrZ7RwZssrVy4O/u7vQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ddb46d7c-a5bf-4330-8405-41a4420fc68b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-3a2aafee-ef1d-19b7-f604-5eb619c1e49a/test-blob-6c1d243a-9fd0-7c10-80bc-4a86a0d4f7ed?comp=block&blockid=dGVzdC1ibG9jay02OWUxZGEwMC00MDRiLWRlNjAtOGU1My02YjZmYmY2MDFmNTg%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 411dc285-d72d-4b78-b23e-875042443912
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:36 GMT
x-ms-content-crc64: j8AyDV4E6Ys=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-3a2aafee-ef1d-19b7-f604-5eb619c1e49a/test-blob-6c1d243a-9fd0-7c10-80bc-4a86a0d4f7ed?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay00MWM4MTg4YS1lZDBiLWQwMGEtN2FjOS1hZjFjZTBkZjAzZGQ=</Latest><Latest>dGVzdC1ibG9jay0yODJlNDEwMS0yNGUwLTkzNzQtY2NmYi1mMzc5ZDAzOTlkMWY=</Latest><Latest>dGVzdC1ibG9jay02OWUxZGEwMC00MDRiLWRlNjAtOGU1My02YjZmYmY2MDFmNTg=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25BC70A10E30AC0"
last-modified: Thu, 12 Nov 2026 00:49:37 GMT
content-md5: Ps1ieIXwO6bJN3Q0aygkbw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 37e77e5c-74d6-455a-b862-caf214d0a362
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:37 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-3a2aafee-ef1d-19b7-f604-5eb619c1e49a/test-blob-6c1d243a-9fd0-7c10-80bc-4a86a0d4f7ed?comp=blocklist&blocklisttype=all

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:49:37 GMT
etag: "0x25BC70A10E30AC0"
content-type: application/xml
x-ms-blob-content-length: 12288
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 55b67435-fab3-4e89-ba7f-34638f29ca71
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:37 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><BlockList><CommittedBlocks><Block><Name>dGVzdC1ibG9jay00MWM4MTg4YS1lZDBiLWQwMGEtN2FjOS1hZjFjZTBkZjAzZGQ=</Name><Size>4096</Size></Block><Block><Name>dGVzdC1ibG9jay0yODJlNDEwMS0yNGUwLTkzNzQtY2NmYi1mMzc5ZDAzOTlkMWY=</Name><Size>4096</Size></Block><Block><Name>dGVzdC1ibG9jay02OWUxZGEwMC00MDRiLWRlNjAtOGU1My02YjZmYmY2MDFmNTg=</Name><Size>4096</Size></Block></CommittedBlocks><UncommittedBlocks/></BlockList>
```

## Interaction 7: DELETE /devstoreaccount1/test-container-3a2aafee-ef1d-19b7-f604-5eb619c1e49a?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
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
x-ms-request-id: f5a6aad8-0003-466d-a814-c5de90f94f5b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:37 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

