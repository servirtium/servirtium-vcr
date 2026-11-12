## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f4a811c0-f0fa-dc93-3e39-022ab64d7c5c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsHierarchySegmentAsync_BlobType
now: 2026-11-12T00:43:54.3133453+00:00

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
etag: "0x1F36265357D0B00"
last-modified: Thu, 12 Nov 2026 00:43:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1a37d393-7437-448b-b99e-506073b933ec
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f4a811c0-f0fa-dc93-3e39-022ab64d7c5c/test-blob-4f993718-69bc-bc0c-f234-f8b231a1341a

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
4EUKKJvRKpMgtjUgPhDkOWV/QnfveFtXBesCxfjgq50E6ElxQ1PARg0GLwUz637hT75NsV69K2fp
syOvz2SaQAuXHFXGc/YRv/xp6ElVIxptIXY6kvo/Rr3ih48wEXeoa+76nM4oGtvHO/JhU0IelJAJ
Qa3uYK0RV9WY5Oxn4a2EwX1aW4ZLRQaaclYI3fJ6xPP/J8/JugpB6UT4kDXvYFpE3JLEwzgJvfyn
U+1WCHnjHSD5Z7neuwZyGXFCUrTQqxL8xABgtgC69mnSImcd6uDKFXMV9figZSGMUqrGxmpH1qfb
WkR5gmcgP3FQC5meVS+Rdz1Bu7YaW17f02RW8y/+iku/QY+bUZIM9baGUFmI7fx7NU4tBhvxwf/m
ma8CyUtCUYBN3xOf9SaqNcX/kwoFVuZn277g0YQvzoCQtbfjCStqRP7YOg7o2z8ogtBW8S304UPI
m+6NYoD8HhCSD0BuxyyalE8MLBzYfv9+t06z2dxTm9R0Gm083eF+3Bz9Vcz/ubuku13e6LQm8Bzv
DqoxSEQ0P3Nr+qy+XbZtjlAA2igyf/6TDx1+dLMfTSlRTc43TJPXyRZZk74O5V6mcVlkJhbzvI+r
njgntcq/TKyCbBDnNUG8KBAS2es/hCm/2ANauyYTXpE/i61arxRLmkcSi3lNvjsXqP0F4OKjbBkP
Z9zHZZGGbw5/qKqUYXn8xz+kLfiwcRnIQhIpDX2umx6TS0c3hDW2ixxqzhaQg0aECRmj/z8hXvbD
/iJ+XWGR0AyLABUxxEMK7aHcRqMDN77LpARkC5zfcu1RdIUSOC662f0JBYMxU0TVmRGdRBhTv8dk
srhdLMVvq44o31C997VyImyl+TE7mlG/jnKLQS7U/rS+roV2XKw3mlr0CHPzF6FbKyKrrcaVKBdn
np5T5GlgU+Gc/0kv/MbAbV/XRpHdy3bQLxYLKFDuKYVtD70N47XwlLSSVxhXKy9c60BmveKGidIo
grRTVCuQrtbEwu0Isomq57HdS3ReeQPnrz0Qh2uj54Xq5WAAnECJAahCkmlCUzm2vNYwqD5eygmx
bKTtgCdqIdpnHcwoqUpxU0nLG+aapFsDWsqVcj5HjBtXTzCcm4GB13GO2jZsjROLv1X0kq4iFsdI
6SZc1a6bIJCw0Vka1LfHSkR1C8oll8y3CrPpUvptNTloU7FbJQLC87qlvLy5ceqdLEdprAv9I1JZ
pcr6ss2WQpwgsYEFbCVCshgPf9oQ/ZjJSyWyBIgtazBfAYA3x0DsD3kfmcBol8AiJ/rz7aN4Sacy
MWao4z4U8kVRpmqlCurXI3Bg8GTYYLRlkNyNOn2M5rjYBZbaRCs7C6Z6F/BVfB0PG8ozF1hDWQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C2C2D85C06C160"
last-modified: Thu, 12 Nov 2026 00:43:54 GMT
content-md5: YJEM74Nk7sLEQm1V7Pz2JA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 165f9e57-2114-45f3-a984-e4b542a7b559
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-f4a811c0-f0fa-dc93-3e39-022ab64d7c5c?restype=container&comp=list&delimiter=%2F

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
x-ms-request-id: e376f3d4-2252-4920-835a-629d9cde32f0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:54 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-f4a811c0-f0fa-dc93-3e39-022ab64d7c5c"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-4f993718-69bc-bc0c-f234-f8b231a1341a</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:54 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:54 GMT</Last-Modified><Etag>0x1C2C2D85C06C160</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>YJEM74Nk7sLEQm1V7Pz2JA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:54 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-f4a811c0-f0fa-dc93-3e39-022ab64d7c5c?restype=container

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
x-ms-request-id: c5d24b66-9f69-41a8-a3a7-d51ff833d1a2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

