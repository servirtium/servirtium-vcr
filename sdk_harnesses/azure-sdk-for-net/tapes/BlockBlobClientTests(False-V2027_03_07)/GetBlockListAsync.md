## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-90c66aa3-7d76-6662-f095-d910d92de26f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).GetBlockListAsync
now: 2026-11-12T00:49:41.1455641+00:00

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
etag: "0x1EA5D1625D01A20"
last-modified: Thu, 12 Nov 2026 00:49:41 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d2ff3acf-4abd-4654-8dae-611023f4591b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:41 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-90c66aa3-7d76-6662-f095-d910d92de26f/test-blob-ac38c88e-3ab7-e8e4-4d31-9d39e6dac9d8

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
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
etag: "0x23C00F68CA280E0"
last-modified: Thu, 12 Nov 2026 00:49:41 GMT
content-md5: +YqzjaJ/ywSEcWyRaGshuA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e9b0129e-ad2b-4d53-9d71-b8e3a5276f3e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:41 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-90c66aa3-7d76-6662-f095-d910d92de26f/test-blob-ac38c88e-3ab7-e8e4-4d31-9d39e6dac9d8?comp=block&blockid=dGVzdC1ibG9jay1jZDk0MWVmYy1hMTZjLTM5MDktODRmZS05N2Y2MDk3ZTI4OGU%3D

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
x-ms-request-id: f8f6175f-e67b-4bae-a997-6992a044777e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:41 GMT
x-ms-content-crc64: OMdK74JZvqs=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-90c66aa3-7d76-6662-f095-d910d92de26f/test-blob-ac38c88e-3ab7-e8e4-4d31-9d39e6dac9d8?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay1jZDk0MWVmYy1hMTZjLTM5MDktODRmZS05N2Y2MDk3ZTI4OGU=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x223A00CE6CBCE80"
last-modified: Thu, 12 Nov 2026 00:49:41 GMT
content-md5: zjc/rwG4AefWDcKKAGg7Cg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d1b7a399-88fb-4745-a388-446df4530864
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:41 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-90c66aa3-7d76-6662-f095-d910d92de26f/test-blob-ac38c88e-3ab7-e8e4-4d31-9d39e6dac9d8?comp=block&blockid=dGVzdC1ibG9iLTZiN2MwODU1LTA3ZmUtMjIyMy0zOWJkLWE0OTM1NWZkYWZhYg%3D%3D

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
x-ms-request-id: 50f6ecb8-9010-4ecd-b42e-caf0fa2e2a11
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:41 GMT
x-ms-content-crc64: OMdK74JZvqs=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: GET /devstoreaccount1/test-container-90c66aa3-7d76-6662-f095-d910d92de26f/test-blob-ac38c88e-3ab7-e8e4-4d31-9d39e6dac9d8?comp=blocklist&blocklisttype=all

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_6
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:49:41 GMT
etag: "0x223A00CE6CBCE80"
content-type: application/xml
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 53d9fd7c-41df-41cd-9ac4-af41790c9cab
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:41 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><BlockList><CommittedBlocks><Block><Name>dGVzdC1ibG9jay1jZDk0MWVmYy1hMTZjLTM5MDktODRmZS05N2Y2MDk3ZTI4OGU=</Name><Size>4096</Size></Block></CommittedBlocks><UncommittedBlocks><Block><Name>dGVzdC1ibG9iLTZiN2MwODU1LTA3ZmUtMjIyMy0zOWJkLWE0OTM1NWZkYWZhYg==</Name><Size>4096</Size></Block></UncommittedBlocks></BlockList>
```

## Interaction 6: DELETE /devstoreaccount1/test-container-90c66aa3-7d76-6662-f095-d910d92de26f?restype=container

### Request headers recorded for playback:

```
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fcb34532-fc89-41dc-b3b6-c727ed6e23f7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:41 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

