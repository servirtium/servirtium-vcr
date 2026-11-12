## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-6083d679-67b7-70c1-6184-3daca263885d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).CreateSnapshotAsync_EncryptionScope
now: 2026-11-12T00:47:41.0216541+00:00

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
etag: "0x20E22711AAE7F00"
last-modified: Thu, 12 Nov 2026 00:47:41 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1ae75441-cd1a-4cea-8f55-6b3c639970aa
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:41 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-6083d679-67b7-70c1-6184-3daca263885d/test-blob-b89d1036-512e-ebf1-4261-547279e44172

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
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
etag: "0x26F20438AE25880"
last-modified: Thu, 12 Nov 2026 00:47:41 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8e6d7983-3023-4aad-a57e-45bccae74371
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:41 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-6083d679-67b7-70c1-6184-3daca263885d/test-blob-b89d1036-512e-ebf1-4261-547279e44172?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:47:41.0480000Z
etag: "0x26F20438AE25880"
last-modified: Thu, 12 Nov 2026 00:47:41 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3fc562bb-1a6e-4e0c-ae42-8afadc4e0a10
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:41 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-6083d679-67b7-70c1-6184-3daca263885d?restype=container

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
x-ms-request-id: c14cc29f-ef23-4b17-bd60-3deeb3cb6fe2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:41 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

