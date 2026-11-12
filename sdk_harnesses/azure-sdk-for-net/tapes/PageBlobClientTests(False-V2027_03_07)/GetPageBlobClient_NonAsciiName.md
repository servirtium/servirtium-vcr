## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a76445b0-8d24-196e-5896-a3bc3df439e6?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).GetPageBlobClient_NonAsciiName
now: 2026-11-12T00:51:20.2553163+00:00

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
etag: "0x25ECB008CF8BDA0"
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 683b5b8f-4717-47e8-8a4a-611716ff2013
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a76445b0-8d24-196e-5896-a3bc3df439e6/test-%CE%B2%C2%A3%C2%A9%C3%BE%E2%80%BD%253A-b28d8323-95d9-7ec9-993b-c3e74c03d22e

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
etag: "0x23A4B95C2F81580"
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e678616c-b4a7-46f5-995f-85b8655aa6cd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-a76445b0-8d24-196e-5896-a3bc3df439e6?restype=container&comp=list

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
x-ms-request-id: 4fa3fa7e-806e-466e-ae27-8d4141abd1b0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-a76445b0-8d24-196e-5896-a3bc3df439e6"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-β£©þ‽%3A-b28d8323-95d9-7ec9-993b-c3e74c03d22e</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:51:20 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:51:20 GMT</Last-Modified><Etag>0x23A4B95C2F81580</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><x-ms-blob-sequence-number>0</x-ms-blob-sequence-number><BlobType>PageBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-a76445b0-8d24-196e-5896-a3bc3df439e6?restype=container

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
x-ms-request-id: 5bfa7fd5-3a7c-4c19-8c29-e51031825836
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

