## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ac1de60b-f639-ae44-3007-f368e254b5ae?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).CommitBlockListAsync_AccessTierFail
now: 2026-11-12T00:49:58.5548898+00:00

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
etag: "0x20C1691677DC880"
last-modified: Thu, 12 Nov 2026 00:49:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 615298a3-e3ac-4e47-b6ca-75ae8cc59f95
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ac1de60b-f639-ae44-3007-f368e254b5ae/test-blob-68952d38-9f32-9b16-dbaf-61651df94143?comp=block&blockid=dGVzdC1ibG9jay02MDBiMmNkOS1lY2U1LTYxYjEtNmQ5Yi03OWRjZTRhMzhjMjA%3D

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
x-ms-request-id: 7560de92-f22b-4a18-a629-be0e1ab0ca23
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:58 GMT
x-ms-content-crc64: UAwa4jyXvHc=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-ac1de60b-f639-ae44-3007-f368e254b5ae/test-blob-68952d38-9f32-9b16-dbaf-61651df94143?comp=block&blockid=dGVzdC1ibG9jay0xNjI1ZTZhNS00ZTcxLTkxZmQtNDIwZi1hN2Q3M2Y0YmE0Y2E%3D

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
x-ms-request-id: 6c57742c-e284-43dc-9113-2bf01bee095d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:58 GMT
x-ms-content-crc64: UAwa4jyXvHc=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-ac1de60b-f639-ae44-3007-f368e254b5ae/test-blob-68952d38-9f32-9b16-dbaf-61651df94143?comp=blocklist

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
﻿<BlockList><Latest>dGVzdC1ibG9jay02MDBiMmNkOS1lY2U1LTYxYjEtNmQ5Yi03OWRjZTRhMzhjMjA=</Latest><Latest>dGVzdC1ibG9jay0xNjI1ZTZhNS00ZTcxLTkxZmQtNDIwZi1hN2Q3M2Y0YmE0Y2E=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: InvalidHeaderValue
x-ms-request-id: 51537d4d-19fb-49ec-bcd8-a5f99520f088
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:58 GMT
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

## Interaction 4: DELETE /devstoreaccount1/test-container-ac1de60b-f639-ae44-3007-f368e254b5ae?restype=container

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
x-ms-request-id: 74446468-4b71-4d2a-949f-1d489471e2c8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

