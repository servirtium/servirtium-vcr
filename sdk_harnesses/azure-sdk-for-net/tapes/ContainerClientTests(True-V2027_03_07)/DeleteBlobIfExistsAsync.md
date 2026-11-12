## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-658051f4-009e-4b35-4899-710a96c0b14f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).DeleteBlobIfExistsAsync
now: 2026-11-12T00:44:41.6065670+00:00

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
etag: "0x267EF4F3C2F2E00"
last-modified: Thu, 12 Nov 2026 00:44:41 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e0251691-1e92-4634-a1b4-30c516ebe12d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:41 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-658051f4-009e-4b35-4899-710a96c0b14f/test-blob-b2c2a624-1629-8aa3-54af-cd2ecb3eb358

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
6ZZ3W+4J/hgNxtNlWHUxYw05+NZpeXrdrvYQ7jMGgArlGCEASVZhG6eqpWNDPTHffWohkkXc728c
maz3+A/lB0bIf0BUMRm3190vv9QXmXDEMXHJ5e7ECCix46+paSKXxZ0ceg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2013E72C9816920"
last-modified: Thu, 12 Nov 2026 00:44:41 GMT
content-md5: GqTlSaJNifjj5i4zG2VXyA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 54044839-27ef-420d-a02b-b1e31d37134a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:41 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-658051f4-009e-4b35-4899-710a96c0b14f/test-blob-b2c2a624-1629-8aa3-54af-cd2ecb3eb358

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
x-ms-request-id: 42b4340c-a40f-48e2-ae4d-d53b16754032
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:41 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-658051f4-009e-4b35-4899-710a96c0b14f/test-blob-b2c2a624-1629-8aa3-54af-cd2ecb3eb358

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
x-ms-error-code: BlobNotFound
x-ms-request-id: 914fe9ff-941e-4451-8630-157cc9b969b1
Date: Thu, 12 Nov 2026 00:44:41 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-658051f4-009e-4b35-4899-710a96c0b14f?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
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
x-ms-request-id: d1c1c19d-fffb-43e7-8d81-b8c749c84bcb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:41 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

