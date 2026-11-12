## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-55a786c6-24e1-5fa6-fa96-2d342e4ca291?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).GetAppendBlobClient_NonAsciiName
now: 2026-11-12T00:50:54.1246358+00:00

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
etag: "0x1E2017D6BC33F00"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 073f4379-e3b9-44a6-9565-d84a69dd30e3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-55a786c6-24e1-5fa6-fa96-2d342e4ca291/test-%CE%B2%C2%A3%C2%A9%C3%BE%E2%80%BD%253A-728ee809-03c3-3060-99c3-85dc9dee6f30

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26D801C80A29D80"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8fac1108-7afe-436f-bdab-d951cf2483de
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-55a786c6-24e1-5fa6-fa96-2d342e4ca291?restype=container&comp=list

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
x-ms-request-id: c763bdf4-662e-4891-8491-9af193c05751
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-55a786c6-24e1-5fa6-fa96-2d342e4ca291"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-β£©þ‽%3A-728ee809-03c3-3060-99c3-85dc9dee6f30</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:50:54 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:50:54 GMT</Last-Modified><Etag>0x26D801C80A29D80</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-55a786c6-24e1-5fa6-fa96-2d342e4ca291?restype=container

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
x-ms-request-id: fc57e8f5-e417-43ac-93fb-ab0960a7e345
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

