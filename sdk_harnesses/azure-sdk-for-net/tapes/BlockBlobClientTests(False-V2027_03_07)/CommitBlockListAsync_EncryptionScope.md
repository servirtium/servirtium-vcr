## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ea69a418-abc4-21d5-e36d-716ff5e8053c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).CommitBlockListAsync_EncryptionScope
now: 2026-11-12T00:49:37.2382741+00:00

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
etag: "0x2548C4EF55A3040"
last-modified: Thu, 12 Nov 2026 00:49:37 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 41e49cbc-b7f6-4b08-a5e1-7ddfcea7276f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:37 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ea69a418-abc4-21d5-e36d-716ff5e8053c/test-blob-64ca6f33-31d6-23fd-c1db-684cddd69719?comp=block&blockid=dGVzdC1ibG9jay1iMjdjNGZjZS1lNDUyLWVhZTEtMWE4Zi0yNTJlNTYzMGQ1OWE%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 321734fa-2a46-4112-974b-e5f7c6630729
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:37 GMT
x-ms-content-crc64: ZWMMX/NI+SE=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-ea69a418-abc4-21d5-e36d-716ff5e8053c/test-blob-64ca6f33-31d6-23fd-c1db-684cddd69719?comp=block&blockid=dGVzdC1ibG9jay0yNWI4ZmMxZi1iMGVlLWIzMWItMmFjZS1mYzc0NThiNjZlMzU%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4ba68037-6139-4109-bab4-dd2b6953f2a0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:37 GMT
x-ms-content-crc64: ZWMMX/NI+SE=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-ea69a418-abc4-21d5-e36d-716ff5e8053c/test-blob-64ca6f33-31d6-23fd-c1db-684cddd69719?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay1iMjdjNGZjZS1lNDUyLWVhZTEtMWE4Zi0yNTJlNTYzMGQ1OWE=</Latest><Latest>dGVzdC1ibG9jay0yNWI4ZmMxZi1iMGVlLWIzMWItMmFjZS1mYzc0NThiNjZlMzU=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x228BCF1C68C8800"
last-modified: Thu, 12 Nov 2026 00:49:37 GMT
content-md5: O7Yi4vQEV/E/hJmQemseyw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 83f88e79-75fa-493b-abe7-c5069e9cb721
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:37 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-ea69a418-abc4-21d5-e36d-716ff5e8053c?restype=container

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
x-ms-request-id: 286d9b3a-4bef-41af-815e-06102c6ba97e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:37 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

