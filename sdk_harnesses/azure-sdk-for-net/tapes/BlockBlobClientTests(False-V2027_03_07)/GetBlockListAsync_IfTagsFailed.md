## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d364ee5f-6e0c-932f-0b3f-4b6ef40f7af8?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).GetBlockListAsync_IfTagsFailed
now: 2026-11-12T00:49:41.8126409+00:00

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
etag: "0x20CA9733C4DF0A0"
last-modified: Thu, 12 Nov 2026 00:49:41 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 90611d2c-ac98-4269-9ba9-8db5d8cbdbf2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:41 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d364ee5f-6e0c-932f-0b3f-4b6ef40f7af8/test-blob-54280d78-51a0-1171-f66d-135b4e72044e

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
etag: "0x1F36A948E236980"
last-modified: Thu, 12 Nov 2026 00:49:41 GMT
content-md5: KCbWVuVUKKOo9yZOage/7A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 94bc3428-bc82-4a44-a63d-0583a46a505d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:41 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-d364ee5f-6e0c-932f-0b3f-4b6ef40f7af8/test-blob-54280d78-51a0-1171-f66d-135b4e72044e?comp=blocklist&blocklisttype=all

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_3
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: a3000f4f-5dbc-4976-b5fc-8412849bec2d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:41 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-d364ee5f-6e0c-932f-0b3f-4b6ef40f7af8?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: edf83a19-476a-4c9b-80a0-3bfd526f3dcb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:41 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

