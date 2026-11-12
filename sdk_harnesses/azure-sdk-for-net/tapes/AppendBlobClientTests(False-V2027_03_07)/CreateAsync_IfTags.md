## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b0504b31-3261-b9e2-72bf-ea5e308fe815?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).CreateAsync_IfTags
now: 2026-11-12T00:50:35.5564139+00:00

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
etag: "0x24A1E4CA60E7A40"
last-modified: Thu, 12 Nov 2026 00:50:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d70d451f-0d7f-4ac6-920f-db22d1775c88
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b0504b31-3261-b9e2-72bf-ea5e308fe815/test-blob-d192853a-c111-6b78-a026-cac9999c46f2

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
etag: "0x1C26FA3140C0A50"
last-modified: Thu, 12 Nov 2026 00:50:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eeeee487-34d8-4144-9d7b-d330f0a710b9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-b0504b31-3261-b9e2-72bf-ea5e308fe815/test-blob-d192853a-c111-6b78-a026-cac9999c46f2?comp=tags

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
x-ms-request-id: 1c4a40db-e0ce-4503-b98b-9b2fdc66682e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:35 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-b0504b31-3261-b9e2-72bf-ea5e308fe815/test-blob-d192853a-c111-6b78-a026-cac9999c46f2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-blob-type: AppendBlob
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
etag: "0x26E1641D6BA8CC0"
last-modified: Thu, 12 Nov 2026 00:50:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: af4678e2-dae1-4e86-89d7-b5713949979f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-b0504b31-3261-b9e2-72bf-ea5e308fe815?restype=container

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
x-ms-request-id: 86efb9bd-4a2a-4f52-8af3-a21574124988
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

