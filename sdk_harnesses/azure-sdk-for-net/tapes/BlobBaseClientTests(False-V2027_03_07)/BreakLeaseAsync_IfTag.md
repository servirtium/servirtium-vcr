## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8a496844-d71a-1155-aa5b-0fbf0a23d542?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).BreakLeaseAsync_IfTag
now: 2026-11-12T00:46:19.1268829+00:00

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
etag: "0x201FBC59AF467C0"
last-modified: Thu, 12 Nov 2026 00:46:19 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 09cca9a9-331f-48f0-a9ed-40a7fc24f455
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8a496844-d71a-1155-aa5b-0fbf0a23d542/test-blob-e7a0f4a1-3c3e-79e7-67f3-26a07023b84a

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
7ipgtaGVho2JNxlsyiDz6iNl3R3TeMEIgM8iJrC0oYajxNHfwh+hDG0TXgYieq5HADt8CkWbdnVo
WDTRcl/c1JaTyQVOEygExNGvwBq65QYh2yZ0OJZAB01cd2nqz5oNNolwjrCo+OwTeEZ067ZarXIu
sJY5aJz/U8G38py+GvQ3oYqQSlZVeOM5YcBQyxyXAcn2ux8D1M7tcDvu8AVQVF1RPUksyWMc2Dey
/wfcr4elIPDTx17VM827o9kbZofd6Qxi/o7Sazhl2uPnUNTHEcC0SdAVfYz/fAl7cCaJAXKw1Rb6
ebH40rS4be167uL59JEYZh22yGt/YoGEVvsR3NlxN3u9zJcPu3YcXRCfhI4ngnuUcJpU+Qyqehcv
c3y4ppATCbdnOyf5Caqnmmtb4N3zXdR/fGs+HD1uE1GA4Ef6Y7Z/i3rXv0ZTm2fvrF6hTpo5Oxan
OCol1O15+CjWeSljrTa13FRiHJ2NLOEET3DezMS3R6QxUiqMWraNXccefSE9jP8o7HJF1h94GgxI
IIV8mitkHjGEMVsMKIKe1b7Wb66/xsJwtuBRcXGFuTgdQzkwEMKbul7wuFujG8PvpwFgoateiFnC
C+RLEqzA/3gi7uVIbcT7O7RPzw1nzZocYcpwJReNv7vfbgTeT6eyL7nigS3epjo8ZGX2DrhMWz5J
L7DiUNpglS4paf+/HewNnaBUhUxtPbqQM8Gyl7ECkxPFlSD2z97fguv+tD06fUd56HAY99by2/H1
UR0Zrv59J9Xs+YfLFs3BdQJgb4h9VbV5OK5A6pw807ovAX7BxdPsgY1oToO/rtKiVoLTkmxoePxn
n3ZQPD05rybMnBVP/68uc+37FAYyuoncnpMZaUBOxoiCWiZdnEVQL59d8xK9U1fSpB5+bWP1NeXs
dJ6qH0XlftWMzaWI0deoquVn1MZ3Hko8R8Uiz1kkjCRBcSimphBad3Q8MYaxSdJH1cJ+jmAedFVT
bth/w698Z0CBR1+uAQTVDFxSO+3Eiv3y2/mWpv7EI/3SUzc32rTFv8lFMAJzmNS+qYEDyzhnjuPa
jee15sFBvCRi3K7MnTKojHsjf1r7f0Ml2Px9wFfEa8RUXUzMENkIBHPdELwm8QxPWz+9Qw+I3w6k
jw7ExPzNnnDpdz/l23yhG3vnHW6H/+bwLmQYBie1zH0+KIDLRD93EHJLPHnMaYDCGyiUocKfHZAn
05aXtZdJM6vCprL81tY7cAz8O8JtJMTkVer+ICq7nwrvpHGp31vaAQjNCcPNxUVRWTG1o+HNuq7R
sl+sShKBBgeoDTFlkZCxITm5nxoBFo+lrcf5BvsoIenC1yz7Lrf1TAO7JbgT68egA4GoFBqT0A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24D59B89754A160"
last-modified: Thu, 12 Nov 2026 00:46:19 GMT
content-md5: ZOhZhfELeBmdHZMhfQY/lg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 19821c7a-0e5b-4e92-a080-86ec00fed6cd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:19 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-8a496844-d71a-1155-aa5b-0fbf0a23d542/test-blob-e7a0f4a1-3c3e-79e7-67f3-26a07023b84a?comp=tags

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
x-ms-request-id: 347dd26b-ff28-49e9-a1a5-6077a49700f4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:19 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-8a496844-d71a-1155-aa5b-0fbf0a23d542/test-blob-e7a0f4a1-3c3e-79e7-67f3-26a07023b84a?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 9d07cf9c-874b-0b00-7feb-48a3b963b6f3
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24D59B89754A160"
last-modified: Thu, 12 Nov 2026 00:46:19 GMT
x-ms-lease-id: 9d07cf9c-874b-0b00-7feb-48a3b963b6f3
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dbca007f-d2d5-48e2-b6d3-9e0fb13fdd5c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-8a496844-d71a-1155-aa5b-0fbf0a23d542/test-blob-e7a0f4a1-3c3e-79e7-67f3-26a07023b84a?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
x-ms-if-tags: "coolTag" = 'true'
x-ms-lease-action: break
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24D59B89754A160"
last-modified: Thu, 12 Nov 2026 00:46:19 GMT
x-ms-lease-time: 15
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b66dfb0d-3f35-490b-b025-f96699d634f5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:19 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-8a496844-d71a-1155-aa5b-0fbf0a23d542?restype=container

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
x-ms-request-id: 77c3991a-c7f8-4fce-b227-4f2f26fa3fe7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:19 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

