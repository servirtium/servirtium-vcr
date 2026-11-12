## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d10e5450-b6c7-4b53-5eb0-439803ba0851?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).SealAsync
now: 2026-11-12T00:50:39.8147449+00:00

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
etag: "0x1CAADDCBF333E80"
last-modified: Thu, 12 Nov 2026 00:50:39 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d8e7ee14-363a-418b-bf65-7a3ad06e016a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:39 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d10e5450-b6c7-4b53-5eb0-439803ba0851/test-blob-1d543e43-5ace-2c2b-0b18-724ddad1acf6

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
etag: "0x24B060C94CA37A0"
last-modified: Thu, 12 Nov 2026 00:50:39 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 46b2c996-bb38-436d-b728-daf94c77092b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:39 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-d10e5450-b6c7-4b53-5eb0-439803ba0851/test-blob-1d543e43-5ace-2c2b-0b18-724ddad1acf6?comp=seal

### Request headers recorded for playback:

```
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
etag: "0x1CA6C94ADD249F0"
last-modified: Thu, 12 Nov 2026 00:50:39 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 348f5de0-02ce-482a-94b4-4f41f64e3391
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:39 GMT
x-ms-blob-sealed: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-d10e5450-b6c7-4b53-5eb0-439803ba0851/test-blob-1d543e43-5ace-2c2b-0b18-724ddad1acf6

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
last-modified: Thu, 12 Nov 2026 00:50:39 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:39 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x1CA6C94ADD249F0"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 241e5b87-61da-4859-88c9-60ef9e7ff7bb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:39 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-d10e5450-b6c7-4b53-5eb0-439803ba0851/test-blob-1d543e43-5ace-2c2b-0b18-724ddad1acf6

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:50:39 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:39 GMT
content-length: 0
content-type: application/octet-stream
etag: "0x1CA6C94ADD249F0"
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e091c927-9260-4a9d-a36a-260bf2db089c
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:50:39 GMT
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 5: GET /devstoreaccount1/test-container-d10e5450-b6c7-4b53-5eb0-439803ba0851?restype=container&comp=list

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
Authorization: SharedKey AUTHORIZATION_6
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
x-ms-request-id: dfc7c5e4-7256-474a-b078-e6ee7137ab90
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:39 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-d10e5450-b6c7-4b53-5eb0-439803ba0851"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-1d543e43-5ace-2c2b-0b18-724ddad1acf6</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:50:39 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:50:39 GMT</Last-Modified><Etag>0x1CA6C94ADD249F0</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>true</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 6: DELETE /devstoreaccount1/test-container-d10e5450-b6c7-4b53-5eb0-439803ba0851?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
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
x-ms-request-id: 5f8405e9-7bd0-4a5b-9aa8-259b44e08168
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:39 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

