## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-118ef905-0f3a-7d40-3c05-2cd884f81872?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).Ctor_EscapeBlobName
now: 2026-11-12T00:46:28.5877357+00:00

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
etag: "0x269080786355CC0"
last-modified: Thu, 12 Nov 2026 00:46:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2f454035-0b33-4970-b836-ac45072de9cd
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-118ef905-0f3a-7d40-3c05-2cd884f81872/%21%2A%27%28%29%3B%5B%5D%3A%40%26%25%3D%2B%24%2C/%23%C3%A4%C3%84%C3%B6%C3%96%C3%BC%C3%9C%C3%9F

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
7mRBYnwGzNeJd8DVe08UdZnyPphTVBoE5IVlgwSArRAfikX3RVHc/yy2iMNPagHt8bc+krmAH5lJ
PX33oUnTCMqwtvEJHTBIFj9rncxXtHmDd5FNQRpWn2usrQfU5V7j43/4nrQQ5NSH9nt6FIHM8ogD
cym3hsevWheGXW8odDHhiLpNXhbEcpO9xUqe3Irp37t/0HE0K1y3SESdioZlX4JKmIvHf5NyPgCW
+sB9EH2MnX2zqaO/rF1dlRXRJ+gMWGbHVEP+IWAnDJFxnjGcOjjHEe0JsbXei+suaul9oRcYiaJa
tbw6jXsdjJwRTg4swVvdCRb6A6aw6chX0Ld2qWp6WBSPQYR7jINy6yQYzD3dAqiOoJcBHYb7qcz0
4r3Ep+Iyl/X5nX/XYXySiBeBmByLes4O5wnTeDuOk5i3h6rGrURC5jVH42Uptz4abpRueRCwaGfu
tb/YXh65agnmH9rSy9rTP7HmQ5do5TDKuAqnHxqHBx5D1/iFaYcWjnhcQphkSKK5mzpfySXQhtCO
DaYUEkvuXhe7j/TiTdUp0LUeDKKYZnBn7YTgKD35clEo9lzhAnstbeOAqbmu101kNflvsXkt9qc1
rSXGDjbZwRyjuld5SM058Z+/F723uBY2e/NEisHY+gC0q1RWZl6tpuedCxz26+0rNcDZbd7pfvQO
kJNDlTdayr9XxJx544pBEnHVGa35QJAFGFQB/o0hyy1gR9bLaRGwQkBdnidQslI2mFttFGRHFU8D
PXziWcwyNflvGJuzdqhfJNdsm6FotWYCy2YxtLbIGTGGyCyUzuh0K2gt4Zm2giGyDe+N2nmtmogW
345lAIFCpv9qLK58y1bu+HA5O9TMTEhEfqbHOz632S6kfu5aDirm6zqaTFVzNkKZnuEJdF6zSpNF
IIHbe2rAslOA2ExnlOpFUk+ZMf/z0UhkLp1drmTP8DRaFO2oC3DP2poB8131MQn3xCIPGhiTUk85
dkzNYwTvsOgYDYD8nEbfyVdl8d3rbv2TZelBwNUcxsGeb5UjAnaVEkJ03COI+ijbL1HALmFxTQhP
Of0arfAT/Ea/XiyxvMfg0N6bdpHZC2rBZpGEW5hfLCKM08h5e2VSYeDdyZz7KnKJ316C1tZ2di6S
WEdfjqCtXzEKJOn+Z1R5SBWx/EHOxTse+nw63VVLFl2a5iIe8tI/L2pq8QaJi3cJCY3BxXrsxJIL
QZQkc4Hcvg2LZIEyW1VCcczXY9Q1lG8EMdTIiVHirSGPErE+G7zojjL4/Sb21603f1OtFWC+1qwk
H0GtFDW8qLdfokmkA1UQ79WiPJZIDlkmkAr9NZfA0TsFGvx6Onr9PFRvljRkk3v+nSaLHJkV2w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25CA1B754A40A00"
last-modified: Thu, 12 Nov 2026 00:46:28 GMT
content-md5: Le8JN0zLJh6mAtZ3BP6BXQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 25b62666-2cf1-4b85-8483-c07682698017
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-118ef905-0f3a-7d40-3c05-2cd884f81872?restype=container

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
x-ms-request-id: 7c8605fe-11fa-4cb8-a08a-4a2f8132307f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

