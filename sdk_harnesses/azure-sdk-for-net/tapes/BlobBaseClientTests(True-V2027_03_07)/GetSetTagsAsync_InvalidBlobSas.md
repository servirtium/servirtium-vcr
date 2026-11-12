## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2cba8fed-9ac0-5bf3-de0b-7fbebbb81fa3?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetSetTagsAsync_InvalidBlobSas
now: 2026-11-12T00:48:14.3329536+00:00

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
etag: "0x268B4CE05A2A160"
last-modified: Thu, 12 Nov 2026 00:48:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 75fb4bb5-3102-49e1-afc6-01317f8045bb
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-2cba8fed-9ac0-5bf3-de0b-7fbebbb81fa3/test-blob-b5a4522b-42cf-c7b7-bec0-c8ccab9e5290

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
6AD6R/+as8a31243up/yd9HoOEdt65yq2PNuANImsD+579a6vdikkJ7e/vfTgAwezlD7wmYLIvxk
T28MLLPzkCcufcvJN7n5RKeoj+2k11fmTzGBK+3ZrszZVm1pl2Tr6m3QpAJBVZaXAX6+Y5MPwHgX
JdyCcmU6Vc/+7+FMkKxDvaR/1DJUpPqa6iluG0s5ypX0UXKHaHgIlU8zQmW1SnHSe6buj+tGwoHi
54c7zDqExSRLVz45u1Qsdz7iIWGU5Z+3m6ClSjqpro7xpYHwzMkVr31AafMzmL9RwhitY6EfTgLn
hDCa3nrqoaivSBbSO6p0zXLkU3urhALgU4gi/Evt0ld/CUiZetACVsdKg1Cof4ZuOJUvOvqGPP8t
uYvxyKVdwna/UzJi21Kh4fy0YQGyN9MCs8O1vpdc+c1Ia8FEEY4i7cDZ6SxUDF1CjVj90dr+e4G3
7xThqATfYlllGXCRXdBukXRA2E2nradmcjE+XifySu8/jSF6QES8+ofS7/LssTCIj0BmvqIzD0Fs
ezXToAMyc86AUdCu81Evg97G1b60ecAAts/ni4xNDH3fDcUP6VqDn3wkbGBg2ZvuNzrEbTqDtwF0
0uozS+dCM0VSz+aMIJmEQjVCkA1goNwz+FNRiZ5CXFbDmhdwUFSU4TkaDQq1YhegPyoEQSb0EzEN
/1KT8ammD3KQyIWCFPLhra/URpPSfpY8sEl0Phsvz4blYlACAO+Pc/2XJZmRHis4I5N3H82eOoG7
V0BgMtFXYPn/nLGi362/RNKVOln9qpEdPBuHt6+5RyfORqivL0ErQMSfkoJ6lUPmt9v6CAAovayv
QvW2z6hKRlSJ05gEEBWQafqUXhgPo6bXoQDUvj4npoj7/+xLdXAbVUst8cGq4afFap4Fk1+UoJ9P
3i2odYgVYS0QCBAoRfOKeAjN4bLkLMBZDlSfIhIoZ19N/JdCc9/DGI+UmtiWnSWrextWxr/tarJt
T2c0dT4b56Cx2khcRwUpCcgiUJLnwnAu9Kf20aCgYJHl1CR3jqJQebI35cLcTjMWLb32yhofhoz2
BYCXJBUAEXq2d3PgsXom0dffr92uUqZ04KTjqZV3xU6XgIkhuVScN9RIJda/NXtC0PlDQNavSLLa
I0RxHGflP7IkSTDxBBiCQngJZizQtKopodmcNIR45zjWR5YQKxtsYuYkm+tKUMvhwP5epuKGCm6Z
SHqNSQstrGH4Gr2CcRZcnANGqxi/3lAOunOGGUFVUD0nd+Og3xnb9u+JUjYNXk7nAQnfP15W2mkp
fo6Xp5IfosqAW/ozvLzpa7UpNYwaAFwknhg4dhDe0Z15dmCLQ09caq9rjQNUtEVM9dSpLKXdDw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D2664020D72D20"
last-modified: Thu, 12 Nov 2026 00:48:14 GMT
content-md5: gLiDTVLvmQKQYoWEx4XuNQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c74e7a42-e311-46da-8d50-5b648838c713
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-2cba8fed-9ac0-5bf3-de0b-7fbebbb81fa3/test-blob-b5a4522b-42cf-c7b7-bec0-c8ccab9e5290?sv=2027-03-07&st=2026-11-11T23%3A48%3A14Z&se=2026-11-12T01%3A48%3A14Z&sr=b&sp=r&sig=ztbpbVYhISJfo0RoOTukPE%2Fe6J7vK90mAiOjj5J9LQM%3D&comp=tags

### Request headers recorded for playback:

```
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: AuthorizationPermissionMismatch
x-ms-request-id: ab098101-f1d9-4a57-ba20-ed9b8c45bfd5
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:14 GMT
```
### Response body recorded for playback (403: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>AuthorizationPermissionMismatch</Code>
  <Message>This request is not authorized to perform this operation using this permission.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-2cba8fed-9ac0-5bf3-de0b-7fbebbb81fa3?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 09b31d4b-c409-4f80-bbdc-3e24fab9fcd8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

