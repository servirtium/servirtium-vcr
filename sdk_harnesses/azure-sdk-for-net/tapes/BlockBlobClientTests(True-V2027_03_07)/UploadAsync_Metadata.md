## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3ae37d5b-882d-f6ba-b946-bdba45169333?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).UploadAsync_Metadata
now: 2026-11-12T00:50:13.0317398+00:00

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
etag: "0x24EA9F0C643C280"
last-modified: Thu, 12 Nov 2026 00:50:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: aea0c019-fe72-4455-97fb-18b3ff291caa
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-3ae37d5b-882d-f6ba-b946-bdba45169333/test-blob-965aa4b6-c23e-2ccb-6d46-58886f10b19c

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
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
etag: "0x2347B29376152E0"
last-modified: Thu, 12 Nov 2026 00:50:13 GMT
content-md5: UY5CmGMfVvVG3MohTxQX+g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 31ec5475-2980-46ea-b5e0-c060519b0896
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-3ae37d5b-882d-f6ba-b946-bdba45169333/test-blob-965aa4b6-c23e-2ccb-6d46-58886f10b19c

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
last-modified: Thu, 12 Nov 2026 00:50:13 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:13 GMT
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-Capital: letter
x-ms-meta-UPPER: case
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x2347B29376152E0"
content-md5: UY5CmGMfVvVG3MohTxQX+g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 44852a00-e0f6-4def-aa54-f692625ccd17
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:13 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:50:13 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-3ae37d5b-882d-f6ba-b946-bdba45169333?restype=container

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
x-ms-request-id: ddd00944-e636-4a04-8d77-5ac1de0f4cc5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

