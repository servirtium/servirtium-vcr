## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c8df17a2-1662-9649-3bfe-4a3a64bb3ec7?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).Ctor_AudienceError
now: 2026-11-12T00:48:52.7557068+00:00

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
etag: "0x2705E84805D5160"
last-modified: Thu, 12 Nov 2026 00:48:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b1dfa983-8826-430e-a291-eac905a06ba1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c8df17a2-1662-9649-3bfe-4a3a64bb3ec7/test-blob-d486be64-36bb-6f21-b244-cd3aa2bf9d5e

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
vlXsLdC8eYsommjMH7vZtWllaCjYujzVBnkNTEnvihn3dPy1gwol5p1ToMiufXaAJJXQ/lMV7wQZ
FydXry1COBBP1au+IzFfQIGLhRlzJ4kCjCezH4vF4YX4nGvjzjdvEGi4XqjKwQBjcb7RimrqpfCd
VCIFjhmEifMmxofGfHJKG3Sxu8jhOMsmUK3N9FcbDfd7RXkVaoFONNW0pPt5nfVLhm/1OeknuxxW
3j5rtpSbCriPSjb4NbDyYofyLJPQrbO4gW7oJdQNU4ldvotD431AGZlD6VK+U1C+A9ZiNY+IhjGL
sjQms+Xjgvasm3clr38JshP5jMNg+i4dKiL9qh761DdZuDBJGWW0X2dcErfZmFNXWIN7jvluK7gF
CYnC5djYscY/y/dOwJitRS1bA+d3Q5HOplGbf0U964x3RBDc8nmOhGDwmc1cCJjqzUnMEifQjsX3
8z+GPDKAAuBq1nyH0FOzzX+HhqrEcZ24sLH8cdhlp7VK5f46CEcub5ft8jIcY/z2GUWnSQcbM4Gh
zYyAhJAHBC/GPetUeMQ4WBYS1n9rm021BViSvV2tLrF8mTq7rusG5e0CViUQoaCAb/DxCFwCNTI+
y344dEfRGA462N+KfKorC/CRaUUopGS3Ek1tvCVUeWMIfONsznGmMD4W1snB9vJGxv1scczsFiYa
gGL5ZFzp5l57ggDHvz1/6zgHEc6b9htbJ/Yo6AiXG2W8UU0OrMzhLfBqRnTyfge/7IWU5QVYf4lG
nj1mwP1V42abC23vcD5sJeTdMLCnaajuafuDAzVgY9LDxw6Oe2zyFWINV3OZz3tHJ8Agek7ZnzWU
d1cB0uAxOqeaK6kv3al46xtNmRE0VJmAO9t0P+iD6ifZ+gQV8EKC2xzM/6PSGEoXqI8zjAUjYCK9
gZcEvPq/FkGBVeOlY/vYyr71aFX1rSOQXZdZUF4htpnhV2+rfh4hDOhiUcJnckWUWsFHLffMyNNz
c19jZsXjX59JwwuLLUyf1Fttk1xgKetRxPac2oihFY6bNwq/vaYifvIiHq45CC10qFmcXzV3Ekl0
EqHPRoUWp6198PVB4Ba0ShRqPgs8GLzJJzEvBbZZJCTASqsFUzhtDHYBvBc3M8hD5xQhDdQ+OPrk
Bh9T56L3I8zQgJVrr/fb/DKUO1ukkfRo7B2hOBdPghKxIUwZGSTUCZhLZrIz2DgcRRCiqfyeP3Qq
6vuEVuu0gP6CuY2rwuINwDHCWSpCNRTlhPMGrdgVEuHY7i4pULKtl+WzsR6qcYItlOjK2+ZJ57Xn
n9H3rdMmbKas0tS05HB/FMFFjoT1OhNx2RjvSjf6jgZ5QbHhtukSjUR3/p6tebB4S8YkBFgx8Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F8B52B0D1ADD40"
last-modified: Thu, 12 Nov 2026 00:48:52 GMT
content-md5: BdeZvcVJaI2C7s3m/tPSZA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e4b5854a-eb8c-4cbc-b9ef-edc1f78feead
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-c8df17a2-1662-9649-3bfe-4a3a64bb3ec7?restype=container

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
x-ms-request-id: 0af95d10-6e0d-4568-b67f-04766c248e31
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

