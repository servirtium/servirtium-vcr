## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4f95a25e-5c74-d42b-a243-f98f55deaa43?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).UploadAsync_NullOptions
now: 2026-11-12T00:50:13.5146175+00:00

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
etag: "0x200A02A3E7CF8E0"
last-modified: Thu, 12 Nov 2026 00:50:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 490cda31-bb43-4258-a2aa-9961dd2b8a0c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4f95a25e-5c74-d42b-a243-f98f55deaa43/test-blob-ed2b9668-9094-56a0-da33-e6f088db9542

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
etag: "0x22316F6343AFEE0"
last-modified: Thu, 12 Nov 2026 00:50:13 GMT
content-md5: s0l2E9VKtGovkZPsQ4fRsQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a9db679e-b6b0-48c7-85bf-9c941c6e6fe9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-4f95a25e-5c74-d42b-a243-f98f55deaa43?restype=container&comp=list

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
x-ms-request-id: 185c4b93-d465-4724-acb9-ffc19b3fcfaa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:13 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-4f95a25e-5c74-d42b-a243-f98f55deaa43"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-ed2b9668-9094-56a0-da33-e6f088db9542</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:50:13 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:50:13 GMT</Last-Modified><Etag>0x22316F6343AFEE0</Etag><Content-Length>4096</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>s0l2E9VKtGovkZPsQ4fRsQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:50:13 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: GET /devstoreaccount1/test-container-4f95a25e-5c74-d42b-a243-f98f55deaa43/test-blob-ed2b9668-9094-56a0-da33-e6f088db9542

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
last-modified: Thu, 12 Nov 2026 00:50:13 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:13 GMT
content-length: 4096
content-type: application/octet-stream
etag: "0x22316F6343AFEE0"
content-md5: s0l2E9VKtGovkZPsQ4fRsQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4bcf5c82-e941-4bc8-b859-f91556d047cc
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:50:13 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: s0l2E9VKtGovkZPsQ4fRsQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
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
```

## Interaction 4: DELETE /devstoreaccount1/test-container-4f95a25e-5c74-d42b-a243-f98f55deaa43?restype=container

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
x-ms-request-id: bc8d9c25-85cc-4504-9322-9e933a244400
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

