## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1ec6a78d-d646-a26e-e173-bda9b0467b74?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).FindBlobsByTag_ContainerSAS(All)
now: 2026-11-12T00:44:12.7878098+00:00

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
etag: "0x27B0A860361F600"
last-modified: Thu, 12 Nov 2026 00:44:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9fef3530-5115-47a4-9b3f-f481f7f6312f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1ec6a78d-d646-a26e-e173-bda9b0467b74/test-blob-122a9022-2f89-abfe-2c73-45fb98dd33b0

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
etag: "0x1E67E6AB09D4050"
last-modified: Thu, 12 Nov 2026 00:44:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 19b05dc4-4aba-4028-b876-1dcfc72b7c06
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-1ec6a78d-d646-a26e-e173-bda9b0467b74?sv=2027-03-07&se=2026-11-13T00%3A44%3A12Z&sr=c&sp=racwdxltfi&sig=lVfEKcf2J8HlHNzXwQkI3BeE4PfHMLvguQ7%2BUDEaysg%3D&restype=container&comp=blobs&where=%22myTagKey%22%3D%27myTagValue%27

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
x-ms-request-id: fd8f813e-5396-4ff7-b7c6-9df40581b4f2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:14 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1"><Where>"myTagKey"='myTagValue'</Where><Blobs><Blob><Name>test-blob-122a9022-2f89-abfe-2c73-45fb98dd33b0</Name><ContainerName>test-container-1ec6a78d-d646-a26e-e173-bda9b0467b74</ContainerName><Tags><TagSet><Tag><Key>myTagKey</Key><Value>myTagValue</Value></Tag></TagSet></Tags></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-1ec6a78d-d646-a26e-e173-bda9b0467b74?restype=container

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
x-ms-request-id: 1fa0c94f-666c-41c4-8b74-46d5ea1b3dcb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

