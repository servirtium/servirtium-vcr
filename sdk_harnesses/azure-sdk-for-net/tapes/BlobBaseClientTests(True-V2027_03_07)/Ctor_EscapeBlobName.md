## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d68993fe-dee0-1d9e-bc7e-32fa5d0961c4?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).Ctor_EscapeBlobName
now: 2026-11-12T00:47:44.2165000+00:00

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
etag: "0x1D51F20EC7F0A30"
last-modified: Thu, 12 Nov 2026 00:47:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f8eac001-589d-4aa1-b590-1da191eae437
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d68993fe-dee0-1d9e-bc7e-32fa5d0961c4/%21%2A%27%28%29%3B%5B%5D%3A%40%26%25%3D%2B%24%2C/%23%C3%A4%C3%84%C3%B6%C3%96%C3%BC%C3%9C%C3%9F

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
8aETtwpxGT0KZrJbJzmecqZQvyztAbCGtRBVI+BSbcz51O2aGIGDjHlMzHksQvWD379TDEk11/Dx
jQL6HPVdt/jlYlJLBFklzDOyoTQ3WXIa0kQg/2GCxP38qYt+iXCE7hSBRuCjN9tmLUAVgjW7ujOQ
4EmxPbiXY51VT1rOp0PDLbIgtROSdptoutEhbUHHQO9X7qkm07Fb6eNCTueAmIb8UlSDmwQf/Wmu
SIPndfZcjQ5rdrmZnFoBxMwwUCiz6CFKJBrsRKXrOPBAd4oudHPt5cDZFCLNYrX6gtY4761A+19h
nFHbb0lpgD3JWSTP0lBYQ2po2dP/fcFl8sLOsklC/3wqzdgiEnZ2cJTkAwmQKq+G36tD2CGMYR6P
dX2Hms30h1mopAV3NTH08Wk/G3m41ccTSNOd/idanmu5kpz479bG73yv54WpDqp6T+a4TUWk16C1
dFH6V4gxTQaavqKU+wKTeCz8CO1CaTkoI65BolElFLv8QnqEzJf0fZp+DlAH5VTjJdQZp86zcwoX
0TTa8Ku1dKnnmLiHDqyUCIpSw1vpID1aXX18DG3sSM9wbPpjGo3uyZqnIEybXBYohZ9DYK+vLrD2
f5IuOGg8+lDpF6GyMO79ZPnBQgDxvgFmVIbOqOgfwT5JbJr6wJExayX8skR0dVSwRvy27uuwBcCR
x+PhbVFnyVZjacNUAqNoj9fa9Qy88t4yHWLsadJTmGfZafmtUP3UlOjuEQyQW0NYTV4U1Q+01dQF
rlDve1+DENBce5mquj/aBmAkzeHSosEfkxtzPsJXJZMkqKGs5RmIawE7NOCprZIfOs+vjwfzMgyO
z+dDD9ENBFUFhhKeLSFHm2Lgl23hdeWJVATzqJWMMHaUHhUxRVswLTCKoyeAgQytaPSlE5qfrVoB
urvMGlvAeVWcCQ4MFVYGr2o9VtK+CNL3RkCh5h3b9XG7MIqgYxPUyinS43f+oVKen2MwYVaHQ7Ho
1NMbH5I3wBSdUeXMZUxXaYyo6yVb+aTtA0e6q5MbM+zYuI4/uKqXmyJjYVBt0jkX2fjJ31iMjdsv
LhxKfRWBgR3486y9F7DhEVAC95dUgDEOotKaUVSUSyuzEIqOTB0N4t8ydN6NWcFI6M4HipVD2q3r
PNpD5jDJZKeBCgclUsQy9BW4IQxSgUkQUmiFjMGVbzXdow9CyvuuaQ82C0+6I5UJ1JZ/irihmLuR
MpPHQ9fm65rRSK+18CoZCbj8G3X6Vi/TfLgrFuR9OwtUsZdo5iU4UCC16NrmVORrZYH/pXxGl9xk
9MYfu9W1VAyjYT6SsSKTxMtVRG5U7CjTv7BjfZaODRq7A/JeGJRK/5POQvOl2bRebOCw8VJtEA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C5872A108524A0"
last-modified: Thu, 12 Nov 2026 00:47:44 GMT
content-md5: OoDyAfrDFt9piUX/1O8X7Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1bf8e1b0-a2e3-4aac-aef1-73d7758fc86e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-d68993fe-dee0-1d9e-bc7e-32fa5d0961c4?restype=container

### Request headers recorded for playback:

```
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 743c2291-6edf-4b9b-9207-3fe90397c195
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:44 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

