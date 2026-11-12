## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-76bef6ec-f83f-ce94-d44b-0cd40f66b6ea?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SyncCopyFromUriAsync_CopyTags(Copy)
now: 2026-11-12T00:46:14.9545933+00:00

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
etag: "0x275FF97C01D7EC0"
last-modified: Thu, 12 Nov 2026 00:46:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4fed3bf6-c796-497d-bd86-c36ff7f59e1e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-76bef6ec-f83f-ce94-d44b-0cd40f66b6ea/test-blob-e916a492-8393-4f69-ccef-87e1e952681a

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
/tA1MqD7URsIn0rM7qSybxsxtGnzExlojW+qT3Gz5ILi8dU/MINKl1L74PM4nGAnPBfFuJ3/J+q2
zaQwUAGqVbrI6f3Pcz+X5h0W+DMlL/EOgxNZ7izk48nqiGLfGUZRUYo4cLJjWMnYLdF/6C+3kJ2z
Is3tUGeO4wYz5OrcuM3Wxaao7b8+qypKgcBaZPuaM/jFK/d5YwAjqoysL3Pe/HQEqSOID6PedXai
o86mNH4LmbHyFozWXGGlhEIzkXu2a4RLVrvYESNU57aA18AyfXYNoZbC7OXoLkzB4opgquP76zdJ
Wt7DM4iNnS/VVoWgcwfMJfDk9H+fYyhuFi6Z9DzThOuJ6CKXSW4ONU62EtfHIW6Dk4XzFve4qva2
VRxZ86nzAtGZF4vkNNyC1r4w6VFQp/W/FWC34G300D0s4fRRtEGlwhAGLQnjn16pcD84h8GlZa0n
md1JPCJjpEZOt1LnMCJ9iyZBSnnr3HYBDm8tvEh7hnxGKhpjW4btoonClOcLwUAduvybZBs0O71n
Ry2zNej+0jHWoAYIGS+fU6jvKUeP9UwvEAFM4CJgEu5d/BRYOmygxMK2NSE5FaHM+xBzRBJ111Hh
hCXmsfEOdo4Yqh0bRxg8TmSF2cAr9ftggOUR7c3b5yTCd7ZGuhPQp76SIWqDsLT4N/Wu8P2Rto4p
hjEL/YjBPMP4Wc9i9ZRRtDIBmNSR3M8xGbXXLfYnMMAoHDPhxao20eSmi1fklkJgXDzLjx26mKph
2uPT6Q7M0SgOOdhhb++Hy8bv6lB4TYNzdtG6W6GjbYSJgOrGYujV2rou1Vxp/+1NQ8NWyq5Z6Y1g
X3I9EXaHa8tT1+8EwWjeGQ+WSngmCXbkbRfdTKPVMJZdZQN1mMhEpmmQFSj9SIJbeLCewp8UOVX7
WaReqh8ofqZYp1xlaYFHUqMOlvNO5iSVgtTyN233SCuteT4j5fxKZ5eBpaEl9Q8uV3D8BqNirXN/
yShLNUc5YV4xt+9DI2ymxC5czEGDb4zFxOD9+0KHS8zLpBvU/zJQSENC9D4f6zMDVUF0BuAy/Fqc
hXFnPGYcqWwjeH9R0sX8C4T9QHpNpdms+aUAE0XrmafBOHnA6QzdJkvR/HKzsoJ8d/pbNLvfTuCX
ukLAG5UmN9/Xj5pMOyJ4HxovfKlm+UcihJtKj2Ts4uqYKC7JHQq2q8ST2yPoMDvY4xWgsNI2McH7
nZf53Kh7662wsxLzrwIQeNDl0x0jOlRfcqxPTDEYYfdtzn9yvM8bGPB2OHwo5DQSkDcBUV2j12ND
mWn7K557mFEbheCCnbwBybssrQLXN414PLz6FhCayfYcLyJlIOxR+qAqDV9TkPJ6/4iidilgaw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2145324D7999660"
last-modified: Thu, 12 Nov 2026 00:46:14 GMT
content-md5: GD7HMDrATFWoSrp6rlLi0Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e6da9bfb-e3d2-4e30-bc53-02b0430c81ef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-76bef6ec-f83f-ce94-d44b-0cd40f66b6ea/test-blob-e916a492-8393-4f69-ccef-87e1e952681a?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>source</Key><Value>tag</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b9097b1b-ac3b-4c16-bfd7-9f21966262d6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:15 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-76bef6ec-f83f-ce94-d44b-0cd40f66b6ea/test-blob-ef83dc62-80e2-4181-81bb-ea656d9a9ca9

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-copy-source-tag-option: COPY
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-76bef6ec-f83f-ce94-d44b-0cd40f66b6ea/test-blob-e916a492-8393-4f69-ccef-87e1e952681a?sv=2027-03-07&se=2026-11-13T00%3A46%3A14Z&sr=b&sp=racwdxyltmei&sig=%2BL7%2Foz97WlZDJPfGAjeKbSjr8PtM3gJWzy3j%2FTSN3zo%3D
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
etag: "0x1CE5ECB75F775E0"
last-modified: Thu, 12 Nov 2026 00:46:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 570964a5-99e4-4d4e-b39b-5c0bfeeb4689
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:15 GMT
x-ms-copy-id: 9d4c445c-342e-414f-befc-ae70a8419420
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-76bef6ec-f83f-ce94-d44b-0cd40f66b6ea/test-blob-ef83dc62-80e2-4181-81bb-ea656d9a9ca9?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: a2224e6c-9d41-4d38-b788-1f330c03dc74
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:15 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>source</Key><Value>tag</Value></Tag></TagSet></Tags>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-76bef6ec-f83f-ce94-d44b-0cd40f66b6ea?restype=container

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
x-ms-request-id: 6602f1d7-5951-4d12-b956-41168a148c9d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

