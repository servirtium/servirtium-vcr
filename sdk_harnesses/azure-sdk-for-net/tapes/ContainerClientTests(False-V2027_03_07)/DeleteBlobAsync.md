## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4947c460-1a4b-e33a-a1cc-e77c43cffb7e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).DeleteBlobAsync
now: 2026-11-12T00:43:35.9858593+00:00

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
etag: "0x1F372B6E408BD40"
last-modified: Thu, 12 Nov 2026 00:43:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bf8ee1d4-c5c4-4081-8718-fe5a5faa4ccb
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4947c460-1a4b-e33a-a1cc-e77c43cffb7e/test-blob-18088f13-d601-2233-a738-8521cb050870

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
GpPtLRJITgs8BZGXpiQ09hoyCKEaiPuKkSSiEpQYF5zDd2Gw4s1rykH93PxEm3yCA48GmPxnVpKX
Ypzupjt2I+311C/ChBRNxz1gHKz+RfanHw4FEX6fXCHOGH8xfSQFh7gPTw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x262517A8C4E6C40"
last-modified: Thu, 12 Nov 2026 00:43:36 GMT
content-md5: ekh9KbgEFpIEyAE/wN6s9w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 57219953-6bb7-4976-870e-afb8c2f8abb8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-4947c460-1a4b-e33a-a1cc-e77c43cffb7e/test-blob-18088f13-d601-2233-a738-8521cb050870

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
x-ms-request-id: 814df19d-a852-43f0-8c65-8e3b20d09e75
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:36 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-4947c460-1a4b-e33a-a1cc-e77c43cffb7e/test-blob-18088f13-d601-2233-a738-8521cb050870

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
x-ms-request-id: cea321dd-fd1a-4d80-9056-f8cd858c00ae
Date: Thu, 12 Nov 2026 00:43:36 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-4947c460-1a4b-e33a-a1cc-e77c43cffb7e?restype=container

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
x-ms-request-id: 85bbbc6f-254c-40b7-982a-fd54ef74a8be
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

