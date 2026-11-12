## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-100944d3-302e-37e7-0574-3e7775a5db10?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsHierarchySegmentAsync_UseApacheArrow_EncryptionScope
now: 2026-11-12T00:43:58.6838444+00:00

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
etag: "0x237F153C579E4A0"
last-modified: Thu, 12 Nov 2026 00:43:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e0b2e0cb-e1ff-4a95-82c8-acf8d9fbac75
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-100944d3-302e-37e7-0574-3e7775a5db10/test-blob-09abd9b8-b657-9407-fce8-fa8777a09ede

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
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
etag: "0x1E9A989D685E370"
last-modified: Thu, 12 Nov 2026 00:43:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: af78d3b2-f57b-4a6d-ace9-2ef9109c7336
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-100944d3-302e-37e7-0574-3e7775a5db10?restype=container&comp=list&delimiter=%2F

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
x-ms-request-id: 57276211-6a68-408f-893c-6b4670a06258
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:58 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-100944d3-302e-37e7-0574-3e7775a5db10"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-09abd9b8-b657-9407-fce8-fa8777a09ede</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:58 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:58 GMT</Last-Modified><Etag>0x1E9A989D685E370</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-100944d3-302e-37e7-0574-3e7775a5db10?restype=container

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
x-ms-request-id: bde84aa1-302e-4d9d-88a3-d4075c5315d4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

