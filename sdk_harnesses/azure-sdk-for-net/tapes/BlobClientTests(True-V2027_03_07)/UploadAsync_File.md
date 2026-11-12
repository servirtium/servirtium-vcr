## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-898550f1-dc4b-b6c3-1790-8a3291760738?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_File
now: 2026-11-12T00:49:14.1230714+00:00

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
etag: "0x1C7B89754E84440"
last-modified: Thu, 12 Nov 2026 00:49:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ce19c02d-3350-4a16-b4d1-0b77188157a2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-898550f1-dc4b-b6c3-1790-8a3291760738/test-blob-121c9f18-54a3-d9da-ff49-18777b8af3d8

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
0I0P3JgoMw08t69wJ+mPFN2vt3d8+raddayJAsNLO42dsmEEZyqg72wO1uylabEWuQOZy9N8W9bX
cWfsnjBK8Hwi03WHi62zD8cKbiTK+Az6ckjAsW+6IFaLLfXDs1E7xOVwgpY8jy1W5rwLceyyDHlb
8izniT4MaLIe+1638Fx1zqo+WnV2vuIbacuzrq9p2SB7aMElUzqnYxrjHZPOn/ZflaJCdLIE5TNJ
zCBzWbkDtCI+O4eaUHtwlvZakqFPTMrUUxgMJ2Rtd4ON24caNApg32hxkGNuxEUn0t28qlKS+oBV
ngWh94290MQEDHTzVWLr+bM43rtmZo7S5FWHscww++EGxJYFv+jbs8CfabfQM3x60LGfWhzE7zd2
zhI3Nh/30xGT7ZDM5jrLXCr7xvzWArHYDOAbkaHFQtVejvDVo3ygqJamPUbrrup30/3xyCg7n8xh
Xyk+3EFwzaq7bldJ9bmuWh5mMMVq7F72pL2k1HmtIu8kc0RTYsxUNm+cMECTLd5DQ24K1W8G9nLL
SDeDzPkwDktnJYF0WvhSEvpVzrsdY3ffYJELok2AHXzRhxmU0Gl2ayL1Kwdcz+h1uMJ0sSi2ruXA
pGxnJWv95wcEo9PevUGQ3mOZKDhvg5GoleqLC2tUG9k00yz9D0a3+EP/VywUl/qB5NPFHYatUSDb
v4+ActycsIf6qekVks8d4jD0byxklP7wCSeYj/1Sh4ILIk+2NoVmY6akGu0Qa1EDqDtWuOL0diuQ
kGi1AyGKpyJnCW9/ZquqjQuFwHkR4J7VlOfC/M+fF6wkJqYdsWCFGXPLqGHhhEGPqyrXb7Wxf6/J
3246x6pTx/LDWkAEjNyq/6YGRjc88xClMlCkyKf3c6f2U9HxS1LIeOBuHikBih5OLG8Oqzh4jexd
lJVZrv9Ly+eZDjkKubRUPc5WzdTmpKcyVpw36Mhufsblk7a9b8nhI1JCaHzlRHO7uW1qIb8Xd/Dt
J1hiE+MeKo9zJCX9l84EdKqBozwqTBEpey5bA1wHzRzGz0dxfw9vJD3tcR9NvSKeZqwUldO0wtpG
OJe0wyYybFcIN8eHkvWbEn/+Pdry274MvJ2w8jdJEg1sKkZ3u2AWugXIRYZaF9O3eYNTtYUAVFzZ
qAaJgnkfvyW6GmiuI1Yf54LVKpY3saXJ+Xi09VyHbNbpnRNZjTiLqYZhoPxrCFYsNM4DKinGovZh
v4kAa8nIM62RxIVDxVpKSYEQ1hGoXvAih8GOhEGsI/sc+M2uiz29mWxO2UPQ6G90uOGotszluGCY
3uMHOq5s5KGJJ8yMm75DUz2kWoStUZ5SGstgBG0vNz9tFqxatV6+4vWiR8Gi5x0jZWKPQF7c6w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20709FD9F764CC0"
last-modified: Thu, 12 Nov 2026 00:49:14 GMT
content-md5: 7btS8hwgAxZ4I2FpIa/ofg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7fa31930-2b60-4cc7-b02b-cc4135a71c30
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-898550f1-dc4b-b6c3-1790-8a3291760738?restype=container&comp=list

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
x-ms-request-id: ef9039c6-437c-4feb-bdbc-7f405acf8f5a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:14 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-898550f1-dc4b-b6c3-1790-8a3291760738"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-121c9f18-54a3-d9da-ff49-18777b8af3d8</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:49:14 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:49:14 GMT</Last-Modified><Etag>0x20709FD9F764CC0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>7btS8hwgAxZ4I2FpIa/ofg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:49:14 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: GET /devstoreaccount1/test-container-898550f1-dc4b-b6c3-1790-8a3291760738/test-blob-121c9f18-54a3-d9da-ff49-18777b8af3d8

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
last-modified: Thu, 12 Nov 2026 00:49:14 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:14 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x20709FD9F764CC0"
content-md5: 7btS8hwgAxZ4I2FpIa/ofg==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4631f4a8-9bef-44ad-aca0-9cf2fb68447f
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:14 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 7btS8hwgAxZ4I2FpIa/ofg==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
0I0P3JgoMw08t69wJ+mPFN2vt3d8+raddayJAsNLO42dsmEEZyqg72wO1uylabEWuQOZy9N8W9bX
cWfsnjBK8Hwi03WHi62zD8cKbiTK+Az6ckjAsW+6IFaLLfXDs1E7xOVwgpY8jy1W5rwLceyyDHlb
8izniT4MaLIe+1638Fx1zqo+WnV2vuIbacuzrq9p2SB7aMElUzqnYxrjHZPOn/ZflaJCdLIE5TNJ
zCBzWbkDtCI+O4eaUHtwlvZakqFPTMrUUxgMJ2Rtd4ON24caNApg32hxkGNuxEUn0t28qlKS+oBV
ngWh94290MQEDHTzVWLr+bM43rtmZo7S5FWHscww++EGxJYFv+jbs8CfabfQM3x60LGfWhzE7zd2
zhI3Nh/30xGT7ZDM5jrLXCr7xvzWArHYDOAbkaHFQtVejvDVo3ygqJamPUbrrup30/3xyCg7n8xh
Xyk+3EFwzaq7bldJ9bmuWh5mMMVq7F72pL2k1HmtIu8kc0RTYsxUNm+cMECTLd5DQ24K1W8G9nLL
SDeDzPkwDktnJYF0WvhSEvpVzrsdY3ffYJELok2AHXzRhxmU0Gl2ayL1Kwdcz+h1uMJ0sSi2ruXA
pGxnJWv95wcEo9PevUGQ3mOZKDhvg5GoleqLC2tUG9k00yz9D0a3+EP/VywUl/qB5NPFHYatUSDb
v4+ActycsIf6qekVks8d4jD0byxklP7wCSeYj/1Sh4ILIk+2NoVmY6akGu0Qa1EDqDtWuOL0diuQ
kGi1AyGKpyJnCW9/ZquqjQuFwHkR4J7VlOfC/M+fF6wkJqYdsWCFGXPLqGHhhEGPqyrXb7Wxf6/J
3246x6pTx/LDWkAEjNyq/6YGRjc88xClMlCkyKf3c6f2U9HxS1LIeOBuHikBih5OLG8Oqzh4jexd
lJVZrv9Ly+eZDjkKubRUPc5WzdTmpKcyVpw36Mhufsblk7a9b8nhI1JCaHzlRHO7uW1qIb8Xd/Dt
J1hiE+MeKo9zJCX9l84EdKqBozwqTBEpey5bA1wHzRzGz0dxfw9vJD3tcR9NvSKeZqwUldO0wtpG
OJe0wyYybFcIN8eHkvWbEn/+Pdry274MvJ2w8jdJEg1sKkZ3u2AWugXIRYZaF9O3eYNTtYUAVFzZ
qAaJgnkfvyW6GmiuI1Yf54LVKpY3saXJ+Xi09VyHbNbpnRNZjTiLqYZhoPxrCFYsNM4DKinGovZh
v4kAa8nIM62RxIVDxVpKSYEQ1hGoXvAih8GOhEGsI/sc+M2uiz29mWxO2UPQ6G90uOGotszluGCY
3uMHOq5s5KGJJ8yMm75DUz2kWoStUZ5SGstgBG0vNz9tFqxatV6+4vWiR8Gi5x0jZWKPQF7c6w==
```

## Interaction 4: DELETE /devstoreaccount1/test-container-898550f1-dc4b-b6c3-1790-8a3291760738?restype=container

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
x-ms-request-id: 94b009f9-05b8-41c3-9c01-0e7099d6f3f1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

