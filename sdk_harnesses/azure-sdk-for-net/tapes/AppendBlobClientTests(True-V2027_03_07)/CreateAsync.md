## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-691a0842-fe78-aa07-0efd-a01cfc3d6d05?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).CreateAsync
now: 2026-11-12T00:50:48.3479464+00:00

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
etag: "0x27968C1F38D81E0"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 064686b2-b285-4e71-95eb-923fa1d8123c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-691a0842-fe78-aa07-0efd-a01cfc3d6d05/test-blob-df4f4160-58bd-d21c-14b3-b731d83b81ba

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
etag: "0x1BFB37E5BBBAAC0"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ab5bef30-f654-4d92-a26a-aba1b145bcd1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-691a0842-fe78-aa07-0efd-a01cfc3d6d05?restype=container&comp=list

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
x-ms-request-id: 72931e89-92a2-4be2-976a-f9053425ae88
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-691a0842-fe78-aa07-0efd-a01cfc3d6d05"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-df4f4160-58bd-d21c-14b3-b731d83b81ba</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:50:48 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:50:48 GMT</Last-Modified><Etag>0x1BFB37E5BBBAAC0</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-691a0842-fe78-aa07-0efd-a01cfc3d6d05?restype=container

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
x-ms-request-id: 89719783-fb26-4e2f-b867-09c39dc104b5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

