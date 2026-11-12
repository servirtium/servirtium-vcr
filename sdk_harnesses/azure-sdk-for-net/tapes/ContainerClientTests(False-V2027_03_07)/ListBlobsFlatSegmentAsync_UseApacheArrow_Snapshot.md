## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-6af0532b-6172-d7d0-b7f9-1fa3353acaff?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsFlatSegmentAsync_UseApacheArrow_Snapshot
now: 2026-11-12T00:43:53.0006021+00:00

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
etag: "0x23AF547D02505C0"
last-modified: Thu, 12 Nov 2026 00:43:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f1571b6a-d9f1-4eee-9b35-9e1e9a7f4644
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-6af0532b-6172-d7d0-b7f9-1fa3353acaff/test-blob-4bddc806-af36-333f-7cd0-d8e86b23efe9

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
etag: "0x22A0B7C272F9060"
last-modified: Thu, 12 Nov 2026 00:43:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2a9deb66-cef3-4002-b1a3-572faea4e385
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-6af0532b-6172-d7d0-b7f9-1fa3353acaff/test-blob-4bddc806-af36-333f-7cd0-d8e86b23efe9?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:43:53.0260000Z
etag: "0x22A0B7C272F9060"
last-modified: Thu, 12 Nov 2026 00:43:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 28981f37-5cd5-461f-84be-e3891d26b2ef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-6af0532b-6172-d7d0-b7f9-1fa3353acaff?restype=container&comp=list&include=Snapshots

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
x-ms-request-id: a441c77a-5d11-4835-972b-d9f0a8bd7991
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:53 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-6af0532b-6172-d7d0-b7f9-1fa3353acaff"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-4bddc806-af36-333f-7cd0-d8e86b23efe9</Name><Snapshot>2026-11-12T00:43:53.0260000Z</Snapshot><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:53 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:53 GMT</Last-Modified><Etag>0x22A0B7C272F9060</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob><Blob><Name>test-blob-4bddc806-af36-333f-7cd0-d8e86b23efe9</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:53 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:53 GMT</Last-Modified><Etag>0x22A0B7C272F9060</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-6af0532b-6172-d7d0-b7f9-1fa3353acaff?restype=container

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
x-ms-request-id: 4759a518-1854-4877-a16c-a2dc8b7bec62
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

