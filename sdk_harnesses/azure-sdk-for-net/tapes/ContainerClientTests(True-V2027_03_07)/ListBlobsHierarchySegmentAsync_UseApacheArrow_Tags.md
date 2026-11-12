## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f94a35af-bf5e-b472-7cd1-0c3af6e15ca0?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsHierarchySegmentAsync_UseApacheArrow_Tags
now: 2026-11-12T00:45:06.0492027+00:00

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
etag: "0x211B45F0904C0C0"
last-modified: Thu, 12 Nov 2026 00:45:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 65792c04-934c-4419-9773-d9418d286334
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f94a35af-bf5e-b472-7cd1-0c3af6e15ca0/test-blob-d71c020e-c8d8-d724-e1c6-71cdfbe6e539

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-tags: tagKey0=tagValue0&tagKey1=tagValue1
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22BA8657112A800"
last-modified: Thu, 12 Nov 2026 00:45:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6868ca32-8115-4b27-bc74-61b390a546a0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:06 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-f94a35af-bf5e-b472-7cd1-0c3af6e15ca0?restype=container&comp=list&delimiter=%2F&include=Tags

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
x-ms-request-id: d877ec94-6f42-4893-b74f-bbcf73ef2daf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:06 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-f94a35af-bf5e-b472-7cd1-0c3af6e15ca0"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-d71c020e-c8d8-d724-e1c6-71cdfbe6e539</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:45:06 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:45:06 GMT</Last-Modified><Etag>0x22BA8657112A800</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><TagCount>2</TagCount><Sealed>false</Sealed></Properties><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-f94a35af-bf5e-b472-7cd1-0c3af6e15ca0?restype=container

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
x-ms-request-id: 68f6cd10-3bb4-4b71-be1f-dfd6a23ea37a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

