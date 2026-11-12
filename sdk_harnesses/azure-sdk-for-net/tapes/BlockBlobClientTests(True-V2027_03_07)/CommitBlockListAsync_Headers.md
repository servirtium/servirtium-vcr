## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-557e54e7-cce9-e15e-8cd0-dc910f48a3ae?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).CommitBlockListAsync_Headers
now: 2026-11-12T00:49:59.9231238+00:00

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
etag: "0x20DE46F4F287C60"
last-modified: Thu, 12 Nov 2026 00:49:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 20d5a6ce-f6c9-46cb-ad89-37c4dbd5859f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:59 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-557e54e7-cce9-e15e-8cd0-dc910f48a3ae/test-blob-3ef834d8-7691-993d-8d98-9c328a5c6add?comp=block&blockid=dGVzdC1ibG9jay00Mjc2ZTA2NC0zODE1LTI1NmUtNjNhZC03MGFmNjk1YzA1MTE%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: da8f2d87-41fa-4a9c-8072-221e50485856
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:59 GMT
x-ms-content-crc64: 4Ossn3Q/5ig=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-557e54e7-cce9-e15e-8cd0-dc910f48a3ae/test-blob-3ef834d8-7691-993d-8d98-9c328a5c6add?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-blob-cache-control: vctrgycisdccuvihyafx
x-ms-blob-content-disposition: psnkobfamrnfacyxsxky
x-ms-blob-content-encoding: vbqdmimejwlluwndnjde
x-ms-blob-content-language: scuapwcrvkobofcnckwg
x-ms-blob-content-md5: y00t0SKe8DzlWy1TE0GLAw==
x-ms-blob-content-type: nappgbkdovjitffsgpnp
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay00Mjc2ZTA2NC0zODE1LTI1NmUtNjNhZC03MGFmNjk1YzA1MTE=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E1BB4EFEF5E260"
last-modified: Thu, 12 Nov 2026 00:49:59 GMT
content-md5: G9rd+ZHE0fkgXTV8QVDPaw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7588ba1e-b4bd-4d37-b118-653de6b95f4f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-557e54e7-cce9-e15e-8cd0-dc910f48a3ae/test-blob-3ef834d8-7691-993d-8d98-9c328a5c6add

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
last-modified: Thu, 12 Nov 2026 00:49:59 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:59 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: nappgbkdovjitffsgpnp
etag: "0x1E1BB4EFEF5E260"
content-md5: y00t0SKe8DzlWy1TE0GLAw==
content-encoding: vbqdmimejwlluwndnjde
content-disposition: psnkobfamrnfacyxsxky
content-language: scuapwcrvkobofcnckwg
cache-control: vctrgycisdccuvihyafx
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c224e8c0-e465-4380-9500-09199f986db0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:00 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: nappgbkdovjitffsgpnp):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-557e54e7-cce9-e15e-8cd0-dc910f48a3ae?restype=container

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
x-ms-request-id: a12bc7e5-f673-4765-aa10-7c3328e4a746
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

