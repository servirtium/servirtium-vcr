## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0cee5e56-ea59-f92e-b7b4-7ac28a5ec65e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).FilterBlobsByTag
now: 2026-11-12T00:43:38.3314644+00:00

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
etag: "0x2788AC2FC605840"
last-modified: Thu, 12 Nov 2026 00:43:38 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4ae59dae-94c5-4149-9dd2-910801cb5d3c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:38 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0cee5e56-ea59-f92e-b7b4-7ac28a5ec65e/test-blob-e4819ae8-ce07-81fc-6437-667cdd70fba4

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
etag: "0x24C99208A7FEBA0"
last-modified: Thu, 12 Nov 2026 00:43:38 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 72667e46-1ced-4df3-84be-636199683cd3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:38 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-0cee5e56-ea59-f92e-b7b4-7ac28a5ec65e?restype=container&comp=blobs&where=%22myTagKey%22%3D%27myTagValue%27

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
x-ms-request-id: dca44a01-3674-4f9e-bf29-287356e46e26
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:40 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1"><Where>"myTagKey"='myTagValue'</Where><Blobs><Blob><Name>test-blob-e4819ae8-ce07-81fc-6437-667cdd70fba4</Name><ContainerName>test-container-0cee5e56-ea59-f92e-b7b4-7ac28a5ec65e</ContainerName><Tags><TagSet><Tag><Key>myTagKey</Key><Value>myTagValue</Value></Tag></TagSet></Tags></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-0cee5e56-ea59-f92e-b7b4-7ac28a5ec65e?restype=container

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
x-ms-request-id: d67eeb3f-aacb-4ed6-aff5-0325e1390b1f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

