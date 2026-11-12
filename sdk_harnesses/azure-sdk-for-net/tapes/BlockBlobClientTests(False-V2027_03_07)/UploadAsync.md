## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-700a46b8-88b2-c534-1cd9-b43118e2268e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).UploadAsync
now: 2026-11-12T00:49:48.3874114+00:00

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
etag: "0x26A3FC426235A20"
last-modified: Thu, 12 Nov 2026 00:49:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0b108efa-2b7e-4c4b-91c8-1bfca436b00e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-700a46b8-88b2-c534-1cd9-b43118e2268e/test-blob-4cd2b56f-3bfd-67f8-3eee-b71893f12a63

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
etag: "0x24D59BD18546B80"
last-modified: Thu, 12 Nov 2026 00:49:48 GMT
content-md5: 1CeKz/IcXSv6O0VjtBX80A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b7f2ef12-deab-47f7-98d7-be84967819d2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-700a46b8-88b2-c534-1cd9-b43118e2268e?restype=container&comp=list

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
x-ms-request-id: f2fd50b4-3d5f-4968-a749-8bddb26b607f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:48 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-700a46b8-88b2-c534-1cd9-b43118e2268e"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-4cd2b56f-3bfd-67f8-3eee-b71893f12a63</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:49:48 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:49:48 GMT</Last-Modified><Etag>0x24D59BD18546B80</Etag><Content-Length>4096</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>1CeKz/IcXSv6O0VjtBX80A==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:49:48 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: GET /devstoreaccount1/test-container-700a46b8-88b2-c534-1cd9-b43118e2268e/test-blob-4cd2b56f-3bfd-67f8-3eee-b71893f12a63

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
last-modified: Thu, 12 Nov 2026 00:49:48 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:48 GMT
content-length: 4096
content-type: application/octet-stream
etag: "0x24D59BD18546B80"
content-md5: 1CeKz/IcXSv6O0VjtBX80A==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 24ddb4fe-45f3-42c5-8b76-79bc11d69df4
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:48 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 1CeKz/IcXSv6O0VjtBX80A==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
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
```

## Interaction 4: DELETE /devstoreaccount1/test-container-700a46b8-88b2-c534-1cd9-b43118e2268e?restype=container

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
x-ms-request-id: ee50ff1c-2597-4a9c-b3d8-cdf10d08e055
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:48 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

