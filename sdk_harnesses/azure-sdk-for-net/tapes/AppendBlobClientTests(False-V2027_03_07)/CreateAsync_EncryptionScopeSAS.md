## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-15301895-2959-238a-daa9-d0fe5a9c9485?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).CreateAsync_EncryptionScopeSAS
now: 2026-11-12T00:50:34.9409507+00:00

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
etag: "0x20EDC81D6FF68A0"
last-modified: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e1697c6c-c745-4bbe-bbf8-6891e0b82da2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-15301895-2959-238a-daa9-d0fe5a9c9485/test-blob-ec637d09-b410-96c1-0d38-cc6540973f4a?sv=2027-03-07&se=2026-11-13T00%3A50%3A34Z&sr=b&sp=racwdxyltmei&sig=8zMRC0PCm7bF5ztbdSsEHqNBGyUI95JXd0Frt0Ay730%3D

### Request headers recorded for playback:

```
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F39D2D607B4000"
last-modified: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6dee7a76-f745-4c18-a8ce-aed037cb3d2d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-15301895-2959-238a-daa9-d0fe5a9c9485?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cf880386-fd19-4576-a14d-bdc837bd1f99
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

