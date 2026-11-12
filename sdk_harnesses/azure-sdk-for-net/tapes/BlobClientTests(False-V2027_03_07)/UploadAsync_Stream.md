## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-26f66251-575e-f712-4bac-c818fae3e80d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_Stream
now: 2026-11-12T00:49:01.7892105+00:00

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
etag: "0x249B77922BEF480"
last-modified: Thu, 12 Nov 2026 00:49:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6c41c6c9-f812-4248-8feb-a78d05bf07f2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-26f66251-575e-f712-4bac-c818fae3e80d/test-blob-726cd87a-b416-8ec5-f8ed-ec71e99fd0f3

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
tLOKbZq8WfaaulcdMdmwvNI3VfYC4TydnWgucWugDqvb1WRHWHtzvn522Fxcp1wfPDCfsUra8NN3
7c8xjuiL+ausQVx0aGNWxJZ3jAjfQPULDjQ6AVxhAeSQz2qrQTCW6t+xsGYAqtPMSOyzYmTKmK3Z
Jn+zUfdOSj945Jn5q4Nm4KIpLY+PC2Rgbblwrp9/xTe90Ruw45nnYmYmh8Y605xpTYHCoWoeShob
UuM93pug+B5hO9lotf0IQssoaYOeJpocBmEdvSTMnocAlZC1qYTKho+n2ZfDAZeEuV+f9eGWfSxJ
Idg6gjr5lJxSZx9sU5hHXeL09k0CWQXJmATFLamlaRhkbIiskANUrUT6cJl3GGXGWJf+oobfR8fT
cOk1NGfzrP4HB+YQm83fn0gIB+hrUoCf/tUSp8eRhCTA2SAZH3ncB8SbcBB+tr3KHgI91j/eZx1p
ljWS4QQ2dYLCT8KsxoDPLP8k0OJvIEgXR4nFVK7l4nECsIhESia/ZfqNvGf7HViBbqo/uZc7+Xbs
epl7cCHU3GxQqRX3iuHZZWrn4mPhHCowROUDpSjaxrYSV9CNQ/TZueD6qnNCieTIZlQsVBcTC11u
Syw80DdEduJf5TIRSyF2DiiD5nG27boBOj7TrXKf/0xyHvjHneiotTSQ46SxtxoytkXujyTruF1y
OpX4cMhwv+bmni0prnFA2jA9JgoWUIMkoPctsW8nh2abVWJTsEVrICO9yhntCQjUrrXzrpFSXOoS
08/RQg53vxfGjlgO7Crr0QXmWIVpN5fuWAK5M9nUSPl3QNx1mt0VRgsCJnuvxcGKCNyMbANkqJw4
4ukLvYs98UVflqxOdTcn0BF6ZxAbP5NBLyv9SNz1E5c/Pbf0Col/xDU1UC4VPJKkZJvy6UGLHKNW
yo5gQKlpaYMUDjiAM8aI+6Lb5e5kLPKYWONAAylWsyATnUD7HoOLzOarAC5aIzHVau2esDe18Z2b
yOjGKGZZvVoXbZWGjdweUBkHuSvEPTSxa5k7uAPpXqyiX1abxaOAUUPTQ7abTt0Rf2AdrTdy14uz
FL3NHQVWLQ7p4y2Ggop1h2jo8Pl9Fhy8Kjmjy7F0MIfL6LHmsjM+fBWosWuvi/zVpyXPiueRNf2g
EfLMs2JddLOmuprZj9Q0qnPj1WSxDJ88ziOLpaWgObKzRaFAcsmzSj23CdBi/BhRmuBzrV+Z7wRT
j+Q+0s8NBYDnJUky8zeqMIsn+QPO2tILOQrFLYxTGlad7eLkdHhuqgNQetbOHqeoyHzUcfUAhbUS
MpjER9j0lAvzlQZVxbsSuU4Afl/7PRtjHWQPfqhhnGgt0ULfqmIrW+bL24mgUgPAwbimAAZVFw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24972ED771E5B60"
last-modified: Thu, 12 Nov 2026 00:49:01 GMT
content-md5: NFWkBwhKwT3EcOvx6VLACA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fc412a42-2e2b-4d61-b999-b174b242e6a3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-26f66251-575e-f712-4bac-c818fae3e80d?restype=container&comp=list

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
x-ms-request-id: 016a2303-36ff-466e-90e2-8156693f2ab8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:01 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-26f66251-575e-f712-4bac-c818fae3e80d"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-726cd87a-b416-8ec5-f8ed-ec71e99fd0f3</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:49:01 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:49:01 GMT</Last-Modified><Etag>0x24972ED771E5B60</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>NFWkBwhKwT3EcOvx6VLACA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:49:01 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: GET /devstoreaccount1/test-container-26f66251-575e-f712-4bac-c818fae3e80d/test-blob-726cd87a-b416-8ec5-f8ed-ec71e99fd0f3

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:49:01 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:01 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x24972ED771E5B60"
content-md5: NFWkBwhKwT3EcOvx6VLACA==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2e4e598a-a8e6-423e-9779-2d064325fe79
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:01 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: NFWkBwhKwT3EcOvx6VLACA==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
tLOKbZq8WfaaulcdMdmwvNI3VfYC4TydnWgucWugDqvb1WRHWHtzvn522Fxcp1wfPDCfsUra8NN3
7c8xjuiL+ausQVx0aGNWxJZ3jAjfQPULDjQ6AVxhAeSQz2qrQTCW6t+xsGYAqtPMSOyzYmTKmK3Z
Jn+zUfdOSj945Jn5q4Nm4KIpLY+PC2Rgbblwrp9/xTe90Ruw45nnYmYmh8Y605xpTYHCoWoeShob
UuM93pug+B5hO9lotf0IQssoaYOeJpocBmEdvSTMnocAlZC1qYTKho+n2ZfDAZeEuV+f9eGWfSxJ
Idg6gjr5lJxSZx9sU5hHXeL09k0CWQXJmATFLamlaRhkbIiskANUrUT6cJl3GGXGWJf+oobfR8fT
cOk1NGfzrP4HB+YQm83fn0gIB+hrUoCf/tUSp8eRhCTA2SAZH3ncB8SbcBB+tr3KHgI91j/eZx1p
ljWS4QQ2dYLCT8KsxoDPLP8k0OJvIEgXR4nFVK7l4nECsIhESia/ZfqNvGf7HViBbqo/uZc7+Xbs
epl7cCHU3GxQqRX3iuHZZWrn4mPhHCowROUDpSjaxrYSV9CNQ/TZueD6qnNCieTIZlQsVBcTC11u
Syw80DdEduJf5TIRSyF2DiiD5nG27boBOj7TrXKf/0xyHvjHneiotTSQ46SxtxoytkXujyTruF1y
OpX4cMhwv+bmni0prnFA2jA9JgoWUIMkoPctsW8nh2abVWJTsEVrICO9yhntCQjUrrXzrpFSXOoS
08/RQg53vxfGjlgO7Crr0QXmWIVpN5fuWAK5M9nUSPl3QNx1mt0VRgsCJnuvxcGKCNyMbANkqJw4
4ukLvYs98UVflqxOdTcn0BF6ZxAbP5NBLyv9SNz1E5c/Pbf0Col/xDU1UC4VPJKkZJvy6UGLHKNW
yo5gQKlpaYMUDjiAM8aI+6Lb5e5kLPKYWONAAylWsyATnUD7HoOLzOarAC5aIzHVau2esDe18Z2b
yOjGKGZZvVoXbZWGjdweUBkHuSvEPTSxa5k7uAPpXqyiX1abxaOAUUPTQ7abTt0Rf2AdrTdy14uz
FL3NHQVWLQ7p4y2Ggop1h2jo8Pl9Fhy8Kjmjy7F0MIfL6LHmsjM+fBWosWuvi/zVpyXPiueRNf2g
EfLMs2JddLOmuprZj9Q0qnPj1WSxDJ88ziOLpaWgObKzRaFAcsmzSj23CdBi/BhRmuBzrV+Z7wRT
j+Q+0s8NBYDnJUky8zeqMIsn+QPO2tILOQrFLYxTGlad7eLkdHhuqgNQetbOHqeoyHzUcfUAhbUS
MpjER9j0lAvzlQZVxbsSuU4Afl/7PRtjHWQPfqhhnGgt0ULfqmIrW+bL24mgUgPAwbimAAZVFw==
```

## Interaction 4: DELETE /devstoreaccount1/test-container-26f66251-575e-f712-4bac-c818fae3e80d?restype=container

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
x-ms-request-id: c0d3ae56-3bca-47ed-b078-43479eeb5b42
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

