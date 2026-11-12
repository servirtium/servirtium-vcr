## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d0232792-7ac6-d8ed-f3fb-2b8ecbef16ae?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).UploadAsync_Tags
now: 2026-11-12T00:49:51.6819464+00:00

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
etag: "0x26E592AB5A8E740"
last-modified: Thu, 12 Nov 2026 00:49:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b94f5d84-53e0-4a70-a3ad-e91496b41f9c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d0232792-7ac6-d8ed-f3fb-2b8ecbef16ae/test-blob-943f0fa6-bb82-8a77-cd09-b929d516dc50

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-tags: tagKey0=tagValue0&tagKey1=tagValue1
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C7F01536E366E0"
last-modified: Thu, 12 Nov 2026 00:49:51 GMT
content-md5: lZ6a+PqID4RMnQoX1MC//A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 632169c0-b581-4697-8182-e4151497db90
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-d0232792-7ac6-d8ed-f3fb-2b8ecbef16ae/test-blob-943f0fa6-bb82-8a77-cd09-b929d516dc50?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_3
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
x-ms-request-id: 9bc62394-f549-404b-8432-64ad854f2261
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:51 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-d0232792-7ac6-d8ed-f3fb-2b8ecbef16ae?restype=container

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
x-ms-request-id: fe806dcb-2f08-424f-82cf-71dca60a24ab
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

