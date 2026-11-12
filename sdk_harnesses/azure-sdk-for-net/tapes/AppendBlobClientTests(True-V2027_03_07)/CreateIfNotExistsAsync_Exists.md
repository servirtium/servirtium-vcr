## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-79ba7917-80a5-f398-59e3-6bf75714b2db?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).CreateIfNotExistsAsync_Exists
now: 2026-11-12T00:50:51.8585069+00:00

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
etag: "0x25610BD63BF6100"
last-modified: Thu, 12 Nov 2026 00:50:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 92672ba7-db36-4afe-abf0-4cb697fe47d1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-79ba7917-80a5-f398-59e3-6bf75714b2db/test-blob-f83e219f-62a2-5bcd-42de-b755eecef4b1

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
etag: "0x1EB68BEE4BE28E0"
last-modified: Thu, 12 Nov 2026 00:50:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5c47604d-fa3c-4c59-8d72-7df4ba4d0e37
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-79ba7917-80a5-f398-59e3-6bf75714b2db/test-blob-f83e219f-62a2-5bcd-42de-b755eecef4b1

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
x-ms-request-id: 099cfbfd-3add-48c3-b312-caa8057a7966
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:51 GMT
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

## Interaction 3: GET /devstoreaccount1/test-container-79ba7917-80a5-f398-59e3-6bf75714b2db?restype=container&comp=list

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
x-ms-request-id: 4b57f016-78b7-439d-ab45-3447c0f64689
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:51 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-79ba7917-80a5-f398-59e3-6bf75714b2db"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-f83e219f-62a2-5bcd-42de-b755eecef4b1</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:50:51 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:50:51 GMT</Last-Modified><Etag>0x1EB68BEE4BE28E0</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>false</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-79ba7917-80a5-f398-59e3-6bf75714b2db?restype=container

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
x-ms-request-id: d7a360f9-b51d-47bf-bc93-715153679b8e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

