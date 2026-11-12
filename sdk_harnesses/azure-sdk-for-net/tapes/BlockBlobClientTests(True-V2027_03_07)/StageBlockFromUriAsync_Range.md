## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5e28abb3-7db6-727a-df5f-5c9ca9b5acc3?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).StageBlockFromUriAsync_Range
now: 2026-11-12T00:50:08.2852653+00:00

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
etag: "0x1D8FA856AA0B1C0"
last-modified: Thu, 12 Nov 2026 00:50:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 459454c6-f460-419b-b2d2-5b12e3ec58b8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5e28abb3-7db6-727a-df5f-5c9ca9b5acc3/test-blob-5f32d69d-d615-e84e-2d7d-32fcee3cb1df

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
Fc0uCml4mACLah6BXQqPbV/M75aRyAP/9sEG+JeVMY3fhFgQ7SnTOxIn0kxe+BXUz+493MUVMUzJ
LxOocZ9o9jiQodiyf381+LSEafW3oP6rMimoV1TIylMMR74WK8lzvtwTzVc8IlBuB+QRkcdWEY4V
/D52v57kyNaFpjfAH83qEaoYo9KmbxDZOU9wtjmLtTUvAC6L/f4+LwSAt3sYrucWJn8dPm27bo0u
nIVOdBGd+fABkR+fXxSs2nTNJbeUwItnWY+5bnfIdJKgXWB477rz472LFh3Id8drcGP57UjWmdv5
5huC44t5ORyM/gKzM+u52kL5Capun+HITf0TzoZJycOEfgifcP8yEdwAPHjFuD13PxIF3Y8xi0c5
upaOZWuWQjU+LrTiGWpDxvjNbmJoA5W/nI5zROw0U/PBZbZppKtxaflDhomJlSaowhaXYxzk0bYA
zsncIv5ICtvAIbOz2iJMXARpJXwMNQZoyoHWnPDX3JT/adXilEb7+nutyXRy9ejzSwcXe6s685nD
dFh8cm7r6EUes3FNase9bioAXmuS9tWZ4lDov2DpxXU8HyDufogNwuAvU0J3puE/WQ2BOZUtMH2C
45AdAinkNe37EEumz++i85uKY6KSIjxvqWZSZ4vgDu6ia5v48MC3Sh1Ue5WWmYod30b5oszb8MBU
rVnDkc5hGwJcA2NUqQPb0hiFPqem2RDbNYhF5mwhx3vapEJn9LlP8l+TOZUnyTVDHs+0VrEZrdRJ
51xGHDSVOjznegXAc95fNUxHEp96s2xSAsicbXHKwfZuHg1cCdUr/f9ZQE4vgqrxVCBl0Zo0zjPw
8xpr+c3KHbgPUlTQAyx2GxWgIXMdIn8dqxlRZO9bOVDZbBW7vwQxjiKVIDBWIFHz77aFlKy/09Ca
TU6zebjJsxgE95YXulwQbpNRhwJPx4rIXXU51qWjGZlEIXG2fhRqzG0XUSm63DRZdSUZbkvOS4bD
6xtCkNxzYN390pnqWfB+5rqUN3ZgDoFB32F/iqpNdtXr8pP4KDuQpPBLvQqbbxs1moiQOhMQY9ya
AbF789Yzr1zD/mdchb5/A5OFFFF2pW9GSvAhvDzC24+2XSaKFbAaGA2t13Cz2BTKETZ/i06LI1tB
NanlEfIgASPYpieX9O7javxDyc7/knHbV6sFQlBAKjnKSeAHNAcajdZN2zHtMh1HnCBRSFqNQqI3
CrlHGr7Tl3ztzKsO2zX1KTv3sbZA7iSOvqYv7uLfPQc90CpN03MXekS1/2ZxOcDrXB4elpDr9xyU
uVsYo6iaDo+k0AsKp1bI3zdyiu++HIXlQ5LDwKd2UtgNuBkX/9acG/DWzWi04LTIVrZYeWwt1Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2162C73DE7D8E40"
last-modified: Thu, 12 Nov 2026 00:50:08 GMT
content-md5: ugO9vYsegHZexcmU5FVaKQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6be8eddf-c75a-4a8f-92ef-a79c7a09044c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-5e28abb3-7db6-727a-df5f-5c9ca9b5acc3/test-blob-fe6fd661-4ee8-301c-63dd-fa6af01dd96c?comp=block&blockid=dGVzdC1ibG9jay00MDdjZTNlMC03NmNkLTQ0ODYtYTJlZS1hMGViODJlM2M2OGM%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-5e28abb3-7db6-727a-df5f-5c9ca9b5acc3/test-blob-5f32d69d-d615-e84e-2d7d-32fcee3cb1df?sv=2027-03-07&se=2026-11-12T01%3A50%3A08Z&sr=b&sp=r&sig=TMfpJpBRsBFpUBg4qtDgGhj3NIikN1QUyJ5ylKDbkiU%3D
x-ms-return-client-request-id: true
x-ms-source-range: bytes=256-511
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
content-md5: Xe6DSMwbhoUaU61UKm2dyA==
x-ms-content-crc64: y09LhEeYifw=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5bb654da-5ab6-49f6-aa16-237d3396e74d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-5e28abb3-7db6-727a-df5f-5c9ca9b5acc3/test-blob-fe6fd661-4ee8-301c-63dd-fa6af01dd96c?comp=blocklist&blocklisttype=all

### Request headers recorded for playback:

```
Accept: application/xml
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
last-modified: Thu, 12 Nov 2026 00:50:08 GMT
etag: "0x1D0FF35B2989F50"
x-ms-blob-content-length: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b49a0b64-93bc-48d4-b5eb-2e61cf06e75f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:08 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><BlockList><CommittedBlocks/><UncommittedBlocks><Block><Name>dGVzdC1ibG9jay00MDdjZTNlMC03NmNkLTQ0ODYtYTJlZS1hMGViODJlM2M2OGM=</Name><Size>256</Size></Block></UncommittedBlocks></BlockList>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-5e28abb3-7db6-727a-df5f-5c9ca9b5acc3?restype=container

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
x-ms-request-id: 31b2cbab-1e44-4e7a-9285-e40491a50ce2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

