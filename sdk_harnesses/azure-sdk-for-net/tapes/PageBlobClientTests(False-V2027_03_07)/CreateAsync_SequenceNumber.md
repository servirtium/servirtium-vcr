## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-336f1b46-ef80-3e4a-45f9-6658631197db?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).CreateAsync_SequenceNumber
now: 2026-11-12T00:51:16.7374495+00:00

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
etag: "0x1F8C8C3535EB820"
last-modified: Thu, 12 Nov 2026 00:51:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a5d1c330-8a76-4617-bf95-df16c80ab8e3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-336f1b46-ef80-3e4a-45f9-6658631197db/test-blob-519860e8-0c4c-d429-be3e-6cef2a27973e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 2
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x248B59F5A4AD8C0"
last-modified: Thu, 12 Nov 2026 00:51:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e31e7cca-6aa7-4f1f-a989-b51e7258c3f7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-336f1b46-ef80-3e4a-45f9-6658631197db/test-blob-519860e8-0c4c-d429-be3e-6cef2a27973e

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
last-modified: Thu, 12 Nov 2026 00:51:16 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:16 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x248B59F5A4AD8C0"
x-ms-blob-sequence-number: 2
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e074fed5-ffe8-4171-b7c4-e05396e32211
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:16 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-336f1b46-ef80-3e4a-45f9-6658631197db?restype=container

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
x-ms-request-id: 7aa16eb6-452a-4b74-9ea8-a18f4da3a20f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

