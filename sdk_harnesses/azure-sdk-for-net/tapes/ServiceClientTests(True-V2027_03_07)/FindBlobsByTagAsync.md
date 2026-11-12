## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4c51c530-07b4-7478-939b-8f2fb2f2b3eb?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ServiceClientTests(True,V2027_03_07).FindBlobsByTagAsync
now: 2026-11-12T00:45:49.0037053+00:00

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
etag: "0x2356627354D3680"
last-modified: Thu, 12 Nov 2026 00:45:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ccd64199-879f-4d59-aacd-9c1a2476a16a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:49 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4c51c530-07b4-7478-939b-8f2fb2f2b3eb/test-blob-430b814a-fc98-22b4-31b9-25d175870ab6

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
etag: "0x1C3ADDDAECC0E40"
last-modified: Thu, 12 Nov 2026 00:45:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 75b43f72-18bb-458b-9082-ad7d73d13de7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1?comp=blobs&where=%22myTagKey%22%3D%27myTagValue%27

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
x-ms-request-id: 03259bf8-819a-4a33-b3d6-694b122c0f53
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:51 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1"><Where>"myTagKey"='myTagValue'</Where><Blobs><Blob><Name>test-blob-430b814a-fc98-22b4-31b9-25d175870ab6</Name><ContainerName>test-container-4c51c530-07b4-7478-939b-8f2fb2f2b3eb</ContainerName><Tags><TagSet><Tag><Key>myTagKey</Key><Value>myTagValue</Value></Tag></TagSet></Tags></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-4c51c530-07b4-7478-939b-8f2fb2f2b3eb?restype=container

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
x-ms-request-id: b9debd0c-7d17-4f2f-8a0c-963fd0fabe94
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

