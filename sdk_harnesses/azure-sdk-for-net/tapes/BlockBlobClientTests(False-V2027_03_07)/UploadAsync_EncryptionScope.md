## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b25eb813-135c-ccdb-5e5b-579d1e17ccec?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).UploadAsync_EncryptionScope
now: 2026-11-12T00:49:49.5184599+00:00

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
etag: "0x1F9DC9233FD53C0"
last-modified: Thu, 12 Nov 2026 00:49:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e88b3c25-413f-4f0c-939e-c5d2afce65f8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:49 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b25eb813-135c-ccdb-5e5b-579d1e17ccec/test-blob-e91dc3bc-bba9-e2ca-8083-5fd609ee7e13

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
etag: "0x22BB2360120D340"
last-modified: Thu, 12 Nov 2026 00:49:49 GMT
content-md5: lMQLg73UqhunlZE/9X2/Jw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2329c423-5309-4ab7-a51c-5ebae76d3407
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-b25eb813-135c-ccdb-5e5b-579d1e17ccec?restype=container

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
x-ms-request-id: 91c0c00d-3d9b-4b35-b15a-9937273d988b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:49 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

