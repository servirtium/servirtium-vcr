## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f3d7d863-ca0d-bcc6-36c4-28635f4adb16?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).CreateIfNotExistsAsync
now: 2026-11-12T00:51:47.1423325+00:00

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
etag: "0x1C3647283639790"
last-modified: Thu, 12 Nov 2026 00:51:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a81677b6-88f2-45c6-a746-68c03d4e5748
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:47 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f3d7d863-ca0d-bcc6-36c4-28635f4adb16/test-blob-f4a64432-a925-3e6e-dfaa-5468bdfea882

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2380B7A50D69C00"
last-modified: Thu, 12 Nov 2026 00:51:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c50ca572-ea82-42dd-99e2-cd5cbe074d32
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-f3d7d863-ca0d-bcc6-36c4-28635f4adb16?restype=container

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
x-ms-request-id: dbe0ece1-b619-4565-8f68-cad231be3f79
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:47 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

