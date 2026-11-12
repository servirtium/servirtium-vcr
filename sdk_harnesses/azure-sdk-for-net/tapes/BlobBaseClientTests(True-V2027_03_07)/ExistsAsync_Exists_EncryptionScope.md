## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-cc76ebe1-afb6-dad8-8bb4-e82ffb4a4d53?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).ExistsAsync_Exists_EncryptionScope
now: 2026-11-12T00:48:01.4360568+00:00

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
etag: "0x1EBDE3D8DF87E00"
last-modified: Thu, 12 Nov 2026 00:48:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d1ce9400-15b6-4aff-b420-4e31439b59e2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-cc76ebe1-afb6-dad8-8bb4-e82ffb4a4d53/test-blob-d148f2a0-3ea9-69b9-f402-3dd88b132e02

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
etag: "0x22A9B1FB9F4E700"
last-modified: Thu, 12 Nov 2026 00:48:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 11625e26-3afe-4c02-9c9d-2e70d874a15c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-cc76ebe1-afb6-dad8-8bb4-e82ffb4a4d53/test-blob-d148f2a0-3ea9-69b9-f402-3dd88b132e02

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
last-modified: Thu, 12 Nov 2026 00:48:01 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:01 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x22A9B1FB9F4E700"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0f6b21c4-3c4b-42ee-ae58-b08641804595
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:01 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-cc76ebe1-afb6-dad8-8bb4-e82ffb4a4d53?restype=container

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
x-ms-request-id: 73df0e97-f493-4c58-b8ea-e64f210e3c70
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

