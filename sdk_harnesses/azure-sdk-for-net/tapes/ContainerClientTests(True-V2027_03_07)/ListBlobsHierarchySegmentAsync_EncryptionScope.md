## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0d2c90aa-1750-3796-dbdd-b27747c02daf?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsHierarchySegmentAsync_EncryptionScope
now: 2026-11-12T00:44:59.8744340+00:00

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
etag: "0x1E8442060892E80"
last-modified: Thu, 12 Nov 2026 00:44:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 59e19f65-af3e-4b5d-b211-cc0e46dd4a61
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:59 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0d2c90aa-1750-3796-dbdd-b27747c02daf/test-blob-bcc53b99-879a-6b17-9d05-5e5c7f915844

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
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
etag: "0x23267176E8E9BA0"
last-modified: Thu, 12 Nov 2026 00:44:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f8fd8a49-b74c-4f25-907f-ab7d04659729
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-0d2c90aa-1750-3796-dbdd-b27747c02daf?restype=container&comp=list&delimiter=%2F

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: 1c4a3a21-63d9-4dbc-b96e-67d559d0c225
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:59 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-0d2c90aa-1750-3796-dbdd-b27747c02daf"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-bcc53b99-879a-6b17-9d05-5e5c7f915844</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:59 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:59 GMT</Last-Modified><Etag>0x23267176E8E9BA0</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-0d2c90aa-1750-3796-dbdd-b27747c02daf?restype=container

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
x-ms-request-id: b5775110-053f-4cec-acfc-1d3762888261
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:59 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

