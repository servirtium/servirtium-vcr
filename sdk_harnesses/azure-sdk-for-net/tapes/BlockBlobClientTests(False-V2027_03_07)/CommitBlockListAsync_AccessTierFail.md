## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-6dcca2c4-b40a-33f3-a814-3fe333d91d25?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).CommitBlockListAsync_AccessTierFail
now: 2026-11-12T00:49:36.2877027+00:00

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
etag: "0x25B7BF72BF223E0"
last-modified: Thu, 12 Nov 2026 00:49:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0933a88e-b6b6-42c5-8dc4-a412dbc5af63
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-6dcca2c4-b40a-33f3-a814-3fe333d91d25/test-blob-f4be706e-125b-865f-6084-c49b412806bc?comp=block&blockid=dGVzdC1ibG9jay02YjQ4MjMzMy03ODJmLTVjYWItY2ZmNy03NGY5Zjc1ZjBiMTc%3D

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
x-ms-request-id: cf3a8086-aace-4a0a-befc-55da55a6bd2a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:36 GMT
x-ms-content-crc64: vvvEGzSfJyk=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-6dcca2c4-b40a-33f3-a814-3fe333d91d25/test-blob-f4be706e-125b-865f-6084-c49b412806bc?comp=block&blockid=dGVzdC1ibG9jay0xNTE1ZTY5Yi1iMjBmLTRhNzMtNGM5Ni1mZTM3YzI0NjEwMTI%3D

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
x-ms-request-id: 3fd10f1b-727a-4424-b1d2-5f0da73b33e0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:36 GMT
x-ms-content-crc64: vvvEGzSfJyk=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-6dcca2c4-b40a-33f3-a814-3fe333d91d25/test-blob-f4be706e-125b-865f-6084-c49b412806bc?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-access-tier: P10
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay02YjQ4MjMzMy03ODJmLTVjYWItY2ZmNy03NGY5Zjc1ZjBiMTc=</Latest><Latest>dGVzdC1ibG9jay0xNTE1ZTY5Yi1iMjBmLTRhNzMtNGM5Ni1mZTM3YzI0NjEwMTI=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: InvalidHeaderValue
x-ms-request-id: 89a171c4-eb04-4425-aac2-aaae621cf239
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:36 GMT
```
### Response body recorded for playback (400: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>InvalidHeaderValue</Code>
  <Message>The value for one of the HTTP headers is not in the correct format.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
  <HeaderName>x-ms-access-tier</HeaderName>
  <HeaderValue>P10</HeaderValue>
</Error>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-6dcca2c4-b40a-33f3-a814-3fe333d91d25?restype=container

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
x-ms-request-id: 861bd97e-646a-4822-91eb-8fa7bbb55c31
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

