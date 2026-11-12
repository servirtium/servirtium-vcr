## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9ed9e4ce-bef8-8b87-d427-80e33fe8783a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).Ctor_AzureSasCredential
now: 2026-11-12T00:50:01.6357303+00:00

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
etag: "0x1E652603DFFBD50"
last-modified: Thu, 12 Nov 2026 00:50:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3bbb050f-df19-49de-b422-8554127e7705
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9ed9e4ce-bef8-8b87-d427-80e33fe8783a/test-blob-b27f695e-d96d-c0b3-a9c6-cbd95ad2c01e

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
etag: "0x23704B60DFD8BC0"
last-modified: Thu, 12 Nov 2026 00:50:01 GMT
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f6b9a820-7902-4475-b2d6-d55a64a2d45b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-9ed9e4ce-bef8-8b87-d427-80e33fe8783a/test-blob-b27f695e-d96d-c0b3-a9c6-cbd95ad2c01e?sv=2027-03-07&st=2026-11-11T23%3A50%3A01Z&se=2026-11-12T01%3A50%3A01Z&sr=c&sp=racwdxltfi&sig=GUGg8Z0rJ25A0oOeqAERCNbzOF5vofuT%2Be4I508xCGs%3D

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
last-modified: Thu, 12 Nov 2026 00:50:01 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:01 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x23704B60DFD8BC0"
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a371fe8d-df89-44e0-9d89-9d0917a83673
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:01 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:50:01 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-9ed9e4ce-bef8-8b87-d427-80e33fe8783a?restype=container

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
x-ms-request-id: b7c4b4dc-ad09-4ba2-ab6c-c3a26d983c22
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

