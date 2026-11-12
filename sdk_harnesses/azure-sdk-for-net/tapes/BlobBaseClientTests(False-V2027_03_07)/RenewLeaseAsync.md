## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-23ca75d5-c517-aef1-f4aa-7a270b556147?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).RenewLeaseAsync
now: 2026-11-12T00:47:03.8587817+00:00

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
etag: "0x223AD182A91A840"
last-modified: Thu, 12 Nov 2026 00:47:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a2313585-fac7-4808-b522-45fa4719a5f4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-23ca75d5-c517-aef1-f4aa-7a270b556147/test-blob-4d0c7b1e-3796-7b72-4d52-aa9dcbd66522

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
zyRPDSLqYg4IGZKGMUzuaYcqjQCDZ5SdAk7VxBtT4x1EV1jmBlQlNBj+RX2k60kBY0EWoEhln2eP
sQrTFJ3ytDZ0QdrzCGIyBVnnhCIX+RcE1GHaPULV37jwV1RJUR97DJBGL6lvDVve45rufhpEd7jz
z0A8GHbzn2IiArAO6bQ6bHiR0cltlccF/Fqo52GerN+bVYLfP/QaU5BHTQqrz/nlsxKhs6bvhjl5
NhwcSrcBhFbQcpMyWyyEd344JUi8WixgwjNP/Pg5rM9IZQnX/QjYRsmz2lxms1jlHTsotmDxvNvv
u4iEsYdel8XD6fUjrHl1YN9+CYDP+g/aad69EPZvV6kt50F/VJRBVUOWosljwXHBslWAcrNbIMF5
qUepoIbPVJJM9sQ49gxLPbM9OFhFd6ht+16g7+T20seABqpMl7S8x002F8usibxJNTT/HehpNDKf
PKUnLmWuViP9t+9i/qb/gHAKDmDcwHGhVrmv9rTfF9J3rFsPlJjoiMCnr9LM5zaOAJ13XiXSwnwz
htir/l9vHaAd6lFL7+vYIYWfNBCf1W+DIPYXaLispere2w7APYlhOJIyrvzkQxCxnjygMo1rk7Bo
J91pV7XncUVnbBPcF+T7Pvx+bSZyn93lZcl7DHJcc0heVxWs9+DcSj23fNf81YdYpPSR7SaJ9ogA
g/Lsa2XSC/nLfsDPT0YboSPpuiMF6JBCI2d9yoUi1GCNq3Pu8N7X5HDeMVbHiFSudksDoDxl+pti
qUj9VEBzqapfQaTSLbFEEdWyJ7c5e5oTz1Q6HzQkKLDYi0aW2pAvaoesZ0ew20iZvo5mstPjKC6t
6oXsOIp2Ohn0+aFrrTdFgrwwjRNTY/MLoWClvXXc9GIX6fALQzL8Niwtu+KmLhFXITAWs5sbWYaR
4Jcq0H2jFwQ/U8RGOj6KM1fmJacRZHJPTpxFxkHH/I9peWKa0mWviaTdZ9tNEOfxi4BDNDTff3sk
24HgXlDDd1c03cDc8GDxNpsCNP2XAT61UzrAg8dbifrmdffkzytUGvCDGDImFZsfUv2Y3Ut+jdlC
KwsVAvOP2VTG9XppDGdwrhoNE+gMjj6foDHJwqyuaOgdoqMgPhf89D/eYCAgtkWVKC8xcXnwNZ3M
dmHCxRaoF4ySS2rEUG8CEB+pLi0efurrNJp8fPZuLGwGU8i1Oi4oNkiTjmrb0de/LmBaRwdvrvd2
1pF8K5qWIx/+vv2nTNbxgPflivCAEGLCvU6VFOVklqTRPmOcrAut/WpL3BLaGOGKaMYPiSQG9sUu
uW1MAA85mSdY1Q1yVNPsN42GNDNQ6KVsC6seVAyAy0iebvOdYPxaEUPrgULTFxTzIlKWf8GR3g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20CB9C239C26E00"
last-modified: Thu, 12 Nov 2026 00:47:03 GMT
content-md5: PUPcOJ4nLMaHnf6RICyjkQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8f0ee95d-e6d3-4bf2-9e13-04026ddc278b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-23ca75d5-c517-aef1-f4aa-7a270b556147/test-blob-4d0c7b1e-3796-7b72-4d52-aa9dcbd66522?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: f4e0c8d0-1a64-1a44-d80a-c5d4e5df4fd6
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20CB9C239C26E00"
last-modified: Thu, 12 Nov 2026 00:47:03 GMT
x-ms-lease-id: f4e0c8d0-1a64-1a44-d80a-c5d4e5df4fd6
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2f6bb3d7-02cc-416b-bffe-1690da47fa02
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-23ca75d5-c517-aef1-f4aa-7a270b556147/test-blob-4d0c7b1e-3796-7b72-4d52-aa9dcbd66522?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: renew
x-ms-lease-id: f4e0c8d0-1a64-1a44-d80a-c5d4e5df4fd6
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20CB9C239C26E00"
last-modified: Thu, 12 Nov 2026 00:47:03 GMT
x-ms-lease-id: f4e0c8d0-1a64-1a44-d80a-c5d4e5df4fd6
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ea67cfa7-1530-40de-b6ba-04ebae0158f4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:03 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-23ca75d5-c517-aef1-f4aa-7a270b556147?restype=container

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
x-ms-request-id: 54d62ca2-5e03-4703-b166-a3b9ac910ddf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:03 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

