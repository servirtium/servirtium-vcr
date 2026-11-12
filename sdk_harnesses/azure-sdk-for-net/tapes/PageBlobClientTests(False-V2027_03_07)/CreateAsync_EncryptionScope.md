## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3ed4390a-11ca-c9b7-5b1a-5946b9ed3878?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).CreateAsync_EncryptionScope
now: 2026-11-12T00:51:15.2501496+00:00

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
etag: "0x238105F0F1EE0E0"
last-modified: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 24310e92-de8d-4a3f-a280-2341fdb3a1df
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-3ed4390a-11ca-c9b7-5b1a-5946b9ed3878/test-blob-2d5f64a7-f6f9-b8c6-749a-62a27d8b3a2e

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
etag: "0x22086E326841AA0"
last-modified: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3314624c-0b2c-42cf-9add-cde5e48412c5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-3ed4390a-11ca-c9b7-5b1a-5946b9ed3878?restype=container

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
x-ms-request-id: f5ec1f79-ce74-4a5c-8306-a1c1e6712ddc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

