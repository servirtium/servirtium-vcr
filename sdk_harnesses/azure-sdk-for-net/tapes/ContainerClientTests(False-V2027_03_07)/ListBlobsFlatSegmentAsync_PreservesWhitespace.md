## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9519ae25-cecb-961f-3066-222d40552494?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsFlatSegmentAsync_PreservesWhitespace
now: 2026-11-12T00:43:47.7614553+00:00

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
etag: "0x1C2262B4C2BF1B0"
last-modified: Thu, 12 Nov 2026 00:43:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 23e653fa-89b4-48e1-8f40-b9c28a6847e5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:47 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9519ae25-cecb-961f-3066-222d40552494/%20%20%20%20prefix

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
etag: "0x25ED4C155352500"
last-modified: Thu, 12 Nov 2026 00:43:47 GMT
content-md5: jXd/OF09/siBXSD3SWAm3A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ce008c2e-0852-4add-b589-f9bf8002191f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-9519ae25-cecb-961f-3066-222d40552494?restype=container&comp=list

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
x-ms-request-id: 3e37aa17-0c15-4d66-bbd4-fdf3a091c4a8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:47 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-9519ae25-cecb-961f-3066-222d40552494"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>    prefix</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:47 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:47 GMT</Last-Modified><Etag>0x25ED4C155352500</Etag><Content-Length>4</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>jXd/OF09/siBXSD3SWAm3A==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:47 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-9519ae25-cecb-961f-3066-222d40552494?restype=container

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
x-ms-request-id: 0f52de25-9f77-4a79-a4f7-9f37f8b6aaec
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:47 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-d5648c2f-3058-cbd6-d55f-4fdc1a212757?restype=container

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
etag: "0x222D5A66F00DB40"
last-modified: Thu, 12 Nov 2026 00:43:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3d305b61-c342-4e57-abee-861b632b0541
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:47 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-d5648c2f-3058-cbd6-d55f-4fdc1a212757/suffix%20%20%20%20

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
etag: "0x245C6D907441E40"
last-modified: Thu, 12 Nov 2026 00:43:47 GMT
content-md5: jXd/OF09/siBXSD3SWAm3A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 838c1e34-c766-4cfd-9cdb-a6351b1ae526
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-d5648c2f-3058-cbd6-d55f-4fdc1a212757?restype=container&comp=list

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
x-ms-request-id: 1f654571-7334-49f0-9039-6e623592d6be
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:47 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-d5648c2f-3058-cbd6-d55f-4fdc1a212757"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>suffix    </Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:47 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:47 GMT</Last-Modified><Etag>0x245C6D907441E40</Etag><Content-Length>4</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>jXd/OF09/siBXSD3SWAm3A==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:47 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 7: DELETE /devstoreaccount1/test-container-d5648c2f-3058-cbd6-d55f-4fdc1a212757?restype=container

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
x-ms-request-id: 193f0227-18c3-4f91-9b19-3f9c28797f76
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:47 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-37819b2c-fedc-2c92-344e-d49ca2c9bbb8?restype=container

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
etag: "0x25E2CA7C5395F00"
last-modified: Thu, 12 Nov 2026 00:43:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fbf212f6-dec1-4bf4-80a2-5a8394f7a8d7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:47 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-37819b2c-fedc-2c92-344e-d49ca2c9bbb8/%20%20%20%20

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
etag: "0x26C3CEE1C3B5D00"
last-modified: Thu, 12 Nov 2026 00:43:47 GMT
content-md5: jXd/OF09/siBXSD3SWAm3A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 678166c8-ae4d-4999-9e8e-7ecd2f683619
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-37819b2c-fedc-2c92-344e-d49ca2c9bbb8?restype=container&comp=list

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
x-ms-request-id: dbcd6f86-413e-4f2a-a757-9881095656ff
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:47 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-37819b2c-fedc-2c92-344e-d49ca2c9bbb8"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>    </Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:47 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:47 GMT</Last-Modified><Etag>0x26C3CEE1C3B5D00</Etag><Content-Length>4</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>jXd/OF09/siBXSD3SWAm3A==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:47 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-37819b2c-fedc-2c92-344e-d49ca2c9bbb8?restype=container

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
x-ms-request-id: b4687706-ecd8-4ebb-bf6a-ea4000d4ee21
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:47 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

