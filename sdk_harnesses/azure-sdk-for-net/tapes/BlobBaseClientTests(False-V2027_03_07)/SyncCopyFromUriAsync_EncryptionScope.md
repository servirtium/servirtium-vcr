## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2aefe4be-5d0a-5ede-80a0-15c2ada58f77?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SyncCopyFromUriAsync_EncryptionScope
now: 2026-11-12T00:47:21.2450860+00:00

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
etag: "0x1E1B18164751860"
last-modified: Thu, 12 Nov 2026 00:47:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 15f27644-55f5-4720-a7f7-ad8980a58ce7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-2aefe4be-5d0a-5ede-80a0-15c2ada58f77/test-blob-8cfddeb1-8be0-e5eb-2c01-a725b7d644ed

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
zTrbW/oUmzP4Cv0ItrimqVwnsmHCp1g5Z1NJwS+wUszPLFh9+ujz+6+u7hR6bvOKd7Heaq7QtyXi
ovSmytkESLcxOYlfKa90NLaxE7lDvvlgv0l90ece/3Uym1jzTDHVqqZcSTRpKk4Cajb3HqNsnuP7
RgqPhnfQEjkULI5XgOiF22gS53XE9pX7e2axJuHRxf11+AYmRiQvjDb7Vf3AqupNckI7WbZtN091
lAoQHutYQ2aQ4ofiX5VE41o+yKGXO9B8Y7SelmxGB8G2sLEaHm5LohGWL8hiaxOs93ZbLm6u3Vg5
k7o3ua36StrGK67kKsTs8yaPAAwIGveh8p/16thSCNJY4IuzFOhkm+Ttm0BkyMyxbztHHt1MMXnD
lccOBV8CdCPbi0k5Od8+K2UnGn63PCrSRHudCur1DK4R8H4hVpaE6ycciTyDdzZbCfJ3JBf7C1md
PMDkZGk55n6bKEhhHNTOoy5Wm7PtTsxFQQH3feeWFuUkgxrVoIe+4qK+50/t+uweqYHppG+msO30
nyNoQmiWBRFjPJm6+AKnmLgQLmd9WEYU2dRmrHJ1ftMt4QBjVqA6J+E9ib5TZLF+Qgu3lYGFdkfc
U2mUMFif7r3FjBYCQ0IY1QeFP86IwHUj52lmvehSqGq5hwI3pfeJnZoBjteafP/Jn795/zd4VJP0
cUjuOTDUcuSsSLtA4DAQ/KI0hjKdiGtqnR4p2KgzQTJuQjSummRqLBvz7TNDib6PaQOURM1gVujd
hJsRq5k8eAeJ0Z37YmI9yloXqps3JhRgmW+lnv1lDuxM0BbJWIGBt3UsurcglAahV3lzSaxNpl2G
sRIqltoKI8Kxr5FMdHLZlfMlCmxcQARoBEaD8sRA/iq4QqZuVyCaIpb0buR1VeMHmbO4J5vwKnEN
wZKThzH+cbBnkzHLaj7Ti+jVZ9Ef865je1gQh9eOxxc1YZaNB5pl9v00DcGxPC915ZyzG8Kf7c3j
LwzY7erZ2MsZlQioRoNNb3HU6+Xssj4om6I626xVlXPIqdeOjQgSWjX2l6YnzJ8YZatRywHn933N
sFJInv0exP+U35yrv+JowZGw9hqXAc4CIXUBBMpy4bJawN22yrs32NKnkuwCbabI6ApwNgBiNq6D
RXyHHcA1Iv7qUf4FsvbVeR1H8G/hALTPOBvAAaqx94ouMoU/r7oScW/uFxyowzUTm73jGkU/okXI
uOWkdSFUOVlz14BxlsljNX//8+iYJnXlrWXsztxE75A/dvbVbftOmd7DNOy1oQXzf+XGP65cMJJw
v8i7aGt8L+fwMR/TjceDsVoJ1fKIMAtg+E72fa/h40ZkZa4ykjFzRgUExG/mIPIeQ45TUlqf5w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x260700C14AF51E0"
last-modified: Thu, 12 Nov 2026 00:47:21 GMT
content-md5: X2DkKuUdT1YPOXwWoEhZ9w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 32d87589-7597-4831-97f9-f0d42af6595b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:21 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-2aefe4be-5d0a-5ede-80a0-15c2ada58f77/test-blob-e7e24b10-781e-a977-421e-5b3b9260317a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-2aefe4be-5d0a-5ede-80a0-15c2ada58f77/test-blob-8cfddeb1-8be0-e5eb-2c01-a725b7d644ed?sv=2027-03-07&se=2026-11-12T01%3A47%3A21Z&sr=b&sp=r&sig=bln0z5M4evJPna9aJgkpKnPd1xtJu6MNOdnBluXmuwg%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2756E58EDEA2F80"
last-modified: Thu, 12 Nov 2026 00:47:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 38594696-9eb9-470f-89ca-7cc190cf50ff
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:21 GMT
x-ms-copy-id: 8cd244a1-7889-4207-a061-e28d27b0dedc
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-2aefe4be-5d0a-5ede-80a0-15c2ada58f77?restype=container

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
x-ms-request-id: ee3439ad-0794-48e4-ad5c-88e6b8bda117
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:21 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

