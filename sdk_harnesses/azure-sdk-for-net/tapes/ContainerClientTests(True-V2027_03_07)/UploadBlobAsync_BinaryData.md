## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-fcf5cbf9-7778-e5b7-38ab-9af30b2f47ec?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).UploadBlobAsync_BinaryData
now: 2026-11-12T00:45:11.5893082+00:00

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
etag: "0x1FE824E73CA7D00"
last-modified: Thu, 12 Nov 2026 00:45:11 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b85bf1b3-3e9f-46e3-91f4-04267a563ece
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:11 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-fcf5cbf9-7778-e5b7-38ab-9af30b2f47ec/test-blob-0d95795e-2021-7703-e1a9-733e8fe495f0

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
jdv2KCs7y6kQ3OssW7RnD9a7JxCGrLbYx30bzwR4VlMVqmUvOB/BI63r/UQ01xwsQWNn1LyFaeEl
HWGuIPyll4aYF7BON9e3+QRimq9ypPBg7o2hEIGWj0CEChq+EwOxRma9nA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F1FB5A42E23FC0"
last-modified: Thu, 12 Nov 2026 00:45:11 GMT
content-md5: 3z2dvaNgLt76SF2C2TpLag==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: be558e28-eba5-4b95-8b8e-e4c4a02e61a7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:11 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-fcf5cbf9-7778-e5b7-38ab-9af30b2f47ec/test-blob-0d95795e-2021-7703-e1a9-733e8fe495f0

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
last-modified: Thu, 12 Nov 2026 00:45:11 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:45:11 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 100
content-type: application/octet-stream
etag: "0x1F1FB5A42E23FC0"
content-md5: 3z2dvaNgLt76SF2C2TpLag==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9d964010-b32d-4194-a00a-707ee5f5a2f3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:11 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:45:11 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-fcf5cbf9-7778-e5b7-38ab-9af30b2f47ec?restype=container

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
x-ms-request-id: 9824f7ae-360e-4164-8bd5-30f8f897181f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:11 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

