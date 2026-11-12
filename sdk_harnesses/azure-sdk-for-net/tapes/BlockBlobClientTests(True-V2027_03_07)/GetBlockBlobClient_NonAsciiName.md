## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5a3e4f3b-925b-0753-afc8-92e8cb1fe779?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).GetBlockBlobClient_NonAsciiName
now: 2026-11-12T00:50:03.1796489+00:00

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
etag: "0x25F4080907CEF40"
last-modified: Thu, 12 Nov 2026 00:50:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7e00460a-a47d-4e04-81c9-d1896543fd7e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5a3e4f3b-925b-0753-afc8-92e8cb1fe779/test-%CE%B2%C2%A3%C2%A9%C3%BE%E2%80%BD%253A-6028d192-cea1-4562-ee51-bb9722b216b2

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
etag: "0x241C11022C6F480"
last-modified: Thu, 12 Nov 2026 00:50:03 GMT
content-md5: gyZrknWvS/RxzAQiW158pA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 060cff38-91fc-41eb-a08d-ae349aa20f0f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-5a3e4f3b-925b-0753-afc8-92e8cb1fe779?restype=container&comp=list

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
x-ms-request-id: 3f443bd5-f0be-460b-b509-01a2d848a321
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:03 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-5a3e4f3b-925b-0753-afc8-92e8cb1fe779"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-β£©þ‽%3A-6028d192-cea1-4562-ee51-bb9722b216b2</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:50:03 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:50:03 GMT</Last-Modified><Etag>0x241C11022C6F480</Etag><Content-Length>4096</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>gyZrknWvS/RxzAQiW158pA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:50:03 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-5a3e4f3b-925b-0753-afc8-92e8cb1fe779?restype=container

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
x-ms-request-id: a2f50d6b-03b7-4f51-8f47-d0af69363dce
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:03 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

