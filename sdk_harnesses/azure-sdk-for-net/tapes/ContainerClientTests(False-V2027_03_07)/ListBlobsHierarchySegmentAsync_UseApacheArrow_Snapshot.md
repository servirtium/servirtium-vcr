## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1c3506c6-3148-e80b-f80c-50982c909ac6?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsHierarchySegmentAsync_UseApacheArrow_Snapshot
now: 2026-11-12T00:44:00.6122576+00:00

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
etag: "0x2638AD50163C560"
last-modified: Thu, 12 Nov 2026 00:44:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 29da305c-5aee-45bc-81ce-97ee33741b01
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1c3506c6-3148-e80b-f80c-50982c909ac6/test-blob-abd171c6-2eb7-a9af-5d5e-20674935e8a2

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
etag: "0x1ECC2B574251AE0"
last-modified: Thu, 12 Nov 2026 00:44:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ef96d64e-5a38-4059-aa39-9e5218c77dc4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-1c3506c6-3148-e80b-f80c-50982c909ac6/test-blob-abd171c6-2eb7-a9af-5d5e-20674935e8a2?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:44:00.6300000Z
etag: "0x1ECC2B574251AE0"
last-modified: Thu, 12 Nov 2026 00:44:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8dfe70e4-2aad-4b10-a6d3-45013de5a120
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-1c3506c6-3148-e80b-f80c-50982c909ac6?restype=container&comp=list&delimiter=%2F&include=Snapshots

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
x-ms-request-id: f83dcf13-c33d-43a9-a7fe-a65c217a0cfe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:00 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-1c3506c6-3148-e80b-f80c-50982c909ac6"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-abd171c6-2eb7-a9af-5d5e-20674935e8a2</Name><Snapshot>2026-11-12T00:44:00.6300000Z</Snapshot><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:00 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:00 GMT</Last-Modified><Etag>0x1ECC2B574251AE0</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob><Blob><Name>test-blob-abd171c6-2eb7-a9af-5d5e-20674935e8a2</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:00 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:00 GMT</Last-Modified><Etag>0x1ECC2B574251AE0</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-1c3506c6-3148-e80b-f80c-50982c909ac6?restype=container

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
x-ms-request-id: 4f43b10f-8bd3-4470-a2a6-11884a14248d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

