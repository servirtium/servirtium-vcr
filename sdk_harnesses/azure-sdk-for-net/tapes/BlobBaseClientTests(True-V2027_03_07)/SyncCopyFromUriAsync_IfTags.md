## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-40ecc9c6-f629-c12b-ef77-e0d1778931fa?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SyncCopyFromUriAsync_IfTags
now: 2026-11-12T00:48:35.4877815+00:00

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
etag: "0x1F8D28B29B0C330"
last-modified: Thu, 12 Nov 2026 00:48:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9bf178ff-f707-4bfe-927a-be3257d6ccd7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-40ecc9c6-f629-c12b-ef77-e0d1778931fa/test-blob-ff888e75-deb9-9dda-8ce3-682d494b1296

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
L4doqLSuX3j5xhuSXKa2Czi+Uci1k9nn70+zRo79eKRlSqLvIIhGxi8PBvLDR0DmLFz1ivlK4Jut
gLll+xjq+052LRIDxuqveIuYpY3mJKcOzRoxCO2rGmkHQqDO4MsXJQqkTBku4mVxRRJusTsNxlsR
Vi3+uPNgyhOo/IRK4Ze/gX+DQdiO3+q0v8PaPWgu+XtFvIqdGGwXRIEGhubhJ2R7ri+7ioSDg3dD
SvkvhY2qegIIBSQMImkTbP1Wh1kE0pdfXo44cm/3wTkTWs5z577zWwvk2SI/bozGqB6HLPsdPnhh
0Cb/cQeSEUPr+cean4Q+YixNIPh1H/ABcspRb5U99RtWEheX9OoEUcjfU3XFLAiZSMnPzx5/7LA2
/f89QKGurgSrRI1tpm1BSc4wlct6PEXBuCfLbSb91iVmYffqxhAnMaVxGed7K6FcjoVPT1bku8C5
e4h54kDdrW1nBkV2VoO9CWQmCSNeRoyGb9+grYfPgqU3MUuIrU5kk2t5EyRb5TcCkkbxvrKdWzT7
83NhPQDml4SgPiU3NVsWwXa35DNnKomonhtB3sTzmtYWjLraA1Zrk3ugu6cRylzq2/w75XYBlMjq
uJ/kpLnAraRPIKmhO70gTFC3x2/il9O+VwPHt7RfFfjx8Eu2hu/C3w4CwamzSJ8/G5klScxZByHL
JU22+fXv8Auxr0pyacVh9ehh39UpCw5jiJwbOcsrmOgp62ChC+YYE9GeAphUzLLTxFTk9yhMoho/
UnBZ1LY/hRdiSX5lv+kBScwDigl1D7vqR3V3R6DA3EhGYrh1vj8bX32B8oMzbgRr4q5cSBcRyUO1
b4xAyD12oWw1H1wwjIqM6CuM8xw3tthxDGXyZJQxNJh1wE+y25c/ClAX/k+nOlYkz2DrhNYmfbmz
zrzYhD3XA+rDuss72g2UTOnMILeJytEOzZQzRa/CTkKV/wzbZ4YTP/tl43+K6fVTVzjsWl0CKgTq
ybaopL46AWyJpdsBueViuOC8I+ZRhOSf4O131fTlk9QH8J3Paps9K+ITAUMaUp5SiqF8RQYemETR
CcPQwit3pBEG+chHkk1Ff/gEPoOhhY5PJEtSaE3N6VdZ/mHXbGi3m1wxE1jVC/dTNsYOGlrBMIM0
gJ3fJTvEOBBx7pTsbRKPTKImb3E2eRlT/jKHv878l83do+vL13YhbdtHZBxiZ8mzfs24m8ES/geD
iycJPHhBdFbHD8omxHQsBAGW7hT88Zdo00EBRPwMy6TkR0xPGDFiBfDFm1j+jbpYjJa/ew/zhpqP
oGg3QDBau0MmQn0o3OzQNOgkN1U+akaHqLdlTFCU8cCxv3fIKsW/a+AU2Eo8MK+p7kYnzk9FUQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2444C3D2702BD60"
last-modified: Thu, 12 Nov 2026 00:48:35 GMT
content-md5: Clx5c9lsozkEU3aUgNzjuw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 593f2b4a-5cca-4da6-aa26-628dc976fd5b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-40ecc9c6-f629-c12b-ef77-e0d1778931fa/test-blob-97b02135-f478-f36e-9151-bc761d740709

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
ImTMdCqS+0p4CLxdCW0icGxuQqZ6Lkd2ciBG+X+5kTXnPARqg9AmoyVlHnA4EOokLkwKrzJhj/Qd
VQIKSwLKv3aGdsxpuOycR56AFA/XPWE1Isszr+ICha0PTC7NHFcjm1/5sZoeu3VfbWeT4HrlRReh
1Ck3lhCThPAeWWu+zytGXXmw3YzHF2dV1EF7b6UzKgcWK0cu7AROZS2p/2EKoJ47TIMBNGiL2rzC
4sLPGBRL6y9kqKPkGHB0YXdeHRgFSjOjPyIiMvWfilGKawpCf00YXhMypfj7VzQSjNPwLbykvJeO
LNjyKLk6xR1RWaxmMuIqRb8E06U7p+jtD6Uirl2U5q9ztFN1JTVa+N/bqf2HrFrwxef9oOnxUoTv
BRgTFxa/vHP9832PtR+JqdvFYP3rZmNLMel2l0bFgWHOhSAcRuDIG+2KirjcYRDHdPYOK/KGBJ61
yOYtSSUtN3EcwC/+bGP6/EQQYNuqbtDYriNPt1VvSICBZ336m9LHXFJGwKHgyAeSEy6tdaPDClkW
VZoC3YAcrXevfQXlAGFySASJZK4u9+UbvKMmwdLdvl0j5EY3xX/RKhIpMUsCrRPNOi2fOqar5120
5iDd9eul0b6nwRwbO4OEtzmbBcaaGA+PWYalPYS3eP3ogt5e9DUnhF+NW+v3sf6qGoJsD+GWGs4Q
TZtl/5Q58EkfMrmkJcMEdIFnDL0kmKiH+yIBSmgbUmcQTaaZwoTLU2qi135FBfW/aJtfLw0Q7LXz
3QRxOKbgA+BRlNgdarL9m7lTgcApQvUtQuLMuyJa/2HwpuR/WRvEwdSe9HEdov3pYpNTvWv0yZsP
RPXDE0i995R2LMTNfUKejr/si02DEKDk41mPBkH1/NxJcBUlAK6M4P3cpnU5HORQtS+rCD1NizNV
3zDuLvBTgTDngw0teY0RYKtQp2oqq8d0PlESSvOe/OXhzyF9nbEMiSRFUZjWIzuhmaiS/ePJKzRp
evCfQTY8SIcoS6lsk8L5Qx1F5FkunRoVcLFLDP4BGKTtFCLBbEjuCQkRrteSNAXlmbnGg0bbOtzV
itCF8DyIJzMFf3+fONbVV9pQHO9CgjyrZXJEO5RdEdlG6+J4aRjMiYekjbSGRWDi8Cxsix7tkweT
2YrJQ+yep22lWUz0Xe3Bg5NnnvWHJSARYkpo8Ya7WFja5I+OAkWbBeVH4OwU7pM+qgeKhfQRDLRq
t+GhNrXm6gH0GnleM4FOzJgQQEQ0/XS3KUd/MNJjyNfaI0pk+c8vYPXqINMZ33aGPLlbAcxwNrpt
6gxuZ7kukFKhhA826tLJ4N9OSd2gnUnQ+fQZCMcLau2Q9g/Cwfg7vI+BeFtmT1LmkiDsIe3czA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x263FB77760399C0"
last-modified: Thu, 12 Nov 2026 00:48:35 GMT
content-md5: a9J7e/7be0kE+maJdb1dWA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5ea07bf9-9fe3-4eb4-a778-126a5bae7605
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-40ecc9c6-f629-c12b-ef77-e0d1778931fa/test-blob-97b02135-f478-f36e-9151-bc761d740709?comp=tags

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
x-ms-request-id: 1e315cdc-6ca9-493e-8d52-5cd5ee2d0976
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:35 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-40ecc9c6-f629-c12b-ef77-e0d1778931fa/test-blob-97b02135-f478-f36e-9151-bc761d740709

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-40ecc9c6-f629-c12b-ef77-e0d1778931fa/test-blob-ff888e75-deb9-9dda-8ce3-682d494b1296?sv=2027-03-07&se=2026-11-12T01%3A48%3A35Z&sr=b&sp=r&sig=OFc4jR3WkCkzVfjslcSKoMSS%2FJNuX%2FWwgSEXEwLNb4o%3D
x-ms-if-tags: "coolTag" = 'true'
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
etag: "0x265B90351C20680"
last-modified: Thu, 12 Nov 2026 00:48:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8eaf9344-9aad-4938-99c8-f364a85cbce9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:35 GMT
x-ms-copy-id: 0cc41d23-4eda-4fd6-ae86-caddb2666a4f
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-40ecc9c6-f629-c12b-ef77-e0d1778931fa?restype=container

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
x-ms-request-id: 7604bc77-68e6-4cd0-b722-7169fd0dc529
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

