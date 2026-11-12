## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-41fa9a06-57ab-4015-fd01-fb6b3709a221?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).FindBlobsByTag_ContainerSAS(Filter)
now: 2026-11-12T00:44:10.5284533+00:00

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
etag: "0x1E35830A783A0E0"
last-modified: Thu, 12 Nov 2026 00:44:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 19af9fd8-53e7-4cfb-b153-8965bb7f7dd0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:10 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-41fa9a06-57ab-4015-fd01-fb6b3709a221/test-blob-a546617a-e370-6117-a10c-4536faeff778

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
etag: "0x26C36676AB04E80"
last-modified: Thu, 12 Nov 2026 00:44:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5f265a40-9ce6-438a-a543-af690cec1dce
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:10 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-41fa9a06-57ab-4015-fd01-fb6b3709a221?sv=2027-03-07&se=2026-11-13T00%3A44%3A10Z&sr=c&sp=f&sig=0Ca9%2FYAZpo5gSRLxS2pkiAxG6JJ82HTbngc5ZEvL4pw%3D&restype=container&comp=blobs&where=%22myTagKey%22%3D%27myTagValue%27

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
x-ms-request-id: b91e4131-dce3-4066-a4e2-f8c4c36aacf2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:12 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1"><Where>"myTagKey"='myTagValue'</Where><Blobs><Blob><Name>test-blob-a546617a-e370-6117-a10c-4536faeff778</Name><ContainerName>test-container-41fa9a06-57ab-4015-fd01-fb6b3709a221</ContainerName><Tags><TagSet><Tag><Key>myTagKey</Key><Value>myTagValue</Value></Tag></TagSet></Tags></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-41fa9a06-57ab-4015-fd01-fb6b3709a221?restype=container

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
x-ms-request-id: 7fe105f3-d354-4822-a3e6-0a1b38e230dd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

