## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-23746699-a8d3-0d42-99bf-98a0921fe012?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadAsync_ZeroSizeBlob_Streaming
now: 2026-11-12T00:46:42.9246824+00:00

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
etag: "0x1CCA483AF71B640"
last-modified: Thu, 12 Nov 2026 00:46:42 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7fe91e79-73b2-4987-b247-bab159bd3657
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:42 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-23746699-a8d3-0d42-99bf-98a0921fe012/test-blob-d2f07aba-7aa8-8cbc-89a0-25ae077878bd

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
etag: "0x21CE2F8FEC6C200"
last-modified: Thu, 12 Nov 2026 00:46:42 GMT
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bb74cdec-6575-434f-abb4-9696b3b429fc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:42 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-23746699-a8d3-0d42-99bf-98a0921fe012/test-blob-d2f07aba-7aa8-8cbc-89a0-25ae077878bd

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
last-modified: Thu, 12 Nov 2026 00:46:42 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:42 GMT
content-length: 0
content-type: application/octet-stream
etag: "0x21CE2F8FEC6C200"
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a23ffea4-547a-4090-97a2-68ced669fc6b
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:42 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-23746699-a8d3-0d42-99bf-98a0921fe012?restype=container

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
x-ms-request-id: 1060e20e-50ce-4158-b15f-2fb3ffbae02c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:42 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

