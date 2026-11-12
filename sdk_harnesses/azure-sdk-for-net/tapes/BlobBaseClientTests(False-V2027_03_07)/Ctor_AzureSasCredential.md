## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b37f0c56-afa1-c8d1-6d13-da08e13f0e48?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).Ctor_AzureSasCredential
now: 2026-11-12T00:46:26.6268971+00:00

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
etag: "0x1C21FA6B3E402F0"
last-modified: Thu, 12 Nov 2026 00:46:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6afb1d0d-8699-4723-af44-09fc5884f977
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:26 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b37f0c56-afa1-c8d1-6d13-da08e13f0e48/test-blob-c2676833-7938-3c9a-8094-ecf5bbdc6dd2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
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
etag: "0x206EFDD9F248B60"
last-modified: Thu, 12 Nov 2026 00:46:26 GMT
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c0a69c6a-4b41-4a60-9900-1208640237ab
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:26 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-b37f0c56-afa1-c8d1-6d13-da08e13f0e48/test-blob-c2676833-7938-3c9a-8094-ecf5bbdc6dd2?sv=2027-03-07&st=2026-11-11T23%3A46%3A26Z&se=2026-11-12T01%3A46%3A26Z&sr=c&sp=racwdxltfi&sig=zWzpA4kYi8uS6KaxEmnEN5Qe%2BmfKz%2FWDk1q5VeZr8tQ%3D

### Request headers recorded for playback:

```
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:26 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:26 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x206EFDD9F248B60"
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 43b9ce12-8fbb-4c2c-900c-bcef6bcc0b28
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:26 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:26 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-b37f0c56-afa1-c8d1-6d13-da08e13f0e48?restype=container

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
x-ms-request-id: 539d834b-0c6f-483e-911c-902e4e026af7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:26 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

