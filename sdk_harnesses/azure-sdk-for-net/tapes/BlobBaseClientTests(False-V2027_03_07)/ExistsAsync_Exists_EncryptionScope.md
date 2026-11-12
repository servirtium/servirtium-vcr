## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-adde62f6-b397-bd0f-81be-6ca5b28775c7?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).ExistsAsync_Exists_EncryptionScope
now: 2026-11-12T00:46:46.3297212+00:00

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
etag: "0x235F0E1882CC820"
last-modified: Thu, 12 Nov 2026 00:46:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 835d0f76-af96-4cf8-acee-10270c805039
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-adde62f6-b397-bd0f-81be-6ca5b28775c7/test-blob-d5b4b555-70c9-f681-08a1-fcd6dadb3208

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
etag: "0x2672D1BA52BDCE0"
last-modified: Thu, 12 Nov 2026 00:46:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1af58b8f-a196-46c0-b990-38c5dfd9f84d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-adde62f6-b397-bd0f-81be-6ca5b28775c7/test-blob-d5b4b555-70c9-f681-08a1-fcd6dadb3208

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
last-modified: Thu, 12 Nov 2026 00:46:46 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:46 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x2672D1BA52BDCE0"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6c17f624-9e4f-4b2c-a6a2-e007d2cd0b64
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:46 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-adde62f6-b397-bd0f-81be-6ca5b28775c7?restype=container

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
x-ms-request-id: ab52b907-5791-421d-8816-411094bbd029
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

