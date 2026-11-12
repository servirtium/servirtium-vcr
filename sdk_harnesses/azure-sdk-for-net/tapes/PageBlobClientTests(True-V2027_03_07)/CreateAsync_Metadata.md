## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-6a16d4ff-6450-e19f-a04b-39d84f88aaf6?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).CreateAsync_Metadata
now: 2026-11-12T00:51:46.0856639+00:00

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
etag: "0x261809EDA3586A0"
last-modified: Thu, 12 Nov 2026 00:51:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a5565137-6657-4e14-a56b-bb492a7d5bc6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-6a16d4ff-6450-e19f-a04b-39d84f88aaf6/test-blob-9643e475-f1fc-9e3d-cbc5-cff52c97e556

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
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
etag: "0x250297A2F6C4A00"
last-modified: Thu, 12 Nov 2026 00:51:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 89449f5f-1665-4b3b-a18a-69be37040397
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-6a16d4ff-6450-e19f-a04b-39d84f88aaf6/test-blob-9643e475-f1fc-9e3d-cbc5-cff52c97e556

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
last-modified: Thu, 12 Nov 2026 00:51:46 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:46 GMT
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-Capital: letter
x-ms-meta-UPPER: case
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x250297A2F6C4A00"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0c9c41f4-31e3-4163-8a0d-50318f827550
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:46 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-6a16d4ff-6450-e19f-a04b-39d84f88aaf6?restype=container

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
x-ms-request-id: c98cc8c9-a21e-4448-b309-590b01a8f0c0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

