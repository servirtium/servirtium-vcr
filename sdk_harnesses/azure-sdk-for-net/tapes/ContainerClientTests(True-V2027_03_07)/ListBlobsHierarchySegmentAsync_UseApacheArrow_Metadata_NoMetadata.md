## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-45d27414-72f2-9057-8c48-89b36affc630?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsHierarchySegmentAsync_UseApacheArrow_Metadata_NoMetadata
now: 2026-11-12T00:45:04.3801632+00:00

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
etag: "0x225A5627A4D6320"
last-modified: Thu, 12 Nov 2026 00:45:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b28781fd-cd48-4035-b2f0-e5c041c1b7e9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-45d27414-72f2-9057-8c48-89b36affc630/test-blob-3b0c88d4-eb3f-6cd6-10f4-c83c7ccc6555

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
etag: "0x1DA21E642B7D920"
last-modified: Thu, 12 Nov 2026 00:45:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 00b07523-0c27-46f4-9102-7792a0926216
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-45d27414-72f2-9057-8c48-89b36affc630?restype=container&comp=list&delimiter=%2F&include=Metadata

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
x-ms-request-id: c7576d93-a8af-40db-9f22-1f40d5c4a26c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:04 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-45d27414-72f2-9057-8c48-89b36affc630"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-3b0c88d4-eb3f-6cd6-10f4-c83c7ccc6555</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:45:04 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:45:04 GMT</Last-Modified><Etag>0x1DA21E642B7D920</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-45d27414-72f2-9057-8c48-89b36affc630?restype=container

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
x-ms-request-id: 9eb1c08a-ddc9-4100-80fa-a4da0f37cfdd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

