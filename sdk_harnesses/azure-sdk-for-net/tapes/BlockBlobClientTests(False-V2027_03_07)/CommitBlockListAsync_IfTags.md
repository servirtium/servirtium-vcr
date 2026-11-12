## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e008f332-9e90-f9aa-6c63-31d762fef4c9?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).CommitBlockListAsync_IfTags
now: 2026-11-12T00:49:37.9845675+00:00

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
etag: "0x255394DF40E47A0"
last-modified: Thu, 12 Nov 2026 00:49:37 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e6a04b86-fe56-4b33-98cc-b54d30966ad7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:37 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-e008f332-9e90-f9aa-6c63-31d762fef4c9/test-blob-ea37421a-e01f-2be6-7326-de14da0c813e

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
etag: "0x22C91CC99E98080"
last-modified: Thu, 12 Nov 2026 00:49:37 GMT
content-md5: DUPg14OLjxr7Rp8FQ/TESA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eea90728-e089-4035-b233-adb0b9b40b02
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:37 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-e008f332-9e90-f9aa-6c63-31d762fef4c9/test-blob-ea37421a-e01f-2be6-7326-de14da0c813e?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
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
x-ms-request-id: 9925457d-057b-4eab-843a-6107cc40edd7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:38 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-e008f332-9e90-f9aa-6c63-31d762fef4c9/test-blob-ea37421a-e01f-2be6-7326-de14da0c813e?comp=block&blockid=dGVzdC1ibG9jay02N2ZiMDFlNS03M2I0LTM3YzYtZWY5Ny1mOGI1MTc1ZDg3ZjI%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
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
x-ms-request-id: f5c429c4-a44c-4516-8c8c-028a401e0cc7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:38 GMT
x-ms-content-crc64: 34AGanFBrW0=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-e008f332-9e90-f9aa-6c63-31d762fef4c9/test-blob-ea37421a-e01f-2be6-7326-de14da0c813e?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/xml
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay02N2ZiMDFlNS03M2I0LTM3YzYtZWY5Ny1mOGI1MTc1ZDg3ZjI=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21D17361C6A2BA0"
last-modified: Thu, 12 Nov 2026 00:49:38 GMT
content-md5: KkvthK3o1nUksiK/U/t44Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4d618a29-f745-41ca-a8de-279deb3a67a6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:38 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-e008f332-9e90-f9aa-6c63-31d762fef4c9?restype=container

### Request headers recorded for playback:

```
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 71c84e5e-af06-45e8-ac17-2b2f682c6aa3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:38 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

