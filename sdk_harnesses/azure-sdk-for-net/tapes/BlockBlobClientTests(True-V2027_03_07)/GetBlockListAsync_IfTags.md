## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-df8ccdda-9438-08bc-3280-89e3c0223ec5?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).GetBlockListAsync_IfTags
now: 2026-11-12T00:50:03.8130236+00:00

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
etag: "0x1F4DEAFBE060420"
last-modified: Thu, 12 Nov 2026 00:50:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9f8795bb-c76f-486f-b6db-2e4a0e57a5ad
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-df8ccdda-9438-08bc-3280-89e3c0223ec5/test-blob-84b1f8ae-87a0-6975-daf5-085934f07e37

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
etag: "0x24787B07B753280"
last-modified: Thu, 12 Nov 2026 00:50:03 GMT
content-md5: 9MY2a7SR/askUWsi/2362g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dcbb0110-8d72-4030-9319-9869a67d75dc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-df8ccdda-9438-08bc-3280-89e3c0223ec5/test-blob-84b1f8ae-87a0-6975-daf5-085934f07e37?comp=block&blockid=dGVzdC1ibG9jay0yNDc2NWVlOC1iZWQxLTk2NWUtYThhZS1jMWM1NzRmNTU4MTQ%3D

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
x-ms-request-id: 8735ffcf-df41-44c1-a628-88643de8510b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:03 GMT
x-ms-content-crc64: ozMZd5HEtx0=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-df8ccdda-9438-08bc-3280-89e3c0223ec5/test-blob-84b1f8ae-87a0-6975-daf5-085934f07e37?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay0yNDc2NWVlOC1iZWQxLTk2NWUtYThhZS1jMWM1NzRmNTU4MTQ=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2625E919BE7E180"
last-modified: Thu, 12 Nov 2026 00:50:03 GMT
content-md5: 6aRanRt49Sk+ZDsM5jkMqw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d970e1f3-9ef7-4651-b8e0-6ec4a3c4bd28
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-df8ccdda-9438-08bc-3280-89e3c0223ec5/test-blob-84b1f8ae-87a0-6975-daf5-085934f07e37?comp=block&blockid=dGVzdC1ibG9iLTc5YmExNzczLTAxZGItOTQ4NS04MjgwLTNjNTVlYTNjMjdiNw%3D%3D

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
x-ms-request-id: e3517ead-0a49-4214-a536-a4368c3d1e01
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:03 GMT
x-ms-content-crc64: ozMZd5HEtx0=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-df8ccdda-9438-08bc-3280-89e3c0223ec5/test-blob-84b1f8ae-87a0-6975-daf5-085934f07e37?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>coolTag</Key><Value>true</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 84e8e393-bd59-4d41-b68c-2cc5c38bd166
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:04 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-df8ccdda-9438-08bc-3280-89e3c0223ec5/test-blob-84b1f8ae-87a0-6975-daf5-085934f07e37?comp=blocklist&blocklisttype=all

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_7
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:50:03 GMT
etag: "0x2625E919BE7E180"
content-type: application/xml
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 51a4b6c7-fdf9-455f-baab-c19930cbcec7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:04 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><BlockList><CommittedBlocks><Block><Name>dGVzdC1ibG9jay0yNDc2NWVlOC1iZWQxLTk2NWUtYThhZS1jMWM1NzRmNTU4MTQ=</Name><Size>4096</Size></Block></CommittedBlocks><UncommittedBlocks><Block><Name>dGVzdC1ibG9iLTc5YmExNzczLTAxZGItOTQ4NS04MjgwLTNjNTVlYTNjMjdiNw==</Name><Size>4096</Size></Block></UncommittedBlocks></BlockList>
```

## Interaction 7: DELETE /devstoreaccount1/test-container-df8ccdda-9438-08bc-3280-89e3c0223ec5?restype=container

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
x-ms-request-id: 0a2d8826-bc70-43e4-930b-fea0b4b3e6bc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

