## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e725bfe1-75aa-5998-64a1-e10a359aa555?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).Ctor_AzureSasCredential
now: 2026-11-12T00:51:17.8263583+00:00

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
etag: "0x1CF1DC35F9E7300"
last-modified: Thu, 12 Nov 2026 00:51:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 968fe22c-0352-4b85-affd-1ab96f34ddca
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-e725bfe1-75aa-5998-64a1-e10a359aa555/test-blob-3bd0614a-f8fd-9cb5-e86f-b9a8d55aecb2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
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
etag: "0x2604DCB80B02F80"
last-modified: Thu, 12 Nov 2026 00:51:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 830f8b07-474b-4833-86ef-f4f845b4ff1f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-e725bfe1-75aa-5998-64a1-e10a359aa555/test-blob-3bd0614a-f8fd-9cb5-e86f-b9a8d55aecb2?sv=2027-03-07&st=2026-11-11T23%3A51%3A17Z&se=2026-11-12T01%3A51%3A17Z&sr=c&sp=racwdxltfi&sig=c19QTKCP3Sd5uA93T3qCI3DBfmUhtT5YVstmV%2FH1hHA%3D

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
last-modified: Thu, 12 Nov 2026 00:51:17 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:17 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2604DCB80B02F80"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 742111b9-0e79-4c53-850b-a3c68eac96a2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:17 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-e725bfe1-75aa-5998-64a1-e10a359aa555?restype=container

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
x-ms-request-id: d2c5b006-c3c0-4007-96c2-3f22c96caaa1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

