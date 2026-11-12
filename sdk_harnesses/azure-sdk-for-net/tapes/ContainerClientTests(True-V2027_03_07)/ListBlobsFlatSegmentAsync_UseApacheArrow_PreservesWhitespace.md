## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-151af0a6-d4a6-78b7-ff47-97ac0a1d9815?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsFlatSegmentAsync_UseApacheArrow_PreservesWhitespace
now: 2026-11-12T00:44:57.6112003+00:00

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
etag: "0x1D8455811ED0A20"
last-modified: Thu, 12 Nov 2026 00:44:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9b228188-bb9b-473c-8848-bf407baf47bc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-151af0a6-d4a6-78b7-ff47-97ac0a1d9815/%20%20%20%20prefix

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
etag: "0x1D0A229BA77A060"
last-modified: Thu, 12 Nov 2026 00:44:57 GMT
content-md5: jXd/OF09/siBXSD3SWAm3A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 54e385f7-d9ba-4384-a136-caef343b4152
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-151af0a6-d4a6-78b7-ff47-97ac0a1d9815?restype=container&comp=list

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
x-ms-request-id: 0373ca59-4274-4469-8f43-86959f3effa4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-151af0a6-d4a6-78b7-ff47-97ac0a1d9815"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>    prefix</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:57 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:57 GMT</Last-Modified><Etag>0x1D0A229BA77A060</Etag><Content-Length>4</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>jXd/OF09/siBXSD3SWAm3A==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:57 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-151af0a6-d4a6-78b7-ff47-97ac0a1d9815?restype=container

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
x-ms-request-id: 7c5b6bb9-e72a-4225-8098-867e6451cb1e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-d00a665d-bd9c-58a4-ec1f-bce1e6c9ebc0?restype=container

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
etag: "0x1D027C29B9BA4B0"
last-modified: Thu, 12 Nov 2026 00:44:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f212a363-c5c9-4eb0-a5e7-4781bc486020
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-d00a665d-bd9c-58a4-ec1f-bce1e6c9ebc0/suffix%20%20%20%20

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
etag: "0x211027A7F25FEC0"
last-modified: Thu, 12 Nov 2026 00:44:57 GMT
content-md5: jXd/OF09/siBXSD3SWAm3A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a84a30cd-e6d0-4704-8a94-e21947204c22
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-d00a665d-bd9c-58a4-ec1f-bce1e6c9ebc0?restype=container&comp=list

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
x-ms-request-id: ade41f71-4b18-4a7a-887d-bc973dda9041
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-d00a665d-bd9c-58a4-ec1f-bce1e6c9ebc0"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>suffix    </Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:57 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:57 GMT</Last-Modified><Etag>0x211027A7F25FEC0</Etag><Content-Length>4</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>jXd/OF09/siBXSD3SWAm3A==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:57 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 7: DELETE /devstoreaccount1/test-container-d00a665d-bd9c-58a4-ec1f-bce1e6c9ebc0?restype=container

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
x-ms-request-id: 06d533a3-bdca-4897-95db-2ab2e72258c8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-2103324e-8004-3269-4b1a-fc5f9204c130?restype=container

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
etag: "0x24272EE11477200"
last-modified: Thu, 12 Nov 2026 00:44:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4f0a0c6f-e1a0-4575-a527-5f2f6d36d822
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-2103324e-8004-3269-4b1a-fc5f9204c130/%20%20%20%20

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
etag: "0x244A79D6DAF6780"
last-modified: Thu, 12 Nov 2026 00:44:57 GMT
content-md5: jXd/OF09/siBXSD3SWAm3A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ab1bb4b8-7362-4062-906c-e74621ce28a0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-2103324e-8004-3269-4b1a-fc5f9204c130?restype=container&comp=list

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
x-ms-request-id: b671b99f-69fd-4895-8240-64744ed6b3fa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-2103324e-8004-3269-4b1a-fc5f9204c130"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>    </Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:57 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:57 GMT</Last-Modified><Etag>0x244A79D6DAF6780</Etag><Content-Length>4</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>jXd/OF09/siBXSD3SWAm3A==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:57 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-2103324e-8004-3269-4b1a-fc5f9204c130?restype=container

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
x-ms-request-id: a0c8f69b-904c-4ace-bb7d-b51b6ff179ef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

