## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-dbac2b8d-8d42-048c-efd1-04753de37742?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).FindBlobsByTag_ContainerSAS(Filter)
now: 2026-11-12T00:43:05.1695600+00:00

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
etag: "0x1C2FBF69BD58400"
last-modified: Thu, 12 Nov 2026 00:43:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 907549ca-97b4-4a1d-a8ae-737c01a5149e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-dbac2b8d-8d42-048c-efd1-04753de37742/test-blob-2bcd4257-5d84-59f3-4eae-9a43fcbddfcb

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
etag: "0x23D8D8411F36A00"
last-modified: Thu, 12 Nov 2026 00:43:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2d0ab8fa-4ea8-4c36-8c8f-509f39ef53ce
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-dbac2b8d-8d42-048c-efd1-04753de37742?sv=2027-03-07&se=2026-11-13T00%3A43%3A05Z&sr=c&sp=f&sig=9uReXrdUeKFo%2Ffr6dEFdcPV2Ic0JNXxpjp0U0Lho5l0%3D&restype=container&comp=blobs&where=%22myTagKey%22%3D%27myTagValue%27

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
x-ms-request-id: 40378bb2-e160-4d6c-90aa-6a27acdf3510
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:07 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1"><Where>"myTagKey"='myTagValue'</Where><Blobs><Blob><Name>test-blob-2bcd4257-5d84-59f3-4eae-9a43fcbddfcb</Name><ContainerName>test-container-dbac2b8d-8d42-048c-efd1-04753de37742</ContainerName><Tags><TagSet><Tag><Key>myTagKey</Key><Value>myTagValue</Value></Tag></TagSet></Tags></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-dbac2b8d-8d42-048c-efd1-04753de37742?restype=container

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
x-ms-request-id: e8687df1-7d91-48ef-b57a-20b8446797a8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

