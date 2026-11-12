## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-65fe5610-03ba-524f-472f-920c75759d73?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ServiceClientTests(True,V2027_03_07).FindBlobsByTagAsync_AccountSas(All)
now: 2026-11-12T00:45:42.0518953+00:00

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
etag: "0x2366E8AEDC5E200"
last-modified: Thu, 12 Nov 2026 00:45:42 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ca24a3b0-132c-4c90-9696-1e2636d0b3be
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:42 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-65fe5610-03ba-524f-472f-920c75759d73/test-blob-62593851-af63-a0ff-220b-257bece39d0e

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
etag: "0x222FE75C16A2100"
last-modified: Thu, 12 Nov 2026 00:45:42 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e94ab9c6-db45-4030-b252-d4f78956a3a9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:42 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1?sv=2027-03-07&ss=b&srt=sco&st=2026-11-11T23%3A45%3A42Z&se=2026-11-12T01%3A45%3A42Z&sp=rwdxylacuptfi&sig=oKjYuKDnX7p2o04U7ZPaiW%2BSBUfjMsyoyZaRQY6kKZY%3D&comp=blobs&where=%22myTagKey%22%3D%27myTagValue%27

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
x-ms-request-id: 5e67d130-9c4b-4a79-94cd-af3d0d9b4971
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:44 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1"><Where>"myTagKey"='myTagValue'</Where><Blobs><Blob><Name>test-blob-62593851-af63-a0ff-220b-257bece39d0e</Name><ContainerName>test-container-65fe5610-03ba-524f-472f-920c75759d73</ContainerName><Tags><TagSet><Tag><Key>myTagKey</Key><Value>myTagValue</Value></Tag></TagSet></Tags></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-65fe5610-03ba-524f-472f-920c75759d73?restype=container

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
x-ms-request-id: 41a926df-6f20-44a5-92d7-c7b6fe9ab4aa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:44 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

