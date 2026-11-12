## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b1f9bd8f-9672-1135-9485-d628a60dc8e2?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsFlatSegmentAsync_UseApacheArrow_Metadata
now: 2026-11-12T00:44:56.9813390+00:00

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
etag: "0x1BEDDAC99CE8340"
last-modified: Thu, 12 Nov 2026 00:44:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c2bf739a-9ffc-4b3e-8fb0-eb67c5246438
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b1f9bd8f-9672-1135-9485-d628a60dc8e2/test-blob-3db9c323-f56f-0e3b-a430-4a3544339f59

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
etag: "0x25D8CB8BDB63180"
last-modified: Thu, 12 Nov 2026 00:44:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 81b3b36b-6f0b-4e88-8350-7ab0e58bc67a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-b1f9bd8f-9672-1135-9485-d628a60dc8e2?restype=container&comp=list&include=Metadata

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
x-ms-request-id: df42827f-484d-49c2-aa27-66106973c015
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-b1f9bd8f-9672-1135-9485-d628a60dc8e2"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-3db9c323-f56f-0e3b-a430-4a3544339f59</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:56 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:56 GMT</Last-Modified><Etag>0x25D8CB8BDB63180</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties><Metadata><foo>bar</foo><meta>data</meta><Capital>letter</Capital><UPPER>case</UPPER></Metadata></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-b1f9bd8f-9672-1135-9485-d628a60dc8e2?restype=container

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
x-ms-request-id: f210de67-fcde-4e2b-a97f-acec19f86e60
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

