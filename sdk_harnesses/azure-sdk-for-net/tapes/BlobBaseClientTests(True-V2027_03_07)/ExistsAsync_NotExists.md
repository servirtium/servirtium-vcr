## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-71445ac3-a818-91a6-cc5a-7214b6aaecaa?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).ExistsAsync_NotExists
now: 2026-11-12T00:48:01.6617939+00:00

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
etag: "0x2017AD932D61A40"
last-modified: Thu, 12 Nov 2026 00:48:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9cc1f680-8bfd-45df-a32d-776a79631a35
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: HEAD /devstoreaccount1/test-container-71445ac3-a818-91a6-cc5a-7214b6aaecaa/test-blob-bae5bb87-3014-0794-b6ff-1a3d9f1ae9e5

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: BlobNotFound
x-ms-request-id: 3829c160-f07c-4fdc-8fe1-42dc94b20f6d
Date: Thu, 12 Nov 2026 00:48:01 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-71445ac3-a818-91a6-cc5a-7214b6aaecaa?restype=container

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
x-ms-request-id: 7902e94a-067b-41b0-9776-18e93069b6b5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

