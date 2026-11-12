## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9e047606-ac10-d612-ffe6-6b1882555e25?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).GetPageBlobClient_NonAsciiName
now: 2026-11-12T00:51:50.1808567+00:00

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
etag: "0x21921B9DA88C5E0"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b1c8cec7-7f73-4950-84ba-edd17fc9f647
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9e047606-ac10-d612-ffe6-6b1882555e25/test-%CE%B2%C2%A3%C2%A9%C3%BE%E2%80%BD%253A-a12484d0-2170-e3f6-de7a-c65162e962d2

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
etag: "0x1F116E5452526C0"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7d370248-d97a-4874-ba82-4e52362cdf40
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-9e047606-ac10-d612-ffe6-6b1882555e25?restype=container&comp=list

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
x-ms-request-id: 18167129-f876-4d5f-93f8-b80689998551
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-9e047606-ac10-d612-ffe6-6b1882555e25"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-β£©þ‽%3A-a12484d0-2170-e3f6-de7a-c65162e962d2</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:51:50 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:51:50 GMT</Last-Modified><Etag>0x1F116E5452526C0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><x-ms-blob-sequence-number>0</x-ms-blob-sequence-number><BlobType>PageBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-9e047606-ac10-d612-ffe6-6b1882555e25?restype=container

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
x-ms-request-id: ddf4f788-f20c-4983-a0c7-ece6183b59bd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

