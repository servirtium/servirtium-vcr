## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0bf94370-4055-ab99-9c07-bc1487febf32?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadAsync_ZeroSizeBlob_BinaryData
now: 2026-11-12T00:47:57.8989057+00:00

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
etag: "0x273675CD787FE80"
last-modified: Thu, 12 Nov 2026 00:47:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e1288666-e8bf-47a1-b8de-b5edcc27f918
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0bf94370-4055-ab99-9c07-bc1487febf32/test-blob-00d8e13f-3787-3f96-431c-bfe4aa695879

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x262DDDB54278660"
last-modified: Thu, 12 Nov 2026 00:47:57 GMT
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 219f9b5f-96c0-4504-909a-37b8b669a488
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-0bf94370-4055-ab99-9c07-bc1487febf32/test-blob-00d8e13f-3787-3f96-431c-bfe4aa695879

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:47:57 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:57 GMT
content-length: 0
content-type: application/octet-stream
etag: "0x262DDDB54278660"
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 465560ac-1d0c-4155-82ab-115c0fbafc5c
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:57 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-0bf94370-4055-ab99-9c07-bc1487febf32?restype=container

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
x-ms-request-id: 599415e4-54c0-41d3-93b2-3c59ce73b6ae
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

