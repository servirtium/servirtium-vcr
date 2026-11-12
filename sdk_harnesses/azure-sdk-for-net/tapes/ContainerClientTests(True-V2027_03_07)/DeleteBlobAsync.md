## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4a59a787-f4da-1656-46a4-b99d396a0b9a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).DeleteBlobAsync
now: 2026-11-12T00:44:41.3273409+00:00

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
etag: "0x22DEBC4838EB320"
last-modified: Thu, 12 Nov 2026 00:44:41 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 64023b33-9e42-4540-88d3-f5ef9e55b040
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:41 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4a59a787-f4da-1656-46a4-b99d396a0b9a/test-blob-88f58d0c-7bff-7f8a-efe4-c987398c9dcf

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
XQJP7evWE/RljltJkitppDoyt+NbGBgMHNpa9irO3bkH6kA3Gh2vNXkAI3AfQOzEeyVNBtS5c0Tp
Q9EQex3JlrGhQqjqMYkcg4FpWvWn7NztlnoFgdblTXf7TddMnrlcN4y/fQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21B531D327764A0"
last-modified: Thu, 12 Nov 2026 00:44:41 GMT
content-md5: g4g6O5QfnQuE2pn9rqMbbw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 64b13285-1a17-4893-abe5-1c4c9a5cc128
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:41 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-4a59a787-f4da-1656-46a4-b99d396a0b9a/test-blob-88f58d0c-7bff-7f8a-efe4-c987398c9dcf

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
x-ms-request-id: f289caca-4970-43a1-9b02-d1cb3c558a74
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:41 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-4a59a787-f4da-1656-46a4-b99d396a0b9a/test-blob-88f58d0c-7bff-7f8a-efe4-c987398c9dcf

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
x-ms-request-id: bc147a8f-e929-4962-97c5-db5db19ad8a5
Date: Thu, 12 Nov 2026 00:44:41 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-4a59a787-f4da-1656-46a4-b99d396a0b9a?restype=container

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
x-ms-request-id: bbfc64b3-30a3-4cda-8ad7-e28f4b563399
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:41 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

