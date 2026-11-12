## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4f2d4069-d3d5-2d67-ce45-f15bec690332?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsFlatSegmentAsync_Metadata
now: 2026-11-12T00:44:52.6991609+00:00

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
etag: "0x25CE15B79E2F8E0"
last-modified: Thu, 12 Nov 2026 00:44:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bfe2293c-09bb-4466-a773-8358170cb2f1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4f2d4069-d3d5-2d67-ce45-f15bec690332/test-blob-2916df14-283b-fa72-6308-8233cbc1c72d

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x209A579879F4B00"
last-modified: Thu, 12 Nov 2026 00:44:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 87d37b80-a642-4dd0-a132-9e42eba06053
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-4f2d4069-d3d5-2d67-ce45-f15bec690332?restype=container&comp=list&include=Metadata

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
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 16b6a770-e19f-4839-9c49-ddde5f553a8e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:52 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-4f2d4069-d3d5-2d67-ce45-f15bec690332"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-2916df14-283b-fa72-6308-8233cbc1c72d</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:52 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:52 GMT</Last-Modified><Etag>0x209A579879F4B00</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties><Metadata><foo>bar</foo><meta>data</meta><Capital>letter</Capital><UPPER>case</UPPER></Metadata></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-4f2d4069-d3d5-2d67-ce45-f15bec690332?restype=container

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
x-ms-request-id: 05836326-d2ae-447f-851c-13e725ccf584
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

