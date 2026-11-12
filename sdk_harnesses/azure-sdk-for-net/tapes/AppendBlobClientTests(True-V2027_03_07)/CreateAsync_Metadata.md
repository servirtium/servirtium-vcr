## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-96da222c-1145-98c7-2c16-2de68df20c26?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).CreateAsync_Metadata
now: 2026-11-12T00:50:50.7921550+00:00

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
etag: "0x236AE3795036A00"
last-modified: Thu, 12 Nov 2026 00:50:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 341a0717-79fb-4870-8a5b-dee944cd31d8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-96da222c-1145-98c7-2c16-2de68df20c26/test-blob-b991ccb0-e851-87f2-a29f-aaf39719dc5d

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-type: AppendBlob
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25FB2BFBD51AFC0"
last-modified: Thu, 12 Nov 2026 00:50:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5e82ae87-d96e-4910-854a-3d688ecdf6fe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-96da222c-1145-98c7-2c16-2de68df20c26/test-blob-b991ccb0-e851-87f2-a29f-aaf39719dc5d

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
last-modified: Thu, 12 Nov 2026 00:50:50 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:50 GMT
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-Capital: letter
x-ms-meta-UPPER: case
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x25FB2BFBD51AFC0"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 82207177-26af-47d4-8659-64743e1d02bc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:50 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-96da222c-1145-98c7-2c16-2de68df20c26?restype=container

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
x-ms-request-id: ea4cbe7a-30b5-46ae-937a-c242bf836c02
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

