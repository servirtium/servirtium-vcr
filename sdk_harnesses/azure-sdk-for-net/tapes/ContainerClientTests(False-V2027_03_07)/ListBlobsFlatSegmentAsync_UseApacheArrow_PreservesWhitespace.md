## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2d9b832d-1e30-9991-2bfe-f0cdc6824b48?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsFlatSegmentAsync_UseApacheArrow_PreservesWhitespace
now: 2026-11-12T00:43:52.6422767+00:00

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
etag: "0x1D9FDFD6210FB60"
last-modified: Thu, 12 Nov 2026 00:43:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4d142dd3-c944-4ec9-8d9d-d6aa8f2d5f10
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-2d9b832d-1e30-9991-2bfe-f0cdc6824b48/%20%20%20%20prefix

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
data
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2671B23ECD460A0"
last-modified: Thu, 12 Nov 2026 00:43:52 GMT
content-md5: jXd/OF09/siBXSD3SWAm3A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f2d58058-c76b-4d59-b926-9c0d6c73deba
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-2d9b832d-1e30-9991-2bfe-f0cdc6824b48?restype=container&comp=list

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
x-ms-request-id: 1ea04507-9bd3-4a53-a53a-c2dfbc9ede4b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:52 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-2d9b832d-1e30-9991-2bfe-f0cdc6824b48"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>    prefix</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:52 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:52 GMT</Last-Modified><Etag>0x2671B23ECD460A0</Etag><Content-Length>4</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>jXd/OF09/siBXSD3SWAm3A==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:52 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-2d9b832d-1e30-9991-2bfe-f0cdc6824b48?restype=container

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
x-ms-request-id: 75c0d3d2-e4cd-4eff-bdc2-96461ad97a51
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-f62cd957-3fd2-a384-0e29-292f547afc48?restype=container

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
etag: "0x27B72F8D9AB35C0"
last-modified: Thu, 12 Nov 2026 00:43:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ea6cc428-03cf-4ec5-838c-2372d4afdf7c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-f62cd957-3fd2-a384-0e29-292f547afc48/suffix%20%20%20%20

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
data
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E3000F0D9FA6B0"
last-modified: Thu, 12 Nov 2026 00:43:52 GMT
content-md5: jXd/OF09/siBXSD3SWAm3A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c6607736-4163-487f-90c3-05bee886237c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-f62cd957-3fd2-a384-0e29-292f547afc48?restype=container&comp=list

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 786879d8-d943-4c84-ab9b-20d35f9017ef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:52 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-f62cd957-3fd2-a384-0e29-292f547afc48"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>suffix    </Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:52 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:52 GMT</Last-Modified><Etag>0x1E3000F0D9FA6B0</Etag><Content-Length>4</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>jXd/OF09/siBXSD3SWAm3A==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:52 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 7: DELETE /devstoreaccount1/test-container-f62cd957-3fd2-a384-0e29-292f547afc48?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
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
x-ms-request-id: c5e4000f-1cd4-46a3-9d7f-be04ef99770d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-0457925f-7799-f7d2-40fa-2aacc6a616d3?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E0AABBAAA2CBA0"
last-modified: Thu, 12 Nov 2026 00:43:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 063475b5-be7c-4e21-a671-5cec9ee7f4c8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-0457925f-7799-f7d2-40fa-2aacc6a616d3/%20%20%20%20

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
data
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23E0E736391B800"
last-modified: Thu, 12 Nov 2026 00:43:52 GMT
content-md5: jXd/OF09/siBXSD3SWAm3A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2cdeefa2-0534-4dda-ba95-0af87872f480
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-0457925f-7799-f7d2-40fa-2aacc6a616d3?restype=container&comp=list

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
Authorization: SharedKey AUTHORIZATION_11
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
x-ms-request-id: fc04a9c3-27c0-42f9-8374-76c113351a92
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:52 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-0457925f-7799-f7d2-40fa-2aacc6a616d3"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>    </Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:52 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:52 GMT</Last-Modified><Etag>0x23E0E736391B800</Etag><Content-Length>4</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>jXd/OF09/siBXSD3SWAm3A==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:52 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-0457925f-7799-f7d2-40fa-2aacc6a616d3?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
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
x-ms-request-id: 54140840-10d0-4da4-b35f-a92791031c93
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

