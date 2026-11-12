## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8d2042f3-e300-bcba-23a7-5047df7d1989?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).StartCopyFromUriAsync_AccessTier_Cold
now: 2026-11-12T00:48:27.7112214+00:00

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
etag: "0x277601FF7235D40"
last-modified: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eb64d3e8-8c41-42e3-b743-7f591ec28bf6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:27 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8d2042f3-e300-bcba-23a7-5047df7d1989/test-blob-141f8c95-0443-e5c0-3ac4-d67b3effa1f7

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
ZlojCFTQyE0h1CktzujbLQkIsAKMuAvugjtSOww/fiQGWeGFWRA0xMPR8m/bkxdR6alyNk6faq1O
NIYZfoxB4lUEJnQHVtP40+w+u8acE+8kAVJizEjWZ+40NiSKG0Y2jxAZ1myiSpLWeWJiYK/msiGX
9Hw63xUNLr+G0h+vbremCCu2gj2Cgre/jFPldAc+TYQD8yfJ/LD6C6etHHdzJwuru1iDMC/kFHLF
elLCKLq4R4Wbq3uQ3At7u3aV1GVATGVHObiuuxxUH961BIFdN+Pt9dTx13uQG99MCHS4TkAMhC7t
eu4CCYxpR4yc29eKHoOTqN+RT3Tptx7YYrKnm9CeqH9Tb7316utIiJDu80AHwurwJaZgezW5A8PP
KafZway7/jJYNq7Gnr3zSMbk+sTe0Z/ItnUpPS1Kmmz5JcBEb8fkMvQNr4w7KYfobDJu1Qj/8VgH
EAo2ksEEDZxBzXj8r9j//8jP0CETjIzuQNH628Rj+jRnPV68rqAzCKHv+lwO7L1Zb9VALyA384N9
R1HvCjLX3dJElHJ6QlEnnMiAJJIv4FQUoGzvI8sUMErbP2ZPQ/5uGByKyVdL3yyEGZJXts/xTWf8
22nG6LoGMGQnnwPq11nJEQt2pRb9ycA/awk5vHl76fL+U2iUqDBhhJnyI0ApmUI5jqXDeqhR/hKo
h3ywzXPqrLUR7IPxNGjbFCB8CqaAFdLH/y3Ut29JrVVV7CGzsbYlCHaLGK2+SFk86GaH1PNrKHGq
6M1GFfVFxz4um0hHJ2NpVwEv9P0kCbfUl88Jwtlh6cOvCMjp3/OBRVFuj60R9MACHXzxPDR0hd4W
cX0lPARkzbGFmB6agHcOrq6stXoJw6MPBqRdb62OO4Lp0m11WwhMCsH7i1yhZ5wE4o2FyM9kDK7a
FjZgB10D9lycsK4KmVOmX6u4DjdGbZ4HWIwgCXOyhcW/m0XS6wNj+JQABbbu+kk632gkq/52k6iX
WK/R4+3p6SvoSv4N03OoVRWjRmjnGV1D5SkLjtrGSAecOpNUkhSmFxuLBbBLLAz0fFbo001Arz9R
jf3E3VtQIQL3cZjgU8IB/C9MXBOt97gdFhGE3nS5XItUAgQX4jnAOuOtVLtzEyiT59ce81MrpJVE
p8dJzEONPRQNjFG96hr2iyEv/6P9qgLp8Padm2g3KF5u0jtyd26gIBamZYfW1v29KGgx/KTyR/3E
X9xN76Gs1mTzThfegxOzj9+NVkR7Ehn44HMABSu5fIo+rRiRUjB0+o8j44fl3qRUfm3FZfG4SE3C
VQ8uq9A4OdKNoNb7ITyuGFu1WC+SEgLPq4e+9BeZhWTKz/0hRk6+6qm1WD3OWFwwFkyVA/AeMA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x253A2EBCE0F7560"
last-modified: Thu, 12 Nov 2026 00:48:27 GMT
content-md5: wKe9TkugxUnd94aH3C2fww==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7aa04bd2-0c5c-4da5-8c31-a5128b2e9285
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-8d2042f3-e300-bcba-23a7-5047df7d1989/test-blob-005f0c42-7949-ba45-f31b-7130523f8dd2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-access-tier: Cold
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-8d2042f3-e300-bcba-23a7-5047df7d1989/test-blob-141f8c95-0443-e5c0-3ac4-d67b3effa1f7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DA6331D95D7E00"
last-modified: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 68a6f404-5b23-48ec-9c27-70303e8145e8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-copy-id: cdbbd7b8-e469-4c18-8d5f-424f4c9d317d
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-8d2042f3-e300-bcba-23a7-5047df7d1989/test-blob-005f0c42-7949-ba45-f31b-7130523f8dd2

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
last-modified: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-blob-type: BlockBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-copy-id: cdbbd7b8-e469-4c18-8d5f-424f4c9d317d
x-ms-copy-progress: 1024/1024
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-8d2042f3-e300-bcba-23a7-5047df7d1989/test-blob-141f8c95-0443-e5c0-3ac4-d67b3effa1f7
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1DA6331D95D7E00"
content-md5: wKe9TkugxUnd94aH3C2fww==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d01ea15b-bc6c-4013-a289-21fb7f006831
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:27 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Cold
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: HEAD /devstoreaccount1/test-container-8d2042f3-e300-bcba-23a7-5047df7d1989/test-blob-005f0c42-7949-ba45-f31b-7130523f8dd2

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
last-modified: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-blob-type: BlockBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-copy-id: cdbbd7b8-e469-4c18-8d5f-424f4c9d317d
x-ms-copy-progress: 1024/1024
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-8d2042f3-e300-bcba-23a7-5047df7d1989/test-blob-141f8c95-0443-e5c0-3ac4-d67b3effa1f7
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1DA6331D95D7E00"
content-md5: wKe9TkugxUnd94aH3C2fww==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 422e5cdf-b449-4da5-8ab2-cb6db123e99b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:27 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Cold
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-8d2042f3-e300-bcba-23a7-5047df7d1989?restype=container

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
x-ms-request-id: 3ed646ca-75fe-4d3c-899f-c58f1a65866f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:27 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

