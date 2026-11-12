## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8fb987cd-e080-4e8d-5633-5a9372193f68?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsFlatSegmentAsync_PreservesWhitespace
now: 2026-11-12T00:44:53.3154242+00:00

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
etag: "0x21C844E560753E0"
last-modified: Thu, 12 Nov 2026 00:44:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eb8df690-a206-4b2d-a381-b66bff7bd078
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8fb987cd-e080-4e8d-5633-5a9372193f68/%20%20%20%20prefix

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
etag: "0x20C5CB908150B80"
last-modified: Thu, 12 Nov 2026 00:44:53 GMT
content-md5: jXd/OF09/siBXSD3SWAm3A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7bf9f232-64df-49a3-8c8b-b25e80090d65
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-8fb987cd-e080-4e8d-5633-5a9372193f68?restype=container&comp=list

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
x-ms-request-id: e45d5098-d628-406d-9e52-057850d44b83
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-8fb987cd-e080-4e8d-5633-5a9372193f68"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>    prefix</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:53 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:53 GMT</Last-Modified><Etag>0x20C5CB908150B80</Etag><Content-Length>4</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>jXd/OF09/siBXSD3SWAm3A==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:53 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-8fb987cd-e080-4e8d-5633-5a9372193f68?restype=container

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
x-ms-request-id: e710dafd-b685-4856-9cd1-2f68a5c3a962
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-f9da593e-146e-e814-d500-3c27052cf7e9?restype=container

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
etag: "0x26325A67BC6C900"
last-modified: Thu, 12 Nov 2026 00:44:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cd802ef0-8f18-45d2-aa90-6572329a22ef
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-f9da593e-146e-e814-d500-3c27052cf7e9/suffix%20%20%20%20

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
etag: "0x24A195FEB582080"
last-modified: Thu, 12 Nov 2026 00:44:53 GMT
content-md5: jXd/OF09/siBXSD3SWAm3A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 57e72b9e-a640-46a4-8227-91a64e54a4d1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-f9da593e-146e-e814-d500-3c27052cf7e9?restype=container&comp=list

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: e1be2e1f-fe2f-4ace-8a02-12c8cf9b60c9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-f9da593e-146e-e814-d500-3c27052cf7e9"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>suffix    </Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:53 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:53 GMT</Last-Modified><Etag>0x24A195FEB582080</Etag><Content-Length>4</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>jXd/OF09/siBXSD3SWAm3A==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:53 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 7: DELETE /devstoreaccount1/test-container-f9da593e-146e-e814-d500-3c27052cf7e9?restype=container

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
x-ms-request-id: 686fdc85-a8a9-40ac-ae29-470d25a28b09
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-812aea0a-5f4e-2b32-0e34-d9a02a5a4670?restype=container

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
etag: "0x26F8F3A3D1B9CA0"
last-modified: Thu, 12 Nov 2026 00:44:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 381507de-99fb-4804-8780-f0b8f494da95
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-812aea0a-5f4e-2b32-0e34-d9a02a5a4670/%20%20%20%20

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
etag: "0x23113A0900FC880"
last-modified: Thu, 12 Nov 2026 00:44:53 GMT
content-md5: jXd/OF09/siBXSD3SWAm3A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4f48b824-3a3a-4816-be21-8f751c37344e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-812aea0a-5f4e-2b32-0e34-d9a02a5a4670?restype=container&comp=list

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: e2ed04eb-4d7c-4b2c-a54a-7a8b6c601deb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-812aea0a-5f4e-2b32-0e34-d9a02a5a4670"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>    </Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:53 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:53 GMT</Last-Modified><Etag>0x23113A0900FC880</Etag><Content-Length>4</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>jXd/OF09/siBXSD3SWAm3A==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:53 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-812aea0a-5f4e-2b32-0e34-d9a02a5a4670?restype=container

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
x-ms-request-id: fd7ee6ea-0c46-43fa-8678-bfbc66a0b093
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

