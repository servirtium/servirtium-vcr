## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0025619e-9338-1d57-8171-59b05153ce09?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).CommitBlockListAsync_Committed_and_Uncommited_Blocks
now: 2026-11-12T00:49:58.9818260+00:00

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
etag: "0x272AEF4067AA3A0"
last-modified: Thu, 12 Nov 2026 00:49:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f2c2d9f7-f79f-44ea-b9f8-f9b6da188ad6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0025619e-9338-1d57-8171-59b05153ce09/test-blob-d6b7a346-eb9b-acd2-5b45-a9c650efe4e6?comp=block&blockid=dGVzdC1ibG9jay04ZWM2NWNkMC1iNDczLTY4NjMtZjUyZC02MDg3MjA3OGVmYjg%3D

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
x-ms-request-id: 1a4160cf-249c-4a01-8047-9e71e97cfb7a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:58 GMT
x-ms-content-crc64: B5uSLrZOKk8=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-0025619e-9338-1d57-8171-59b05153ce09/test-blob-d6b7a346-eb9b-acd2-5b45-a9c650efe4e6?comp=block&blockid=dGVzdC1ibG9jay1mYmNmNjFlMC1iYjdkLThiYjYtZGU5NS1iYmI0NzkwMWVhOTY%3D

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
x-ms-request-id: f9ccb882-e0b1-4db7-8405-1bd044db2ab9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:59 GMT
x-ms-content-crc64: B5uSLrZOKk8=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-0025619e-9338-1d57-8171-59b05153ce09/test-blob-d6b7a346-eb9b-acd2-5b45-a9c650efe4e6?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay04ZWM2NWNkMC1iNDczLTY4NjMtZjUyZC02MDg3MjA3OGVmYjg=</Latest><Latest>dGVzdC1ibG9jay1mYmNmNjFlMC1iYjdkLThiYjYtZGU5NS1iYmI0NzkwMWVhOTY=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22413ED2DA09EA0"
last-modified: Thu, 12 Nov 2026 00:49:59 GMT
content-md5: ZYToiGwxWj/L7/WkAAqWjw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c971076d-57c2-42e2-aca7-eaaf20ecaf3d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-0025619e-9338-1d57-8171-59b05153ce09/test-blob-d6b7a346-eb9b-acd2-5b45-a9c650efe4e6?comp=block&blockid=dGVzdC1ibG9jay0wMWViMDFmMC1iMDQ1LTFmMWMtNjZjNC03OWY3MDQ0MDQ1ZWQ%3D

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
x-ms-request-id: 722a801b-a453-4212-8451-0571348651d6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:59 GMT
x-ms-content-crc64: B5uSLrZOKk8=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-0025619e-9338-1d57-8171-59b05153ce09/test-blob-d6b7a346-eb9b-acd2-5b45-a9c650efe4e6?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay04ZWM2NWNkMC1iNDczLTY4NjMtZjUyZC02MDg3MjA3OGVmYjg=</Latest><Latest>dGVzdC1ibG9jay1mYmNmNjFlMC1iYjdkLThiYjYtZGU5NS1iYmI0NzkwMWVhOTY=</Latest><Latest>dGVzdC1ibG9jay0wMWViMDFmMC1iMDQ1LTFmMWMtNjZjNC03OWY3MDQ0MDQ1ZWQ=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2048A3C36EF9100"
last-modified: Thu, 12 Nov 2026 00:49:59 GMT
content-md5: +Esz//V83hNgrwmjjCt2wQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ec3f01e6-8278-400c-a262-ba373e7ca800
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-0025619e-9338-1d57-8171-59b05153ce09/test-blob-d6b7a346-eb9b-acd2-5b45-a9c650efe4e6?comp=blocklist&blocklisttype=all

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
last-modified: Thu, 12 Nov 2026 00:49:59 GMT
etag: "0x2048A3C36EF9100"
content-type: application/xml
x-ms-blob-content-length: 12288
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 233cd99d-0b13-45c2-bebb-bbe05033c2c2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:59 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><BlockList><CommittedBlocks><Block><Name>dGVzdC1ibG9jay04ZWM2NWNkMC1iNDczLTY4NjMtZjUyZC02MDg3MjA3OGVmYjg=</Name><Size>4096</Size></Block><Block><Name>dGVzdC1ibG9jay1mYmNmNjFlMC1iYjdkLThiYjYtZGU5NS1iYmI0NzkwMWVhOTY=</Name><Size>4096</Size></Block><Block><Name>dGVzdC1ibG9jay0wMWViMDFmMC1iMDQ1LTFmMWMtNjZjNC03OWY3MDQ0MDQ1ZWQ=</Name><Size>4096</Size></Block></CommittedBlocks><UncommittedBlocks/></BlockList>
```

## Interaction 7: DELETE /devstoreaccount1/test-container-0025619e-9338-1d57-8171-59b05153ce09?restype=container

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
x-ms-request-id: 062d4150-d9b0-4bfb-a4a4-e731b91d8a72
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:59 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

