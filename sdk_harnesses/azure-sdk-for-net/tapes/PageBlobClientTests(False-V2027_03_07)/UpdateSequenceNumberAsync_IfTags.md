## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-037955eb-552a-39cf-f1ea-014d5a440782?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).UpdateSequenceNumberAsync_IfTags
now: 2026-11-12T00:51:30.8065600+00:00

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
etag: "0x1BFCD9BE13E08A0"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f524f831-995d-4316-8e0a-4510efc524d2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-037955eb-552a-39cf-f1ea-014d5a440782/test-blob-0057a444-5a74-5943-76d1-dc566d9662eb

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
etag: "0x2356E57465692E0"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a9af60be-599e-45b1-89ae-318ad8083f44
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-037955eb-552a-39cf-f1ea-014d5a440782/test-blob-0057a444-5a74-5943-76d1-dc566d9662eb?comp=tags

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
x-ms-request-id: 4fe31f02-980f-47a8-9797-747ecb59922d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-037955eb-552a-39cf-f1ea-014d5a440782/test-blob-0057a444-5a74-5943-76d1-dc566d9662eb?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-blob-sequence-number: 5
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-sequence-number-action: update
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26A4B33132D03E0"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-blob-sequence-number: 5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b5fde7cb-7577-4e2b-9494-315fbd1c8849
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-037955eb-552a-39cf-f1ea-014d5a440782?restype=container

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
x-ms-request-id: 07a25222-8584-46ce-a7df-46118b65c886
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

