## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7ef2bbd5-fc78-5e0f-c0cc-f801e7a5f43f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).CreateAsync_IfTags
now: 2026-11-12T00:50:50.3558581+00:00

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
etag: "0x245D3F06B589580"
last-modified: Thu, 12 Nov 2026 00:50:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e7704ba8-a6fc-4c9f-b091-ea5ffb902f28
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7ef2bbd5-fc78-5e0f-c0cc-f801e7a5f43f/test-blob-0d2d66a8-343d-05a2-cc8a-5312e39982da

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
etag: "0x20D92D6315269A0"
last-modified: Thu, 12 Nov 2026 00:50:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b2afa2c4-4310-40f4-bce6-c3e196e8223e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-7ef2bbd5-fc78-5e0f-c0cc-f801e7a5f43f/test-blob-0d2d66a8-343d-05a2-cc8a-5312e39982da?comp=tags

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
x-ms-request-id: 3fc9e2cf-ccc1-45d1-9e46-90a34a3ce03a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:50 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-7ef2bbd5-fc78-5e0f-c0cc-f801e7a5f43f/test-blob-0d2d66a8-343d-05a2-cc8a-5312e39982da

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
etag: "0x2050160B47982A0"
last-modified: Thu, 12 Nov 2026 00:50:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1f852187-129f-491f-98ed-9a2a41b78bd0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-7ef2bbd5-fc78-5e0f-c0cc-f801e7a5f43f?restype=container

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
x-ms-request-id: dbc3b3ad-d458-4c0b-9d17-726a4f3e94fc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

