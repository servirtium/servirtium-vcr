## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-cd73d3ed-17fc-2a05-32cb-ce70496508e6?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SetMetadataAsync_IfTags
now: 2026-11-12T00:47:09.9777500+00:00

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
etag: "0x1EFA7AACFAC7920"
last-modified: Thu, 12 Nov 2026 00:47:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e6295d03-0377-41c4-9193-ab4190859cf4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:09 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-cd73d3ed-17fc-2a05-32cb-ce70496508e6/test-blob-dc11dbcb-7c01-b6a6-8e8a-d073dfdea92d

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
O3vXiKwTF/LWOrTt0JHB9loHVlQPkQZxLb0/ckeSSlMhoTXNjoA5t8MeBcbIuOX8ydkY2IhVHal0
ZVrv1KWqQ+9gzC9b82jZzZ+Q8IxAqHTYQqhueXLLy4OMWSglSeIdc8HWZ+u1odZxPwroxC0dNLzm
F5H8PMp9lACszpo/tIS8cnzKaUGJIqHS/Tpn4gdVbyRrPzJQITf3WdPqCNI7MouGK1GxU8p7XfTw
Kj+QFrH5Vl9103RRbFFE0hBtnhrPlsqu4Le1pBxZ8OI+YPb3Z0Ih8bJyxl4WNL//bIC6Dr7aIJN0
4TX6Q7JCG+OSEwtbTWrNTKxnXNBsmKv3tTibn+EjY0Bjg4YMJq3/L6t7hCG0pB8V7MIScsPDCEiK
A416p3wBbq/L98rkwSX+aCwk8BOKQxEYhrIfEfF8oHo9giMfhYguehVx6K1VMSucEwqXnhg1/8B8
YSDJ4V2+T1dPpj8B3uKk9XX9GFpjw1SGg/7n5QFiCIJjoyRnZZm4s5lVBYrsmjQn8qijN+dlGJ3M
Ql5f12pW7Z68nju+PJDbRGXBDr7KmujJv/JZvtCa/YqGmyI7Wdwu/xjrL/v4abYXx/OCpArfAah1
lRd4/S7OIaGxN6BuoOuIkg+m3mrs0VU7QffcGFiAp5p5xcPEtgLpHA1aRzIVqScH+RL7OCI9icTC
PLs38QlIMI8G9NonxNsMvMJdkokjJpfP1R9GhW93Ozz/AXpGsisEERaiD7RN4DQ27nxg4Pc6nxYj
ZxzpAqsgjridKMJhxgqXWIBzgBbjgvTqD5fyF1tFxGJkIkoOGg9qgoD7r7hx1SdxyYh2xx//QOUn
//IULXddV2Ng/KO/iD1xCP2W6NI8eDlvgU3Tz/xDZOJl5hscVlUInVdUEdiDskBKBb8haFcS64a4
pawpiohmHZjBWaEiVLGojkp652dh688Nick9IfyKU/uUY7Gp3hPP7vRAwlieJ7ANeNoNlwMfV7nc
HAC/KfucNgamjfEA/683q/lzICl3bmEZMKkhfbv4dQv3zMISD8X5pItR+Jm/DHkr1uwJqzeQZa2f
pflSerlLrRjlCTPtJJs0enydJXbIWiMv9qfP7snUZmYUc2rMpinSBUqB2QNGPrFQ1TG78z8310vV
IoQRfL9OEaLM2LAxaNNSyh8rRoAf6bj1fhmYGHMm3Zwe9oSlwImLM8dheWUAHm1eaSgfC5DKtjjL
G/2mtfkupvoUE3FOrAmVoBK5vnBS9F+rOa9KBtELU0BL2qSM5X3OMtNq7Av7D7weimt+EffIeCad
+nxJ458pCb8xAtJkCbuV6oud5whUryryLHxmjUJIg2F+7+oBhE4zQeJLygzquYCv6CZsKpAeSA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x269E94115AEB960"
last-modified: Thu, 12 Nov 2026 00:47:09 GMT
content-md5: 23JO7S+LEc4Crya1GlxcZA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3df42e35-228a-4686-a2e8-18c7e5c392d8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:09 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-cd73d3ed-17fc-2a05-32cb-ce70496508e6/test-blob-dc11dbcb-7c01-b6a6-8e8a-d073dfdea92d?comp=tags

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
x-ms-request-id: 0275732b-87d7-4c37-a012-3b80ad6d398a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:10 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-cd73d3ed-17fc-2a05-32cb-ce70496508e6/test-blob-dc11dbcb-7c01-b6a6-8e8a-d073dfdea92d?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-if-tags: "coolTag" = 'true'
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27555DDA586BF00"
last-modified: Thu, 12 Nov 2026 00:47:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3942db71-3026-4875-9ec6-b6b4d6959150
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:10 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-cd73d3ed-17fc-2a05-32cb-ce70496508e6?restype=container

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
x-ms-request-id: dc6f91e5-c576-40c2-b44e-4b58384b8cca
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:10 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

