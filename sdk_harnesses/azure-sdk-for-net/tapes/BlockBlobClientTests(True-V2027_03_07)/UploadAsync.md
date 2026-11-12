## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-614458a9-3c60-dfa7-ec6a-6463627cba55?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).UploadAsync
now: 2026-11-12T00:50:10.7310545+00:00

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
etag: "0x1C25F50A7204440"
last-modified: Thu, 12 Nov 2026 00:50:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 20b39175-1f06-470d-b4ed-1d45f3dbbd4a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:10 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-614458a9-3c60-dfa7-ec6a-6463627cba55/test-blob-2a1f45e2-15b3-01d6-7f66-ab9a796e8afc

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
etag: "0x269CA42EE89F560"
last-modified: Thu, 12 Nov 2026 00:50:10 GMT
content-md5: zkD9XZq91IdRwsBA5M98uw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8e602ac0-9cf4-4124-8c98-350f1fe8a177
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:10 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-614458a9-3c60-dfa7-ec6a-6463627cba55?restype=container&comp=list

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
x-ms-request-id: 2a840b3d-3efa-47d7-936c-e0b169550560
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:10 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-614458a9-3c60-dfa7-ec6a-6463627cba55"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-2a1f45e2-15b3-01d6-7f66-ab9a796e8afc</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:50:10 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:50:10 GMT</Last-Modified><Etag>0x269CA42EE89F560</Etag><Content-Length>4096</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>zkD9XZq91IdRwsBA5M98uw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:50:10 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: GET /devstoreaccount1/test-container-614458a9-3c60-dfa7-ec6a-6463627cba55/test-blob-2a1f45e2-15b3-01d6-7f66-ab9a796e8afc

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:50:10 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:10 GMT
content-length: 4096
content-type: application/octet-stream
etag: "0x269CA42EE89F560"
content-md5: zkD9XZq91IdRwsBA5M98uw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3a451917-11cf-4190-b2c3-9e9642fc71d6
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:50:10 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: zkD9XZq91IdRwsBA5M98uw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
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
```

## Interaction 4: DELETE /devstoreaccount1/test-container-614458a9-3c60-dfa7-ec6a-6463627cba55?restype=container

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
x-ms-request-id: ce8f95e1-7e24-4334-94b0-3a9d968cbb65
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:10 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

