## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7e8a5e19-6df5-94b6-2367-fd30c8c97173?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).GetPageBlobClient_AsciiName
now: 2026-11-12T00:51:49.9431171+00:00

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
etag: "0x23CE231E077A180"
last-modified: Thu, 12 Nov 2026 00:51:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d82be099-d70f-4c03-a9bb-d48a0feb2d5e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:49 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7e8a5e19-6df5-94b6-2367-fd30c8c97173/test-blob-8fd98df3-2bf8-27b1-7dec-5db543e03180

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DEF3BF619EE440"
last-modified: Thu, 12 Nov 2026 00:51:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 60daa678-d969-498d-bbe1-e9ba63cdee6e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-7e8a5e19-6df5-94b6-2367-fd30c8c97173?restype=container&comp=list

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
x-ms-request-id: 6cf1d3df-0fc8-46b9-8bdf-ee9f8716b553
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:49 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-7e8a5e19-6df5-94b6-2367-fd30c8c97173"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-8fd98df3-2bf8-27b1-7dec-5db543e03180</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:51:49 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:51:49 GMT</Last-Modified><Etag>0x1DEF3BF619EE440</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><x-ms-blob-sequence-number>0</x-ms-blob-sequence-number><BlobType>PageBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-7e8a5e19-6df5-94b6-2367-fd30c8c97173?restype=container

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
x-ms-request-id: 93a25f3d-2d9d-4d96-bd10-cee98febe165
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:49 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

