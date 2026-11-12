## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-53a19627-dcc2-37f5-20f2-8ae2a88a13a5?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).CreateAsync_EncryptionScope
now: 2026-11-12T00:50:34.3236014+00:00

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
etag: "0x21B5E90C3066180"
last-modified: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 66f5607e-8ef1-4bc4-8486-a469d28ed974
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-53a19627-dcc2-37f5-20f2-8ae2a88a13a5/test-blob-91c4fb55-1430-10ba-bf30-ce518fe9457b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
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
etag: "0x1E6D1AD5AF2BD50"
last-modified: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 54dbcbd6-6eac-4da5-ad66-c58defd44478
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-53a19627-dcc2-37f5-20f2-8ae2a88a13a5?restype=container

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
x-ms-request-id: ede1c9a6-e2e8-4892-a82a-a3f709dc92de
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

