## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-cb0da4de-3cba-3991-b809-cb1faf05e40b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsHierarchySegmentAsync_UseApacheArrow_Metadata_NoMetadata
now: 2026-11-12T00:43:59.8581583+00:00

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
etag: "0x1D5C594D8094020"
last-modified: Thu, 12 Nov 2026 00:43:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5249ab70-d053-4bcc-be12-8119978bf4a5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:59 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-cb0da4de-3cba-3991-b809-cb1faf05e40b/test-blob-83614450-444b-5719-f019-640dae1f626d

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
etag: "0x1F2171795809190"
last-modified: Thu, 12 Nov 2026 00:43:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9f158f62-1f18-4281-8363-a3cae11fbaa4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-cb0da4de-3cba-3991-b809-cb1faf05e40b?restype=container&comp=list&delimiter=%2F&include=Metadata

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
x-ms-request-id: 997b0962-05a3-4ee8-9d17-06ec43cd3af5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:59 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-cb0da4de-3cba-3991-b809-cb1faf05e40b"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-83614450-444b-5719-f019-640dae1f626d</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:59 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:59 GMT</Last-Modified><Etag>0x1F2171795809190</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-cb0da4de-3cba-3991-b809-cb1faf05e40b?restype=container

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
x-ms-request-id: c25ea4aa-2a19-4e89-939d-f44f5c805fcd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:59 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

