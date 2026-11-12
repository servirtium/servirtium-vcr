## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7fe3d830-45ea-43a6-d256-b5b202ebbe48?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsFlatSegmentAsync_Metadata
now: 2026-11-12T00:43:47.0442151+00:00

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
etag: "0x237D2514CA5E980"
last-modified: Thu, 12 Nov 2026 00:43:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6aa097a6-9c58-436e-81ef-d04b72925aa8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:47 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7fe3d830-45ea-43a6-d256-b5b202ebbe48/test-blob-be5e9e69-a68d-b51a-177b-fce8193316eb

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x235D862CD59BB60"
last-modified: Thu, 12 Nov 2026 00:43:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 245150a5-042e-4922-a8d5-28bcb7c1f68f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-7fe3d830-45ea-43a6-d256-b5b202ebbe48?restype=container&comp=list&include=Metadata

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
x-ms-request-id: ebdf1883-2fe4-44bd-b30f-16ebe433bc23
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:47 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-7fe3d830-45ea-43a6-d256-b5b202ebbe48"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-be5e9e69-a68d-b51a-177b-fce8193316eb</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:47 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:47 GMT</Last-Modified><Etag>0x235D862CD59BB60</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties><Metadata><foo>bar</foo><meta>data</meta><Capital>letter</Capital><UPPER>case</UPPER></Metadata></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-7fe3d830-45ea-43a6-d256-b5b202ebbe48?restype=container

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
x-ms-request-id: 921b6661-6c0b-4891-9dca-4335d85b9263
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:47 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

