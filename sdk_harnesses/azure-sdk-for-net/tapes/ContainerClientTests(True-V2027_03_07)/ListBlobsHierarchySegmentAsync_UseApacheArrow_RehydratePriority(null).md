## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-cb17a6be-2ef9-6acc-08cc-7095067a1def?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsHierarchySegmentAsync_UseApacheArrow_RehydratePriority(null)
now: 2026-11-12T00:44:20.9517131+00:00

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
etag: "0x2195E13B36111E0"
last-modified: Thu, 12 Nov 2026 00:44:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a0648870-45b6-4ed5-8a79-a1b92f34ad15
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-cb17a6be-2ef9-6acc-08cc-7095067a1def/test-blob-48c6a66f-fac2-eea7-66d7-ba914c5c3ecd

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
8v0xBGW/2mCDfI4d0ENyEf0rfQDl2XrE/yhkInQ7HqyOoqMJSBiKr8tmxUVrih0jZKiTId495xmD
bQU8WrjrSF7ijy6facjkoM00fxM0WHULQb7Lp/3NULqKhtsSTlUTen3nifrvg/vfroARCWcFThSQ
MBj5H6BgFD9zFeLs0lF4IQWWTM96HL7D7Ph9vEdShDfHgh08GVrdh3S7e24Y8twumOdibwFFFhRa
NjOn41j4IJCrJU8zPAerucVavqBPqvkcTiNf8BU1gmsJ4eImNaMcw1rdbM2M+lzgtrY861dzC4s6
i5U0mDB7daLjKlokhYMhPftGcj4rj1PGfzpe+ZcUldZX7KkO5yoqYvcqqNABuzEyGq1bLZhNDvxB
bhn2HHwLz5SEzZnZE1XRGw9GAOaDxcMIK97puGg9Cd2tzXkQNEZ7H9k7fO2YWAdYihGJBw0WvalV
7fCdIRcsR8S7LEXbwOfJy+EMSEjVcNPWkS1WtALPlw/QukdV3f3CDjUp3CzBfMoqvzssCXVggHwd
x5Dp1ZPB7JU2CgWgc+3kSjkSrJSmFBRjLPTGo46ZcDrKOBZs2DiiZ++Xi3HEiUxOR748TtPndrJ7
hqmf+0kGnJrL1TvWd3IAcESkD4mjnqKoeFvQXSFm48Fk8VGPA2ymkO7X+bQRd89LO92PQmcp2OgG
94PtNj94ZPJ5coYgcG3X/n+ay6TulgCLhCFE16BaOhhpiQvpuFmuXpXBmARJK8pwt0TnjgxDF2CC
YbIdNIxSHjhttudh7UUl620PLf78QllW0x9ccqwMJnKrZ1emkSkJb3rM23TjDsr+wqKfNOlhhR9Z
x2Bs9quLYZB1tYbuflpEBr6EL2fkc8VVXbAJbfKISuE4TcnInHnOQHnjblhDEENIWi0r3FW4dFSb
F5j6gvSe7GuktTGQe2lEte/tAQRsEUxswRLEXG2MgNh1LYXg1L6ERYHsn1oSt9/E5idmynNPLgVL
jcHi2pD+GDVYG07kZOExaLuDf3LyWQoyAHVFJbVkJv6AlEb8omvx7YckupyR34JFNGK3zK6SWTO3
sNkaufKA8/RQZM+bNMZQkZLrzZ9toSDyAPBTrFlP7ToSRfKR1jSUpManQHuzqgCcZzocp4yUSQ65
J7gBLEaaAXaUie7Tv7tdVijZxmClP1bwt0UfMkaufvzj2K57knd/DD8EHyERyKh+v1Bku4OuE+hi
EXUBe84v5gry8OcN4cSwWbkhoCA03+6doHP2ScN4NcTFGYECfpFw1DkWHtfAcd2Ls2HJjXPILTKG
Y9pbOZxHebsiR8hCrdoosMvmHsAX3C6VapZhr6hR/etPexq2FZudzqQcnioVSQWHodyn4Q9xbw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24B36FA81DC5020"
last-modified: Thu, 12 Nov 2026 00:44:20 GMT
content-md5: 0ek2IdNOEa+r1HJ94EVWdg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fec6c7bb-786e-4d14-8f3a-fb18baa4359a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-cb17a6be-2ef9-6acc-08cc-7095067a1def?restype=container&comp=list&delimiter=%2F

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
x-ms-request-id: fcb1315d-c3f7-4862-9030-1e16f2df5b0d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:21 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-cb17a6be-2ef9-6acc-08cc-7095067a1def"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-48c6a66f-fac2-eea7-66d7-ba914c5c3ecd</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:20 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:20 GMT</Last-Modified><Etag>0x24B36FA81DC5020</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>0ek2IdNOEa+r1HJ94EVWdg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:20 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-cb17a6be-2ef9-6acc-08cc-7095067a1def?restype=container

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
x-ms-request-id: 8a23615f-ff4b-4bb2-bb9b-66da55716378
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:21 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

