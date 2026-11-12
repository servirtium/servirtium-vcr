## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ec7fd076-0e49-5f46-4041-c146152650c7?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SyncCopyFromUriAsync_CopyTags(Copy)
now: 2026-11-12T00:47:30.4267497+00:00

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
etag: "0x24FFD6402E25BC0"
last-modified: Thu, 12 Nov 2026 00:47:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0e04ab1f-5349-4a09-bf2c-063f45e27394
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ec7fd076-0e49-5f46-4041-c146152650c7/test-blob-c71b0dd9-e7b8-942e-97f7-45f8e1bf3170

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
1FAdeMOjpBhbxFguOpSpyuYFGAsO1++PoupUUchOfoAPUHLECdgENmkCa/SOAFoCTnsR26cmYv1h
jtXYTlJPDEbYHuoi5cAOAeKiC2v7AaKQUgNNPKLZ6e10Y3sDK+cWs1+uteFw32i6A9nFg1aSZY0y
R/xPAc+j/zX8rYFFC9b6jFgMTUvBIHKakznIE2WX4v3t0OPrxrGPCrarczLndPgDy/b+hhhBcSeJ
tG2W2uvPZcqDWDryDsamfEKUFaxAsx9AxEhumFzkq168YRFD+C/L3A5nYxy9EbwwVwnWrVx6SQFO
VRaiYcxtn6zcNay0YoQSyDme2U8Dg7OMPUBTDv4CQhgP9aIZKXpB+cRw4NsPfPSEw+Qj23CyS9Ji
FiOLGpGt2vOUpG3h+Z++XN+Lk6LXfMFLz0oZ3manXarQthJXtd8zwgboe9eHo8pFZH6QJ7cvi5li
P0tGlPuM7EfDEEOMZ6YAV9Cc7wDpxCuA1HrnFzbyoSt49HaT7C4KW46Qw5KHuP3XkM/mkpyZeHsf
xcCBpNUR0G8XFHIwbGqikZNxWQCZ+Rt9EIZmCw6O33z6dCZtiba5f/Mjb6SKpiNkRAAIJx96hcyk
BJROqsVgiTT2NvhDNAjcuNkNdYp38mljAscOhrhcgO5ayYQhatQuw+Vvk3ArIA/3K25FbRBCLBEr
6qj9UgN8mrUJ6WuEu04E37KkB174OOG4FlpJFhLeGJxy9n8sMHHi8/m6ITejc3AgQY1dnSSyM7LH
RTyoMoOiKtDOEcXO2K5BwRRlPRepFKLpKdWEgXp3wMLNZes1OcF2F/Zm1WKrUmjfG9sQTfWbHTCZ
vwitHalVVlECAHPCDIdS7yYgQz5APtdspWWfZnLNMke6m3q5yPlMEH4RqVH1HA9Tvl7PetrxWYEx
QXhEtu/eNM4rB3EMmSYs0zLALpSGd4hVS6gT/rdtyEH5h4eBCFmOMnSCyhSeRyQ3oqanMSrsq8nv
7mtHyzUWvT4vExGfq8vYMfwfA6xztwSD21sRxZcXDdy9kRnuR2Y+bAzVbzMTl/fazgAtzKccfDdn
w+/aBfenFwU04hqy6uqV4ZagnUjQcENkNvaX6UA1oBThhoN3ZGYULlct3rXdKOQVmOsQfN7vllOr
dc8AEC7E/0EF0WNmHnwwi2/wopGOhw0SgVFVJCM28fAwy++XFB0paN5z11eAr3lv4PFv/vTBHe7B
7o/cb9sdz99zNVKNmHdRxzmyGq+2ktHX5kMyxvP7b64A1iWOTPkDVQh3DHkm4kd6HTe6DgI+Cly9
BImX6wjsd8akjMJRwntAr8SmP4VYsQT7uKm7QWGrwsvJ0Udwa2oAi5WzglaFKVq7eV8+mMvXZA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D0F56834B98500"
last-modified: Thu, 12 Nov 2026 00:47:30 GMT
content-md5: HoArQZyLqoBpNlIvVOd0mA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c12a5d91-b578-4d35-9be2-1b89fc262f2e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-ec7fd076-0e49-5f46-4041-c146152650c7/test-blob-c71b0dd9-e7b8-942e-97f7-45f8e1bf3170?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>source</Key><Value>tag</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e124a234-4990-4a84-b54b-1808536cfc67
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:30 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-ec7fd076-0e49-5f46-4041-c146152650c7/test-blob-339c8553-305f-6536-f9ca-f787f133d043

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-copy-source-tag-option: COPY
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-ec7fd076-0e49-5f46-4041-c146152650c7/test-blob-c71b0dd9-e7b8-942e-97f7-45f8e1bf3170?sv=2027-03-07&se=2026-11-13T00%3A47%3A30Z&sr=b&sp=racwdxyltmei&sig=RnLTf9JMGusHGjOXrzJKQGfaoGdRCzqjlzWJ4H2hLBY%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1ED91FE0AA4AB10"
last-modified: Thu, 12 Nov 2026 00:47:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 50e7ef17-4594-4981-bccf-8e9fc93ea798
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:30 GMT
x-ms-copy-id: 22898bc7-5f07-4829-8752-57b850b9bd76
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-ec7fd076-0e49-5f46-4041-c146152650c7/test-blob-339c8553-305f-6536-f9ca-f787f133d043?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: 0aff586c-f845-4a8c-8de6-6958d71c47e8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:30 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>source</Key><Value>tag</Value></Tag></TagSet></Tags>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-ec7fd076-0e49-5f46-4041-c146152650c7?restype=container

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
x-ms-request-id: 9fc54403-970d-4c30-951f-68c661a46a69
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

