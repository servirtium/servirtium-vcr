## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-643fa5a8-2e48-01e4-aa5a-6e357ad6ab42?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).ResizeAsync_IfTags
now: 2026-11-12T00:51:58.4733952+00:00

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
etag: "0x1C756ADF6C61E00"
last-modified: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: be0c88e4-9a4c-4eca-9ae6-1af8f77093b7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-643fa5a8-2e48-01e4-aa5a-6e357ad6ab42/test-blob-b5f9b192-bcc9-eaaa-48a6-f5cb2cce60b3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x274216FC02A66C0"
last-modified: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 775bdc51-03b3-4741-ba01-4d1b138b0fc5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-643fa5a8-2e48-01e4-aa5a-6e357ad6ab42/test-blob-b5f9b192-bcc9-eaaa-48a6-f5cb2cce60b3?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>coolTag</Key><Value>true</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fcabf34b-f355-4649-be1d-0f5f9d94f596
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:58 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-643fa5a8-2e48-01e4-aa5a-6e357ad6ab42/test-blob-b5f9b192-bcc9-eaaa-48a6-f5cb2cce60b3?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-blob-content-length: 8192
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
etag: "0x2269F1E7455BEE0"
last-modified: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7b561f11-081a-4a56-8093-b9b91f310485
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:58 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-643fa5a8-2e48-01e4-aa5a-6e357ad6ab42?restype=container

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
x-ms-request-id: c91a5a7b-c51d-4d83-883b-7308f9fc6d53
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

