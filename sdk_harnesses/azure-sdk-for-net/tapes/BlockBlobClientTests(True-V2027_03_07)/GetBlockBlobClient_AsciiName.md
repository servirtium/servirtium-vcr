## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c5642b5c-22d1-6481-1047-981aecf88074?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).GetBlockBlobClient_AsciiName
now: 2026-11-12T00:50:02.9001006+00:00

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
etag: "0x252806D2CA45140"
last-modified: Thu, 12 Nov 2026 00:50:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e2a05c2a-d0f2-40b9-98a0-813a07a6d671
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c5642b5c-22d1-6481-1047-981aecf88074/test-blob-9356dc9f-c526-8cc6-6d1a-75840947e0c9

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x210E51FF6917A20"
last-modified: Thu, 12 Nov 2026 00:50:02 GMT
content-md5: DbFbWWxxmwsPCo+M3LA6Yw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c3b2cb09-6f58-4e92-8bd6-5ae66e488b8b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-c5642b5c-22d1-6481-1047-981aecf88074?restype=container&comp=list

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
x-ms-request-id: 279273c9-b91d-4d8a-ab70-db2c5472175d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:02 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-c5642b5c-22d1-6481-1047-981aecf88074"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-9356dc9f-c526-8cc6-6d1a-75840947e0c9</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:50:02 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:50:02 GMT</Last-Modified><Etag>0x210E51FF6917A20</Etag><Content-Length>4096</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>DbFbWWxxmwsPCo+M3LA6Yw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:50:02 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-c5642b5c-22d1-6481-1047-981aecf88074?restype=container

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
x-ms-request-id: 22f6b268-1187-4873-8ff1-06119b8b9c0e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

