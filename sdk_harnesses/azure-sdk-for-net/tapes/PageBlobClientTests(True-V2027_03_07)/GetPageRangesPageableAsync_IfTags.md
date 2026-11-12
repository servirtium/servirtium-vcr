## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-96739135-3e93-aa04-be13-80a4057e7f0e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).GetPageRangesPageableAsync_IfTags
now: 2026-11-12T00:51:56.6243968+00:00

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
etag: "0x1E52FE1941FAC20"
last-modified: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: da1e8dba-3922-4f49-a8c6-70e070415b32
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-96739135-3e93-aa04-be13-80a4057e7f0e/test-blob-9b0b384e-a2ca-5f86-b428-4c491f5ff708

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
etag: "0x1DA752949646280"
last-modified: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 43cba152-96ba-4345-852d-773ce77ca2c2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-96739135-3e93-aa04-be13-80a4057e7f0e/test-blob-9b0b384e-a2ca-5f86-b428-4c491f5ff708?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
4ShOtC5ga16DiDnLm5eOB/MI9/uuk+SSCxPiavG7i14bd8PcMMvf7sysGEJpu8QcmkVVF2f8Wk1E
u6kbfgFtx/zasCPTsdcoKAkuAXqhKVBPxc+sZnT2Hhx2mHQiw2/LPlBFjgqhSOltLO5ezlnSopFZ
y7kxwWGI45EGXRliBmWaY8MqXJpFrn3mPjmGmFDDo/Xjyfi2mX3vvKp5murPCiWJxGqVqEb2Ex07
S4InAktAQrojfz1t48pFOqDvyxOSFjQT/NTlLfqv7LXaek76x7lfOFcvq4voHOCgUG2mB0gJqTRO
FAV3WhXAdJOIkml7S3PmkJK8YmuoK+DzRd2MCOVs0NAZrLOz6N5Cbzb4X4l3JAX6v3a1TUbJpegk
gxU3M2utG8GYYZ7AMqi0efM0sMtXeyDYkklutoOKUAbKjmTICzvLSkPI38JmOY3OAdNTlfUdzQf1
X6EiP2Q9DhGY9qND7G63aWaHj5xdcli7n7WvNrsQrcFc0qyaqAveitGxzUPqihVlnCyPlT5rmOxJ
Z5+vjtdVh0ji5xnCHcBaqAXLq6QU0RSgSpqPgRiC8Dq/UEFrL/z5W0X7B6P8o35rNOw5oOxINZWK
D0M9xgYwX/beA8x/73kI0VBfGclxo6cbJEwrSVBOdhur4SC4vJU/yqitHp+y60VyMM+c6RzLGWuc
IqK5BBWmj4yw1A1ZUBW7IE4hxIUHaDgHuBiBso3/38i0HJnyhcWSB44TAhc3GeC64cjNqlXllLlp
skz9Jd3+sPRFpDR7yJqIjrz39GYhz584xtHEMjRzzofgiNN5leGxFFEi8nSrPhguRByY7qBTSOKt
xF4LOX6/0tWtm0DHD/jaRt8U/t0qjIe4lu0Y2uDmjD/xzNGDpdvTYh+f/qPYZjUjvafBPkoEgzfW
U6KQp/f1xg4A1kMnV6EEQZu9io7k4C+49B04JU717EiZrVI4QrsoqjiV2JDx/GUGvfyuRvio8nJz
2LLZvKHACun6jalPy//gleBWTwiexvi3MWdRR6VQ8LvfxGkITu2W1M2n9267t/H9zbEXUqNp1BK5
IYo5b8JEqpzubwaV10byv3o798+K+3p2U3nzOJ4XdfBXTi1jXGUKY03RzUjqaPZrJZIoLt1DLyUQ
wxtIUHH+1/oWPYgYj2IUMJOBuC4yi+uDhxML7kYTFB8HU5lKwRPb0/ZO1CttUpUvFP5JwXf23jgw
xMhd8uizAyhpETzJym6ApuU45La/FjV+29pIylOoEHRgGfxKfeANmtECA0FZZkmQyBqSvvqBcK6T
3xcNaznUwQDHaLBxNigEKknlvRLzJHWQtwE4FlJ636lOt57JAC+YLUJAkv2ZHpLyjZOwnLOcnw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FD07B40198EE30"
last-modified: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-content-crc64: yJ2aHv7eV1Y=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3e3be353-f010-4a58-85f8-baf496816cbb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-96739135-3e93-aa04-be13-80a4057e7f0e/test-blob-9b0b384e-a2ca-5f86-b428-4c491f5ff708?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
4ShOtC5ga16DiDnLm5eOB/MI9/uuk+SSCxPiavG7i14bd8PcMMvf7sysGEJpu8QcmkVVF2f8Wk1E
u6kbfgFtx/zasCPTsdcoKAkuAXqhKVBPxc+sZnT2Hhx2mHQiw2/LPlBFjgqhSOltLO5ezlnSopFZ
y7kxwWGI45EGXRliBmWaY8MqXJpFrn3mPjmGmFDDo/Xjyfi2mX3vvKp5murPCiWJxGqVqEb2Ex07
S4InAktAQrojfz1t48pFOqDvyxOSFjQT/NTlLfqv7LXaek76x7lfOFcvq4voHOCgUG2mB0gJqTRO
FAV3WhXAdJOIkml7S3PmkJK8YmuoK+DzRd2MCOVs0NAZrLOz6N5Cbzb4X4l3JAX6v3a1TUbJpegk
gxU3M2utG8GYYZ7AMqi0efM0sMtXeyDYkklutoOKUAbKjmTICzvLSkPI38JmOY3OAdNTlfUdzQf1
X6EiP2Q9DhGY9qND7G63aWaHj5xdcli7n7WvNrsQrcFc0qyaqAveitGxzUPqihVlnCyPlT5rmOxJ
Z5+vjtdVh0ji5xnCHcBaqAXLq6QU0RSgSpqPgRiC8Dq/UEFrL/z5W0X7B6P8o35rNOw5oOxINZWK
D0M9xgYwX/beA8x/73kI0VBfGclxo6cbJEwrSVBOdhur4SC4vJU/yqitHp+y60VyMM+c6RzLGWuc
IqK5BBWmj4yw1A1ZUBW7IE4hxIUHaDgHuBiBso3/38i0HJnyhcWSB44TAhc3GeC64cjNqlXllLlp
skz9Jd3+sPRFpDR7yJqIjrz39GYhz584xtHEMjRzzofgiNN5leGxFFEi8nSrPhguRByY7qBTSOKt
xF4LOX6/0tWtm0DHD/jaRt8U/t0qjIe4lu0Y2uDmjD/xzNGDpdvTYh+f/qPYZjUjvafBPkoEgzfW
U6KQp/f1xg4A1kMnV6EEQZu9io7k4C+49B04JU717EiZrVI4QrsoqjiV2JDx/GUGvfyuRvio8nJz
2LLZvKHACun6jalPy//gleBWTwiexvi3MWdRR6VQ8LvfxGkITu2W1M2n9267t/H9zbEXUqNp1BK5
IYo5b8JEqpzubwaV10byv3o798+K+3p2U3nzOJ4XdfBXTi1jXGUKY03RzUjqaPZrJZIoLt1DLyUQ
wxtIUHH+1/oWPYgYj2IUMJOBuC4yi+uDhxML7kYTFB8HU5lKwRPb0/ZO1CttUpUvFP5JwXf23jgw
xMhd8uizAyhpETzJym6ApuU45La/FjV+29pIylOoEHRgGfxKfeANmtECA0FZZkmQyBqSvvqBcK6T
3xcNaznUwQDHaLBxNigEKknlvRLzJHWQtwE4FlJ636lOt57JAC+YLUJAkv2ZHpLyjZOwnLOcnw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20D518F65C90000"
last-modified: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-content-crc64: yJ2aHv7eV1Y=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 972c97a2-c7a9-4598-8985-758a1177e2d2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-96739135-3e93-aa04-be13-80a4057e7f0e/test-blob-9b0b384e-a2ca-5f86-b428-4c491f5ff708?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
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
x-ms-request-id: 034a1642-761b-4021-8084-0532c1ede7aa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:56 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 5: GET /devstoreaccount1/test-container-96739135-3e93-aa04-be13-80a4057e7f0e/test-blob-9b0b384e-a2ca-5f86-b428-4c491f5ff708?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_6
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
last-modified: Thu, 12 Nov 2026 00:51:56 GMT
etag: "0x20D518F65C90000"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 69feee42-64ef-490b-92cb-0fd9ccff719e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:56 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 6: DELETE /devstoreaccount1/test-container-96739135-3e93-aa04-be13-80a4057e7f0e?restype=container

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
x-ms-request-id: d37a4a7c-0cac-4711-8e51-a7adb651f767
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:56 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

