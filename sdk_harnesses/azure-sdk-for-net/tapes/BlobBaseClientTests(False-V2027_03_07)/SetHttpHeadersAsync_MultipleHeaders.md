## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-67eab1fe-578d-6691-ee79-1091ae16dd17?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SetHttpHeadersAsync_MultipleHeaders
now: 2026-11-12T00:47:07.9216358+00:00

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
etag: "0x1EF3BF3DD7E8B40"
last-modified: Thu, 12 Nov 2026 00:47:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7124fcc4-1554-4170-a664-d2c8c7021e91
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-67eab1fe-578d-6691-ee79-1091ae16dd17/test-blob-360db999-6148-409a-2b2e-01bfd4f3b6f0

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
LVn5UpzAyfpMiwILd44qFv/kffElTbWdF6o8XlbRkvvDH2NVHIt62O8S6bxfj8icBOrA73bEy+Ck
XDryhGuke/kHR1cq1fl0aaQCE2P4PYjhn1prEaKE/1SDsMBQiFSEbW3DWEdxci/xS4bSwbh8rB6y
EOQQOWlXgkgDpiQ5I+FPfaX1NeVBcCwqecUbsj2cBwShnndwczQEa9X+bssLuCekgkQShnc5cJ+4
5sCkO9ALZp8fl4Vp3wlx8ckQQgJgHsGddy/5iYCNaC3Xt410XzAF8wcr6yCiO6M6oZStKC6dV8f+
BsSgEtwfki9XkSd8/ZKYC0/6NTOh+zyMvujs3z//OmDFdVlsZOArDFnwSql8vaQCFR3eoyGUXQuH
FFP0M7LwWFfGt4c5LKZuzynZsLCSDwFE6cohIJY+MRdN5FCNN9in//JRtQYcyeh3cNT4uqxb9QRS
r0nnzzfAiIVv60hW4ZdQMrC9QVr6KCDiqrDCRXdr8u9LOoePvzC7kS2ArN6gIY88qIf7nbSqV4cp
BSSH/kIOBPhZCqYQwHOAAq8teXtCQokhhpzwb1U7oeMAZrkLM5LqcqflRhboLOgTe5oEfd0L5sOb
ZnilHpWjHmnCD1q5dM4cQgfUXPtyOFm03PO6NiQG9X/2cM0aRFQSQiitJhyNWQbM5zrWN4rHKC0e
8UGh6OdEvBrbwgQBAv6ywRrSxRI9J4Ls7k/qL731L0ef/FMTcVlBaGkBspYCyuU8I3Vv9GMb4Mm+
tPqXWoxc5pO8YQWqn1DAkVyoO3Xr6iNqrQxIhTrjhBuKVL1eqQ3cpMsDRmnfkYQlr2IGc6RU08rX
LayAFGBZ2N3pIEqSYehOy5ep6KO5ihyHItbX3RF2NYDyh3thXJBqqW2M9XE5kk16uKcNquomHaKQ
+fGKgvvMcurJn9ps7W8GPj42LJSqTZCJXSRpaYqWzGnY0GOe4CdxwIKGb/JyDco4B2ys7/AN5ath
ASTWYglgM9NwkxwLaF4XxGwSJN2dFk9aMWIe6tx4y+q3Pd4Cm155JjwfAXmtLJ8OlCuE+8HNw+rV
fDGnQkn2+MgxUyp/FCkOmP2hfhTVrATDD1Wx9M8p6nnzLR8s0eTyKQmwe9l0j4ACdmPDLEXW/88t
5DL0RAT5CGmxi+cK4ccZr1ULJTArT4DVr35sZb0zHS1P/+2y/eQFt3NvwgOY+JSbqn3wytqfApWx
H5WFjaKrfm25uuLZZ7FwBm69u4x9PLfp0LtAQlNTr/xYAN5PfynRw0OV3z2xwkLLgMRs4kYINOLd
nL3mazsaZQrlgWfSIIZE6/hI51x5Nw14dMKO5822T8v7ceNs6lgIe3kyzEDb+V89J/ZOv02FYw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25CCF6AA53B7940"
last-modified: Thu, 12 Nov 2026 00:47:07 GMT
content-md5: dElFGGokLfrKpp8R126Iig==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6a304303-1540-40e0-bdd7-1fad827033cb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-67eab1fe-578d-6691-ee79-1091ae16dd17/test-blob-360db999-6148-409a-2b2e-01bfd4f3b6f0?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-blob-content-encoding: deflate,gzip
x-ms-blob-content-language: de-DE,en-CA
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x229FE71AF585A60"
last-modified: Thu, 12 Nov 2026 00:47:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4c2c1f77-c098-4c1d-957e-7c1ad4c1e59d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:07 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-67eab1fe-578d-6691-ee79-1091ae16dd17/test-blob-360db999-6148-409a-2b2e-01bfd4f3b6f0

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
last-modified: Thu, 12 Nov 2026 00:47:07 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:07 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
etag: "0x229FE71AF585A60"
content-encoding: deflate,gzip
content-language: de-DE,en-CA
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 807ccdaf-0191-4a81-ac40-74940d45dff6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:07 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:07 GMT
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-67eab1fe-578d-6691-ee79-1091ae16dd17?restype=container

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
x-ms-request-id: 4191f899-a3e9-460d-b449-fab5ed36352a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

