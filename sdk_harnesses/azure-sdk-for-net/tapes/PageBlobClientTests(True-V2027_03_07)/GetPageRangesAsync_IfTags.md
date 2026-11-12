## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-24c8a6e4-4bf5-ea75-8454-206afa638b6d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).GetPageRangesAsync_IfTags
now: 2026-11-12T00:51:51.2114786+00:00

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
etag: "0x278A82ECD92DBC0"
last-modified: Thu, 12 Nov 2026 00:51:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 73ff0665-f723-4271-8de0-fba28f736536
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-24c8a6e4-4bf5-ea75-8454-206afa638b6d/test-blob-5f4fd8c0-f6de-92ba-9ed9-92492bedd796

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x208815EFEDE4C40"
last-modified: Thu, 12 Nov 2026 00:51:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d7fa7a5d-a212-4ba3-bff6-485d2162a7d1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-24c8a6e4-4bf5-ea75-8454-206afa638b6d/test-blob-5f4fd8c0-f6de-92ba-9ed9-92492bedd796?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
ev38g0YYNOtCoa/SRRGqi661x8mNOTXu7DWGG7grvpZ9iu/8Zgcmp6RjHTxG502NLweadiYOCEHI
DpcRkhgzFuMYVbshriSnjx8lKhv4pwTn+OyxkEhwboGuNFhvFRSLMAZZLZKSbIDi8+YG6N4l0GaS
KZorgYaaqOY6cnrMN3oKmfkUnnpyVYxszp1haoaiiWPx3Ot6X66Av4WrWPoGFrts+07kEDHrINMN
v7PoOD5gl+kW2lqOkDlLk9/1xv2SZbfh9W83vXgxBbwXbKD6mIZHS8AQ8Dxg3WsVmX1S9lnWe1r8
BkPOKNpx5NSedyOZUPtZrno8gXV7gRgDIiT73w9iQPBF/pFCeCLmnwtnwmVHe0iB+UjfmfrlgIUq
ywa1dgXEOzYyVFJpFjZXVuFqE76yu6bbeeXHg6b2YH0MGKwcMCkFo4YvFSf2F+MRh0MYem3GeA9f
2fwg/biPO/PUXf6JOyW4ZXA3g6Z/5WECtfxj3eUQRaCdvFYs5aXOn9kzIrrkiEseYBX9jvRp4PSb
HUe7LF4Nwxdd637Oi3/KaePMS8KmHS2wRHzQE7erNNxikcdeEnN7JV6jhpzNT9WVMiURnJQy9P8a
CufhPbBfsrehbPm4bFZvUSZjA5aR4/WnOuCRmZhIMJ3IQweMmeiuQ9TlK+Pb3cbPoUpuzvFoiCfy
OgLQzhkfWTxc7yhO47g9tb/Cq7gSy10ZwvdN2mGsX7rgml7l3nW7xdGmf+2dgb6SMBgyptxu4G+l
tgwh0n/asI9tbUlZWNdJB+bma0tvfEA5uqpJerndcbrvPydpmfNSzM9dMBN1ONhA6J72h3QjNjrL
5xfUkTbWj/uPahiv4G3ylJ98EUstxIHRCJEb5+pFywntnbHcfTuZh6AY5c6/kQgwBPPVpiTuniOV
Aoiku6gRSZ4OwUK7FhZk4omqFd6zEneJ6uL2byXk//+ORnqy9Mz4Bpwvsc/FdO3cccSbQ4hE4fAQ
G9DFGtl5KsJCLdCbse69sg5ChGCnw3b1Gv5hSbt2SWSJodn7MuzCtYYNg0cdQMDV3ZB6Al2PaVda
0ADbGOAGy+NrEQ8UwX8igM7amkAu19k+i2wr/EcH+jiCoWLr5p2mBrdjsi6wwRwQV4KOtc4WK/kn
nY1028+cYxfXkR8dN5kxM5OJyySqjclPGqTFeERpa3ZpxEkPMSvnx04W2S/88yDoXYI7jWDUfA/E
JMAr1+vTbSaptHJQIQJooQTWk7SZUyeD3BrBLt4WlEc5Sw1qvO9jQ2wJUj6ulzyA0utb/elbKtCZ
p/rQET5Hkx8rFtX1/eUUc1BIjwHo1UXeQVvzupdd3iA80RX1kjEtwr4egoFmitUGR4qZEpvPsA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21454CD2E82CE40"
last-modified: Thu, 12 Nov 2026 00:51:51 GMT
x-ms-content-crc64: 64bihk6wZgM=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e5a23f85-27c0-44d0-a9ca-c30a83f31772
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-24c8a6e4-4bf5-ea75-8454-206afa638b6d/test-blob-5f4fd8c0-f6de-92ba-9ed9-92492bedd796?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
ev38g0YYNOtCoa/SRRGqi661x8mNOTXu7DWGG7grvpZ9iu/8Zgcmp6RjHTxG502NLweadiYOCEHI
DpcRkhgzFuMYVbshriSnjx8lKhv4pwTn+OyxkEhwboGuNFhvFRSLMAZZLZKSbIDi8+YG6N4l0GaS
KZorgYaaqOY6cnrMN3oKmfkUnnpyVYxszp1haoaiiWPx3Ot6X66Av4WrWPoGFrts+07kEDHrINMN
v7PoOD5gl+kW2lqOkDlLk9/1xv2SZbfh9W83vXgxBbwXbKD6mIZHS8AQ8Dxg3WsVmX1S9lnWe1r8
BkPOKNpx5NSedyOZUPtZrno8gXV7gRgDIiT73w9iQPBF/pFCeCLmnwtnwmVHe0iB+UjfmfrlgIUq
ywa1dgXEOzYyVFJpFjZXVuFqE76yu6bbeeXHg6b2YH0MGKwcMCkFo4YvFSf2F+MRh0MYem3GeA9f
2fwg/biPO/PUXf6JOyW4ZXA3g6Z/5WECtfxj3eUQRaCdvFYs5aXOn9kzIrrkiEseYBX9jvRp4PSb
HUe7LF4Nwxdd637Oi3/KaePMS8KmHS2wRHzQE7erNNxikcdeEnN7JV6jhpzNT9WVMiURnJQy9P8a
CufhPbBfsrehbPm4bFZvUSZjA5aR4/WnOuCRmZhIMJ3IQweMmeiuQ9TlK+Pb3cbPoUpuzvFoiCfy
OgLQzhkfWTxc7yhO47g9tb/Cq7gSy10ZwvdN2mGsX7rgml7l3nW7xdGmf+2dgb6SMBgyptxu4G+l
tgwh0n/asI9tbUlZWNdJB+bma0tvfEA5uqpJerndcbrvPydpmfNSzM9dMBN1ONhA6J72h3QjNjrL
5xfUkTbWj/uPahiv4G3ylJ98EUstxIHRCJEb5+pFywntnbHcfTuZh6AY5c6/kQgwBPPVpiTuniOV
Aoiku6gRSZ4OwUK7FhZk4omqFd6zEneJ6uL2byXk//+ORnqy9Mz4Bpwvsc/FdO3cccSbQ4hE4fAQ
G9DFGtl5KsJCLdCbse69sg5ChGCnw3b1Gv5hSbt2SWSJodn7MuzCtYYNg0cdQMDV3ZB6Al2PaVda
0ADbGOAGy+NrEQ8UwX8igM7amkAu19k+i2wr/EcH+jiCoWLr5p2mBrdjsi6wwRwQV4KOtc4WK/kn
nY1028+cYxfXkR8dN5kxM5OJyySqjclPGqTFeERpa3ZpxEkPMSvnx04W2S/88yDoXYI7jWDUfA/E
JMAr1+vTbSaptHJQIQJooQTWk7SZUyeD3BrBLt4WlEc5Sw1qvO9jQ2wJUj6ulzyA0utb/elbKtCZ
p/rQET5Hkx8rFtX1/eUUc1BIjwHo1UXeQVvzupdd3iA80RX1kjEtwr4egoFmitUGR4qZEpvPsA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FBAA7256C74900"
last-modified: Thu, 12 Nov 2026 00:51:51 GMT
x-ms-content-crc64: 64bihk6wZgM=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 93a0dd92-763a-4534-8a6b-3d4af7815f39
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-24c8a6e4-4bf5-ea75-8454-206afa638b6d/test-blob-5f4fd8c0-f6de-92ba-9ed9-92492bedd796?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>coolTag</Key><Value>true</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 677bf45e-abc0-4689-83dd-7aab0d2fbc16
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:51 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 5: GET /devstoreaccount1/test-container-24c8a6e4-4bf5-ea75-8454-206afa638b6d/test-blob-5f4fd8c0-f6de-92ba-9ed9-92492bedd796?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_6
x-ms-if-tags: "coolTag" = 'true'
x-ms-range: bytes=0-4095
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:51 GMT
etag: "0x1FBAA7256C74900"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 32ff8023-1c2d-458d-85e4-5acb053386eb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:51 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 6: DELETE /devstoreaccount1/test-container-24c8a6e4-4bf5-ea75-8454-206afa638b6d?restype=container

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
x-ms-request-id: e2a65080-b13c-4c42-8704-41ed3122814d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

