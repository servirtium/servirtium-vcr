## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-6059a0d0-d143-1d8a-c0d8-b839d9e2cdb8?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).CreateAsync_Tags
now: 2026-11-12T00:50:36.2978943+00:00

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
etag: "0x1BFBD48F8B02D40"
last-modified: Thu, 12 Nov 2026 00:50:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6a8ee625-ced7-42cf-8c07-6327a94466ca
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-6059a0d0-d143-1d8a-c0d8-b839d9e2cdb8/test-blob-d70dfef8-21fd-7a8e-1840-31789c61779f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-tags: tagKey0=tagValue0&tagKey1=tagValue1
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24CC53A2BFF4200"
last-modified: Thu, 12 Nov 2026 00:50:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e288493f-7cb5-4256-a47d-ba8e3575c3f5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-6059a0d0-d143-1d8a-c0d8-b839d9e2cdb8/test-blob-d70dfef8-21fd-7a8e-1840-31789c61779f?comp=tags

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
x-ms-request-id: a681dbb5-b2d0-4a7c-bceb-d6f1a5f4843e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:36 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-6059a0d0-d143-1d8a-c0d8-b839d9e2cdb8?restype=container

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
x-ms-request-id: fe281e44-4cc9-4be2-a553-31e9efe37423
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

