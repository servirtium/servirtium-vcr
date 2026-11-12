## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8fca4580-c5a4-8437-38e3-d66b550de0e4?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).ExistsAsync_Exists
now: 2026-11-12T00:46:46.1230443+00:00

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
etag: "0x20258CCCE48D620"
last-modified: Thu, 12 Nov 2026 00:46:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fa02be72-36ca-4db9-81a9-967a207caa05
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8fca4580-c5a4-8437-38e3-d66b550de0e4/test-blob-1e8590e0-6af4-430e-ed46-588473fbeb7b

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
K0mM1gxClocMDEiqnmZbNl+QDpXpvVQVN4ahXWyyET33W0AMgQnXnvn9EeghZKWH6yIl4u1Wkm31
dp6GoDkbWvoLskMmTrRVuG+b66tr9NPhGnFJjS5QocnSFgprUf7A4rftFbFhYZxuzyl9uqbCiYLL
pIbH0czLuxB5Uzip6mdx2gnzft4hf7nU270F0uYiEI2In6x4+BDrIVqg5w1kxOXCDN+dzgqkqSXN
8/YOxukpVkKqIUq6+OL4CF2EgJerbxbYQ8UGhUKC4/WHqwUa3VtwdpHLuqObBxP9pMWtICmNIYPf
NYIjI9H/Jz1UM03c3SsBEwkG37VzPTyyCeB91cPM+omCO6fYTVO/y5JlRtTFIMeZqw0fhkHNa/hG
cRnwglJ5iDjEWqKEKcW1RxQjDfdn7OgZ4ym2rXRHtM+ukdw6z0g/676bAcUkFYJHaT8tql0B3oUx
1p8pw9rEfKbT1pjpe3fL4yI4zOoi9c2nbkQ1GglxrLJWCfioFijj14QfUT/qXe3HYcc7yBKaDuHS
glSWj2KcYSnlknJ/I8z5VfRlA6SOvBBWbbhCNuSgvPoX1pTTTUgigu8WBct7SD76QXMdNQs9RMVD
QCGpWipERNZ3Z0w4JgesQ4C0d7dF2iV6R/Rwgobv2ZLPkAwneCjE0cD0BODywhtrcfKKiMwN/mb7
LxM21MFPh426aZb7hcpY76X3UNVFh4TYBRGUZVHFwZGmK0gUjv3+pX1SN1mFcOwnMpkmFa2QtqeP
Xc+wuiI89KcEVFmCQ2Go+KtY8lAqU5QkbTK3nqvkFXSghTAuTupaFUOygRuSpO44fh0COMRXZAo6
i0zvhVX7Hz7l4b4wearA/d0MeNF4kslEfyCO4t2wSCEm9MKeapDttmHdrcIwCARyQTrnS+w4wfmD
qwU1bT1gNJmdCYXoIpNMHsJvm+QGE3cbHKCjyf007jLJGr+KuEgkfHgpk/9/iR+nmiwpyCYUfZeO
GVGcvWubaBpTHwfTwWZ5Sx9r3IB3nJKA/C7RCyUMtJ0n+5/3h74NjSrkK2oX09jGsH0GqKAXFny+
G8A8yl30R2pqrMXGgcNgXk9Vk3AnaClWClqoBQz8EOUiOWv+0cLN7+QArSYS/y65pkpRwYILlrOX
5r8CTEFebZzgpEhXYYyMiKSMJ7sCQwsr7l7Bq05iFqK4Z+sDy6Ojoj+KMVvmYkS9xDnef2/3lKK0
1l3inMJNfo2lnvqhiLwB6YR8eBGwRYwaA+YVg5cywdNIT/RFwAZ9PLPOQMRJGzx83ZbrexuQA5HQ
yJjbOPr1c9wnWTnIuyh+/jxe4gXI0OeqmKYAR0a3t0tjdPdtoQO42M3nIsICtCJtbHzeMiGMCA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23A6A92487AA160"
last-modified: Thu, 12 Nov 2026 00:46:46 GMT
content-md5: soabD69lsGXEJoA1MZgyDQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: de0161c7-2e90-4778-a212-da916dcd3d6f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-8fca4580-c5a4-8437-38e3-d66b550de0e4/test-blob-1e8590e0-6af4-430e-ed46-588473fbeb7b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:46 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:46 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x23A6A92487AA160"
content-md5: soabD69lsGXEJoA1MZgyDQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 669d30e3-05fe-427b-9f59-9cad35bf763d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:46 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:46 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-8fca4580-c5a4-8437-38e3-d66b550de0e4?restype=container

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
x-ms-request-id: 631484f0-9344-4fc7-a897-fbc59bf79d44
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

