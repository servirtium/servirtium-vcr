## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3fe692d8-cd40-7501-5e34-838296bba859?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).CommitBlockListAsync_IfTagsFailed
now: 2026-11-12T00:50:00.4200994+00:00

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
etag: "0x1CA4A4E2F135DC0"
last-modified: Thu, 12 Nov 2026 00:50:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c32cd887-c02d-44fc-bd25-b973325e2dfb
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-3fe692d8-cd40-7501-5e34-838296bba859/test-blob-d063ed9d-7a0d-6411-8a13-e77670c872b3

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
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2133A7355BBD280"
last-modified: Thu, 12 Nov 2026 00:50:00 GMT
content-md5: kj3xjbbTG54LOTTGcVNhFw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f5dc3f60-d0f7-4fcd-9a3b-9d0d42e6e8fa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-3fe692d8-cd40-7501-5e34-838296bba859/test-blob-d063ed9d-7a0d-6411-8a13-e77670c872b3?comp=block&blockid=dGVzdC1ibG9jay0zNzg3ZTI1ZC02MDBlLTBkNTMtNzg3Yi0zYjA0MTEzYTlmYzM%3D

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
x-ms-request-id: 82ac1541-7871-45a9-bd9c-e26ce8d013a1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:00 GMT
x-ms-content-crc64: z1qAp1EavpA=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-3fe692d8-cd40-7501-5e34-838296bba859/test-blob-d063ed9d-7a0d-6411-8a13-e77670c872b3?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay0zNzg3ZTI1ZC02MDBlLTBkNTMtNzg3Yi0zYjA0MTEzYTlmYzM=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 80653ebb-1505-4fd5-98ae-32abc71be36f
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:00 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-3fe692d8-cd40-7501-5e34-838296bba859?restype=container

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
x-ms-request-id: 9c7e9423-3c00-4b39-8882-f4248a13f88e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

