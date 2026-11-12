## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a68a5288-2c4d-1542-1ed8-2b863f29b024?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ServiceClientTests(False,V2027_03_07).FindBlobsByTagAsync_AccountSas(All)
now: 2026-11-12T00:45:26.0119593+00:00

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
etag: "0x26EB145F5863540"
last-modified: Thu, 12 Nov 2026 00:45:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a04915b1-7669-4d19-9ab9-024559837229
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:26 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a68a5288-2c4d-1542-1ed8-2b863f29b024/test-blob-b6946898-a0ad-120a-8ff6-d434becf683b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-tags: myTagKey=myTagValue
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DD7774E2E78110"
last-modified: Thu, 12 Nov 2026 00:45:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 34bb7c41-be69-4cdc-81d6-fbe3f92aa76e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:26 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1?sv=2027-03-07&ss=b&srt=sco&st=2026-11-11T23%3A45%3A26Z&se=2026-11-12T01%3A45%3A26Z&sp=rwdxylacuptfi&sig=lDI2v83Scz2RH%2BuUDAC6SuhLy1juMCZis7o7vgpwQGA%3D&comp=blobs&where=%22myTagKey%22%3D%27myTagValue%27

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: 17da80e3-7354-4858-826a-96dd2a08fba2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:28 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1"><Where>"myTagKey"='myTagValue'</Where><Blobs><Blob><Name>test-blob-b6946898-a0ad-120a-8ff6-d434becf683b</Name><ContainerName>test-container-a68a5288-2c4d-1542-1ed8-2b863f29b024</ContainerName><Tags><TagSet><Tag><Key>myTagKey</Key><Value>myTagValue</Value></Tag></TagSet></Tags></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-a68a5288-2c4d-1542-1ed8-2b863f29b024?restype=container

### Request headers recorded for playback:

```
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
x-ms-request-id: a17b69b2-cd45-4de9-8129-fee8d3cda368
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

