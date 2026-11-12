## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a8bb09ca-fac6-e51e-83d3-b0ab971bf585?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsHierarchySegmentAsync_UseApacheArrow_Snapshot
now: 2026-11-12T00:45:05.0067235+00:00

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
etag: "0x254947209163CC0"
last-modified: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 949b0274-2fd5-4390-af05-56580fbac225
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a8bb09ca-fac6-e51e-83d3-b0ab971bf585/test-blob-6eaafe74-61d0-9145-3da6-6250d08423ba

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
etag: "0x1DED99B78E03930"
last-modified: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7f29a45b-1c11-45e5-a1f4-83a60667851d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-a8bb09ca-fac6-e51e-83d3-b0ab971bf585/test-blob-6eaafe74-61d0-9145-3da6-6250d08423ba?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:45:05.0270000Z
etag: "0x1DED99B78E03930"
last-modified: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d6f26506-e7d0-4738-b0d8-822d29f0b20e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-a8bb09ca-fac6-e51e-83d3-b0ab971bf585?restype=container&comp=list&delimiter=%2F&include=Snapshots

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
x-ms-request-id: a374763c-8786-4d09-bbe8-bbbf59358b83
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:05 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-a8bb09ca-fac6-e51e-83d3-b0ab971bf585"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-6eaafe74-61d0-9145-3da6-6250d08423ba</Name><Snapshot>2026-11-12T00:45:05.0270000Z</Snapshot><Properties><Creation-Time>Thu, 12 Nov 2026 00:45:05 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:45:05 GMT</Last-Modified><Etag>0x1DED99B78E03930</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob><Blob><Name>test-blob-6eaafe74-61d0-9145-3da6-6250d08423ba</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:45:05 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:45:05 GMT</Last-Modified><Etag>0x1DED99B78E03930</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-a8bb09ca-fac6-e51e-83d3-b0ab971bf585?restype=container

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
x-ms-request-id: 30ad38e1-4350-466b-a71e-33d1b522bc0f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:05 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

