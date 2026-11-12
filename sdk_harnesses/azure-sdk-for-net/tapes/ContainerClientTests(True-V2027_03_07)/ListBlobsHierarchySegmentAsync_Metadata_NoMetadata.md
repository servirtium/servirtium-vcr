## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b061e296-d3d3-9b69-7b96-00e8143f3a5d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsHierarchySegmentAsync_Metadata_NoMetadata
now: 2026-11-12T00:45:00.5040665+00:00

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
etag: "0x24E56AE26616AC0"
last-modified: Thu, 12 Nov 2026 00:45:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 09c21214-8360-4016-8ae1-e64e83505edf
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b061e296-d3d3-9b69-7b96-00e8143f3a5d/test-blob-aabd3515-a58c-686c-3f37-e9a252e86cc7

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
etag: "0x1ED43A4DC144200"
last-modified: Thu, 12 Nov 2026 00:45:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9aa74fea-7c9d-4faa-aaa0-dcb8812553b9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-b061e296-d3d3-9b69-7b96-00e8143f3a5d?restype=container&comp=list&delimiter=%2F&include=Metadata

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
x-ms-request-id: bf8717be-1143-4223-ba0c-e8fa79a27a11
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:00 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-b061e296-d3d3-9b69-7b96-00e8143f3a5d"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-aabd3515-a58c-686c-3f37-e9a252e86cc7</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:45:00 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:45:00 GMT</Last-Modified><Etag>0x1ED43A4DC144200</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-b061e296-d3d3-9b69-7b96-00e8143f3a5d?restype=container

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
x-ms-request-id: 4eae3330-8471-4c47-848e-767a1c6454b8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

