## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5a79a7ff-de12-07be-27f0-a858b17ccf3c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).CommitBlockListAsync_IfTagsFailed
now: 2026-11-12T00:49:38.2468035+00:00

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
etag: "0x1C65CF7F958EB80"
last-modified: Thu, 12 Nov 2026 00:49:38 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d1f2b63a-d768-4132-a1e1-858db228ff65
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:38 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5a79a7ff-de12-07be-27f0-a858b17ccf3c/test-blob-0a6564c1-fb17-0fdf-8b8a-1829c8bfdc42

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
etag: "0x27C0AC86D19D100"
last-modified: Thu, 12 Nov 2026 00:49:38 GMT
content-md5: khWRt8y88olwuzKP4ausPw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8b002225-db46-4257-a87a-5311b8bf4795
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:38 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-5a79a7ff-de12-07be-27f0-a858b17ccf3c/test-blob-0a6564c1-fb17-0fdf-8b8a-1829c8bfdc42?comp=block&blockid=dGVzdC1ibG9jay1kZDU1M2M0MC1lYTllLTczZDMtZTViZS1lMzhhMmMzMGU1Mjk%3D

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
x-ms-request-id: c78bdf99-d70e-4841-9280-b16d99bc6368
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:38 GMT
x-ms-content-crc64: upujNrk5czQ=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-5a79a7ff-de12-07be-27f0-a858b17ccf3c/test-blob-0a6564c1-fb17-0fdf-8b8a-1829c8bfdc42?comp=blocklist

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
﻿<BlockList><Latest>dGVzdC1ibG9jay1kZDU1M2M0MC1lYTllLTczZDMtZTViZS1lMzhhMmMzMGU1Mjk=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 3bababf9-1d59-419b-b7f8-c8e1e6d24201
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:38 GMT
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

## Interaction 4: DELETE /devstoreaccount1/test-container-5a79a7ff-de12-07be-27f0-a858b17ccf3c?restype=container

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
x-ms-request-id: b3a9fc55-080c-4eb9-b55b-5abd9b78d0aa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:38 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

