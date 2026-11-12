## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5c4c3b1a-d8cd-df04-a363-6cf9bb5c1a69?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsFlatSegmentAsync_Snapshot
now: 2026-11-12T00:43:48.1123296+00:00

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
etag: "0x27A41C7D7F3BC40"
last-modified: Thu, 12 Nov 2026 00:43:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 21da9579-c651-4b08-8043-24adc1b17bbe
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5c4c3b1a-d8cd-df04-a363-6cf9bb5c1a69/test-blob-0a6aa603-9ac0-403c-2c87-94543dc6431f

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
etag: "0x267697A4CE6BBE0"
last-modified: Thu, 12 Nov 2026 00:43:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e1195190-f405-44cb-ae0f-85c00beae69a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-5c4c3b1a-d8cd-df04-a363-6cf9bb5c1a69/test-blob-0a6aa603-9ac0-403c-2c87-94543dc6431f?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:43:48.1470000Z
etag: "0x267697A4CE6BBE0"
last-modified: Thu, 12 Nov 2026 00:43:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 30ccdb07-09dc-4016-9780-d044b695daec
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-5c4c3b1a-d8cd-df04-a363-6cf9bb5c1a69?restype=container&comp=list&include=Snapshots

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
x-ms-request-id: 98023a51-e29c-420c-a9ba-aa2c8cf56b95
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:48 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-5c4c3b1a-d8cd-df04-a363-6cf9bb5c1a69"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-0a6aa603-9ac0-403c-2c87-94543dc6431f</Name><Snapshot>2026-11-12T00:43:48.1470000Z</Snapshot><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:48 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:48 GMT</Last-Modified><Etag>0x267697A4CE6BBE0</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob><Blob><Name>test-blob-0a6aa603-9ac0-403c-2c87-94543dc6431f</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:48 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:48 GMT</Last-Modified><Etag>0x267697A4CE6BBE0</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-5c4c3b1a-d8cd-df04-a363-6cf9bb5c1a69?restype=container

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
x-ms-request-id: 803bb51b-0988-459b-87cf-dc22a92db88b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:48 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

