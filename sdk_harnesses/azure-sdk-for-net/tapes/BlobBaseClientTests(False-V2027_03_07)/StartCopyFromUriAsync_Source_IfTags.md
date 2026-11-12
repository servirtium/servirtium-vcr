## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-eefff6ce-a8d8-f59c-ccad-e145cd7b7e00?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).StartCopyFromUriAsync_Source_IfTags
now: 2026-11-12T00:47:17.4998501+00:00

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
etag: "0x239AEE3BF240B80"
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 05e73341-0469-4bfe-a03a-0c344ada6704
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-eefff6ce-a8d8-f59c-ccad-e145cd7b7e00/test-blob-db92f011-1f14-8aaa-8179-a32af6d5d374

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
c3q/LHPDHF4wwSD6wO/8dKtUWEh1qx2uTHVsXwVy//fabdJSu1KMTdQ0q1P/r8mSfC5+oX2K/sdd
EN/9VrxZvcEpIFMdqbhZyAp0Qf/Jr5ys2uLW8115T24K9atyjvcX2+2R1o91dNJ2JNlyFr3Ik2FC
UXzZgspjr9DlE7QN5zkTXGURONgNNmUQYM+EBzmwQWFJLz16PVgjLSe/kGEeaD2fXrlXtluINRoW
ySL636eXNNFSw7f8mB8N7QqxTaUE8veR5aiAWYoGwPkiZHQ2KE5/KFyQy6SFosaaSshR1+d0EdYq
afn/FtpGTAO92TSq18W7MSVJdCdTDELi5Q/CtegRrlKdC79VgBGCSX6hx8mS73IDlabCK52v11y2
HTDLhJcaqyvhDMsFZrAUxiqosUR5UPacvh9CT4K07jRjnmPgtsXnhxudsOKm/S71rWRzByUYPc06
L8V32FypLB6XoshNNBBkwCoo258T9cDxTKIdQeYOS2CWpYf/b6+/9ITEDltmp3lUDkb772EtJzkF
hou6i+s3iVdnt46IZVF7aecbT+Zli6QoyTKgElv/aH5O+ukjBWiZjIUE/vDry6n1gIZ5EtdSn/vn
kcK4l3b7aE8POmpnV2N+gsNhYYy0PP2Jq5LVhVWn+1rtPHOm4PQOCJWg3JE+jSgi+5AU8D5uMlTF
LuvkJeP6Zz4QeRvv2KHOU1j3E2BrSx5ps4rEkwobfwke4LIIKeKypnRTLhMNMiLvRZ3mdx/0WeLN
enJYNtQz9PoS0PjuxSl2RG3rGB0LXIFn1E1sNQjqKobPO65wWXCgHzoY+2EqAH90bzKxCEHFwR7x
8WGGxr7xJ6ZxH4p6Bev9S/nj8mEfPdPO+MXWOCFFCXmQf2gOGVh7J9O6uOH0+mpHtLxI4s+90bON
t874G++ELBYQ6YaC7jKgZ8uNZITy2f1bj4Rk/Caq0q21gWGKggvkNozK5BDjxMWKqHsDL2wumt7R
nIxqHy/vZhbZzW3QFuTAqS74J/XseMq+2lSrpqNAhuaDueZ+eRZc2376CvZYuZKWQ4U+NXLp5CTB
rEXaRL9zmEeGTV3+QTAYm0x28m7UZSDCFGMeAlB0mtTBvM3Qgpa+hnGv0ms0mAJVJpolcvK17UYk
GDBcVZb2ErOIPIRjRxm2t2v8JJO1jXtgydy2TifiDM6Gq2pmYjHbucC3rFx98d6Ab7qGuMmyb4q1
+4y6P8OLpjC13JuvT1U5IWvT/eEf49f9Nt5tW1MF1DvfsWelIXn8KwUsyBRC0SBkTJdd33KolRi0
vAnlHkrcsAhfz57tlADy1tHb8xrCu2W+CA+7p/TJNxtO8GRvFg27TxcM4gGBd7iXawihzKL98g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25B2BFBD4FF0CA0"
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
content-md5: 03piFPOi9B+/u79oTPuqpg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1db2606a-a8aa-4e22-9932-bb031dd554b2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-eefff6ce-a8d8-f59c-ccad-e145cd7b7e00/test-blob-1527a401-213b-1408-9698-839fa39b82c0

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
wyCkA7bYYzyRVyQ87ChqeFH+Y8vv938uD/dMaf3XFPvpSN2s/vo7KUDqhOT8zChuLgpNpTe30Myh
dvO+i/o/uUIoU6NKvXpXwzqKBHOaMUPP3Tryim/EMncRCogGfJ1Gq8qh03mEI3CQ9uH9LMxYBkSw
766/TC/TZCEsObPyUEadRFmp+V3KS7rKYpONxgWruQRDVo3vhl6azm9YWOq9nqaaYOhyrg3m5aPz
9OqbRZ0bgYCurvm5rb36DivucfPQDcTs8mYcOAr3XXDp+5F0/ojRPNdqDvCt4bIreKDh93OwI+cm
r1M3/kh1t1CIz7Irhg+iHTUcZv/TPxCz8cBpFWX8OdeqTk81mT2O9FafJRL/APGQPto+lL3oUm9C
gw2IDKLri5XagDjAbYP3jXGoNBn+s/DO2daLvqQawvvf8hYvBee0tJp8JX+50NFWRgZLPx1VRM8c
ujLLX8zwwL484HttyIiK84B/gY5xFQgFNHeezoLeia5GEku16VTNi2XBfPBV6X5+wUyc1sJBq6Qp
xitVUvE7XlbMJ7U81AossvUor5gYr0v5Hw02QbPsBGamiyIpeDh0hh6ZicLJQuxBcCTNGPsLEBbf
WzPjBB2j4CJOlUnnAjm8tCl6fyaJMNwg9NCPHuxrmnoLSRwFkIEB9qifeqyjWW3qEGTSkZHwVitW
ww9ME8E24/rO3LkdtyOoeYh96bUwfJtipA6ImAnpGvLwrs1xtOLnaZay1X20zVlAKRgJc212JkZ0
6W+zrUrx5cHHLAhWNsSllX8efacdrta1R27w36eEeoeH/MtzNLtMwfC87aFQ6vJUY93uV6meVjqZ
/mXbAAUaQrGAzjn5MmHD0ry2YcE1ZF17nHzJliPe6KaQ2jZVcMHroqrvzxu5WzF7KoTs6PV5Y5kI
YGOJUKuOoeWTaFgrbmL7y78WRpRBwkFKTWye8gCxF3acTRBeYVH/YC42JfLYULwi8Rw1Yh0Fxp0h
PgI+8K/l4lHijyBRnWptF+VmC51Pcv2wewDke7VZl4dyPCNPwHB+UEKh9sCb0FSyx0o3nrr/0cwE
jnSvAWebiPeZ32BGHld057tarnw8FKurMbNqIfjMc2pXSzH8z0/bBW3JAvH0a6nyw7b/pCNPx3nJ
A8+zMWf/zGv179Ildxhrf6gOcxK5t8YKeF5Bzc5HB4O4M8yAKNQGyTWF/nzWzEuekyV6QVNnD0sJ
qbgJvf+druhObURL61fUB6ncM7lKM6sSojmozMUwUCOBdn4b/Qw26FCTh14GU6jOpjmpitySv3YN
9hrF9OEiHh0hynTYuQqdpktotqtMC0+Q2iWLhsZG77cIDQbxcPNucWlB5Yg09e0vDOSRKQnKwQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CEB6EDCE2C3B30"
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
content-md5: hV1K3+2WWoWeE6wkQv3Eew==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c9d971de-8ec3-4398-9f55-e6d0559f6267
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-eefff6ce-a8d8-f59c-ccad-e145cd7b7e00/test-blob-db92f011-1f14-8aaa-8179-a32af6d5d374?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
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
x-ms-request-id: 135bc953-4002-4376-a638-886ebd39c1c6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-eefff6ce-a8d8-f59c-ccad-e145cd7b7e00/test-blob-1527a401-213b-1408-9698-839fa39b82c0

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-eefff6ce-a8d8-f59c-ccad-e145cd7b7e00/test-blob-db92f011-1f14-8aaa-8179-a32af6d5d374
x-ms-return-client-request-id: true
x-ms-source-if-tags: "coolTag" = 'true'
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21D4B6CFCABF140"
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c1e63354-6306-46cf-b1c6-af9d0f09a979
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-copy-id: 804c822b-97fe-4eba-b4f3-6fb88c58836b
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: HEAD /devstoreaccount1/test-container-eefff6ce-a8d8-f59c-ccad-e145cd7b7e00/test-blob-1527a401-213b-1408-9698-839fa39b82c0

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
last-modified: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-blob-type: BlockBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:47:17 GMT
x-ms-copy-id: 804c822b-97fe-4eba-b4f3-6fb88c58836b
x-ms-copy-progress: 1024/1024
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-eefff6ce-a8d8-f59c-ccad-e145cd7b7e00/test-blob-db92f011-1f14-8aaa-8179-a32af6d5d374
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x21D4B6CFCABF140"
content-md5: 03piFPOi9B+/u79oTPuqpg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0a2ed4c1-ce43-4e5e-9803-3292e5ef0d09
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 6: DELETE /devstoreaccount1/test-container-eefff6ce-a8d8-f59c-ccad-e145cd7b7e00?restype=container

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
x-ms-request-id: 780de478-11c5-4d4e-b717-eca375367e09
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

