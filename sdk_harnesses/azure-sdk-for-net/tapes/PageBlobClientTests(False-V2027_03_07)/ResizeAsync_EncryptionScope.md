## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-94b17b28-5344-038d-7f34-eb7bde57d5fb?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).ResizeAsync_EncryptionScope
now: 2026-11-12T00:51:28.6106046+00:00

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
etag: "0x2718108C296C360"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2ec596e8-2a4f-4118-920f-bbc617f6ad4b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-94b17b28-5344-038d-7f34-eb7bde57d5fb/test-blob-a6a4fe15-49ad-dd64-0cd5-43b750010103

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
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
etag: "0x210143AFFE889C0"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fc4605ce-1581-47ae-923f-b217f76cce22
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-94b17b28-5344-038d-7f34-eb7bde57d5fb/test-blob-a6a4fe15-49ad-dd64-0cd5-43b750010103?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-blob-content-length: 8192
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C6D902BC529280"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f548042f-2ec3-46a0-b503-8921d35e521c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-94b17b28-5344-038d-7f34-eb7bde57d5fb?restype=container

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
x-ms-request-id: c73e0277-fccf-4c24-b668-308c21f33328
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

