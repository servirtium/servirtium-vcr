## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-29a3e8f6-3727-4a10-7729-439568e56510?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsFlatSegmentAsync_UseApacheArrow_Tags
now: 2026-11-12T00:43:53.8386084+00:00

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
etag: "0x26E3A205880C980"
last-modified: Thu, 12 Nov 2026 00:43:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 35e690f0-2fb0-4fca-8375-3bc2f0fe8a9f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-29a3e8f6-3727-4a10-7729-439568e56510/test-blob-cd6cd34d-8dac-5398-9ac5-dd819b27113a

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
etag: "0x20ACE804CFE3F80"
last-modified: Thu, 12 Nov 2026 00:43:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c4eb3ef4-66d6-49d9-97fc-f3f82bdff3c6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-29a3e8f6-3727-4a10-7729-439568e56510?restype=container&comp=list&include=Tags

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
x-ms-request-id: 3a47b4de-f1bc-4e41-b3f8-42e205cd959e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:53 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-29a3e8f6-3727-4a10-7729-439568e56510"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-cd6cd34d-8dac-5398-9ac5-dd819b27113a</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:53 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:53 GMT</Last-Modified><Etag>0x20ACE804CFE3F80</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><TagCount>2</TagCount><Sealed>false</Sealed></Properties><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-29a3e8f6-3727-4a10-7729-439568e56510?restype=container

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
x-ms-request-id: cd295140-1d53-48c2-8070-52d364c4f0d4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

