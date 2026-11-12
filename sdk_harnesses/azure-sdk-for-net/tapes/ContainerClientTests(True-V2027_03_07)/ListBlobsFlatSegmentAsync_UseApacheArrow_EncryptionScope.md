## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-521e0f4b-3f4d-5bc2-0d10-73ff076247cd?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsFlatSegmentAsync_UseApacheArrow_EncryptionScope
now: 2026-11-12T00:44:55.4560874+00:00

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
etag: "0x2241DB1E8E3EEE0"
last-modified: Thu, 12 Nov 2026 00:44:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 645d22c2-5804-47e3-8792-cbdf55c5b4c4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:55 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-521e0f4b-3f4d-5bc2-0d10-73ff076247cd/test-blob-1ee67f49-daf9-5acd-16aa-7913167e6961

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
etag: "0x263759ECF3144C0"
last-modified: Thu, 12 Nov 2026 00:44:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 033b0987-ff6c-41f7-ba50-4269a3daf0bc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-521e0f4b-3f4d-5bc2-0d10-73ff076247cd?restype=container&comp=list

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
x-ms-request-id: 2d4abcc9-2095-4ce1-bec4-3280fbeeb5e0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:55 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-521e0f4b-3f4d-5bc2-0d10-73ff076247cd"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-1ee67f49-daf9-5acd-16aa-7913167e6961</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:55 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:55 GMT</Last-Modified><Etag>0x263759ECF3144C0</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-521e0f4b-3f4d-5bc2-0d10-73ff076247cd?restype=container

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
x-ms-request-id: bffefdb5-7bba-4037-8f7d-bdd986f996dd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:55 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

