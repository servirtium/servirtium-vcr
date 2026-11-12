## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b7e38517-1e40-0afc-9659-f752a4ec6509?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsFlatSegmentAsync_EncryptionScope
now: 2026-11-12T00:44:51.2367514+00:00

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
etag: "0x27112052C185200"
last-modified: Thu, 12 Nov 2026 00:44:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5ccb6ecb-6344-48fe-8016-58903f89f9d4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b7e38517-1e40-0afc-9659-f752a4ec6509/test-blob-93a2b73a-c6fd-2f67-072e-528fef60bc34

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
etag: "0x26AEB1A9C1FECE0"
last-modified: Thu, 12 Nov 2026 00:44:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a51cddd3-cbce-4d21-88f5-6ec0c54630cf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-b7e38517-1e40-0afc-9659-f752a4ec6509?restype=container&comp=list

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
x-ms-request-id: a178c823-9812-4271-9f9d-113ec695e2d3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:51 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-b7e38517-1e40-0afc-9659-f752a4ec6509"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-93a2b73a-c6fd-2f67-072e-528fef60bc34</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:51 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:51 GMT</Last-Modified><Etag>0x26AEB1A9C1FECE0</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-b7e38517-1e40-0afc-9659-f752a4ec6509?restype=container

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
x-ms-request-id: eeb97a46-d688-47af-b2e8-b18a27a52dec
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

