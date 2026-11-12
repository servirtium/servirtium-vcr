## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-03a5ac94-daf2-b6ab-7af0-d4079fb717bc?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).StartCopyFromUriAsync_Seal
now: 2026-11-12T00:47:16.8230938+00:00

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
etag: "0x27688B0833EC7C0"
last-modified: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 09741693-0e3c-4043-939e-0483551b9f50
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-03a5ac94-daf2-b6ab-7af0-d4079fb717bc/test-blob-b7bbd1ec-479c-2363-6a13-cc383ce9e48a

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
etag: "0x271D7827EFDC4A0"
last-modified: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f6271c37-fd24-4436-8af5-69c1e41208b6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-03a5ac94-daf2-b6ab-7af0-d4079fb717bc/test-blob-628c87d1-af36-164c-eec2-b4d3eb242873

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-03a5ac94-daf2-b6ab-7af0-d4079fb717bc/test-blob-b7bbd1ec-479c-2363-6a13-cc383ce9e48a
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
etag: "0x233022566EAA6C0"
last-modified: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 380df529-674e-43cd-a094-f618a7e34c25
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-copy-id: 6a541bb9-c1d6-4177-8bcd-71138603f74e
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-03a5ac94-daf2-b6ab-7af0-d4079fb717bc/test-blob-628c87d1-af36-164c-eec2-b4d3eb242873

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
last-modified: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-blob-type: AppendBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-copy-id: 6a541bb9-c1d6-4177-8bcd-71138603f74e
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-03a5ac94-daf2-b6ab-7af0-d4079fb717bc/test-blob-b7bbd1ec-479c-2363-6a13-cc383ce9e48a
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x233022566EAA6C0"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 96500713-447a-433b-8b48-f7779043c653
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:16 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: HEAD /devstoreaccount1/test-container-03a5ac94-daf2-b6ab-7af0-d4079fb717bc/test-blob-628c87d1-af36-164c-eec2-b4d3eb242873

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
last-modified: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-blob-type: AppendBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-copy-id: 6a541bb9-c1d6-4177-8bcd-71138603f74e
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-03a5ac94-daf2-b6ab-7af0-d4079fb717bc/test-blob-b7bbd1ec-479c-2363-6a13-cc383ce9e48a
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x233022566EAA6C0"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: aec7f2c0-8d03-4010-b9f8-70e1c8f10ed3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:16 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-03a5ac94-daf2-b6ab-7af0-d4079fb717bc?restype=container

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
x-ms-request-id: d008e7dd-72e0-483d-8791-7d99f3c13707
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

