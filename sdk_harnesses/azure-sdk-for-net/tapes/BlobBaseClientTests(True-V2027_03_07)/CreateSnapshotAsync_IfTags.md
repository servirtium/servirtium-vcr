## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-be094c1e-3aa1-9bd5-80b6-2bb2e2d1dfc1?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).CreateSnapshotAsync_IfTags
now: 2026-11-12T00:47:41.4781614+00:00

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
etag: "0x21EBC44A20C48E0"
last-modified: Thu, 12 Nov 2026 00:47:41 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 31f25c63-7974-47c1-8741-2575737e19f1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:41 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-be094c1e-3aa1-9bd5-80b6-2bb2e2d1dfc1/test-blob-d4a04251-c0c7-4b6c-b4ef-e1987130b297

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
Oaxt0Z7niOE+zuypsmIZECRt0aEjxONe4L4KsVk9KlADk3k1Yw4iabq+lfjTwplR1tFzBF4QdHXI
D/Dg3NaIAaOcph7p46wVSmjnZC7qih0kuduHySbx8h4DbVQeQYzjNpRUNxx6Z/IlXbn2KRBG3YTT
uyP6ADd9qrQA5nZX9wnbAy6allMBqlHpYmxs+8gOvI/PSoVp6TVc14xneoF7zWWwGiXirEcx0RHR
EZ3LEK7r8Snnh6yDchr4Pb7GmS/QbpUGvOCjLBBHnnlzl9iYkcbdfIhXk0W5LKgK6W6IazfiAaII
xVPNSMUYoOkzD9pCYKz46R2meNpPTY84mEKivjNBkZU1j8xyDzTDPvNchR3OyInBkIIaO4jHuHfE
la+CduG28X1EDdDghdno4znn8sdyas+54C6xJ1YNbdZUrnmEQMgSppSfibu44QqoMlhP4MawUSvf
yZayBMonN5/5i9ZfY6Jx1Ewz0uAUAP4jCPT9vYwQpF1OpHcxX6HJd1Ebv1UzSM623Qt6fH5KysmX
jvzVKnoT6Od5Eb4rP3SqaVuP+UCp8L8mR9+AlifeA9mtmtGl9E3XB9ZuujcPi56W0BMju9GI7Z48
r+OaklK/mw7kfaSjBHUNuPFpOzWIFrtB6sYUukgIJawyaUVqPXWErh4oKw3588udFgPfHrJos5gn
WKiLq+DG21j3cJowo3p85Y0XX+utR/b6dqREKQb6yrasQuTN+AI9Yk+1AYIwbXKIYzklUVOteRCx
kTQ8gbJR/abkg2CVruyK2f2b+EZ0yQkxvMbM1Xhi/snUHGfOAeGcYwTbTOkS8rRNmnhVEYHKPccq
C8TshSgugYWWwZKEu9cc/5RCmH0gHsoRfzoADO1ICd+go/UcsN7brcpkezAiyN6gORLsiKRJCuz6
2gXuLXSYTrez4xjh/062Zuqyu6KZ7rZbX9PaXIE6VpkJItXY7YBVzC14b+TGvjnDNiG6lk5JYOxO
ks6hvfE2eI1+2N153XlqXe90IX/SlKGZFiVff8BKv8HpilqxtA47QvZXR+VbSlmoUDle1T5sfP4t
B6fM1vjMNBkbkFIeuKnhON+Ieky7PcvMty+G6+qDfA1chKxmb2v9ihPMQLoGiZeQfZxf5AGxccnb
/x/JRkgvmBNFwjP8esh0iu857v0Rxi2X9m5NI5cMqhLii3BLNETKnaemwcZkkwLT61kReIPLyjjy
MU/a4XV7ORggGe9YKFarblBWagVmM2Jrejg++jKPFsE3WQL177wyKoiuQ3oTesIDZgkydV8zi/7t
bmY8PT7mkQIuIc9Ttn6UJEB9uPDoWP91OpMoXaFhA80EB4FV9exJyLF35Fnyr7CKnlEfttMOBA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C1DCBE10B5B050"
last-modified: Thu, 12 Nov 2026 00:47:41 GMT
content-md5: BX39GdBcgKNG/d1wXUol/A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4521c51a-2183-4f0a-9814-374cddbc4a14
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:41 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-be094c1e-3aa1-9bd5-80b6-2bb2e2d1dfc1/test-blob-d4a04251-c0c7-4b6c-b4ef-e1987130b297?comp=tags

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
x-ms-request-id: 61203dd3-16bb-451f-af45-ab27b1476cee
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:41 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-be094c1e-3aa1-9bd5-80b6-2bb2e2d1dfc1/test-blob-d4a04251-c0c7-4b6c-b4ef-e1987130b297?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:47:41.5830000Z
etag: "0x1C1DCBE10B5B050"
last-modified: Thu, 12 Nov 2026 00:47:41 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f5f423ff-1e76-4f37-b742-951d8df038be
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:41 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: HEAD /devstoreaccount1/test-container-be094c1e-3aa1-9bd5-80b6-2bb2e2d1dfc1/test-blob-d4a04251-c0c7-4b6c-b4ef-e1987130b297?snapshot=2026-11-12T00:47:41.5830000Z

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
last-modified: Thu, 12 Nov 2026 00:47:41 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:41 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1C1DCBE10B5B050"
content-md5: BX39GdBcgKNG/d1wXUol/A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e3d09d4b-58a9-46fe-a396-890fe6017232
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:41 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:41 GMT
x-ms-tag-count: 1
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-be094c1e-3aa1-9bd5-80b6-2bb2e2d1dfc1?restype=container

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
x-ms-request-id: 0477dca7-e196-4aae-b7ba-d422d02e57c5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:41 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

