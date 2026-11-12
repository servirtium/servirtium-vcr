## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-59d6da61-70e0-ce30-bd66-bbc5ea1dccd2?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).CreateAsync_Headers
now: 2026-11-12T00:51:15.4543543+00:00

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
etag: "0x1E599F5F5CDE1C0"
last-modified: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 47b5b6ca-4d2c-4ce8-8842-89c0835a02f8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-59d6da61-70e0-ce30-bd66-bbc5ea1dccd2/test-blob-c52e9d3b-388f-9957-e2c8-6409e2e8cbb5

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-cache-control: control
x-ms-blob-content-disposition: disposition
x-ms-blob-content-encoding: encoding
x-ms-blob-content-language: language
x-ms-blob-content-length: 1024
x-ms-blob-content-md5: F1/jnXiKNl03H3WxgFwIvA==
x-ms-blob-content-type: type
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
etag: "0x239F030C4182200"
last-modified: Thu, 12 Nov 2026 00:51:15 GMT
content-md5: F1/jnXiKNl03H3WxgFwIvA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ac001f07-99e1-471a-b4f6-ea04c541e4bc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-59d6da61-70e0-ce30-bd66-bbc5ea1dccd2/test-blob-c52e9d3b-388f-9957-e2c8-6409e2e8cbb5

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
last-modified: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: type
etag: "0x239F030C4182200"
content-md5: F1/jnXiKNl03H3WxgFwIvA==
content-encoding: encoding
content-disposition: disposition
content-language: language
cache-control: control
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fe729f3c-6a07-4209-bf28-2c8fb271e6de
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:15 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: type):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-59d6da61-70e0-ce30-bd66-bbc5ea1dccd2?restype=container

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
x-ms-request-id: d81d8b0c-d73e-4364-b3b2-7cbc89855725
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

