## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-dd6a772f-0c86-2276-e96f-4e2acf9227ba?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).AppendBlockAsync_EncryptionScope
now: 2026-11-12T00:50:44.1705384+00:00

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
etag: "0x1E4D137CBCB1720"
last-modified: Thu, 12 Nov 2026 00:50:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5bc8165f-5c0e-4fef-a785-e52ac2405675
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-dd6a772f-0c86-2276-e96f-4e2acf9227ba/test-blob-287ad3ce-fd20-78a3-bb0d-c2061d074846

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F85D0BD01DE760"
last-modified: Thu, 12 Nov 2026 00:50:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6da5403f-fee9-4850-8127-4ae5148301e4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-dd6a772f-0c86-2276-e96f-4e2acf9227ba/test-blob-287ad3ce-fd20-78a3-bb0d-c2061d074846?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
XZ6ZrDHA1isIQukZ7xWnXs55b/AJkvgx0/EheEpwBeInCMwx+XqIDv1PIN0TioilZmM3pJdXPMul
Z9lAnl3hlz0H8udIdmVT8GHyunEbHklofBLmOGBKz8sBi5GhSHCgbYigDJehXfD+47M2ZYJZikmP
1yJL+17cvCIbR+rUsafwUkzpexKxxx4h6FWtE2pJpwFHEnFOVHIpw090hRYFKTELRRM1cA833RAD
KRIJL6m40p/ojJ82ov3awLfDPUEIG74joc1XEzfyEDRhSipfH5OmvLN2HJyS1aIVW69XdKDO+g1T
5o7bYb9n9nxq1VjSeqAjHICOkv4ikcsrQbeHmpyUklAcDDkFy1r0DyYgJ/9KQuAPNFcfQGgPMVXC
sB8H31zg1kMHtW5mHlElmYPYAWnL4P7WeGVEdFHnDdrjQho77C/JQFG8QoxyqBYF+qblNi/r988h
MGf2m2HxIKeTg9s26q1TD8EXDp1xZM9PP3qrAteq90tKGbzH0qTwyyLk3iU6zg/5kSZu1Ogyr8uY
p1zmRh7Q6YuP69DwjDwcJ0N6jIWpFHBrsXCwPCNjGGrwLytICYUEFPWaq+I+CAXqUayltyJG7pLr
e5StH6xnLNNmAF0Q1B29dniQD2mOLKlrxup3vmBHqkCYXY7xVvVIM34O2Aen2X2P50Gqtd8pXE7r
QVjC8G5zHlYceHePzB+CR9vqf1Shw+1t59YenfRhbwA/BhSchkMQm7mximEGABshJ24DPt36SX1r
VAiXVIBiuwh2T8UK5cCY2eSa8DmMZue7/HWGXTAjRbyWMTE6eUY4Ts9Yj7BVF0KtamT5X1lE3u4g
21cL213XUwkIc7OPXWCdYaFpM9c2ZeUz2PPMKuVjUlNDGp3vLXJxgTynTKOOHg0DW/6326sW6XZx
2AJqCykkpCFgS0PDrTMu97KajxlCpLrmyM7mrHaoLDEnfVVwB3YTg6eBLtLJQK7KiOP5e1ldLjNI
hEJbPfiquB4RnC/evvA7hwxxwXboHIcfHCOTrrDXyk4hJ4MzuEav1nWzuKR+7MrzvfRN6229X2i6
OyDVFwltOtLgvJZsCM/FwuoANGTjoTBZoPG8id7hZMgbeHwl2r5sRn3RnS8zhrUkiCmCvCsD15nw
e3cXsbH0/1jOUY9Sn+cslO7mEgMAJRk8lwC0XqicF6HjNV5HVJTM3Z7XZTQl0ehBVic9HcWV8FZd
2xmwP6CvMTrub2qJ5EBZGjRlKb/lF8UYcgiAX/ncTUQH6nh7G579JzP6N2J9uHLn5AOQL8aWd8RT
l8yYL9JAEiElgvrH3f6WaAGM6+Bjm7qWmHr2Sx1+cHK0KITRZPhguSRBVzV4IAYE+sfECozk8A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26E200CD81D7EA0"
last-modified: Thu, 12 Nov 2026 00:50:44 GMT
x-ms-content-crc64: 0eYa8vXH2vY=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: adfddd44-61e3-41f3-8cac-f570369b928a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:44 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-dd6a772f-0c86-2276-e96f-4e2acf9227ba?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
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
x-ms-request-id: b6851821-a6f8-4b22-a3c8-537fcf4e5f23
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:44 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

