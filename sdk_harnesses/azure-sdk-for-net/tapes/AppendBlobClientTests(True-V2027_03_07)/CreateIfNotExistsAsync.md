## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7a5edfa3-f7ca-caa3-4005-a64c34cfa705?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).CreateIfNotExistsAsync
now: 2026-11-12T00:50:51.4494628+00:00

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
etag: "0x208D97F26C5E540"
last-modified: Thu, 12 Nov 2026 00:50:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 94efcdeb-a2b8-4865-a294-f0ac8569a1ed
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7a5edfa3-f7ca-caa3-4005-a64c34cfa705/test-blob-08f0438f-9130-c812-1bc9-cdc20ee7af39

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
etag: "0x1C23EAD49E292C0"
last-modified: Thu, 12 Nov 2026 00:50:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bb4f54b0-bccb-406a-a664-375ba15779ec
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-7a5edfa3-f7ca-caa3-4005-a64c34cfa705?restype=container&comp=list

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
x-ms-request-id: ec276656-5a49-41f4-80cb-f56bbd9c84c0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:51 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-7a5edfa3-f7ca-caa3-4005-a64c34cfa705"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-08f0438f-9130-c812-1bc9-cdc20ee7af39</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:50:51 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:50:51 GMT</Last-Modified><Etag>0x1C23EAD49E292C0</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-7a5edfa3-f7ca-caa3-4005-a64c34cfa705?restype=container

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
x-ms-request-id: 68699c7c-f620-4774-b7a3-e9c8c2c9ee18
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

