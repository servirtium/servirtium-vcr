## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-77b10569-85c8-2dde-922a-1ea090f3d0d9?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetSetTagsAsync_AccountSas(Tag)
now: 2026-11-12T00:47:28.4158606+00:00

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
etag: "0x23BEEFFF54F2C20"
last-modified: Thu, 12 Nov 2026 00:47:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a1ae3d6a-b19c-40e8-9993-0cde06f36efc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-77b10569-85c8-2dde-922a-1ea090f3d0d9/test-blob-9bf99dac-6d29-e44e-19cb-480279cad236

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
IH1XlFHqcJ7Si5P0M2xKmOQISSFyJ6n8t8xd/D3bs8dX6H8TmzuHwS1ayJ7aWbGtga8ecYGxw/jT
W92EjHNh9tfLnEvsN/yogIf0GF8LIV0bsHuNvUJGpiSGP0BeAzS6+NHGD7xlwEmydvH6vauZxzp/
aNz31DmVhPYnZfe8SX1SOR+NRBGhtvAx20dQS+l47HcF35pYwiSXMYrFPlpS9Sx0p4OLDIMo3bLs
xvjyRDgNrnl/t2ri+nf79RKH23iV3+Ua3KRl7OD03QHobPsrpe1RuI/h0j7Cka0LkBZwoQI6VucT
12eUp8GYitlo+o17z08lNSPoswynWEv3WVzJhDz/rRUUGM6FvRDNSEhkWZYfkMHHSmvfUaLba34b
nU1lzgWdaUx3Z7eBn3gSGmrEQv+118mbAjrQH1xzOaxPaR/CaHpCx/BJpygJRaryzDc3Fil/ZsWE
yszLzEnwBC0KMTVYT7HwgnsPazCgkbyP3lMkOyKD0ANZPp2tdvqmWKL7/xR1mX2FRpStcPqV4zkP
PO72zMkLh2Ay/xAUQwuAaBKNpZKoGkTVn/SN1WAIxFtknToMr4zZ8HezQpptcQOJLAfoBz2mZyKq
IS3VfbIAKjq0r6XRdLmGtLUa9NepaC3wBKhYIL0dvjUXYo5fBHLFsxhguMJeuLdOYVKIi3NLALj/
5HgJqAl9lvFvuRIqJrBCVUG+SLBrkkzwCr5qlTLCzGHWYB/5uwoO4yHQ7v6lJDuiRTYyjLgIk1Es
GJ5LEwG/reyxVMaQSJk2r2WPmqRNS+WDx1D7j0CpzczOzaNsw9AgEUER8891Evyc/NxSefmt3s24
yEuxwx2sCIb5wnv2yeuVb4hjPFcWDbVTX5NjVlTSIO7VtPuEbk4jZOtJe0+BpTPwvQpwSqJ1obqW
XWOKSbExJqGMIBTwEAA6P9dszZJl0rpgcplKYtZMYBJB7hHrmRo5F1Su9IQeAKwJNgrKCNQnMYup
KtcY58TKP8ABriLvTqa9M7U9tt01QXHsQCvLglc+Gb2FQm5DITCQ47TEHVGKGudjDdUe6nqtc+hm
K6aY/r1ow5VlaQw3eRGFrdIocSQfYiVEaHWCHy9C186F3PWK9+T3XFm8JbHbLJPDmT2nhALERsmA
VJZH5qNmIpE+sZ0c+7XuMRTKYz10aTvivoXxm1PMwZYsCaNNr3a2VQIfnHr2p56HuVPt+uKLDOta
ZScddIY+cvAG7/ESoIGeFA46VMzB6xbnauL/3sazoP238kpOmOB84SqJ77esdRjST+bUUbcfmXkQ
NgqkPpMpUk70W603T3stvnOhN/xeO/XJLY/g309Fl1nQPWHW16KWX5xotxlrmv9qp5JEfWF9sg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1BFE7B4BE061FF0"
last-modified: Thu, 12 Nov 2026 00:47:28 GMT
content-md5: KjLzRW3mxsHrYBgfMALOYw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 756173e9-1226-4592-a6c1-46b3750db6a1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-77b10569-85c8-2dde-922a-1ea090f3d0d9/test-blob-9bf99dac-6d29-e44e-19cb-480279cad236?sv=2027-03-07&ss=b&srt=sco&st=2026-11-11T23%3A47%3A28Z&se=2026-11-12T01%3A47%3A28Z&sp=t&sig=KQxnLQN3S6cGahujmTXM9Y46feILZ1MmlsDeB4zd6%2BM%3D&comp=tags

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ec7e146b-b56e-4431-9203-36f664d3881e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:28 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-77b10569-85c8-2dde-922a-1ea090f3d0d9/test-blob-9bf99dac-6d29-e44e-19cb-480279cad236?sv=2027-03-07&ss=b&srt=sco&st=2026-11-11T23%3A47%3A28Z&se=2026-11-12T01%3A47%3A28Z&sp=t&sig=KQxnLQN3S6cGahujmTXM9Y46feILZ1MmlsDeB4zd6%2BM%3D&comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: 6ff0c309-dcd2-44d2-8f6e-cbfbc53ba135
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:28 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-77b10569-85c8-2dde-922a-1ea090f3d0d9?restype=container

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
x-ms-request-id: d0ef4ed5-b420-4977-a15b-d87bbf1ec5c2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

