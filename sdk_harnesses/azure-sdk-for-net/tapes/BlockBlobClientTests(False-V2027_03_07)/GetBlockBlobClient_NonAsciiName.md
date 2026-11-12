## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-07f7d32b-705b-0e76-89f9-d6bba94e384c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).GetBlockBlobClient_NonAsciiName
now: 2026-11-12T00:49:40.8732379+00:00

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
etag: "0x1FA1A9681E33D80"
last-modified: Thu, 12 Nov 2026 00:49:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d906989b-87c5-42c8-be95-ff9904ddd774
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-07f7d32b-705b-0e76-89f9-d6bba94e384c/test-%CE%B2%C2%A3%C2%A9%C3%BE%E2%80%BD%253A-d2c01192-101b-2d47-72e0-f76ffeb35e02

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2794EA3904C8120"
last-modified: Thu, 12 Nov 2026 00:49:40 GMT
content-md5: bqQBdZrX8FZZHZfx1BYA2g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 98f37f1b-928e-4606-80e1-5de1e392364d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:40 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-07f7d32b-705b-0e76-89f9-d6bba94e384c?restype=container&comp=list

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1a3ba6c9-6968-4c51-af41-2d3ab075b102
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:40 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-07f7d32b-705b-0e76-89f9-d6bba94e384c"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-β£©þ‽%3A-d2c01192-101b-2d47-72e0-f76ffeb35e02</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:49:40 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:49:40 GMT</Last-Modified><Etag>0x2794EA3904C8120</Etag><Content-Length>4096</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>bqQBdZrX8FZZHZfx1BYA2g==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:49:40 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-07f7d32b-705b-0e76-89f9-d6bba94e384c?restype=container

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
x-ms-request-id: 47dc7f11-06ef-4ffe-a17e-611d7b1802ed
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

