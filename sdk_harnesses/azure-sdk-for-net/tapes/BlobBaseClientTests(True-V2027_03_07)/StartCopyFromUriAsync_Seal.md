## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-93650933-c7ac-ec8e-199c-3bd8ced5843a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).StartCopyFromUriAsync_Seal
now: 2026-11-12T00:48:30.7713438+00:00

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
etag: "0x208AF0DA1CB8260"
last-modified: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 886f764c-1d58-4809-bad1-4875b281d29a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-93650933-c7ac-ec8e-199c-3bd8ced5843a/test-blob-c5619270-16c9-dc5e-aba8-5496bb0a3f5a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E410A0D64719E0"
last-modified: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1850a72b-6b33-42c5-8252-ab4691517ce3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-93650933-c7ac-ec8e-199c-3bd8ced5843a/test-blob-8277b0b6-2613-7a0d-e8eb-9b259eacdc61

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-93650933-c7ac-ec8e-199c-3bd8ced5843a/test-blob-c5619270-16c9-dc5e-aba8-5496bb0a3f5a
x-ms-return-client-request-id: true
x-ms-seal-blob: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FA7ADF82AD95E0"
last-modified: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0d9b320b-79bc-4c70-869f-8e97db0f0a41
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-copy-id: cb7d330b-2e02-4bcb-bc2b-f4ec65187200
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-93650933-c7ac-ec8e-199c-3bd8ced5843a/test-blob-8277b0b6-2613-7a0d-e8eb-9b259eacdc61

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
last-modified: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-blob-type: AppendBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-copy-id: cb7d330b-2e02-4bcb-bc2b-f4ec65187200
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-93650933-c7ac-ec8e-199c-3bd8ced5843a/test-blob-c5619270-16c9-dc5e-aba8-5496bb0a3f5a
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x1FA7ADF82AD95E0"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fd5be468-a5b8-49aa-9c85-0e6b8e890955
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:30 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: HEAD /devstoreaccount1/test-container-93650933-c7ac-ec8e-199c-3bd8ced5843a/test-blob-8277b0b6-2613-7a0d-e8eb-9b259eacdc61

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
last-modified: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-blob-type: AppendBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-copy-id: cb7d330b-2e02-4bcb-bc2b-f4ec65187200
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-93650933-c7ac-ec8e-199c-3bd8ced5843a/test-blob-c5619270-16c9-dc5e-aba8-5496bb0a3f5a
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x1FA7ADF82AD95E0"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9fd52f83-1a3d-4f7c-b54d-b4e509748191
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:30 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-93650933-c7ac-ec8e-199c-3bd8ced5843a?restype=container

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
x-ms-request-id: 16b5e558-79f8-4b4c-a0b1-8987485ff770
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

