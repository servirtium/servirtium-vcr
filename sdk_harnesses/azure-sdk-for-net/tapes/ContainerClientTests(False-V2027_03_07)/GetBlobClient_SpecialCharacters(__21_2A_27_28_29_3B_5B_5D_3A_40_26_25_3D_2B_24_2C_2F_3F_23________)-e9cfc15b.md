## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f5807f6d-6b12-477b-d010-df57e1c68508?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).GetBlobClient_SpecialCharacters("%21%2A%27%28%29%3B%5B%5D%3A%40%26%25%3D%2B%24%2C%2F%3F%23äÄöÖüÜß")
now: 2026-11-12T00:43:12.0051606+00:00

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
etag: "0x247F9E5D14B1C40"
last-modified: Thu, 12 Nov 2026 00:43:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a10a8d20-9858-4c6f-9a67-ef68652a18a6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f5807f6d-6b12-477b-d010-df57e1c68508/%2521%252A%2527%2528%2529%253B%255B%255D%253A%2540%2526%2525%253D%252B%2524%252C%252F%253F%2523%C3%A4%C3%84%C3%B6%C3%96%C3%BC%C3%9C%C3%9F

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
TTJljAojfttNHRW7/oK4SRh0YxSXNYYoQP8J8y55cMeBZqPmO6HKSQCkp/RVv0lOWJU/bWNwcBir
PUwLGout1K1OOpff0Q52qRoU842S0oG2u5qYOgJkEPaKOv1Vvy9099JGB4Sxb4aHyMNIXH2KGWrL
VF/wFJqr6SqgVJcQIerqn/u7S8v8BEsUEHE+G7N5ACGTiWrQhOI4mx1ZEBrvd6bYXryBz82fzlAT
3AMobM52J1R2fZeAGhsYgrCuo/MwJJnKZr339zBU87sZvKffEC9P4unGefoPWEOhaE0d8Stc4rdq
XQYQfy8jIoncZl10OXKBXsAJaqueuw15Vo7jNgKPvdrvdbIoPmO6o1ZxM/HlLC/am5JrUngLy6L4
lymgP+uGTKmDhMS/WCBdT8ZULYcbkylfCJtwJGpi46kQL6c5GWNr6udIYqhrG0NxDQOxtp0a3AP/
QTZQFSc/IKAarih4IzZj6UOg0zCA9O1X/hZmsS0M9lOkOdgsG9S/CEIIUGwa+OrMTs1aeQnSf0xJ
+BcR2G9zDrjV1OleNs1u4MrueKOAPAYrmmJfsXxJ0bqL4iO9rjDSlEK0RSQBbhcA65k+4wapybsR
5T4ME1w8iwIu0lOqsTKaHORhzPfhKitLX8bjC+604hlnrMnyxYDld7kh0pzEVjpmpMciR/3EL7oS
wbSWWYAUeu86QgRop1Zje1Q9wFiPhgiLfGYnkpsbo30P4ATLTx05DVisiRM1/fxwv8uohm5hgjqs
Ct0Z7OhUHp+HWcdSlyw3BLMA4/31Vn5qttLPcxwOrV3JH0VAHyBvV2tzrqQ0HiefcYK7YZ89trRe
rzYVhaqDeaxqiXfm9uWSkIuRgajaNZirLwGaU0u+i2iR4m/qWtLA8DX3ypWvuHudKNEUqzULg3md
aVWo6CVgq/0OVRR1qDW40ZBz4moD+3aG/Sp5qt8zhV72TPB8FwcPlx6XoWNmJ4CcW9qkmKAOmm7e
Iev75gEd29C1fltEO7mJY0tMa1oTINWq3U4Fj+y957KCnvUbFLAdesaSsakkVx8hGzRVwi8UywEW
UAmyGEvk+Jepwp3DbU+bL/CUgW8shoYv43S3aCSDbdLzBcOnamJ6rrgRepWBXa3luZM+gEmS6smC
gzTXLI9zJlTKz2iL88SOGdO2GgzwrYXG0q6QRO2JYRr5JOcto4EpnlNAt41FWcXPr2Z23M+9ktWu
EFrh4uFmQW5Nkc/dYXZRjXy4sPb3gXjowZWHEoRKPJIRfpImR7tx2XUf98f28U3wJE9TBeLfto/h
+CBM3y7pAlU9zOPjK0XARtaA2Imx8tBHlu019zavMccDRE+bJflGNfVxuCVqDPkJkr4LXt4FMA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CCC03EC39FA970"
last-modified: Thu, 12 Nov 2026 00:43:12 GMT
content-md5: xBlnFthKSqz/cfMLU2vyyg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f0e77d4e-eca8-4f4b-9e0e-88334fd8e5ba
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-f5807f6d-6b12-477b-d010-df57e1c68508/%2521%252A%2527%2528%2529%253B%255B%255D%253A%2540%2526%2525%253D%252B%2524%252C%252F%253F%2523%C3%A4%C3%84%C3%B6%C3%96%C3%BC%C3%9C%C3%9F?sv=2027-03-07&st=2026-11-11T23%3A43%3A12Z&se=2026-11-12T01%3A43%3A12Z&sr=b&sp=racwd&sig=OmWpzDGQZnWpwB53Q%2Bwqty7HnruWCZp3n%2BRnMZaQ3oY%3D

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
last-modified: Thu, 12 Nov 2026 00:43:12 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:43:12 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1CCC03EC39FA970"
content-md5: xBlnFthKSqz/cfMLU2vyyg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9c5730da-f465-4948-9a90-11ccaf31cfbd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:12 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:43:12 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-f5807f6d-6b12-477b-d010-df57e1c68508?restype=container&comp=list

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
x-ms-request-id: b3d3bd4b-aeb9-4370-8179-72470b646902
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:12 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-f5807f6d-6b12-477b-d010-df57e1c68508"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>%21%2A%27%28%29%3B%5B%5D%3A%40%26%25%3D%2B%24%2C%2F%3F%23äÄöÖüÜß</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:12 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:12 GMT</Last-Modified><Etag>0x1CCC03EC39FA970</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>xBlnFthKSqz/cfMLU2vyyg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:12 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-f5807f6d-6b12-477b-d010-df57e1c68508?restype=container

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
x-ms-request-id: 192242e6-6037-4f0e-a390-b975cff11eda
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

