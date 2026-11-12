## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ddfb9603-5412-65a2-e66c-c2adc9ce8a41?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).GetBlockBlobClient_AsciiName
now: 2026-11-12T00:49:40.5683034+00:00

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
etag: "0x21264A6ED9EB460"
last-modified: Thu, 12 Nov 2026 00:49:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b5283d63-d535-4236-bf44-be6300cf8400
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ddfb9603-5412-65a2-e66c-c2adc9ce8a41/test-blob-adddf4e1-c739-930e-6cfd-02bcbd93f76a

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
etag: "0x23C886C13D1F0E0"
last-modified: Thu, 12 Nov 2026 00:49:40 GMT
content-md5: AUsq044SVARjq1991H2Vtw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4823497a-9078-4158-a678-18a40ee5a3d7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:40 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-ddfb9603-5412-65a2-e66c-c2adc9ce8a41?restype=container&comp=list

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
x-ms-request-id: 1a464d3f-05e1-4e4c-b1de-800ab0363d80
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:40 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-ddfb9603-5412-65a2-e66c-c2adc9ce8a41"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-adddf4e1-c739-930e-6cfd-02bcbd93f76a</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:49:40 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:49:40 GMT</Last-Modified><Etag>0x23C886C13D1F0E0</Etag><Content-Length>4096</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>AUsq044SVARjq1991H2Vtw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:49:40 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-ddfb9603-5412-65a2-e66c-c2adc9ce8a41?restype=container

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
x-ms-request-id: 6f232c55-e267-435a-aae5-365b4eeb68f9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

