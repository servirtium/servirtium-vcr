## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8e004cc8-2227-6ee2-753c-3bebef290d96?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsHierarchySegmentAsync_Snapshot
now: 2026-11-12T00:43:56.6885388+00:00

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
etag: "0x26E6CB8429F2360"
last-modified: Thu, 12 Nov 2026 00:43:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 63a5ad67-9628-4a19-bde4-4924e1672037
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8e004cc8-2227-6ee2-753c-3bebef290d96/test-blob-9428e0be-9eb3-a799-27e6-5cb99167fc82

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
etag: "0x22219F76CFB5140"
last-modified: Thu, 12 Nov 2026 00:43:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f5a7b8f2-492d-45b2-97fa-4cdfc7534675
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-8e004cc8-2227-6ee2-753c-3bebef290d96/test-blob-9428e0be-9eb3-a799-27e6-5cb99167fc82?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:43:56.7030000Z
etag: "0x22219F76CFB5140"
last-modified: Thu, 12 Nov 2026 00:43:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fcb3ebed-fa1a-4d37-9039-17e4bf494c3f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-8e004cc8-2227-6ee2-753c-3bebef290d96?restype=container&comp=list&delimiter=%2F&include=Snapshots

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
x-ms-request-id: 400ddfdd-cb94-4800-8023-dc02dcbf4280
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:56 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-8e004cc8-2227-6ee2-753c-3bebef290d96"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-9428e0be-9eb3-a799-27e6-5cb99167fc82</Name><Snapshot>2026-11-12T00:43:56.7030000Z</Snapshot><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:56 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:56 GMT</Last-Modified><Etag>0x22219F76CFB5140</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob><Blob><Name>test-blob-9428e0be-9eb3-a799-27e6-5cb99167fc82</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:56 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:56 GMT</Last-Modified><Etag>0x22219F76CFB5140</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-8e004cc8-2227-6ee2-753c-3bebef290d96?restype=container

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
x-ms-request-id: ed8144a0-2862-4018-b2e2-ff63b01b28c2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:56 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

