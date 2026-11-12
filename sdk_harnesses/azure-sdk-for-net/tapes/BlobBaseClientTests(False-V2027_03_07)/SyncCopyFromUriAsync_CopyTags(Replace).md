## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-59e98524-9fee-fd79-5037-17bb3a089c23?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SyncCopyFromUriAsync_CopyTags(Replace)
now: 2026-11-12T00:46:14.6318426+00:00

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
etag: "0x241330E920F3880"
last-modified: Thu, 12 Nov 2026 00:46:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 635148b9-c60e-4b0e-a360-693d5ae32736
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-59e98524-9fee-fd79-5037-17bb3a089c23/test-blob-eee7594d-8f1c-05a6-6a21-a31d7b3f167b

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
Kzjr9jvtIuzAdw+zCSCVREOT81m9C36V3+PvzftcghAhnI8CHaXoYDf7LqV/8vxJi17Z50y8vR+5
VRdX/lXwY/T+kmyQkyeeq5Iiwt3ZFezmpUGdg5vEZN9wSMeOkGLhC8uwgV+QuPc3Ozy5mvtC30Aq
cVgUU99ZOi6NIEpfEBowQbYSKZOMVuxJZUhfC8nkLWmHYx8JzbjrVkcxApis2CohiFlEMLWsnRtr
yu2X+i5kqfLh2Kz6JnP+JtNMW1NUnI0dPYJwn/2z2sYDnQLKVFwYzVmlywB+J2LlRQniX0LIFy1g
ebys8wn1Lv7m9ohxM9J2NI36rtGNnxYgi1nz0HqDO4XUatqfa9lPr5wClzDZdBI3bCq0zWlc09qm
i2ivAl6DYroCnMj318m0qv41iwjmRxZHu2RPz24ceJcA+d9xn6w9fjR11thJQJRhACNqJ0fRv0RR
aEf6M5NM5iMx993pQgpS9wzTcXA+/XvP7c9KslFPLjmaHzdlQ0qgKPC0GEi3eL0YGC87/U7TEmrM
KkbEAjPS4cikTiLS7LPBM0iAieQyGHURMpohFDHqxw3MmRgE3Ca84jeAEimaRSt7ecoFUoiGmRLQ
s9CZsMyXuYcVBlObvVcixKessQVMduxupptm5HSERv8GNChWIjJq6VihhD/Y4Lxz447h2egMgzzj
KwkxMNUTkcBTlIguzKJ0QsitqvKslsXf8wHmomwX+bDscvcoOLiDjvN/hEszRRbrbZcfX9lKNpRE
Uj3TLO9TO5vYQVqqSwkPKhv+LRF6q67r+jTV95rXojti5OZ7r2IDK0iwWgO8QSGNEDW9SwmCyqaP
6DK6fUQAAJ8eSGcjk3q5+wHJyVGqL7kTR+dlGVcy3xo/7MYvSa0Er1lknfi6any6BE8HuQBV5bl4
pjZcm+dH7GhM46e0ibJTxBr3RZHAWd1qqhUHKiYa6QcMtqJ3pxRyHLCQbYbVBnuds/XmXp8nuE1Z
8vDSQMFBMvqgp9IQ3BwGhCnhL+xWlaSaaXYwNItn5P5UHrUjoNzuTjqMNF+ojdfY39p2RolhAl1M
ONZLEP5vOMLUu71n4uRM8uCxymBF8dyeWFSw8Z518xtY12gFoz08HPyc1NEacfz1KVSosDj8Bkb6
rLipvkckXsihDwt8R06idK1kqB0KhOdXu8hJzELjW9AhCveFkl60eHUIeGHxeeEGBTuKmF0p7yfR
UgN/2pGFvbQ6Wj1WHeJOry+nAguFZkHmQscHWMJy9xvQtEBbNZ3jg7qtth6kr+hZPOktge0bS+zB
mJjKfmXxx2Mhhmmi83mSw35Q168iQpLfrhzZRXUttGhTmZ0FGQRVu+67gil+t0hvm71uynQ9ng==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x275AC5BDBF0CC40"
last-modified: Thu, 12 Nov 2026 00:46:14 GMT
content-md5: ZR1BbX37u+pGiQa3rDdBwA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1e2601d8-d977-4338-a75f-a65a56fb4c91
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-59e98524-9fee-fd79-5037-17bb3a089c23/test-blob-eee7594d-8f1c-05a6-6a21-a31d7b3f167b?comp=tags

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
x-ms-request-id: 687dd47f-15b6-46d0-b4ac-588efc9e85a9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:14 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-59e98524-9fee-fd79-5037-17bb3a089c23/test-blob-d0eb0556-1848-ed82-f3d2-014e5adc8caa

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-copy-source-tag-option: REPLACE
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-59e98524-9fee-fd79-5037-17bb3a089c23/test-blob-eee7594d-8f1c-05a6-6a21-a31d7b3f167b?sv=2027-03-07&se=2026-11-13T00%3A46%3A14Z&sr=b&sp=racwdxyltmei&sig=9VIENf2DDNHbHJbwNuWYSQkpfVfBl2Q7iQlR3CAT5pg%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-tags: dest=tag
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CA2804927130F0"
last-modified: Thu, 12 Nov 2026 00:46:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 061c0ed7-7526-4603-af53-36be907389fd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:14 GMT
x-ms-copy-id: 8fbc5cf6-57a2-4089-b40a-a1f22fa79727
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-59e98524-9fee-fd79-5037-17bb3a089c23/test-blob-d0eb0556-1848-ed82-f3d2-014e5adc8caa?comp=tags

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
x-ms-request-id: 1f2b9f8e-74d9-46a0-b481-b02b927f0fd3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:14 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>dest</Key><Value>tag</Value></Tag></TagSet></Tags>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-59e98524-9fee-fd79-5037-17bb3a089c23?restype=container

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
x-ms-request-id: 98bd0bfd-566f-46ff-8afe-237e859f2f46
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

