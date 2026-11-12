## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-48a9914b-b5bd-801d-a37d-44cdadd9f002?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).CreateIfNotExistsAsync_Exists
now: 2026-11-12T00:50:37.2259162+00:00

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
etag: "0x265BF8D406B3B00"
last-modified: Thu, 12 Nov 2026 00:50:37 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 65a2b44e-4882-4f17-a535-1ed59c8f1b9c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:37 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-48a9914b-b5bd-801d-a37d-44cdadd9f002/test-blob-d11e49ac-4355-1459-f1a7-050bbd94e820

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
etag: "0x2779C859D691080"
last-modified: Thu, 12 Nov 2026 00:50:37 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9adc5309-527e-4e9b-8fe4-5b9ee0c652ed
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:37 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-48a9914b-b5bd-801d-a37d-44cdadd9f002/test-blob-d11e49ac-4355-1459-f1a7-050bbd94e820

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
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
x-ms-error-code: BlobAlreadyExists
x-ms-request-id: c21d2460-bc32-4682-9446-a6e42832bcd6
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:37 GMT
```
### Response body recorded for playback (409: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>BlobAlreadyExists</Code>
  <Message>The specified blob already exists.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: GET /devstoreaccount1/test-container-48a9914b-b5bd-801d-a37d-44cdadd9f002?restype=container&comp=list

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8392231b-c11d-4297-a76f-a300d30dfbc6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:37 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-48a9914b-b5bd-801d-a37d-44cdadd9f002"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-d11e49ac-4355-1459-f1a7-050bbd94e820</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:50:37 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:50:37 GMT</Last-Modified><Etag>0x2779C859D691080</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-48a9914b-b5bd-801d-a37d-44cdadd9f002?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
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
x-ms-request-id: 19c139d4-739c-41a2-a4eb-248796be287b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:37 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

