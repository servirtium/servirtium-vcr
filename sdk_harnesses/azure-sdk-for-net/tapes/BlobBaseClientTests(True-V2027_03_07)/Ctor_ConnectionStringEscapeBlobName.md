## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c0728116-54cc-82d0-32a1-03f65532b256?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).Ctor_ConnectionStringEscapeBlobName
now: 2026-11-12T00:47:43.2923595+00:00

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
etag: "0x23FB52AD9F20080"
last-modified: Thu, 12 Nov 2026 00:47:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c26aff09-f9df-4679-8ab9-cf2e24464827
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c0728116-54cc-82d0-32a1-03f65532b256/%21%2A%27%28%29%3B%5B%5D%3A%40%26%25%3D%2B%24%2C/%3F%23%C3%A4%C3%84%C3%B6%C3%96%C3%BC%C3%9C%C3%9F

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
yI9CHB82Wtu1fWN7FEEDjw0BwGmUZoJ/Ck/4x5nYgjYt2MGRZfYE3yeWC07wVW3xnnPpU3JIwmIM
wxLPPpJC3PotTjyAcSkX/OBC/Vs0jrThBikm7y/E5BZfhaLkNaGVVC5TwwYxcSxK0laRBcQG1zVd
7TdoHO3LaWklIOyHMsc/raks4MuusJX92x3YMt9RWK1thkdpLDhBiFmdC1A/wp+PUlgb2vdprz2h
a0DP8jaK08g/GqyA1oBw61hxEaRFvRl+SeCGNn62A9cKx8H4cZUiEjiIAKjzDnvYqu6f+J6YXK0n
UalWA51KiRbUdQ6+eHnCTv5svL1wijpkrYyPFgs5cWoT0SDrzA6bPneSHphtGjF13KmfLJ/wtsZu
8VYQunILmwSkqqdZ14Lv0X5F3myh95NaGTpimUXLIxpZfNq4ioMEhoOUyG+JGwUmsFogqthazfrC
taA3qQG/2IeN/1qoNkb7QVfoDS4k0P41O+jqqnhB/q/g9tTizdyB1fDn/BuqfnkUJWmAcsDLneSi
Am0Z1S4PSwCqyEByGXR6Zjg+PNTiir1u1oQOwYzvFFjvP8pvaP/B2LEaALY5oQz1BQuHjWAQwHew
qv6pAIp0urPngtmpC/44fWQix4oHNDR4GbuBZ4b4339Tvr4BF9cnpkUCUh8zTPoMTxD77fjtqXXK
MefO8lMs7qNZVU1AN2WN+yBEBOIVRczBdBh2/PGGZhRINubvWLTy1WR72faszBiqbvLYqKSTtesa
DX06tvKy0+849wB/naJsUi9+mWzWFKj/y43+rr1vtYH61Es2tx5xyQYGc9QXK9BPa1Z1FRx/RPjV
OupksyQxyUJ/hMlXNpoQDM9lz6HT6KC9rkNn+qBkepBSYHw0DRbh1KqSmKYH+DS7ZAhNGXRXAVJK
pwThys6hGgo5BNUd3P+5hPv2QVD5trYOrJWXF2Ab+18q6mYRAArb8H2czvRfnYgJk5V4YL8CUPBO
0x45CgOpHQh18/KZp4TxG1HSXejBrg4MjoPLo5ufJ5l1wi3soeV68rHr6amWcOwQh0VuL/MIjCQP
LXx/3npt1sxYJOVXBHlrWGo31sVldh2XuhtVMfelbDUI3HRp+hQ2fRPdPUsGuYLLA9aI0bZfqrde
5yReF6XUsrevTigFAl5WAFixhzjRkQCYii0gHZp/qTK9ChLv2GVuCYqUVmpaxgF4MdFdrSJ+jFYj
xo13s5UdMKX1R/dLZifzQ36tPTqVPcQsqOvIIfsPPn67zBHY91X1dibFZH4JLMqpamqk0U4cjYjI
SguqVA6q5gh5j5oWGkwouMcT0NhGInsgH7eQam0vnz6JD6xKSyIXG351kJ0wk08efBmHCb2vgg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C540FC93EF7B70"
last-modified: Thu, 12 Nov 2026 00:47:43 GMT
content-md5: xJKtcJsNxVq9taEJ1u/Egg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 080c99a3-4cd3-4147-8319-2925a7299a0f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-c0728116-54cc-82d0-32a1-03f65532b256/%21%2A%27%28%29%3B%5B%5D%3A%40%26%25%3D%2B%24%2C/%3F%23%C3%A4%C3%84%C3%B6%C3%96%C3%BC%C3%9C%C3%9F

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
last-modified: Thu, 12 Nov 2026 00:47:43 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:43 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1C540FC93EF7B70"
content-md5: xJKtcJsNxVq9taEJ1u/Egg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c4725b17-12fd-4a84-9716-9c3e01d50df5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:43 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:43 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-c0728116-54cc-82d0-32a1-03f65532b256/%21%2A%27%28%29%3B%5B%5D%3A%40%26%25%3D%2B%24%2C/%3F%23%C3%A4%C3%84%C3%B6%C3%96%C3%BC%C3%9C%C3%9F?sv=2027-03-07&st=2026-11-11T23%3A47%3A43Z&se=2026-11-12T01%3A47%3A43Z&sr=b&sp=racwd&sig=JfjpP2ex9jboM1ug3bhW7XaBTdfreAoSiR9Lg0Oovto%3D

### Request headers recorded for playback:

```
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:43 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:43 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1C540FC93EF7B70"
content-md5: xJKtcJsNxVq9taEJ1u/Egg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e9f53ec9-5ee8-4006-ab1c-42865458de3b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:43 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:43 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-c0728116-54cc-82d0-32a1-03f65532b256?restype=container

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
x-ms-request-id: 739b1cb1-3953-4a43-afe0-d0ac239c0e5c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

