## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9a30f7a2-8f2e-715f-1a54-888b9cc575f5?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetPropertiesAsync_IfTags
now: 2026-11-12T00:48:10.5861502+00:00

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
etag: "0x21DCDFE2AAFF720"
last-modified: Thu, 12 Nov 2026 00:48:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 345df175-10ff-48de-b6fc-5684a4bde018
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:10 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9a30f7a2-8f2e-715f-1a54-888b9cc575f5/test-blob-04de8956-751f-6907-bc83-9bded4831a6e

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
GOecVufwDHuo8JYNcE7uurYmOv6bR7Et78beqvSAnJc6GXK0KB8NZnxjWy7f+vltlOAorkgb09E2
b2YhEmKGJ1P+01bbOpGXGNSBN+uCTfXMcBUUWO1PHkahfbi47FQa3DTb4SejklpOkJZzmpvltCJx
VKJMcs9lrrQQObzZ3iuAZlu3p2zNKd27xcdX24SqvMmWRpiyzmpldTJyk1medbFq8zNALQ22oyrE
kawHDtMwZX3zQpiSzZjwUjE5W5aEHVAW7OdRao674KNu7T29XWdfQi3cqjIZ1yaaT9vbfEiTP3Nc
8SHr3/ruOGL0JN9bM/TK2hhoqHId/BXBthuz32Nb2q7JYWxGc2My7XLQJbNGPhzmEaEvKpcBPvUM
KijfO1j/mUoxktGIg2e1NrsATddie3f/zM3BK68WxyJ3Okk6U7Ia0YtoFKxKXY46efTcAfEdqa+w
4G6KPW2bGsquEUkeeuII5nxL+WbLtG4/h7K6OsYwWZCainJDj5Mdzfnhm0xEHP8S0xt10bBI5Sz/
S7W74OAEfri4hPBvxVboLits6Rgi+muyqGeru4fgUaVGQ0PeYe0Z3R2Ti5gOog7EjaOE2/sT3VBK
CDh4WMIw2DJKKIETCsw+Uwz7j27TowVZ5y3kW3aqM2byk1i0oYRaYrJlxHmMsYPWRYjuGE3idmUy
H3GVTH28oPUaIHZ0irKHoCy7bd+MzDaqDRXuuxsYEB3zgoETxRY1qSOEcZANYrvVZ3chJgmFplI6
6j5nzuXaAg9YgAcwc9oVhsO8CFqlnataGFSj9uoTbtwv2dvXzts+qm+BtOGzpfOdDJ9FyJ73lU2T
DLWQNwskRRErAZr/Pbjofl7rJOjJpnJhBepLzqY9N0ONRMElrXNkXG/PiKRYnc7nXUpADHBkyWZD
LzEg2Xdr7cpWcvn3wtDqh8h5+R7OCGgcY3Fb/SvTKHta4n5BQ4L4ZJraASvV8Jp5VYSo69BIdSbI
A3UFEO+eg0l+nOBSqUNFgZWD9AY8R3PW4qimKj2qEm1XeT8N8lSqO37iV1O5J6xAY2k6xIAgi7wC
Ly1H+FgL04lz+i8EOI9B2LiHWvAgHLr8ZcfUcE3sN+2DCsImY0Im1oTJRi18PCvZ+ezImDHM4RJz
SpKRN2I8h8JCgC3MG3R2YYRrVtaNgCmc+ndhJJ+8timwshiwlZ8hjb9qObv+Dd13UjasYIs85cpp
9Dzr2mMihsoDG2hcxczlSskXIkZtneyZ6tJpD1addM1ORqBiNrNbSLPx+vF1G4xpxxbCJcOD/FZP
Ue+RuXd0ZqebDX8sghQVu9qTfKP7JM9F/0c/208JykpJEuTDyo47fZRK2g0NPEQCrGnp8ICzVA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FA3B38DF39EFC0"
last-modified: Thu, 12 Nov 2026 00:48:10 GMT
content-md5: 7s/vclwgHuE4OZuDkgBXNA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1c42469d-9035-4bbb-aaec-fc9ecc9ad581
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:10 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-9a30f7a2-8f2e-715f-1a54-888b9cc575f5/test-blob-04de8956-751f-6907-bc83-9bded4831a6e?comp=tags

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
x-ms-request-id: cdf23fda-20e0-455c-aeac-42fe579e068a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:10 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-9a30f7a2-8f2e-715f-1a54-888b9cc575f5/test-blob-04de8956-751f-6907-bc83-9bded4831a6e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
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
last-modified: Thu, 12 Nov 2026 00:48:10 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:10 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1FA3B38DF39EFC0"
content-md5: 7s/vclwgHuE4OZuDkgBXNA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6a555e00-ce47-4b71-9304-3c2eb9ad17da
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:10 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:10 GMT
x-ms-tag-count: 1
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-9a30f7a2-8f2e-715f-1a54-888b9cc575f5?restype=container

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
x-ms-request-id: 2d4f189b-090b-4812-bbe7-8cd0a509826c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:10 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

