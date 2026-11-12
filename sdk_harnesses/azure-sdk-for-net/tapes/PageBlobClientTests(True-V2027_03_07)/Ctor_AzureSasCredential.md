## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7a6bae16-5ab5-d0ff-499e-c4503e400820?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).Ctor_AzureSasCredential
now: 2026-11-12T00:51:47.7859631+00:00

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
etag: "0x27873F5119FFFE0"
last-modified: Thu, 12 Nov 2026 00:51:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b1dbc2dd-30fe-4c10-b504-bf654f67ef6f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:47 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7a6bae16-5ab5-d0ff-499e-c4503e400820/test-blob-21a034f1-7edd-922b-22c0-a8742535fe81

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-content-length: 1024
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
etag: "0x20F44F68D290780"
last-modified: Thu, 12 Nov 2026 00:51:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c93366e7-9f81-41ee-8d84-31b1a3e05b0f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-7a6bae16-5ab5-d0ff-499e-c4503e400820/test-blob-21a034f1-7edd-922b-22c0-a8742535fe81?sv=2027-03-07&st=2026-11-11T23%3A51%3A47Z&se=2026-11-12T01%3A51%3A47Z&sr=c&sp=racwdxltfi&sig=jdtO7jIxHdiuTmbTceudUOwqSxJ4xtMboUEOlYyNZ2s%3D

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
last-modified: Thu, 12 Nov 2026 00:51:47 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:47 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x20F44F68D290780"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2fb46cf2-e7a1-4a5b-82d3-629746a4bfee
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:47 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-7a6bae16-5ab5-d0ff-499e-c4503e400820?restype=container

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
x-ms-request-id: e205efcc-ae2f-4365-8992-d64a09994038
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:47 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

