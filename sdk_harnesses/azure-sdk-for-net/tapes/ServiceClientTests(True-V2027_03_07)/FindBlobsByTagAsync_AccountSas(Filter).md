## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a7d973af-9639-b115-6af2-9555a322ea7c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ServiceClientTests(True,V2027_03_07).FindBlobsByTagAsync_AccountSas(Filter)
now: 2026-11-12T00:45:39.8042586+00:00

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
etag: "0x24B3216CB1A90A0"
last-modified: Thu, 12 Nov 2026 00:45:39 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1db750f3-d307-424e-ab28-03e773d4dd6c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:39 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a7d973af-9639-b115-6af2-9555a322ea7c/test-blob-9bd4c71f-406b-a1e2-e283-9b6e8a5de116

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
etag: "0x27B6E15EE5C8660"
last-modified: Thu, 12 Nov 2026 00:45:39 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0400969e-5877-4d90-8c19-7e62a9fe47da
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:39 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1?sv=2027-03-07&ss=b&srt=sco&st=2026-11-11T23%3A45%3A39Z&se=2026-11-12T01%3A45%3A39Z&sp=f&sig=dX5lIKN6ha8fSS71jIRQ5U3E2LFEiLVvlOFdLO7K%2B%2Fs%3D&comp=blobs&where=%22myTagKey%22%3D%27myTagValue%27

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
x-ms-request-id: aa7208a1-d252-4194-bfe8-04189af0098b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:41 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1"><Where>"myTagKey"='myTagValue'</Where><Blobs><Blob><Name>test-blob-9bd4c71f-406b-a1e2-e283-9b6e8a5de116</Name><ContainerName>test-container-a7d973af-9639-b115-6af2-9555a322ea7c</ContainerName><Tags><TagSet><Tag><Key>myTagKey</Key><Value>myTagValue</Value></Tag></TagSet></Tags></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-a7d973af-9639-b115-6af2-9555a322ea7c?restype=container

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
x-ms-request-id: 0aaa5d3d-6fa8-4e6a-9186-d57372743e2f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:41 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

