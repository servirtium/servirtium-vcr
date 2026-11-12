## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a7ba0ccd-a2df-31e2-1e06-2e10fcac68f4?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).UploadAsync_NullOptions
now: 2026-11-12T00:49:51.1719948+00:00

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
etag: "0x2151A44D9F886A0"
last-modified: Thu, 12 Nov 2026 00:49:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f44c8b11-e203-4a7b-b8ce-4745244158f6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a7ba0ccd-a2df-31e2-1e06-2e10fcac68f4/test-blob-a02de8f3-0053-02f2-4175-f285408cde3f

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
etag: "0x22432EF4061E7A0"
last-modified: Thu, 12 Nov 2026 00:49:51 GMT
content-md5: yWqfHxJ4ZLJFFmIMV0TctA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: aa1d2827-ef1c-41cf-aadd-38b8c918ae71
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-a7ba0ccd-a2df-31e2-1e06-2e10fcac68f4?restype=container&comp=list

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
x-ms-request-id: 7c239b77-812f-4f03-adab-3751ce158002
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:51 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-a7ba0ccd-a2df-31e2-1e06-2e10fcac68f4"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-a02de8f3-0053-02f2-4175-f285408cde3f</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:49:51 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:49:51 GMT</Last-Modified><Etag>0x22432EF4061E7A0</Etag><Content-Length>4096</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>yWqfHxJ4ZLJFFmIMV0TctA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:49:51 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: GET /devstoreaccount1/test-container-a7ba0ccd-a2df-31e2-1e06-2e10fcac68f4/test-blob-a02de8f3-0053-02f2-4175-f285408cde3f

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
last-modified: Thu, 12 Nov 2026 00:49:51 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:51 GMT
content-length: 4096
content-type: application/octet-stream
etag: "0x22432EF4061E7A0"
content-md5: yWqfHxJ4ZLJFFmIMV0TctA==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d39a3a86-d6bd-4829-a4a6-aa2cf17df40e
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:51 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: yWqfHxJ4ZLJFFmIMV0TctA==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
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
```

## Interaction 4: DELETE /devstoreaccount1/test-container-a7ba0ccd-a2df-31e2-1e06-2e10fcac68f4?restype=container

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
x-ms-request-id: 875c1c10-b9e5-49b6-a76e-86aa79ca318a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

