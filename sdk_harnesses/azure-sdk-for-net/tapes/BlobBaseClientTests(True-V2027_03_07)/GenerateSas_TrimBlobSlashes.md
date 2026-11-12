## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-229afd54-e42e-c97a-b822-4728ab796bc9?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GenerateSas_TrimBlobSlashes
now: 2026-11-12T00:48:04.1003631+00:00

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
etag: "0x1DB28AB70CA6B70"
last-modified: Thu, 12 Nov 2026 00:48:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 292fa7e6-0bad-4ef6-b33c-37213fae1240
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-229afd54-e42e-c97a-b822-4728ab796bc9//test-blob-934679eb-5380-43bd-b69c-a084d4d6aa66

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
etag: "0x27368FEC942CEA0"
last-modified: Thu, 12 Nov 2026 00:48:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 34552cf3-df86-42f5-b611-a0cd00395dc2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-229afd54-e42e-c97a-b822-4728ab796bc9//test-blob-934679eb-5380-43bd-b69c-a084d4d6aa66?sv=2027-03-07&se=2026-11-12T01%3A48%3A04Z&sr=b&sp=r&sig=t%2B3PGrjHcbuV1mb1L7pWIB8FtaDRBCBN9Lu0fyaSJ0c%3D

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
last-modified: Thu, 12 Nov 2026 00:48:04 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:04 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x27368FEC942CEA0"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8315829c-6508-4d9d-b486-8343adc436e6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:04 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-229afd54-e42e-c97a-b822-4728ab796bc9?restype=container

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
x-ms-request-id: 79f230af-07c1-4219-9376-d91a6e621154
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

