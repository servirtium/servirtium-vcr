## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-08ac0347-9602-fd36-ae16-c5188033d762?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).GetBlobClient_SpecialCharacters("%21%2A%27%28%29%3B%5B%5D%3A%40%26%25%3D%2B%24%2C%2F%3F%23äÄöÖüÜß")
now: 2026-11-12T00:44:16.9369467+00:00

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
etag: "0x252AC764E6A2E60"
last-modified: Thu, 12 Nov 2026 00:44:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9077f186-cf16-4082-9e9f-d9bde20c3188
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-08ac0347-9602-fd36-ae16-c5188033d762/%2521%252A%2527%2528%2529%253B%255B%255D%253A%2540%2526%2525%253D%252B%2524%252C%252F%253F%2523%C3%A4%C3%84%C3%B6%C3%96%C3%BC%C3%9C%C3%9F

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
8VDsYCONO+Purw3c2uWaT2qElYbXAGCfKN86QOtmrvijXNmUvrJ7usfJGVKIWiPIe3at+51Ri/Hv
TDdDUvv3hwEUOH0MBpC4Cdu+DuYNF867ccR1ubJbUtHopHJ7OGfM0ZJRdCGmvHTl9fLBk3wK4TVo
h+E3gc5OueasJGEdPNB08jxUvKKtFbRQj8O/mb5U3cI9ErCFlU/DAro6+pgTyLgiTaFAtiWSu3Es
5vELjx8nV0ae3yof7l3skLnncxsbPMcKnUwdEyedq1c+WK5euHObEqJSdOiOAl5EVCVrqkdWEKkq
APHTCkMfATTT4JavjthGTGB4ycjefJvt2b8BMgEP6EcEM7eByAhfMnO0uiHIlcZNJF3n3UfhS4NW
5TCEHs4yxPhOqlohxIRYGZdVKcJ6JUT5tA2jJwoAIuczK+PX2xSkgvYoeuprLGDZjsSviyLB27/s
imnBjpztTYhy7ZihgD6DsafLUatajYityphGUZfFclAj6lCq4vNaOixh+T7HOA2FLNp69okUkv3h
E8QDp/zwrHpIfZbu2M60cRZ++JRJ5pKKwCS8S3zGD1hTyM8uV5MwcEzDfrp3l1MMxYRylZpomC0y
eObXNGH+gW49mhD/hRqDTodIhWfXEyjRsIX3U3m+6jCh/N6sWDzqxfxLOfxCDT9q70YSIBLFWmW+
BYPbBy71f6/gXYk71vVKXcBri9krjqNGjGQyq8od3KF57lO5D73OVrpNYq+1LxlRyMJSWs+Lknbf
lHrKwtTlwoDoweeikU0CnDUf3ivzkFxK4eIIy4LR7lzc2XpCBJTlaKAuzW4yrzd0T72abLNK7AQd
f+Dx3Pb+FtKKxbfSwJigOXaLxcPuGDKrk3zEN4Gpke12JISz9IupL7abp+l/oY8k+TM8vyZBL2eu
Rkl6Ot9R4TPKXJsU7UXr4ZUMUnBJLPHtoD5ObNLGNfUdBK1CL/XXSsa1tEXzEAzuUd2RNNz2ZRpX
jZqhA3VhBCem9uiXqbKfNQiqk3es+Y8xXxr0NAEYJ5+T6qFbNkZQU7AdTBkjVqgr8f7US9Giq5MK
b6Nbbc8mjs9IA78QRP/BWkDHjqx2DQlxyEMCRNzN8D4OUcaj9eXg975K2lLpG63+EvGR2x3mk2Ga
6aWMI0nzexOAAvM4HWRa5pbuKzO2iK2WAzHrOxUgJ71lCQxAVNR0V18/aBi6xfSMN/WH+Ggu5GH3
9R8YCD/9YNo10xRYGZHCedTTdh+U3D09XgMfmS9VNiWqSV60XE8fQgg+hPLfMx5kxX6TWm5CYhnh
2qk73ser4JzvrdAyDRyFtDQWVldLXSrlu9Owwdy2aOZF0oGl42RBk6RV8IZOMbdhDqY5KwzClg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22762ED5D866940"
last-modified: Thu, 12 Nov 2026 00:44:16 GMT
content-md5: 7mRNhV4ZcHzlklUxybrgSA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9e53d19f-1481-4ddb-9e0c-a0b1872e4f2d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-08ac0347-9602-fd36-ae16-c5188033d762/%2521%252A%2527%2528%2529%253B%255B%255D%253A%2540%2526%2525%253D%252B%2524%252C%252F%253F%2523%C3%A4%C3%84%C3%B6%C3%96%C3%BC%C3%9C%C3%9F?sv=2027-03-07&st=2026-11-11T23%3A44%3A16Z&se=2026-11-12T01%3A44%3A16Z&sr=b&sp=racwd&sig=GVo%2FbM0hI4m82hFuiamTaFdunSHJycsXwX71wknSVu4%3D

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
last-modified: Thu, 12 Nov 2026 00:44:16 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:44:16 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x22762ED5D866940"
content-md5: 7mRNhV4ZcHzlklUxybrgSA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2cef71a2-6551-481c-845e-e09e3e9ef715
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:16 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:44:16 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-08ac0347-9602-fd36-ae16-c5188033d762?restype=container&comp=list

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
x-ms-request-id: f53a0a56-e1ba-4903-a17a-742b3a0c1170
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:17 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-08ac0347-9602-fd36-ae16-c5188033d762"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>%21%2A%27%28%29%3B%5B%5D%3A%40%26%25%3D%2B%24%2C%2F%3F%23äÄöÖüÜß</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:16 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:16 GMT</Last-Modified><Etag>0x22762ED5D866940</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>7mRNhV4ZcHzlklUxybrgSA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:16 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-08ac0347-9602-fd36-ae16-c5188033d762?restype=container

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
x-ms-request-id: 8bfa578b-d66d-484a-b653-21c908a94cec
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

