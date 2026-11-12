## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-adbb9e79-0011-4550-01b3-612964036d09?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ServiceClientTests(False,V2027_03_07).FindBlobsByTagAsync_AccountSas(Filter)
now: 2026-11-12T00:45:23.3444140+00:00

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
etag: "0x1EBE17E52AD4EC0"
last-modified: Thu, 12 Nov 2026 00:45:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a92292ca-a068-4846-aed1-8e411b48045c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-adbb9e79-0011-4550-01b3-612964036d09/test-blob-35d4b44c-c211-e6c2-24d6-a2b1c359ae63

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
etag: "0x1F2DC931B481140"
last-modified: Thu, 12 Nov 2026 00:45:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 537b8e81-337a-41e3-ab19-a554dd6d9452
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:23 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1?sv=2027-03-07&ss=b&srt=sco&st=2026-11-11T23%3A45%3A23Z&se=2026-11-12T01%3A45%3A23Z&sp=f&sig=I3ZTT5qXQNy%2BlaGj5Q4l5Eu22pF535kZIuawnIMJsis%3D&comp=blobs&where=%22myTagKey%22%3D%27myTagValue%27

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
x-ms-request-id: 1aede2cf-0fcb-474a-a559-c01a170da884
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:25 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1"><Where>"myTagKey"='myTagValue'</Where><Blobs><Blob><Name>test-blob-35d4b44c-c211-e6c2-24d6-a2b1c359ae63</Name><ContainerName>test-container-adbb9e79-0011-4550-01b3-612964036d09</ContainerName><Tags><TagSet><Tag><Key>myTagKey</Key><Value>myTagValue</Value></Tag></TagSet></Tags></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-adbb9e79-0011-4550-01b3-612964036d09?restype=container

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
x-ms-request-id: de21d4a3-fdc9-49ce-8a27-968834fe30a9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

