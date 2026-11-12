## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2d27082e-e55f-af3f-7620-a5d4ed9b7a5a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GenerateSas_TrimBlobSlashes
now: 2026-11-12T00:46:48.9992747+00:00

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
etag: "0x23FDF988D7D8200"
last-modified: Thu, 12 Nov 2026 00:46:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c7d3db06-6578-4088-a5c5-78d5a1e10b22
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:49 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-2d27082e-e55f-af3f-7620-a5d4ed9b7a5a//test-blob-b2aa007e-6393-8079-fee7-4ce61fa5d1c8

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
etag: "0x25D41A857DE5880"
last-modified: Thu, 12 Nov 2026 00:46:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cb86af16-8343-4c48-8a1b-a7ee1960ba98
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-2d27082e-e55f-af3f-7620-a5d4ed9b7a5a//test-blob-b2aa007e-6393-8079-fee7-4ce61fa5d1c8?sv=2027-03-07&se=2026-11-12T01%3A46%3A48Z&sr=b&sp=r&sig=EhXw62Gdzt2CkCwc7b860KjHdvZrbEohOc%2Fzp72nm3c%3D

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
last-modified: Thu, 12 Nov 2026 00:46:49 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:49 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x25D41A857DE5880"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d70c0d7a-1014-4b66-9664-47a4e233b012
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:49 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-2d27082e-e55f-af3f-7620-a5d4ed9b7a5a?restype=container

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
x-ms-request-id: c94cd21f-95c8-4511-a19b-a4b54368ce31
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:49 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

