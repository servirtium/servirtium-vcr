## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-33645ce9-fa6d-f9dd-0aa5-2844f7e505a4?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).GetPageBlobClient_AsciiName
now: 2026-11-12T00:51:19.9964215+00:00

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
etag: "0x2390BB49EF3C1C0"
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6b021efd-a388-428e-9671-62029409f1c0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-33645ce9-fa6d-f9dd-0aa5-2844f7e505a4/test-blob-f19b486e-6999-476c-d356-f681c86e19f1

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
etag: "0x268B18E99B79E00"
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 75bae87e-09f1-42ab-ae84-97ddad7e3c9b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-33645ce9-fa6d-f9dd-0aa5-2844f7e505a4?restype=container&comp=list

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
x-ms-request-id: 83977b99-60c5-48fa-949f-45bb9ddd716b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-33645ce9-fa6d-f9dd-0aa5-2844f7e505a4"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-f19b486e-6999-476c-d356-f681c86e19f1</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:51:20 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:51:20 GMT</Last-Modified><Etag>0x268B18E99B79E00</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><x-ms-blob-sequence-number>0</x-ms-blob-sequence-number><BlobType>PageBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-33645ce9-fa6d-f9dd-0aa5-2844f7e505a4?restype=container

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
x-ms-request-id: 2df8c26f-ab7b-41f3-89ef-33ef01f995a6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

