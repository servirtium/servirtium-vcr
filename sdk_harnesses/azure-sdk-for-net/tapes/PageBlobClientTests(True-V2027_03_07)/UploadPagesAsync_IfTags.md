## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9b647857-07b3-2de5-fde6-64fc86feb0b0?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).UploadPagesAsync_IfTags
now: 2026-11-12T00:52:02.9899026+00:00

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
etag: "0x2370316C40B1000"
last-modified: Thu, 12 Nov 2026 00:52:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9fe6d195-9c80-498b-b060-ca5cd37ad9c2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9b647857-07b3-2de5-fde6-64fc86feb0b0/test-blob-c26af316-648d-4e45-e071-80765b90f162

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
etag: "0x219C4EE46E75380"
last-modified: Thu, 12 Nov 2026 00:52:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fd7206fd-68af-44cd-b773-fb877e1a056e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-9b647857-07b3-2de5-fde6-64fc86feb0b0/test-blob-c26af316-648d-4e45-e071-80765b90f162?comp=tags

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
x-ms-request-id: 1302120d-1dba-4aac-9a86-a9b9739d8499
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:03 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-9b647857-07b3-2de5-fde6-64fc86feb0b0/test-blob-c26af316-648d-4e45-e071-80765b90f162?comp=page

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
iYwAT1OyfbByy41AE+3pZQdfOK8H8FTyMxW6Qodu0mz1AXP6/mFcZHW6UMLWBDryiBpv+1dBWpg3
DRs99zspBPkhSxF67melA9Q5TaCRGy/byLls/9YUs6bawvBFH206kEzJtbgod5myyfiDBw33pfLs
Yi6BvAUiDZhqoCx3X+Rn/7xUyGZ2slEguTXekKuZ4hz+Wbw+uNNHp6ggvtdsO2kUHAhRo92LdbDc
YQPPRHzs0b0PeQYnKEboDSG+VvR6s37MyXSjRz8/cuMMYlfQd2IrM+waXcJi7PPBaJW7zR+8Yq2F
A3oHSYp90AYjG8buGJa+kiMIX1a7ad2A4d6pg6TDT/+qS3ToI+lhnIy7P9Et01D//Tr8tAJXyZqd
h2ir00xiX8vGRMwh1W45psPJ/ykLUw2OqYZpx5v8U4HZS5yBtshAWeAGZo6E3SfLww4/jcpwkTNa
HSnG+JgvyvFKSIrSt+/6iaVJBex/CcxfnQONvcW3abloJ5ifeWFH1pydOZWc+QseRQQlJoxH2xNd
Z1qUoQ0rk97QaZBXWw9DAS5Q4dA2wqP4b3fAkkItIUyFQRIHszSPcaW2zJB7xun14SRd9/lDJ6S2
nDKVawGcokdE0hn8PE75wW8qf/YTfKiNy7Ad0CpSQRpuUBcC+QakGilJN/TQ+KTWYzWJGKeuox+J
B59QftIc8ZD/juw298dphWXMyUWzvdIMRmz0ySlzv634efJmVJtXLEVk0Wq3oGxuIJJB4tna1UnM
QzhmJyhmi84/PX7VAjHKdZz/TuxoVKUAhqiWMt3THqOomhBj8QQc/kWbeGLumR1hd2w92oZcZO6S
ZaF/0FnwbB/aLGghZ4OX4lCnzdxDEe2LNbpwlUMcSzYh0ItjnS7rqwxCE2y0Pw/opfc2tZYSTlO0
9Jqef9bcvuAy/5b4NEUivCLQAP6A1vWriPBM5pafD4E3rqmTTCs1ZlSMgkB58HCyE/l0Qk5VMx2l
8/flkNdJk/AUwYWcj2/2mpmp9FO0MpeAmdOdKswz4nqL7lkzUNZ8Qu9QZC7qFYSJfqi0qz/J8MFf
ZPYErGkj4d8LEKEWw0nDLbFkZM1oloRPE6skfjY7wf6X0+vgd5aGLINP3wTjc7te8X6NZIv09s5x
tZi9/mKoz06ifu9e47Ub3jdKGbZ/a6Dwxo24rVxyo9wcbsL9yS4gpg+1QPTLAA7JcoZTqd0Y8Un3
zDjV8CLxMNsSQXTyHRUJKXKnyiusJcZ/7zvWHvn/BHx4Bfz1S7bsww8Yub6Z1lRxSn9qcSceS6dy
VgDnGxHhEz33ehcYE967ugYbk2sI5RnmZNR5lJNVWrpVg/S2Baf+N6WAols8WTehrrYgArg7ag==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23CDBAAF1EC8C40"
last-modified: Thu, 12 Nov 2026 00:52:03 GMT
x-ms-content-crc64: 4BN5KlE4SPo=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ebbc2136-1178-4c56-8e2a-b95097db3431
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-9b647857-07b3-2de5-fde6-64fc86feb0b0?restype=container

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
x-ms-request-id: 8393e71a-e9f8-4ec8-af4b-8f00b01f1c08
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:03 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

