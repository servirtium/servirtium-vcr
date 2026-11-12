## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-fc955302-e593-cce5-ff73-9bca6589cebc?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).GetBlobClient_SpecialCharacters("  ")
now: 2026-11-12T00:44:17.7635764+00:00

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
etag: "0x2313443DD1C6680"
last-modified: Thu, 12 Nov 2026 00:44:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: aef08cdb-8f3d-450c-88ff-ecfef1d400b8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-fc955302-e593-cce5-ff73-9bca6589cebc/%20%20

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
8vQ4hSmEARbYUmx5F7XVYZSna6Ve42HRh7crzxpWfXgyjGrNrqVkfVJ+I0F5a7VKnjo1vh0oXQ+T
Z/5xWDH7gdXzR4pLCLPuQu1T38AgVxsB4THfIb5bCS9bOkem8iUgg6FrhiQr/paHRnsv1X5Ocg/j
cHf/G2AXlz1a8M1rSFDIMlwetNH21uKbWNpCKzSxDMc3w4KtIWdBVO7m0A7IG/4rZ6IhML4+7JmV
ZMKG1GwJqeQGNITNGhH03WDiEAXT0z3bFsSRj9sJ+dboGLykun+C3SYqwed5XUyRLVNdW9yTwZGF
qr6ndxoJ/Tqu5QJUTyLgYDPfqRFWYbl3AGKHq536VFYrHw/B2mULIcSsy3hJPN0xffuotBd/LkkE
L3e4gVKcs5CsKTASH4XO04hNqZZALsSEVi6iUaA+q/DGvKrtU59xDxjonRKsHl122uGOMoSzxAGy
Mysk+mHvbX5ATGPa4IDp25p9WJGx2DfQLHe/sHhrE/ipOh90TRW2+DCUbNL6m/pgpVbqNWtwAFvz
U83qML0F1DhqMaVhdI6ExmBgHWtl1pF9XgoigN6MODnDgflHzMdzjpeaj2lU/zHIZm4KD+Pvjn08
bdGy41Na3vlrnfOUPPmY7Y/Uy0YnKF/ZWRpvgShW1PN8Cl/1wKtDP7Fv6WI+Myl0ciFUG8M2FERy
2Yk561zQFMgAGDGZoi3jkIuVuD/8myXw+g8HArkvRfYbg+chCVRVn9SZPhv42s/0cIo3oVwFdT5k
SfBMyRIP0NM7fh9GwoY3QBhqY1wK9x8/EpIu+KSZFQ2ovMBkCNXCiW5HvVuwrq4EAGFDmxLhWlLQ
DLZ/4dcvoWkRnQXG0jdCqNruwjrDj2TkKvdDVXr7x2Juk/weQqeWGBvynhCpPS0pAfI48pgXDH1S
m7fg7EzvFtaiWD87I2UyWKkf0fBTOuzJGVSHw9TKVod+zKbwtSzOA4c6BuXu7t2NBZnu9zuM/2DL
FtL3Z1MC2AG3vFe/QqJ9UM1pGTQH2yt2+r063F5M8cxFJZ9Z1pszOC7jNjGFzsP3cadtI+Yswzqn
gW2Wx/uia8qLeR0DI3kyNeAGI6T68Sz6Q2q3387lGWFkslUunXAyQMtm+lSm9E0tOu4FJqCWrY9A
nISQ64z8pV+7nnEjA5dw0+LZk/bXVE8diqTf3/PAzgXG7QHsoVU/aVT16lXbCTdXlVK9vRmYaUc0
c2DnHMZs+89sXRaVgzGNmSqi4mr5QYFsiEqgAxDsLYS5ty71V02Oie6Fb6shwRIgMCPu9ofdOzHf
epN7y/e/fzCR3MsDmELcE1l7c9HVS8c3f9Pt/Tb93Hz8Fdy5Er33xu96j+VGHJjhEeIuYshfCQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2421101205BE5C0"
last-modified: Thu, 12 Nov 2026 00:44:17 GMT
content-md5: jp/n3AjGYaRxLaTsFyQjYA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fa9d56ce-02e5-49d4-b321-b112debd71d5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-fc955302-e593-cce5-ff73-9bca6589cebc/%20%20?sv=2027-03-07&st=2026-11-11T23%3A44%3A17Z&se=2026-11-12T01%3A44%3A17Z&sr=b&sp=racwd&sig=Ft0SMKqmRNd4MEAO133xQLXYey5G4qTGUgSbzzqFTk0%3D

### Request headers recorded for playback:

```
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:44:17 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:44:17 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2421101205BE5C0"
content-md5: jp/n3AjGYaRxLaTsFyQjYA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 878833ee-e2b5-472a-932e-6d5d12053bd8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:17 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:44:17 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-fc955302-e593-cce5-ff73-9bca6589cebc?restype=container&comp=list

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
x-ms-request-id: 126534ab-3338-43f4-9e82-6508ca3d36e5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:17 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-fc955302-e593-cce5-ff73-9bca6589cebc"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>  </Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:17 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:17 GMT</Last-Modified><Etag>0x2421101205BE5C0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>jp/n3AjGYaRxLaTsFyQjYA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:17 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-fc955302-e593-cce5-ff73-9bca6589cebc?restype=container

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
x-ms-request-id: a27727ee-6fbe-461c-a2a4-98b2f0a108bf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

