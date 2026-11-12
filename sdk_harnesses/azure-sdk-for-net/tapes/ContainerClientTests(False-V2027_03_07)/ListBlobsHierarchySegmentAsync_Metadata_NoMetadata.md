## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f8d14a8e-dc34-0424-2137-01a8ffe03e78?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsHierarchySegmentAsync_Metadata_NoMetadata
now: 2026-11-12T00:43:56.0567430+00:00

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
etag: "0x24FE827F4A8B120"
last-modified: Thu, 12 Nov 2026 00:43:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: db5b92f7-4d42-4031-ba45-675495eb7e44
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f8d14a8e-dc34-0424-2137-01a8ffe03e78/test-blob-2052f5f5-63a1-f1d9-7819-d267b6e6b7b9

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22C39A45D486280"
last-modified: Thu, 12 Nov 2026 00:43:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d59a1159-841f-407f-9cb6-afecc4e843fb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-f8d14a8e-dc34-0424-2137-01a8ffe03e78?restype=container&comp=list&delimiter=%2F&include=Metadata

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
x-ms-request-id: b15546ee-fc07-4e13-a0d5-7317b76c2311
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:56 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-f8d14a8e-dc34-0424-2137-01a8ffe03e78"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-2052f5f5-63a1-f1d9-7819-d267b6e6b7b9</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:56 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:56 GMT</Last-Modified><Etag>0x22C39A45D486280</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-f8d14a8e-dc34-0424-2137-01a8ffe03e78?restype=container

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
x-ms-request-id: 7bf9202e-917b-4b8a-9568-1555d2458d03
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:56 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

