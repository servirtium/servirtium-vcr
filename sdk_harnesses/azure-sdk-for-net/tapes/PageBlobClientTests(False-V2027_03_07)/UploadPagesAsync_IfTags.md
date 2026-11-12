## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8a4fd5e4-0457-9540-fcec-b3d3ebb7212d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).UploadPagesAsync_IfTags
now: 2026-11-12T00:51:33.1768782+00:00

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
etag: "0x2139ABF6F54CC00"
last-modified: Thu, 12 Nov 2026 00:51:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: edf2ab2b-a669-45b9-9c9d-9e6aeb072301
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8a4fd5e4-0457-9540-fcec-b3d3ebb7212d/test-blob-bec6a412-ea1d-0b26-98d9-9e278405b663

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
etag: "0x23AA215857A5AA0"
last-modified: Thu, 12 Nov 2026 00:51:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9243f2c3-fe44-4c46-ba03-4697fa155d5a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-8a4fd5e4-0457-9540-fcec-b3d3ebb7212d/test-blob-bec6a412-ea1d-0b26-98d9-9e278405b663?comp=tags

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
x-ms-request-id: e438b411-e7c2-4fc2-9c02-ae1df978b88b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:33 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-8a4fd5e4-0457-9540-fcec-b3d3ebb7212d/test-blob-bec6a412-ea1d-0b26-98d9-9e278405b663?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-if-tags: "coolTag" = 'true'
x-ms-page-write: update
x-ms-range: bytes=1024-2047
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
CkQPGi2KsqANhlmaLGdm00ocBOBqPo76rkPxfWUZEPc2T8inqAf/iPIlsZaRjN8wc8rdZwDV+cu1
FWvpmDQ783ViY9yevitCHXvuRIz4aCJkwAqbO6n2YFX88pKcFvC96r0gLigCkrSfm0qE5rQ/vaxJ
hdcpoLjMbAOHocyYpQaLMVrO1zr5Yi5W+59ecXmgvTTmU5EZk0oFU8Ile/DoBvVE+bVacOVyTyOo
06QYbvqJ5uSXslJ1cZ0QyYN31Oc+bvWqGnfERk1OdARtccCm7eTHnJQMUFOjzocYSqZi+ns8aWWu
blSDxKCWSD5OBwDdatyfrzdSMh2hBkvvq/ym7HmIMQda936QRNfzdQcVVcaHOt/Kw0pD6TZIDWcI
kxmk71zFxdb4g3JdDmtgXr0VjLCFaHAc3CkuREjQEuoXh7C+T4WrUJDwjrdtbbTf44p5MoC2gyuo
hxMyl4CNKHCIRoe7oQ83ajwgldm4r291TmG+VuBpYASEFsdyeLgPYmZH5CctJEF6QsdEle1S79ik
vUgfz9GQHuWCNotHxPGDETJzccpHSCofQxQYJcoWMibuzbtw8JOVtsVBqu22M33VwYS63n0OXHUd
/4y9ePkbbANkWPc2EiCf3rsEBp09aQ+WQmNFW1Sp4HFGU/AG1z3MJT7qUdqGn65jGwDCClXX35Z8
JjWV1RCvu3iF8L4vmAZ9OOFfUhg1D6O14UBT5tYbb3NairAINk8tO5ViAK/vM4L6RNJ0d41+RheS
4PPPXNWhaoBL1Q5VdQGRMReC0w7zxa69WKIEp/fm3EOZdVZbXt/AwJYupF5zpc7Q4kZ1+3MInhtF
EQMyncKJZPjKuwCrNtM4whN4xSBPSrPTM8SxceHPkdY7FUzbjSLTpEBlqOnOJaxyPDhgj9n69sdP
X2n+2PIX+ykpcCCHXDXwpCDf6aHJBQ4YPjSobwH9QB+Eiy641cxNTq2/pLWM698DcOu4Gwwmhllb
5pm9b4soLC8AA9AGN89UkZvzCWBYi1NVpf4WRCUTXQXUXe8ykN4hl3iFi+gO/DgcZIlwM3z5AlpG
aMqMEucK7aXLMtrgIQG80XLn0wBqRqjG+t+boimJ2lqU6ycUlYWRe55CQ8peO0OHs2IKEi9a2yEh
xhcHbkp7QVd/SzXZqDzsVldiKAPeZ76cE+/Hf8gqOg8G885tiQxTxgFy3/ANrgsmHbzY+LMeQ19Z
a1patMKPVBEl07Vtf81KDmEBbIjOjmXkoWELUkJc569uEx2y+RI/4ore59pWuJ7vjelSHdfXi9z0
dhNggwHOyesF/muvmBVPwYn976eKjejDHMVYCcrYl4hAvYL+3l6IDx3uULkzP/TUAltN2Zw1aQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F818810B9E8720"
last-modified: Thu, 12 Nov 2026 00:51:33 GMT
x-ms-content-crc64: 4h+jv4J0p1s=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a848a9e2-e1e3-471f-9141-04e7169f209a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-8a4fd5e4-0457-9540-fcec-b3d3ebb7212d?restype=container

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
x-ms-request-id: 5f7efd2a-ded5-40d2-8eeb-7f6f65e7ca92
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

