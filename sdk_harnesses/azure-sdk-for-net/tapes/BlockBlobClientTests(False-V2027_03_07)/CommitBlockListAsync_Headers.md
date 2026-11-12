## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-bc96717c-5123-9e78-1b55-3f3902fe3599?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).CommitBlockListAsync_Headers
now: 2026-11-12T00:49:37.6562093+00:00

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
etag: "0x210F5717E0A4200"
last-modified: Thu, 12 Nov 2026 00:49:37 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9518fa06-98b7-4e1e-86e5-274547bb40f3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:37 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-bc96717c-5123-9e78-1b55-3f3902fe3599/test-blob-e5f40ce5-4fe9-ecdb-4542-803f2e5c7e31?comp=block&blockid=dGVzdC1ibG9jay03MjMzZDRkMC0yZGM3LTMwYzgtZjlmMy00MDEwMDdiODdlODY%3D

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
x-ms-request-id: bd7532ce-1cee-43d5-96ad-1729b72d1495
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:37 GMT
x-ms-content-crc64: qk9v6ig0Q/w=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-bc96717c-5123-9e78-1b55-3f3902fe3599/test-blob-e5f40ce5-4fe9-ecdb-4542-803f2e5c7e31?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-blob-cache-control: dyscohmkhchihyftqcnt
x-ms-blob-content-disposition: fwqjnxefpnhotcmxxqrd
x-ms-blob-content-encoding: buvlohwuumnixiffijop
x-ms-blob-content-language: dgutusoflguykkrkaetf
x-ms-blob-content-md5: xYZ9IMPPsZuWjrnF5gwzKw==
x-ms-blob-content-type: bijcayplwhpncbyuycqv
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay03MjMzZDRkMC0yZGM3LTMwYzgtZjlmMy00MDEwMDdiODdlODY=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24E44C04F112660"
last-modified: Thu, 12 Nov 2026 00:49:37 GMT
content-md5: iDgGBIf/l+ObjQUy0NbUVA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4fb43244-2d2e-49d8-a86e-15ca06458518
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:37 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-bc96717c-5123-9e78-1b55-3f3902fe3599/test-blob-e5f40ce5-4fe9-ecdb-4542-803f2e5c7e31

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
last-modified: Thu, 12 Nov 2026 00:49:37 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:37 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: bijcayplwhpncbyuycqv
etag: "0x24E44C04F112660"
content-md5: xYZ9IMPPsZuWjrnF5gwzKw==
content-encoding: buvlohwuumnixiffijop
content-disposition: fwqjnxefpnhotcmxxqrd
content-language: dgutusoflguykkrkaetf
cache-control: dyscohmkhchihyftqcnt
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a02880de-632d-4951-8e60-5b92fb6735a6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:37 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: bijcayplwhpncbyuycqv):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-bc96717c-5123-9e78-1b55-3f3902fe3599?restype=container

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
x-ms-request-id: b0e01f6c-6330-4bac-84ad-d369aa7281df
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:37 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

