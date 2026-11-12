## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-6fef6680-2c1a-d9e8-dcaf-dcee40927294?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetPropertiesAsync_SnapshotSAS
now: 2026-11-12T00:46:56.5101223+00:00

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
etag: "0x2523070D8C6F0C0"
last-modified: Thu, 12 Nov 2026 00:46:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 734b6d98-e3a8-49e0-9eab-c756b0d31ef2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-6fef6680-2c1a-d9e8-dcaf-dcee40927294/test-blob-8b151a82-4316-3991-9f34-047500d5b71f

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
74JiLDI7hm0PhSLSNPnMjPaxXa0EQfs81bbP5Shy2Qb3vP+9L0ViR5One5EgvgSmaHd/TngKG62G
Jld8a6FFnKsc23f6DlyxTxUaXMZqHBayKX2x84qO7aFSNwnt5dvyYt7lBOOMrFkazv9i8L7nGwlB
yUIkk6khju7Vp9ZTw2k6KPnnhRgzJX0jliWKK/3iahz/rByZzc41xHX0tgSDxwqWKMfFAJbxDqPF
AP2DlmPx8j26UxdNoVoqscCiPm94n88a9AI1HWqFDp141M3RsS0SA8PGyXTzSYdtmk7VT880TGEu
aaJgvNXSNER51MyNWQCTjzurstZbJ6p7x4IcsL/OQ4dso0iLskfu9JQveXS64EFNQsCUiZqK00H3
5fRTtoSFq5FFIbW3CNz0vL1BK601wOdAzm3+Ornt4c8Gk81Smj4Qqc7jdb+Lljrjn8zcSKeUwiQM
EucWhnHXVz/msHUPoSF/MILfUUsotDgzG5rsEZkoctCoRohW+iJcDB5/peXF0/6qXBcktHDZ416v
4mvX6kamvT6kZlqZKTZggkUtqA5SbkebQrSBBL1gz2Iqphe2hSHX2eimIG2jETPhxDIqrDtPXHQk
O6iRJbmARJf4b4IeqfwjVc4mq03a+DGBnz+LNSIn2kqjkkp5RrQvJtzVq6Gwwxo2BldsKbAmSUJ3
EIV59Q500ZU4ehaxqg4a9oVxBE2P0NwlVS7LurGZfUkIATYvtTDNYNoMeEgEhFxIUjIrtUT15z+o
VKDgqBbjn/3NqanY6kFVo6Ryg1eTINDSg2h/bsgEEhn2hmGP7bfDKNlLNtuycGfx1RGggmTnFTPP
DSWuZDA1yZaP4WTfxbbsr1p+SOr1HxMAjpi2ZI+1DnEuv9+SFcSoFm1EI44DERBbs9MJacxI2u4S
rtWYfmUG2dLzsAXWWpmW1TF8sfuE/XyHWrC8rKSk5eXxf2fuD5cIPUq8D2AKhFk5cpSbyyjyjrBZ
ECS0SiwtTssf5doyp8WadHOxx+0bfdVXgjkQCRm8/vG2lf5zU/MdjsGV6p5+BsrOAFe1QMbDPZNO
XcfyHEWxY+fpfBLGJiCAlDgshpI32HtvQgjCB70q8ldrJfYrKnF744e3lYq4B9o2NKyNl7cBFoRM
g9o871spvoq6WwEqVWnGsKIKf0Pxtzoui9MRnVugaQ5x3qaXPvQsjtb//avZC95CxuYV95dBWsyf
DmSIGCEuGvLyuXbCL3Gt3fFs8bmOVX/0ztZ0i3F2L4Ta9zCPpHW10eO55lJogJd1Zxmm1GkSEbnk
k0pLuo6Ae4ny6DhBHjl7tyDW1W4tjE4+/yNY0Fsax+Z3qxArahZUOGvIdZdfM0nfKx1IPDtKtw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2730D98584DFD80"
last-modified: Thu, 12 Nov 2026 00:46:56 GMT
content-md5: PhUJTq5eRF+K0GAccKXLDw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e408de6c-d221-4f64-9a66-07aa01331502
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-6fef6680-2c1a-d9e8-dcaf-dcee40927294/test-blob-8b151a82-4316-3991-9f34-047500d5b71f?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:46:56.5720000Z
etag: "0x2730D98584DFD80"
last-modified: Thu, 12 Nov 2026 00:46:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d0088f14-f21e-4b18-9b72-802bf1652d6d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-6fef6680-2c1a-d9e8-dcaf-dcee40927294/test-blob-8b151a82-4316-3991-9f34-047500d5b71f?snapshot=2026-11-12T00:46:56.5720000Z&sv=2027-03-07&st=2026-11-11T23%3A46%3A56Z&se=2026-11-12T01%3A46%3A56Z&sr=bs&sp=rwdyi&sig=y0qeMoMSP8xX91mNOIbMNmvyXoITLC3%2F5wdEj%2BYrkCI%3D

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
last-modified: Thu, 12 Nov 2026 00:46:56 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:56 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2730D98584DFD80"
content-md5: PhUJTq5eRF+K0GAccKXLDw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 72df8a2f-dbf6-401b-88fd-59e71c314152
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:56 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:56 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-6fef6680-2c1a-d9e8-dcaf-dcee40927294?restype=container

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
x-ms-request-id: 4acbdc7f-65e0-41b9-a129-d0b36dc15c56
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:56 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

