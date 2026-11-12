## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-520ba405-b56f-7e0f-444e-ac1d298c44ab?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsFlatSegmentAsync_Snapshot
now: 2026-11-12T00:44:53.7113033+00:00

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
etag: "0x1FCFA9DBAEE8850"
last-modified: Thu, 12 Nov 2026 00:44:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 38f5d19e-aa4a-44a8-8718-aea88b95f3ec
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-520ba405-b56f-7e0f-444e-ac1d298c44ab/test-blob-07a3b456-4601-8c07-f251-8844c724b0b6

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
etag: "0x229A99148C51B20"
last-modified: Thu, 12 Nov 2026 00:44:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 96fbd196-65bd-4723-adb4-7e6e28b79f74
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-520ba405-b56f-7e0f-444e-ac1d298c44ab/test-blob-07a3b456-4601-8c07-f251-8844c724b0b6?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:44:53.7390000Z
etag: "0x229A99148C51B20"
last-modified: Thu, 12 Nov 2026 00:44:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 04d542e3-233d-4fcd-bbbb-6d8498b7b1d3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-520ba405-b56f-7e0f-444e-ac1d298c44ab?restype=container&comp=list&include=Snapshots

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
x-ms-request-id: f8175c83-eec8-4004-a276-4e0623c35a92
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-520ba405-b56f-7e0f-444e-ac1d298c44ab"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-07a3b456-4601-8c07-f251-8844c724b0b6</Name><Snapshot>2026-11-12T00:44:53.7390000Z</Snapshot><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:53 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:53 GMT</Last-Modified><Etag>0x229A99148C51B20</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob><Blob><Name>test-blob-07a3b456-4601-8c07-f251-8844c724b0b6</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:53 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:53 GMT</Last-Modified><Etag>0x229A99148C51B20</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-520ba405-b56f-7e0f-444e-ac1d298c44ab?restype=container

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
x-ms-request-id: 70a2fe73-b2b5-42dc-9f9d-ff80f4c42eb2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

