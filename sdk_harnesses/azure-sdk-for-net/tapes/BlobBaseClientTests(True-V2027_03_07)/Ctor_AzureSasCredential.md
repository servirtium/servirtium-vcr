## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8608ec04-9a00-af09-f01b-2b4338672b43?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).Ctor_AzureSasCredential
now: 2026-11-12T00:47:42.2769269+00:00

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
etag: "0x2125FBF3B582020"
last-modified: Thu, 12 Nov 2026 00:47:42 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ecc76aa7-29e6-4134-89b1-bdcab41806c0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:42 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8608ec04-9a00-af09-f01b-2b4338672b43/test-blob-4a9ea7cc-fb27-bd2d-bfd5-7a0b0f437b00

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2565A2A52CE2560"
last-modified: Thu, 12 Nov 2026 00:47:42 GMT
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5005327a-e289-4135-a552-faccfa94967a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:42 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-8608ec04-9a00-af09-f01b-2b4338672b43/test-blob-4a9ea7cc-fb27-bd2d-bfd5-7a0b0f437b00?sv=2027-03-07&st=2026-11-11T23%3A47%3A42Z&se=2026-11-12T01%3A47%3A42Z&sr=c&sp=racwdxltfi&sig=tmmz9J29s4Ac%2Bp2Be76v4Vfaiqr0h1eUxqjfyaBF1Z0%3D

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
last-modified: Thu, 12 Nov 2026 00:47:42 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:42 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x2565A2A52CE2560"
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: aaa25110-7ea1-48f2-bca8-2b1a28b449f1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:42 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:42 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-8608ec04-9a00-af09-f01b-2b4338672b43?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 36000bc5-b924-406b-8a28-6b4988a5caf7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:42 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

