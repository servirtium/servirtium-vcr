## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-93276c2f-0048-e23a-3e3b-86848047e3dc?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsFlatSegmentAsync_UseApacheArrow_RehydratePriority(null)
now: 2026-11-12T00:44:20.4430660+00:00

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
etag: "0x226AA81DA8D6100"
last-modified: Thu, 12 Nov 2026 00:44:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2e5bbd5a-dfe0-41d1-a3c8-cc92bc7ed2b9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-93276c2f-0048-e23a-3e3b-86848047e3dc/test-blob-f41c633a-3fa0-af67-3aa3-6325adb4ce8d

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
4Zqxp2UrNWqcchOpr+EP2cKkppZm0hDvBXhYpJ0VNIps+KPmljt3Dy6yVy4rvQBZlIliCA03Jw6J
waLt0pHNhz2JPbY9KUOGLZdos3riw0d3/xATsix8NNGVXNWZiTyd5NDxooBJHGpG3Np2z3OTp/1a
ddKAudQQDQnlqM1u7aNay8+q8CHHLuOlzNZRBmVdAbTXPhRpHCr74JR3ZHSd2O43GwOk6Lbck0fv
2+z+vgekh6YYlq+P8K+krxCNT8luCPTnGuphuRj9+6rMekA9/CGN093NhEE/pytU/zmmTkN+gdP4
FqQcQs6NG5sEwnZuZrLu/3zsoIOyqHO+DbnfV6xmTvhtReV9cJAOQGmlOuS15ZmHt0/HkuBPRW4x
XjUUrsPvnnR9ACHMcY/s3WAZDW6OCScgWJ9dn7wYHQB3TBJb+pGltptwN+R3uka/2rR/Njj/olQN
9FYkkv64ZOIhVCR9keLPdFfSHtFDqJ1YncQHmefHeKq9TgU6gSOcuNMBVmUhQknSsMHgLIOCyUu4
y/Q6sMv7Wdx6v0PdlPIzNWb+QVE4N1t7Negl50smO4S6gbUuYgcHBv2IpoIG9BvPrfcdg4j6gJSZ
vnvj1XKRVIS/IxI9BdJf9zpUr5DYdUDNVjpUCbf7vwEhlaSMJDGL91L+R9EIkqckvoxOpdADwEk6
FX44PUvNw2MRG28u0tMIyLg+2i5uxMSSMEsqrRoxHdRaUQ6zU7oGMINu93Y49eu5Rd0XxeUbzFG5
pQwAohZI4P2b1IHEVXT+N6mq/8xNWTpgcWg8GVjuPoW8+a2tBo5sJRd5nCBp9O9oGY07cMyFa0zS
oDGuDMakrJX8CFzHUTEbPtm01Lwa9nx51P/Lss64N41h22ZcvhlQ1PCKbOyTochcIDLy0JePuKm0
NTjH2fnHRNHOZXXKvn/AZADMj4mQ5TI3b5KbxWb20iO8qInhifv3wygaxDtSkWGzMmyXwikfI08F
j2pmLH5q15NSDhb13tsE1ctgdSH35d0x55L6Xw/6nIQ63PmRkJapsOyo/4JKvlOQku1dv60tDaqM
NUTrcHiDWHGRugLhc0Q1t8U0T+Va5ik+ac0hnN3WDM5PBFpSvkB0JKYRuQNRrx+oJwjo+b7EMU8a
rQarYbuUuq00kW7q4/iFvyo/SS0m7bmteHXV7hMPi9MLNxE5ycLqff5VHR6wvkQPYjmThegh9L9N
/elGvsyaJAWb3qvnTPVoVMwv0NCb/bkwxovZfAbr6UNR7MzZpL4xuvgYFOCZJxZEKzEb8iPusf8v
FvdAwaj/sPRoll8pjrAN/RXXgujZlp90lVDUz/cfYjrMqo3G8flQGGTrMJC3GpyADfUNFy8XVQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FBDD01D46E93D0"
last-modified: Thu, 12 Nov 2026 00:44:20 GMT
content-md5: 0bZWU8DafhpmeOzaMFstHg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0a74d25b-20fb-4607-9581-975dab04fbb7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-93276c2f-0048-e23a-3e3b-86848047e3dc?restype=container&comp=list

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
x-ms-request-id: 5c56a37b-0141-4eaa-bb57-a5fd8e88e0fe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:20 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-93276c2f-0048-e23a-3e3b-86848047e3dc"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-f41c633a-3fa0-af67-3aa3-6325adb4ce8d</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:20 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:20 GMT</Last-Modified><Etag>0x1FBDD01D46E93D0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>0bZWU8DafhpmeOzaMFstHg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:20 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-93276c2f-0048-e23a-3e3b-86848047e3dc?restype=container

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
x-ms-request-id: 9c5e045f-68b3-403b-872c-4e65f046b249
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

