## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-62f11179-fa38-1a65-9aa6-1b38dd721f0e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).GetBlobClient_SpecialCharacters("my cool blob")
now: 2026-11-12T00:43:12.2882712+00:00

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
etag: "0x1F1D5CEA78B0960"
last-modified: Thu, 12 Nov 2026 00:43:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f1837190-dc66-4768-9be9-6782f4365567
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-62f11179-fa38-1a65-9aa6-1b38dd721f0e/my%20cool%20blob

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
lLPLuB1AkPokAJCeTSUqkrzCuUEZzog79Vjduz4l+3PD0/rEoI3wOYH2Pjdqxs10fIl7Grjd9cUr
j8LFY9W8/wUc23kqZfEv0oDAIpBQ0S6KaD61qeC75t00mRHKK9WsOT4yTutTSRaXTEg3HdI12r6U
OvqWBlYkYPWc9svgZKarE+lRHYJDNx4oHlyYg8gL/r5TNvHaFjPoDu72t1NKtuihjArp5Lw8UAPb
bej5i9wskPcNjS610P22aA+UTH/L3Wd09ve+IhoBFuXu/qhK7oIRyidbPSm57LsNM3utpwSDEJCB
hZTlbW7cC3ZJx9FUa3mMg4JYb589ugo7se+fVG/hau4XyWntK1y4fjKzcCTquMcBICSBK6DwQ8qK
qbx/PbcHZ1ziPKIQnlcmn/FtikrmUfknnTNKXz9OJ4aeY4GfOUF7qwjHB3sl8YLNWouvg7iAo1jD
V6CDvQcdlBUbcTvVhmWv8t5BHkl9AqyxfASzn6PNHr8p3OKh9+4AqnJmCX9G+NQl/5DZPoUPRlXz
0kADafVxTlN7rKmDDvvwQXTWFvgsaoMwjp8T8+A6GZaMrSWt/UB99Lssy0wqofCV6fwROC9dx2e8
0ttWXlpyQZIT92HVQkMzWSI9AJ83BeyufQrjKeFnL+W98StlJ5Vhuoq6F6qPv6e43d4NH8bIhczu
p+FPjhewrMd7GFAYzTKM20YUfe5BH71iKksCWQ8e9Gted4C0EStyCWrjE6dWoBCsgESAtAfdrIcj
7WTMrVK3XCTlulay2MobonOEXgwWC4o6VtnLnkBkgMr4kCTHpVsXK7aCceW6+ah5ZRKTWU16DeHZ
kVd57L7jgTmLuUemU/wYbDNVk5qkgFwxUTgu0Cd8fYJC7RQDnj74nvCsLj9g0xEVe+waJXpHNBH6
R5qGtbASDjzFY2boFM31XfSp+FEc0X4mGFQ6YlgI+7gCCVekcuk/miADm2+rLWYfJMeFnTy/3nYb
X51c16vjvGit5Qt2UOsLal4xGDYPe+ruGz2Qgl58QivgiBJL48J0IN4H/UhbqNTcejLdjsVADOSz
bbtuUzoJMaLglsjYv4abvfhXCH2hknNpswgrnrRmn3wumHUGBcyj/cumexIMA7qrQtHM6ARmEdtI
BJ8y3ZPuevZLqicRlLcsswqy+xdhXa9Nf1zjmbZ4yIaavgEtcR84twAbwFmTmq0anzT5tBXD56bv
5F03C+BA0+Kgdta1/0LqekQWRp1WuuWuyfmBfhNx19daPYzBAKwg2u138iPWZKDyDjrRrKAJmSp4
iELmvlTOL5/+W8G1KHmX9muv38fB12RZj3DZnys2UKRiSXdqOhyZqMKE1wjfPebAOrU1Wblitw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24F94EB20C69140"
last-modified: Thu, 12 Nov 2026 00:43:12 GMT
content-md5: RrFxvDx4UbUr28Cij3swFw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 45a9b7ec-0133-455c-b79c-1cf14cdf764a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-62f11179-fa38-1a65-9aa6-1b38dd721f0e/my%20cool%20blob?sv=2027-03-07&st=2026-11-11T23%3A43%3A12Z&se=2026-11-12T01%3A43%3A12Z&sr=b&sp=racwd&sig=OpnNTjJnVXWdrwuEDu6QKTyTTvPrM82yKSHILBed%2Fh8%3D

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
etag: "0x24F94EB20C69140"
content-md5: RrFxvDx4UbUr28Cij3swFw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ab0e903b-95a4-4990-9a30-a63c00ac2bf0
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

## Interaction 3: GET /devstoreaccount1/test-container-62f11179-fa38-1a65-9aa6-1b38dd721f0e?restype=container&comp=list

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
x-ms-request-id: d8bc1ee0-0482-4d47-b3dd-d6ef44cead00
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:12 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-62f11179-fa38-1a65-9aa6-1b38dd721f0e"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>my cool blob</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:12 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:12 GMT</Last-Modified><Etag>0x24F94EB20C69140</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>RrFxvDx4UbUr28Cij3swFw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:12 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-62f11179-fa38-1a65-9aa6-1b38dd721f0e?restype=container

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
x-ms-request-id: 41dfc84d-3adb-4b1a-b869-868cdec707ca
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

