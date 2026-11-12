## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c1626968-68b8-fe2d-ff49-0795206a511b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsHierarchySegmentAsync_Snapshot
now: 2026-11-12T00:45:01.1341926+00:00

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
etag: "0x26CE9EEBDA86B00"
last-modified: Thu, 12 Nov 2026 00:45:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cf5e079f-0c9d-4a0e-a067-4b149ee8245e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c1626968-68b8-fe2d-ff49-0795206a511b/test-blob-b1c7bad2-a3b7-17ff-3e33-fb428e18aa1e

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
etag: "0x23557760151C7A0"
last-modified: Thu, 12 Nov 2026 00:45:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cc05047f-f65e-4b1d-b7ba-c1f8abc6c731
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-c1626968-68b8-fe2d-ff49-0795206a511b/test-blob-b1c7bad2-a3b7-17ff-3e33-fb428e18aa1e?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:45:01.1510000Z
etag: "0x23557760151C7A0"
last-modified: Thu, 12 Nov 2026 00:45:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 23edfcd0-ef1b-4089-9075-3c707041ff21
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-c1626968-68b8-fe2d-ff49-0795206a511b?restype=container&comp=list&delimiter=%2F&include=Snapshots

### Request headers recorded for playback:

```
Accept: application/xml
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
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 56837598-ae19-42a1-a7d4-ab9852154461
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:01 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-c1626968-68b8-fe2d-ff49-0795206a511b"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-b1c7bad2-a3b7-17ff-3e33-fb428e18aa1e</Name><Snapshot>2026-11-12T00:45:01.1510000Z</Snapshot><Properties><Creation-Time>Thu, 12 Nov 2026 00:45:01 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:45:01 GMT</Last-Modified><Etag>0x23557760151C7A0</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob><Blob><Name>test-blob-b1c7bad2-a3b7-17ff-3e33-fb428e18aa1e</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:45:01 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:45:01 GMT</Last-Modified><Etag>0x23557760151C7A0</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-c1626968-68b8-fe2d-ff49-0795206a511b?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
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
x-ms-request-id: b01c7459-6408-41a8-9643-3623890b1d7d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

