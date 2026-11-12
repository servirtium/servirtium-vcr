## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4a5caa75-e99b-3aef-eecd-4bac15a780bf?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).CommitBlockListAsync_Tags
now: 2026-11-12T00:50:01.3121565+00:00

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
etag: "0x27BA73B0F0A61E0"
last-modified: Thu, 12 Nov 2026 00:50:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 74493cab-96bc-4cdc-8bc5-877cfd11e55a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4a5caa75-e99b-3aef-eecd-4bac15a780bf/test-blob-87ac167e-681c-c176-e246-2e0ade662daa?comp=block&blockid=dGVzdC1ibG9jay0wNjcwMWRiZC1mMmUyLWZhNzYtYjcyNi1jZGFlMzhmNGEyNjM%3D

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
x-ms-request-id: 6e796cb7-ab97-4f0f-b6fe-29e7d19189b3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:01 GMT
x-ms-content-crc64: Z2b5MKfZwIY=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-4a5caa75-e99b-3aef-eecd-4bac15a780bf/test-blob-87ac167e-681c-c176-e246-2e0ade662daa?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-tags: tagKey0=tagValue0&tagKey1=tagValue1
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay0wNjcwMWRiZC1mMmUyLWZhNzYtYjcyNi1jZGFlMzhmNGEyNjM=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20B2B8E03F16C80"
last-modified: Thu, 12 Nov 2026 00:50:01 GMT
content-md5: oQ52UrIPf3MWHwTUEjYxkQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3bfb6ff8-a448-4ea3-bd97-b6edff9e84e3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-4a5caa75-e99b-3aef-eecd-4bac15a780bf/test-blob-87ac167e-681c-c176-e246-2e0ade662daa?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f9698f80-e692-4c7d-a898-8e6f9e4c80f7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:01 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-4a5caa75-e99b-3aef-eecd-4bac15a780bf?restype=container

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
x-ms-request-id: 9ccafb18-1ab2-4981-8737-8d5c6208ae3d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

