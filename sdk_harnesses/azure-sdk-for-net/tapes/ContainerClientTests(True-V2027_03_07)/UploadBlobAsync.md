## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-09432bd9-1325-a161-c3f2-769d8ae3f3c4?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).UploadBlobAsync
now: 2026-11-12T00:45:11.3704653+00:00

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
etag: "0x1D7C7AD95121A30"
last-modified: Thu, 12 Nov 2026 00:45:11 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7c5bdea6-bf31-4530-980e-c76ffaf90531
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:11 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-09432bd9-1325-a161-c3f2-769d8ae3f3c4/test-blob-1b34ec03-9ba9-6930-d2d9-1b38277b8865

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
ZCp+tMuu+OlPQz/GzdJgp1vargyMCG09+9k2S/gpeUdqEDlgZT/4VfNLzGVbaZwAeHPdTc182Vu8
QLjyd63xJsr4XL2YAEIc4VkYQDsI4pE9NtKESyt67jbdpCSGBt1GWqabYw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24F9D16B58F3080"
last-modified: Thu, 12 Nov 2026 00:45:11 GMT
content-md5: gU08iHzF6Weyjzimc445Mg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9f7b0723-02c9-42a5-8f31-821434bd031c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:11 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-09432bd9-1325-a161-c3f2-769d8ae3f3c4/test-blob-1b34ec03-9ba9-6930-d2d9-1b38277b8865

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
etag: "0x24F9D16B58F3080"
content-md5: gU08iHzF6Weyjzimc445Mg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a96134b6-ed8f-4053-9471-d581da7f9e76
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

## Interaction 3: DELETE /devstoreaccount1/test-container-09432bd9-1325-a161-c3f2-769d8ae3f3c4?restype=container

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
x-ms-request-id: 298b7dca-f871-48ef-b0fb-e98da9b8710e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:11 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

