## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d5e06d3b-5d86-de09-5dac-8ed632638d4b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).UploadAsync_EncryptionScope
now: 2026-11-12T00:50:11.8702465+00:00

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
etag: "0x26EF0F2B9DE7820"
last-modified: Thu, 12 Nov 2026 00:50:11 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4a579669-e31f-4635-8587-5eff18dc6caa
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:11 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d5e06d3b-5d86-de09-5dac-8ed632638d4b/test-blob-011005f3-243b-ddd4-750e-71b483014fdf

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24402CE1E7346C0"
last-modified: Thu, 12 Nov 2026 00:50:11 GMT
content-md5: /eQoH7jC2DJfPVT1G/sW2A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6398f9a3-1f95-4300-8375-180c74104221
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:11 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-d5e06d3b-5d86-de09-5dac-8ed632638d4b?restype=container

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
x-ms-request-id: 89c1a3ff-d57b-415f-bffc-1df78891827a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:11 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

