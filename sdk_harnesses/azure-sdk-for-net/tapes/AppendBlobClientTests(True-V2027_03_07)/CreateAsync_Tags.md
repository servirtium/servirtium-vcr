## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-812d50fa-f694-220b-2007-c33776b41fe1?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).CreateAsync_Tags
now: 2026-11-12T00:50:50.9977545+00:00

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
etag: "0x254F665AD158A80"
last-modified: Thu, 12 Nov 2026 00:50:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c40f898c-b93d-46ba-af73-24b28669975a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-812d50fa-f694-220b-2007-c33776b41fe1/test-blob-a450c802-d7f7-9b89-2515-51b19cb25937

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
etag: "0x1D0B76725B1C280"
last-modified: Thu, 12 Nov 2026 00:50:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b2e050c1-ea96-4602-b4e9-958a7ed4b5ac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-812d50fa-f694-220b-2007-c33776b41fe1/test-blob-a450c802-d7f7-9b89-2515-51b19cb25937?comp=tags

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
x-ms-request-id: 76d4833b-3d60-4cbd-a455-1b61be7b33e0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:51 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-812d50fa-f694-220b-2007-c33776b41fe1?restype=container

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
x-ms-request-id: c7681064-18c3-43a6-92b3-fb15e7e1bc38
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

