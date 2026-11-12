## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-06058ca2-d196-7ef8-9453-43ee9bba0e4f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SetTierAsync_Cold
now: 2026-11-12T00:48:25.7572309+00:00

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
etag: "0x25276A0415512A0"
last-modified: Thu, 12 Nov 2026 00:48:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5a02bf36-bb56-4587-bd43-9c9aa20aaa56
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-06058ca2-d196-7ef8-9453-43ee9bba0e4f/test-blob-bfbc7a11-372d-8123-e777-1bdf2c15c75a

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
UIEdnuYXR1/T2kJ2xasX6ylh0IkYegFqaYMeH7UYUX+M6Z4ZnHBp+jNc7FP1rLw7XzC2ykQ+QdV/
szVi+Ciqu4jC6twN/U65+NZWvI6tdbzH4r+EYYc7TafImuk6BwEKsjDLMsLfLmLh/dJu6IVG0T15
mhVpJVkAh5w0RGJlfvHUSwle4UP557Rco2O0zWUigcirwWzsoY3Wyqslqur/e3/hmZx76O/6f7Nh
DIH1TLk3EsKauryF6Kp7hxaX1DzJXSfk0zPJppnZsUK5ipQL4H7x7pgnZcHCW7DxAGDYYqt2l65a
EXiGbWspwQh6zF0Vb6aYpuWkovhlIXeC16Y4AE6XQvLlsc8Ga4At/qS4SI9T3JC6QLzF0fW29O8A
A5bE8MC644lqL77XkTtkdqNTrNnoL/sWfr+S0XH9L7zfBmjqaA3j/mQG6KzR4q+BYFpRY0gVGNOb
rnIBKBEXbQAB94rSeg6VcK504UdORJwPEHEWq8t0ye6UT7mb4dZT7nqr0OolruZMu/KZoTaLTGrW
8hegAcE0jS2bPStU+o7YIfLMonSx6mKLyfDZ2ii3CQJPxO++s+25d0O8iXC698FkwX9Ev6n1JAe0
FDfRW7IF4zQoBTWeGW0FEisx9GHx0NIudBmoc0lZWaDnCp615xuQt6U7kvGLxagSPqx9xC+mw0Rl
ouaZXHDrz6uVtg7OUCsQoD28tj7go69wljSd25VwQUdaT0U091s1UMNG9g6ZQ+6BbSPy6g0FhP83
KMU7TvMWJXXHdADl26jih2V6mq2g1lNGG25xfVc6VMtF/M+V+QLPMNCZ0c7tm5F7EGOni+pSl1Fx
9DKEpKcdjR81n9/ZTI1jqmrcBwSEWIDd9m30ksng82V9JATQSospe0SvuPuxocTVROCAdY9N7Zyy
p645KftWVKx5XCiIkmDesovA1aCEK1SpHk7pYH3WMDZoHqPd8FJIWGNPOEWcTbGAocMDjBf8LXxZ
jwutbPMuoyvxIHS8AcI5d3w8NPIPDdGcab+60qMfa/Amg2BHm+xvIJQZqyw9w58AyRSbwPiJSoI5
EAM0dNGI0bSDln5i8tuQzBRe9WKkXqYfuQiOhKv3nTndDYvpO6zDkdl4uS0hndc5CvPkK1QflLFc
FLrI+U0IjPhFhOVQp5FnmmSJLKV5/hsxVXm4EnHkvnjZjCbx+piLby002xnx6GNifZDwlmgM4xae
l6PTUHmGYMZsdxtqdqDL/b14RCICP20WVZXh9CcQzagQUmL1tx6zrXtShHFI9wbvJJiqk5/znFg1
vfrkpWueXKpyWiM91kWexJenr7r8zV6O8dCOZTkJHbYKv/ojzwgPtCjH1Z3jsk1TC88HTOydOQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D0796037FF18D0"
last-modified: Thu, 12 Nov 2026 00:48:25 GMT
content-md5: 81n9UoTcblqQUBMe2VNsjQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eb402c0b-e419-4187-af88-aa44b974847a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-06058ca2-d196-7ef8-9453-43ee9bba0e4f/test-blob-bfbc7a11-372d-8123-e777-1bdf2c15c75a?comp=tier

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-access-tier: Cold
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
x-ms-request-id: 1ce49db5-54b3-45f0-b03d-c8e9240f94d9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:25 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-06058ca2-d196-7ef8-9453-43ee9bba0e4f/test-blob-bfbc7a11-372d-8123-e777-1bdf2c15c75a

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
last-modified: Thu, 12 Nov 2026 00:48:25 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:25 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1D0796037FF18D0"
content-md5: 81n9UoTcblqQUBMe2VNsjQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ed9c84ba-7dd4-4e09-bd61-f5bb162cc688
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:25 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Cold
x-ms-access-tier-inferred: false
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:25 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-06058ca2-d196-7ef8-9453-43ee9bba0e4f?restype=container&comp=list

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 103fb45b-324d-42bb-9761-a71b72b5ef14
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:25 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-06058ca2-d196-7ef8-9453-43ee9bba0e4f"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-bfbc7a11-372d-8123-e777-1bdf2c15c75a</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:48:25 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:48:25 GMT</Last-Modified><Etag>0x1D0796037FF18D0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>81n9UoTcblqQUBMe2VNsjQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Cold</AccessTier><AccessTierChangeTime>Thu, 12 Nov 2026 00:48:25 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 5: GET /devstoreaccount1/test-container-06058ca2-d196-7ef8-9453-43ee9bba0e4f?restype=container&comp=list

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
Authorization: SharedKey AUTHORIZATION_6
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
x-ms-request-id: e8dc1f35-8215-4c95-979b-fc8ba19aebde
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:25 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-06058ca2-d196-7ef8-9453-43ee9bba0e4f"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-bfbc7a11-372d-8123-e777-1bdf2c15c75a</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:48:25 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:48:25 GMT</Last-Modified><Etag>0x1D0796037FF18D0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>81n9UoTcblqQUBMe2VNsjQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Cold</AccessTier><AccessTierChangeTime>Thu, 12 Nov 2026 00:48:25 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 6: DELETE /devstoreaccount1/test-container-06058ca2-d196-7ef8-9453-43ee9bba0e4f?restype=container

### Request headers recorded for playback:

```
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eb648a3d-6f46-421c-8b93-6f24d08462c9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

