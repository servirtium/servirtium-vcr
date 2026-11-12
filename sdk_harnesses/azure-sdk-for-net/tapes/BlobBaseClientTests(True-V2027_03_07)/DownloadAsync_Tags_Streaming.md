## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ba42d94c-3620-c658-666d-ff8b465b32a4?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadAsync_Tags_Streaming
now: 2026-11-12T00:47:57.4496584+00:00

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
etag: "0x254637FBE2625A0"
last-modified: Thu, 12 Nov 2026 00:47:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3a2d7589-1e95-4faa-84e6-537837a7917f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ba42d94c-3620-c658-666d-ff8b465b32a4/test-blob-167e951b-ed36-3726-b181-395e642160f3

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
y3b0OdWfqryArIY2tRLwz699hVHuyBzkGSQQmGzxYb0jXnXBO4AgrC6FOnSvIhFUfC/cydbgtgNa
Dx+wjhFPj0vIEladL5QuXNgjaI6nNPcTuxw8FZfnQ6dxZyxhbx0dNaop5xC6t02brW39vU50ston
ndP0E3qz4c+vK8hozey6BTLjfk3nWQTPoWcq6YVZ/LRROdJKKCIwdgZAC4yEM9+AQ7cbkTSMQEPO
JXISiPdJVS4TFpQab90PswhHpk54Sm2IqqbNPmuAxfiOewKwHu0O97ZdcR1LZdPaC94rRZr1VtoE
it1RexbCk1Gbi/TaX5UaOK+YGtlQPEXS8zKNVH9emSUorJMQvHufm93MsNnfAKxJEAzqXTwBtE2Y
fojkNT7RPPLOsrMBCnw0+X77hIxr8/KFRERzczzoJvhGeD7yumWe+nPnEE75RwaQtmS9BS/ALIqV
XvH6Xsi25ou6upE+QT4YXYkZg+OkjPw+473XKiDIhUuzXVx0pJyqMSrCPo10UnUmpKilp6in8dL0
u3sL3rtq8jRGiuTipLjtblK54U1vypFHsYZ4It6jC2uJf+ghnlJuWExYLseRQwDwuDhW7g+EhfHp
xCw18s9Won54WCTPzM8ASokBFpzJtm2FiGqlTR1cBPn2N9olOWV8AYtIGevcIOtpVaOGg29VIA2+
r2plsFVhHFMq2JX12hAjhRQQgZ2CqGd+PPd51YGKoRbMZon7F1E15vyXskdWc3uTYv5aRJ9wPAYC
5nRe6EbSnzd+KHOHJ23D25qg6vYgKMh75nOCMFx3XCqC+TDc1v62xBIP2EsHDDuQl2kE0FEP4b6r
4gHTUG/bBsxJBC495gWb6ibkEE99c9k48ZnzcozYchdyMPP94nSiNNJ/vggMU7BkaeUrK9FuLm4n
m17W55M/cZEWyrYRngexQdx9/bXRK57ojwmmrEdGAwKE1UcWzEw/P0129oj6Usvdeun18TC5VnC/
7ViJmcRKz8azjMjAm3WPPb5oWzQV7jw9yDJdURLRy3/WVt7ztaWILCbBRsYCHd50ZbNyUPo7qv4c
TNGR7H604cBJ6UWWm4gY3y8NU6h1OqpU6eteX3uEmqvg12jU9z+oDGQFuDOY3coqWXHLLlZWphEm
PQOTVoJFxU6ZtsQfQ+jvZEdDb4J3uwwhMwYJuGxViTBXrro8FbbiwPPk/iYFCxWJ3MkPEjaProH2
cSN8Ow3iRCyTyJUtsk+QYa+OkrzlGyjwgNyiRnf6yP84RaOTZYTmArr5ckOAWyl6frCHABzEEVb6
i7owP/61mf+V9Gyr/fwqqJAC66jlbyWyKMfHcsjjczNNmNrKtcK8RNhD62a8zoG0XFeMwiatFQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25BD759E2FB7DC0"
last-modified: Thu, 12 Nov 2026 00:47:57 GMT
content-md5: hzGRhMVggktZv8m1J8ijMw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 97c7ecdc-8aea-4ebe-99e7-631930d804be
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-ba42d94c-3620-c658-666d-ff8b465b32a4/test-blob-167e951b-ed36-3726-b181-395e642160f3?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0652d3bd-fd44-4f21-b6ae-6d2851a0e95f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:57 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-ba42d94c-3620-c658-666d-ff8b465b32a4/test-blob-167e951b-ed36-3726-b181-395e642160f3

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:47:57 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:57 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x25BD759E2FB7DC0"
content-md5: hzGRhMVggktZv8m1J8ijMw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 46d56a9b-9aab-472c-a424-9a7af564aa67
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:57 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: hzGRhMVggktZv8m1J8ijMw==
x-ms-tag-count: 2
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
y3b0OdWfqryArIY2tRLwz699hVHuyBzkGSQQmGzxYb0jXnXBO4AgrC6FOnSvIhFUfC/cydbgtgNa
Dx+wjhFPj0vIEladL5QuXNgjaI6nNPcTuxw8FZfnQ6dxZyxhbx0dNaop5xC6t02brW39vU50ston
ndP0E3qz4c+vK8hozey6BTLjfk3nWQTPoWcq6YVZ/LRROdJKKCIwdgZAC4yEM9+AQ7cbkTSMQEPO
JXISiPdJVS4TFpQab90PswhHpk54Sm2IqqbNPmuAxfiOewKwHu0O97ZdcR1LZdPaC94rRZr1VtoE
it1RexbCk1Gbi/TaX5UaOK+YGtlQPEXS8zKNVH9emSUorJMQvHufm93MsNnfAKxJEAzqXTwBtE2Y
fojkNT7RPPLOsrMBCnw0+X77hIxr8/KFRERzczzoJvhGeD7yumWe+nPnEE75RwaQtmS9BS/ALIqV
XvH6Xsi25ou6upE+QT4YXYkZg+OkjPw+473XKiDIhUuzXVx0pJyqMSrCPo10UnUmpKilp6in8dL0
u3sL3rtq8jRGiuTipLjtblK54U1vypFHsYZ4It6jC2uJf+ghnlJuWExYLseRQwDwuDhW7g+EhfHp
xCw18s9Won54WCTPzM8ASokBFpzJtm2FiGqlTR1cBPn2N9olOWV8AYtIGevcIOtpVaOGg29VIA2+
r2plsFVhHFMq2JX12hAjhRQQgZ2CqGd+PPd51YGKoRbMZon7F1E15vyXskdWc3uTYv5aRJ9wPAYC
5nRe6EbSnzd+KHOHJ23D25qg6vYgKMh75nOCMFx3XCqC+TDc1v62xBIP2EsHDDuQl2kE0FEP4b6r
4gHTUG/bBsxJBC495gWb6ibkEE99c9k48ZnzcozYchdyMPP94nSiNNJ/vggMU7BkaeUrK9FuLm4n
m17W55M/cZEWyrYRngexQdx9/bXRK57ojwmmrEdGAwKE1UcWzEw/P0129oj6Usvdeun18TC5VnC/
7ViJmcRKz8azjMjAm3WPPb5oWzQV7jw9yDJdURLRy3/WVt7ztaWILCbBRsYCHd50ZbNyUPo7qv4c
TNGR7H604cBJ6UWWm4gY3y8NU6h1OqpU6eteX3uEmqvg12jU9z+oDGQFuDOY3coqWXHLLlZWphEm
PQOTVoJFxU6ZtsQfQ+jvZEdDb4J3uwwhMwYJuGxViTBXrro8FbbiwPPk/iYFCxWJ3MkPEjaProH2
cSN8Ow3iRCyTyJUtsk+QYa+OkrzlGyjwgNyiRnf6yP84RaOTZYTmArr5ckOAWyl6frCHABzEEVb6
i7owP/61mf+V9Gyr/fwqqJAC66jlbyWyKMfHcsjjczNNmNrKtcK8RNhD62a8zoG0XFeMwiatFQ==
```

## Interaction 4: DELETE /devstoreaccount1/test-container-ba42d94c-3620-c658-666d-ff8b465b32a4?restype=container

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
x-ms-request-id: 8dee1277-2cc8-459b-9db0-28f0f4d5cd6c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

