## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8e3bc1e3-4827-5863-b6b2-a8c58870a32f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).ResizeAsync_IfTags
now: 2026-11-12T00:51:28.8154547+00:00

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
etag: "0x211C4B8750BC300"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 435c2282-f1e3-4f57-b71f-138c418d1b56
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8e3bc1e3-4827-5863-b6b2-a8c58870a32f/test-blob-247b6706-6993-fe95-4973-19e710699971

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
etag: "0x1FC386EABCF8FA0"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cf701897-7960-4d8c-9ee2-8618596d00dc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-8e3bc1e3-4827-5863-b6b2-a8c58870a32f/test-blob-247b6706-6993-fe95-4973-19e710699971?comp=tags

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
x-ms-request-id: e8e76fd2-e3f9-4ac6-88cb-09e428780e53
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-8e3bc1e3-4827-5863-b6b2-a8c58870a32f/test-blob-247b6706-6993-fe95-4973-19e710699971?comp=properties

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
etag: "0x20B3F254E9E41E0"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 98e6eb39-536e-421d-8891-8f3edf048bc0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-8e3bc1e3-4827-5863-b6b2-a8c58870a32f?restype=container

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
x-ms-request-id: cb19c7f1-d4fe-4f3d-801d-44e411993d90
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

