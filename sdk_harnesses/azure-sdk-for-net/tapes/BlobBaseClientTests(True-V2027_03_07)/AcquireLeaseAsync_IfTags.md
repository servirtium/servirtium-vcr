## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5ea2869d-6c94-9bf9-5669-2f17465f3e6c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).AcquireLeaseAsync_IfTags
now: 2026-11-12T00:47:32.6014501+00:00

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
etag: "0x1D43DE8189DF5D0"
last-modified: Thu, 12 Nov 2026 00:47:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 643bd694-8aac-416c-a651-f032c4246f60
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5ea2869d-6c94-9bf9-5669-2f17465f3e6c/test-blob-2051cbf3-05ad-da70-2fe0-918abc415e79

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
bgsOjmNT2yJ1r5yhdUJrp3dyWezP2ZiXFcgvs9pu3xUKtag6Ua8IoO8uqv5ozmTsdOoSSuhxqpVz
dnmbIydIBtCHlr+aMFXIabj8oC+aLkZjQz/wXJUsmQsSx9s2bXzI5qMu4TikUUOUSeAvdApm2Ecy
N+DoV6o6W/20iGl6kfw8NLmLbE0OvvH7XBK0/SUArO6TBDWb4I7584Y68MnaGbjk8j9Q2mz6I3nv
7fuXhl3Xs9x6543GoVQqknjH080oIEJazwrlr9GCmOC7rPKSYWwoYjztYDIqHVHrJkjzM0+rx8y5
PbZT8gMK906sC/VhlzAMnnCQOr8PL7K4+YmJjmWREOQl2SS11HA54mjjfhJciY4X55TeGowNqQ0E
m/h5gWnpG/oQO74MVsoAV1dWLLCfXHD7cafQsvVYGC8WsTl3v2H/+WMXS07PCpDK3cM0tn1cZT6I
fhDCGGgFuCOO9aWQiZj2VzJNhxAiK2YWBtQyI2KyuUz670FRPeH6EpMrQRTrOVQrPV5KDt0uZlKp
rBGU0pXA3DxYlplWpRpRU3V99upRKs1/B+UDZ6puzIjup5DPZT/+amTYkqK61JdD+LtosG9oV4FD
FMuvvHSR6skRaP6Jgu01f4yFeZcqxDNNwG7vBhsZhVAPi1BzTq3vR6jZqWuZuXbNMjHj497qGVCY
YfwGoeOt+OKtevadwTDelTHuURvHswb3ItTpNaJxJHIA2+yx6abEK7GI6z9/MHABBE2t+8c10K72
Dn8PxMJAPFaEnOZDLayLKSVpPsfGd/Jj6DFVxCmqywo+utsntWfvSK/p+5OKvdehIdGhy5LmL5aN
q9uR63cs2dDbBXLQZHS+evYY3Xxe2SpZtKJXCf94WItFmQmLXl04vCHCrrhk0L1d41CbzlEZLtKw
NzbU1dDRY6zni8pqMhyZ3yFamyty9eTl+iWv3Io5K2s32iYmZOdR8UoLfUTz8rA0Au4wv5OmPkFS
7tqqIocirmBfM1j1cno6CanhZnif8Qh1etmbCGzXkZzk03UMps/D6M7klL9YPo909rbpxdfJs/3S
Naeth6Xzh6G7EJ8FLWLZHX6pul1JHTxJJxK17cvEGiB4OnEoFWEo8AwdnC3wbshTEKdZIPigiRhr
Y2CTPpnV9/Z/jfPxsQgdgMpQK4AOWbhJYt0ka/on2LBYvbEAlbJyR6U3ceHUYl6fPJ8uT12XXAqn
Sdu8sYz7V7VCmPRWHOsX3eTb1ufXdP9+hS5a+YhTwWCmWEvWtpUZPBoskcpqSB+0FnJ4u4Yj0NTc
PSxdoF0s79aTsMOgQSdPwprNq+I1FDwPpuIW2gXag4h2+nhpu5u8/6Lz1phbFNVLKfnrViXxpg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C1F87C8C2F1360"
last-modified: Thu, 12 Nov 2026 00:47:32 GMT
content-md5: k1BsVbCy1Am5f8bhZLfkHg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 71220bb1-864a-4096-a35e-cb26dab18b3c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-5ea2869d-6c94-9bf9-5669-2f17465f3e6c/test-blob-2051cbf3-05ad-da70-2fe0-918abc415e79?comp=tags

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
x-ms-request-id: 115d71f7-9ce3-4fab-9945-e06e1b98925c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:32 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-5ea2869d-6c94-9bf9-5669-2f17465f3e6c/test-blob-2051cbf3-05ad-da70-2fe0-918abc415e79?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-if-tags: "coolTag" = 'true'
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: f94def29-167b-d114-b92d-3b2946aee506
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C1F87C8C2F1360"
last-modified: Thu, 12 Nov 2026 00:47:32 GMT
x-ms-lease-id: f94def29-167b-d114-b92d-3b2946aee506
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b46bf441-db57-4049-8132-d681b9a1375b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-5ea2869d-6c94-9bf9-5669-2f17465f3e6c?restype=container

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
x-ms-request-id: c6a90336-295e-4da0-ae41-62256cc21f10
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

