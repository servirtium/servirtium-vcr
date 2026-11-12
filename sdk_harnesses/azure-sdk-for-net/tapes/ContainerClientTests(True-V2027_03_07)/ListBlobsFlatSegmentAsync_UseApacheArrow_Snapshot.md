## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-32ba04f6-7231-7f8e-2a33-2a73af82856f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsFlatSegmentAsync_UseApacheArrow_Snapshot
now: 2026-11-12T00:44:57.9541749+00:00

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
etag: "0x1E12382216D05A0"
last-modified: Thu, 12 Nov 2026 00:44:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2d7f3dc9-d87c-4020-aa0b-df0854e8486d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-32ba04f6-7231-7f8e-2a33-2a73af82856f/test-blob-ee21920c-30eb-8a16-d0cf-d99c1034c9bf

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
etag: "0x24F1742AFAE60A0"
last-modified: Thu, 12 Nov 2026 00:44:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f08c2903-b53c-4b1e-90fe-0c59b45f6754
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-32ba04f6-7231-7f8e-2a33-2a73af82856f/test-blob-ee21920c-30eb-8a16-d0cf-d99c1034c9bf?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:44:57.9680000Z
etag: "0x24F1742AFAE60A0"
last-modified: Thu, 12 Nov 2026 00:44:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 625f723d-a800-4e49-a1ae-143e572315e2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-32ba04f6-7231-7f8e-2a33-2a73af82856f?restype=container&comp=list&include=Snapshots

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
x-ms-request-id: f22b6376-082f-4ef4-856b-aa2679f66b31
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-32ba04f6-7231-7f8e-2a33-2a73af82856f"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-ee21920c-30eb-8a16-d0cf-d99c1034c9bf</Name><Snapshot>2026-11-12T00:44:57.9680000Z</Snapshot><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:57 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:57 GMT</Last-Modified><Etag>0x24F1742AFAE60A0</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob><Blob><Name>test-blob-ee21920c-30eb-8a16-d0cf-d99c1034c9bf</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:57 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:57 GMT</Last-Modified><Etag>0x24F1742AFAE60A0</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-32ba04f6-7231-7f8e-2a33-2a73af82856f?restype=container

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
x-ms-request-id: 270f411d-8fbc-423f-9911-0b72783c74bc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

