## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-aa31d3f9-09aa-0b9e-2a0b-a5bac678b320?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SetMetadataAsync_EncryptionScope
now: 2026-11-12T00:48:23.7389315+00:00

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
etag: "0x2698C3C0DD9AD60"
last-modified: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: be2ceb28-02ab-4da3-b720-0f47a4615adf
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-aa31d3f9-09aa-0b9e-2a0b-a5bac678b320/test-blob-5c50a6e2-3ebd-9ba8-94b9-a9d60dedf8d0

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
etag: "0x21929DECFEB05E0"
last-modified: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 472bfe67-01df-4ef8-ba14-9dfebc370a48
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-aa31d3f9-09aa-0b9e-2a0b-a5bac678b320/test-blob-5c50a6e2-3ebd-9ba8-94b9-a9d60dedf8d0?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
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
etag: "0x26707946526F540"
last-modified: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d3b0d31e-766a-4ae0-a26c-ccc24b279225
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-aa31d3f9-09aa-0b9e-2a0b-a5bac678b320?restype=container

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
x-ms-request-id: 21eed6db-6a8f-4973-bb96-0f8fc5d324d4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:23 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

