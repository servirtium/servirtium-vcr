## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d1f891ed-345f-2f21-11d8-d53216ed3888?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetPropertiesAsync_EncryptionScope
now: 2026-11-12T00:48:10.1370551+00:00

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
etag: "0x2404B512B43D440"
last-modified: Thu, 12 Nov 2026 00:48:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2d5d150a-20e9-4bd5-9336-95160bfd36a6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:10 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d1f891ed-345f-2f21-11d8-d53216ed3888/test-blob-ef547207-7262-87f5-b0ce-972624b79e99

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
etag: "0x26AAD1AA47259E0"
last-modified: Thu, 12 Nov 2026 00:48:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ecc26de0-acf2-4a65-bbc3-4026606b22a7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:10 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-d1f891ed-345f-2f21-11d8-d53216ed3888/test-blob-ef547207-7262-87f5-b0ce-972624b79e99

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
last-modified: Thu, 12 Nov 2026 00:48:10 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:10 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x26AAD1AA47259E0"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5c1ba981-9224-432e-8771-570b46b3a6d5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:10 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-d1f891ed-345f-2f21-11d8-d53216ed3888?restype=container

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
x-ms-request-id: b83dc8e7-518d-4d95-b072-47ce49e62ff3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:10 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

