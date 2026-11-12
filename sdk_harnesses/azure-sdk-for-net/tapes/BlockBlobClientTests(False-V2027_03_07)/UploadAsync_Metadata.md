## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d04dcf44-cdcb-7131-49ed-2a1ef349a2a9?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).UploadAsync_Metadata
now: 2026-11-12T00:49:50.6850280+00:00

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
etag: "0x1EF71D243C31F00"
last-modified: Thu, 12 Nov 2026 00:49:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 817ef1ef-6599-4fc2-b4fd-436967c7dd38
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d04dcf44-cdcb-7131-49ed-2a1ef349a2a9/test-blob-83fff847-7030-b15f-68d4-a8d2c309a1c3

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
etag: "0x24146A8BED362A0"
last-modified: Thu, 12 Nov 2026 00:49:50 GMT
content-md5: 5lvocVVBukYLrJDBUjML9Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: db8d168e-fc8a-4e12-9db3-cf5e0a4e4eae
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-d04dcf44-cdcb-7131-49ed-2a1ef349a2a9/test-blob-83fff847-7030-b15f-68d4-a8d2c309a1c3

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
last-modified: Thu, 12 Nov 2026 00:49:50 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:50 GMT
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-Capital: letter
x-ms-meta-UPPER: case
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x24146A8BED362A0"
content-md5: 5lvocVVBukYLrJDBUjML9Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e0cae02f-6a90-42a6-871c-1d8ffcecd859
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:50 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:50 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-d04dcf44-cdcb-7131-49ed-2a1ef349a2a9?restype=container

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
x-ms-request-id: 5e2ee71b-68e1-4fbc-8b6c-88fcb117813e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

