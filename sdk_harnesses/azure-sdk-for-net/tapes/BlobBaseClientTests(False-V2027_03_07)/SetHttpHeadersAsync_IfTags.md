## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-fd8e20a8-4c54-974c-c31e-d6d665dbfc19?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SetHttpHeadersAsync_IfTags
now: 2026-11-12T00:47:07.4443068+00:00

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
etag: "0x215893C2D107660"
last-modified: Thu, 12 Nov 2026 00:47:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c09394bd-472d-4681-947a-962918f49825
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-fd8e20a8-4c54-974c-c31e-d6d665dbfc19/test-blob-9de200f2-aa45-c071-ac4b-27cae8d4b9e3

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
hSzRDk2Rptiv6ssoIOnspSfoWvK73/f+r81RCCWBru5l8lA4Cu3LYVoJ7VvfSaDDX4Gj/3nHKKY1
01+AP52zLjvdwi2Ys5s6HfmXsfGcHmUsjqmj3q90nsqqAzaOSyG9Vr8gAoZyKqvmaeKAL3a0mbT5
U7H0EFCMaCRi7rBkrNLY2lsyexzfumP9vHXN9G5U9WqClPdvyEVvlJlhDzz7grwPqFUagh2XGplO
91PbvnO2DvhG4hfaaBEWw+aCfaonAjq4vUwYOnNM6nleIdHxlNUmqwFEtJ+lNT9DA782FJzuJvQZ
IgEnndSE+fede0dAJC4RXNKo4k2aEogN1Da0FdXcb/rc2HHU/g0twLqoB7n3A9+QJbfKRUSnfg95
Gsidz+QhwAtNY0y9PV7EeyKS8gvPFdFWJPAeEiq2NVlhWuRFj/DWhkatqp+T0+hZBsohFIwEqgT3
R6v0A67hli7yW+J5f+wyvGvFIWsxw1EHxAtflSHNXbDgTUhE4oKXyxNxoXcF34fd7lcgP4iYxYNa
7D+jgQENJP4xmTGj7dnpLVZYwCLZAuSDgabJrR4oR4jE6vZD9EkRZHx41EZWOgF9NxIxQARhgOpa
HwBbQ3fgCVKo3wPjpTgMRlylYS2dLUelS3YL9gaDY2kL6dRJtSAFmMv0rVr9mpHZJfqoux+8vPK4
tvgA1BJLJXuZ2Lxjw5A7oMliqX/tp7HkMtEM2qdKTyzikf8oBMO4qYjeZMLVdWFpbBtWWRNyyw9H
HKFBPkrUT4iPgTKRE5sFqgD3DkPvDr1vo22M9PUZb8bw4eghd2o9ChU5RvQv11l/UK8Se73MVw3k
0ZvcR1qSdhFsoDKz4zKWuQMttcjJQMsUDKRGBvQIJInaPabOYcK6ps/iwzYmy2x8fMK5nqJEG5DQ
yDu2S28dY3yp2KaMx1hAcw755n2U7UE3yokxT4bmliEV/piHBFpfxGC6ffLF77RqeSqTSzQTO9r5
foHm6xP2wkKFd8m/uG+zmSIc2nBOcdvVx9ZbU0vtAcK+jYXZedhMw7uwQHjqqsC737ES9mFqqw2l
ECQ9m272l3UHASrq2h9J0Ba1nTFi6h0Vn3OZ2gpgU+J3M2m0DidMuagD4qmV0QWSySZKtQ3bQyYH
J/z7Xbxqp61Icqa2lMLuaeOIXwdzgM1uBxHkFZ7UnPBCreYrUVzsmDv8TF9f2zRkW0wqU+Mek6cu
jFWrhZEOc9W1c+bbwxeHnMbLdzNuDyvcgLpSqkgMJBk//cQGQBKq7diJqWhNiJg0o7ccUxxzv30q
zgXWvMmMqE/MnMVTgFuzIIlb5WXDjvghHgeR8ND9yz1G3HIN0zEP/AEYgOzS4CJbaTKSGNoYZg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26195D01248F840"
last-modified: Thu, 12 Nov 2026 00:47:07 GMT
content-md5: d31tH3oyNp+kH7f47eUhuQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f0f87714-f5c6-48fd-ae17-5bb1d32941e3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-fd8e20a8-4c54-974c-c31e-d6d665dbfc19/test-blob-9de200f2-aa45-c071-ac4b-27cae8d4b9e3?comp=tags

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
x-ms-request-id: ee7c5857-9fb0-478b-a4c1-3bed4ed69de1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:07 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-fd8e20a8-4c54-974c-c31e-d6d665dbfc19/test-blob-9de200f2-aa45-c071-ac4b-27cae8d4b9e3?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-blob-content-encoding: deflate, gzip
x-ms-blob-content-language: de-DE, en-CA
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F6EDD2737E1670"
last-modified: Thu, 12 Nov 2026 00:47:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dedca588-67c2-47dc-ad6b-f004a1ef86c7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:07 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-fd8e20a8-4c54-974c-c31e-d6d665dbfc19?restype=container

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
x-ms-request-id: 4c3a9e4b-f54a-4e2b-a3d1-5aec8d7d547e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

