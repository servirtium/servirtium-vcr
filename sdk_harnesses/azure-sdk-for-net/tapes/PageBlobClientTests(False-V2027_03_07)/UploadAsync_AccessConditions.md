## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-fb919d69-3f87-86f9-f67d-97406fe8b569?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).UploadAsync_AccessConditions
now: 2026-11-12T00:51:31.2178278+00:00

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
etag: "0x1F57678E6843D60"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 54bfbd6a-9ad2-49bc-8803-a05f8f2f6896
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-fb919d69-3f87-86f9-f67d-97406fe8b569/test-blob-682900f1-a378-5c64-410e-5268f1139d50

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x23F687AF6A514C0"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 39cdee79-1099-4c46-9ef8-2a521980eb71
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-fb919d69-3f87-86f9-f67d-97406fe8b569/test-blob-682900f1-a378-5c64-410e-5268f1139d50?comp=page

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
l4l0m9y85KTiPXS3MFX6whKBKkc3CUbGOTS5ee2RlOPgR6jlcxmNNRyFhTsurCzsE49VcOhVGI5D
rmKnA2u3UamR1umsFU/58/UrsYQLl4wIzGVdPCP6ii4aocW35TKwzjSRnNVCP/5AW3zzKmYJOBbV
nzYFWRSFl0y6knOJQg7CeuNQefu2xYxmHeCmB1/HEWmv4Ub7qnQfDAWJiK2KthluMLCDuL8bHtmp
nzs03o/t8oAK2mDHxs9uMW31LT3e22fGONevRFiqk8JtUgs56y11m5UtgNu5p2nhFIdSJfGby8PU
baa4Pq0oYEedWnTDNUZAgJGosVuLDZFtzjDRV27R0YdIZH6GvV3nBCCUG030Hd9BEqVf8xlnSV8V
SnB9VwjYzIjte9DHucMzwKw79vJDebBRj0XIcd1t4BsecHLtaq0Yu0/EBqIOeVjiKzNsLFJt0dG/
LMfCEFqrgJq1qEhQRlb+Izqjf3IOQxbt5UaqALPIsZ6gLj3mVav1GYYHWNAPkeXcbQkXylJesOmx
1CoTAH/n7feqrxcYGM2PrWXrB+pF3VNgzZOpsOdMQn5UNYCA4RgHH2vZZeLOw1U8hxzscqj+bPbW
szPsPTwPXW2ZxONMD8xN5Oh/a3hxkgk9bSjLX8/VVciJqS3lG+Euygd0NP9y73hPn47AfwB+ZCEp
rtATQ/6exG4awmWfZ8kGUKFw/V0Jy32wfL9AFNbIC0QMvGwQG4YJ1nCRVywTrzjEui9eDWfDH+NT
Y8Y+Xa+XUbcgkqtc9TQaZyfteHRQncyHe1qnaf3dSZyJvbi/y3jA+QV18h2MZ8T6Q6ZA1qdvA8b6
tuFV8Oe6Q0kO0zd8W5uuLX5u26qv+hSVrSVWnHP1GrrxxRSXaggduq/TfZSNfegKkqkoACcbSrvN
wEPCZKbWGbl9ipWHF8J2UCD73H1/By89SwrKzRmS1ntYyanFW1YI/WTbD/JTg3rmsrAHIG4+TbkT
hBicDEyf6rQaL00ZsPTJ8t4YpPg96ciP4xtpirUMGXvwsdY9bPAXPCQ+OVQtzQG7PS2PJanA1ptQ
DCgxNV/+DRXSKP4ejIbuAWfT/7BzYhYZrk2IffTRL9s77F/I5gbEPys+W6QCnbGnoSRB7Nfq3KoS
F4cSdpAhAPgj4p8mJRphD7+ENQdxFhGc4dvPkEIEUA+1ts5/ssibHVqr37oRgHsK4N0XZqeioAB1
dpW0UXC2H5KQcW9L4lz26ResxjdXimBfxa9k7OpnEhXNCTsz5szq9b8ngQ4Lvv6BIHyQ9trJHus0
VYvAUTKoKF9aftghwwNKwdB4LwlSUwex48xt1hw7BOpP/pFAKqSMf1ivsT8lX1x5RTQKUO/i4g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E3C591263E0190"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-content-crc64: PN1HJWs1FLk=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c3688f60-ced8-4135-be74-afc3e2d27971
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-fb919d69-3f87-86f9-f67d-97406fe8b569?restype=container

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
x-ms-request-id: 1aad9436-1486-4903-b105-f737e16cfb64
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-6d0f8401-3a66-4251-1e79-edd1c4720a97?restype=container

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
etag: "0x1ECAD86245540C0"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e946279e-c7c8-4537-aace-8f15c43eacc8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-6d0f8401-3a66-4251-1e79-edd1c4720a97/test-blob-b0afeb2b-a2a2-8bc7-846f-f490e731b3fb

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x231C72EE7516760"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1efbc6cd-ce94-40ac-b7bc-6f8a16e5ade9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-6d0f8401-3a66-4251-1e79-edd1c4720a97/test-blob-b0afeb2b-a2a2-8bc7-846f-f490e731b3fb?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
Content-Type: application/octet-stream
If-Modified-Since: Wed, 11 Nov 2026 00:51:31 GMT
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
bRyPvBs3JkUHbJLFN46YBjud3mU/MT9fvIPp9kbAW+3G8mSo4k579MVqqTYPAlP21+1VSVNOvDvc
MP+XTi/+RhCl/0Uq7yTtIumg1IgJULov8x9YaxKadzYozLJO46aVa2IlaQIOy+fJZydpruey0t9F
aFoQptv+CogPASNxnz5DCmgm5Oa3ISc3jwPqMchOdfnSCXtLhMWGJl56/8rEV8jpJaN+jO35jUYz
2BfXFNm/wIwpnpXC94Wjn76HPSFdczc7AQsl0OkM2Xs1F6uurhKFuz8+mrkyJy4d2+wucU8k1mXg
nBLOmvCiHcUajeDZ9PGsAoLiHth9CNrdB/T83WcsEEFGzhL/tyFPm33zGJlOQ+b7gm7NQreNYpM4
8JL7pT9d7X2ekybfrUthk4NaifBAj8MNAVv5Xs2JuWt+xsaOU/U+liocr7DAHNQjbK40Mtij+GHP
7aTjZI+vFdq6YOeF0j+OHPPGI+ASTeWH1fIfVYaT281kvmVRWjKbbZnVBbvtnZlvpRbl3dWBvKC/
XI6ckL9TJ4UZIBTZPcHAKrVGPEgpmTdYr69wrv744wHFkf2j/t3Zgt02032FlWhUJLIfO39XlcJW
ROAQ43mHIT0SE6vEHCvYbLpr88a60xpGHIpL2aiBbvs7Tbr8yZ9krrI/coG9kAeGRs7F7KL8nHDF
ycbvPEeVkKWviM9x26IbB0UUemCYiIyCxJLZvIJZPrBKN//YdHJqqeLcDgc3FWosqeRd6CEPLEA6
bHe1vNMjVkoeJ6SjQ5LSqdF+vHqFS68nrBKd/FaPOgq+ngj7te0Oubi9GO3GiWZSij5QkW/GtSHH
jQ/AhVnzj+ya5KSK1/PjbwPCyDPBYSOsSnEYP6ma+OnnMyjdTTNeyYkALKTByLJKbCFsA+zuBSzr
FDro2lBD/+u7o6TLBSLQZP6qwDR+6oK+zdKHLvX8+S388jj4de44vSy5BiQOfmf+m57uRET3bCq4
KQ19vNH2v6p2zxPp1+4PcQMHxeRdr05riJJWDbXoBIUOQEzhuwFbwkZ6mK9TFcOw39JB76dGWnm+
EjM+oLL1jcqO25eiLbUCrAOd4xefGHPOpS7ipxXeyOXSI6nOHCGUhQrkxTosDbEdPkOjqHdhH/q/
cPqEE+a1sBKxzwoMNI/hCV0NulI4opd8xWjSOh9ucAOvDqwnEHIjLxQnej6mEAqzwZ8ZVGWnh85i
B01+4nXzQ14HXSbjuvjr6Yo+EShZ1bRdHnmAVRyeCIfexAgkpUyfNDffn7Pk0AemLmraaHWlCDKZ
IMT8c+1CaFSfBfXvxkM9ntzwejUAeU5y2Sexw58ROLvWioWIosFJnDdeRcsRtmcmncmZtI78mA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F56B0C4A690FA0"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-content-crc64: KwrS/WEGr6s=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e7ebe8a5-8efb-4046-87f3-7a6d6fceb0cc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-6d0f8401-3a66-4251-1e79-edd1c4720a97?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
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
x-ms-request-id: d4ce17d1-bf63-4660-9be2-d94ce66b8e5f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-998a76a6-91c6-b5a4-8dcc-3a193bbeb5fc?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1BE9AC92ABAFBA0"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: abaeda06-7114-442d-b9a4-3b4c8b8f1c3d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-998a76a6-91c6-b5a4-8dcc-3a193bbeb5fc/test-blob-fedda71b-34a2-6183-22c0-8a26d577832d

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x2632DD860020700"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2828c711-392e-4937-b514-2cac0b5c6932
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-998a76a6-91c6-b5a4-8dcc-3a193bbeb5fc/test-blob-fedda71b-34a2-6183-22c0-8a26d577832d?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
Content-Type: application/octet-stream
If-Unmodified-Since: Fri, 13 Nov 2026 00:51:31 GMT
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
2vLeEhgngwuSqLf+1p0raOfNfg2x/vZy8il3BgZ94BZJDT5J4KLj8yTRa/l8hIqElCI+B/l1e9v8
ax/vsH0FFMihtMlf4YhF6ovp35P89W2e8nHkPtgc05FjTXSD9EKmzFYx29DAJbKa+R1ujJxI/3Wx
UL4LINbvhOA4/JQTwvVIQhM8yxqd3s2/SkW7rUf0Gk3/0aOEm6uAQVbviCkehjcnJkmJCzRbFHHx
TNaRNNeYQ+FGFPBRxKdnvIrDrVajocMNk4f+aw4ZpL0xk0/V7wx/VkRH13JG1WGiIU+pl2YbTasS
g6FPmtjSLHAzHzBYks1+RFcRW8lRxr0lXEm/cAxXFkWjwmtqL7xsdaoCE7UxSY+BK1IPCvHhwb3j
KT2OE7xj3AnrtNBiExSapeYfT7IH9BK6PkS6RwxTwQCuhgZ+3mHtnjesRZW/Hxg+dGQLwnIK3DQr
1NV3qZT9l/LPs4wOG8aEMbB7W659+x4sfNOnSP+Oo6rRUwqMdvWirq6i72uML1mdhpHCjoCFrti2
Sy3BVk7zQRDhPci8+Lu62K0A2guzoEx6CcJtzBUqS6Ux1irI4Vhfr65bqvKQ4Y7WB7XThdPNA6vg
R0yMhXT7tvEiiyGQ8fdVoCpdV/VZ6Sgzl8RfV8bRZNN+55kL0yk5YPMBblZsRRW+feSpcKu2h14k
WO6vm18rUSdOEgpdSs0AI/YBWHvRx1GvoNnhKPMnx2A75no7isSU1RwuHjMLYDMWqE20tS7jUpGc
APuFSigzJ0qpImNTxZgybYNeo6geoz+ly4CmchIxWJPon4nJDov0+/foYj7Pw+O0gkirha/ofl27
336ojLU3d8nQaiYPaV73aaexNUEB1Qid8u/KhtLjACEsDS4MS29Csep0/1i9pBnpsxsINkgcugp2
C5nFbPH37WoE4lsv6x43b4RWjNav4E3W4dK32snYEFMklUDVfET5fRHtuMK9ucj90MfDxS0zxypM
74sfPxKhLNIHC1XdYvNAXQ/EwSiLGCcJugkCFUom8c4ViI242T7/TIzvta5yH27Ug2gdbgUCwdZj
FYQInxeI4RqHx9llh4PRxXWcnGJ5lpqbLpHiCILJEse2VcS59qx0ZtST61eUbvzkTKmPZiR06X7p
bHGFpdmYvrURrjG/F87IJzWN5qtCB7+U/bvYOaujQmtFz4k778H7+yyigr/KJTXaxz/v5gPTp2Wx
8agdv4UJbmzGeUhFjDh0kup+n4UAydiG/XJss1xncigkif0Y3TunmRNTBKvslToHe1MZVAfgsSfQ
l8ESnbsQXgcfIQM6W7Su1gZxrMQsmWg4ZDgITh0hQ9jWSEZ6lfxYQqWjzXM3zR+fan0AbgRiow==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FF5D06F6A01D80"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-content-crc64: ZZ3z3uWOEYQ=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 623f0c33-bdfd-42b3-b6ed-a39ab668fd84
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-998a76a6-91c6-b5a4-8dcc-3a193bbeb5fc?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
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
x-ms-request-id: ac1e60a6-1c87-4c9e-9535-429b7a638970
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-38da59fd-0883-ea10-fedd-2a64126d3441?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26E62F7C9761780"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 81609183-bcbe-4760-95f1-5d6800e47ac9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-38da59fd-0883-ea10-fedd-2a64126d3441/test-blob-1f6a1909-cc88-01f4-9618-69e49f20d4d3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x25FE89C191723C0"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eda0a8fa-9c73-4daf-b448-7a387b62e63a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-38da59fd-0883-ea10-fedd-2a64126d3441/test-blob-1f6a1909-cc88-01f4-9618-69e49f20d4d3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_15
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x25FE89C191723C0"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9b96f753-19ab-48a4-87fc-951ae64aea60
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-38da59fd-0883-ea10-fedd-2a64126d3441/test-blob-1f6a1909-cc88-01f4-9618-69e49f20d4d3?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
Content-Type: application/octet-stream
If-Match: "0x25FE89C191723C0"
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
c6VJILrE1DqVuc6WDGkNMTU891WaQxowZNmhap4rSt4JV/BtJBOHRUQvic/+XvQtCzivYyh/OC+L
GLzgImqbaW7vjbR4nwwhtLIRa7pKMgbkdF9mfOe1ih/B4gxXpiLakx9gDtFAtWsrja52bc11QOW2
/K4KNOyHOgKVtr0AyQ6PNtea6SQ0pL70O+85PxxRS6Emoal0z14y2dTOqv6tKsSf5zb12lbBgVjv
Ffn9TvrmQ2sc2ihkG2d5Zw9QZvnARxAqmVjlXHFLZR9RhLllNIvZ52eTkFCbOszPfHNGcBpfL87o
0rSiAef60XUIE5atEzKEd36RLbbAj16MFeD9BPQE8lXrfWLXNuaAmb/bkyc1ImhAwvmczQIYJ0NW
FuwG/MyBAyFBwZbQrUCYEZP25fw2VvJ3vEL6aCRS0lUegB/6eZzyWo8F9GDScBW5A7tuIUJHH8D5
jz+Khpr87u9Bsiwgnpj2A4tsMGGSpUwsQWVp47ES12BfAOldZ9P0CQVxkL7omGQidx222u5eZ+rz
XkU1kwo9LtrLwZ6umZu4eCdcIBSOQ6kARmyTXPxyAZn/agmOvnX7M2LjHdbGc92B/mHHAkbVZBqc
NE2eqtLeWcAEry+SKrmyYeyxqibSOtKOEV2bqv5SKQXv8YooXImQBcMWwcSu79SoFaFZJLrzyfp6
EJh0Q67BsoUqojgviQRjIaVivHgN4CKI8pVd+AVL+yePrUzwG8IUVA8+g0yceYuc9gIUkQ2CbTB2
61AZY7mA36cQn9y3cwbjTmdoz1zV7HkKwAIDNmoaDUAcei9x+/BVvqOli9mu5YL8MEKlGZ3ToP/W
D6K3fak89ZGcmvnWcVJ3EhC4L2CfW9t/BgUndfSiSdkwm+xNnkH6aJZIEkqJJr/wLgaMGnCeNrPH
N3ajFYCd+VEgptZmKXTPvcfKV0iQ9uBGN0btFS5okWQ4hmbKV1MVqxn5aH/pigSSvFyp095rNkCW
Xd45r+MjuBRxLaMNBWZ0tawvl41gXKxCW1nRvr2FzU8lNPp02/s11rBreFxhhLf2NR4yO56zNQAx
91OKUflX62BT59Fr/9mw+cHc9eRP4dah24meU5Gxcv76Q+Soq4S3E4z8DZ3mijVFgULd1j8b4RZ8
6HZvuJfOonXScbz0CE49JeFXU9M5u1BTWdFP1Ju+3mHOK8IOR1v1LmsoExh5UHnzn7Few45CQywm
G17Gf83ZE5JbJtyLLt2GYiVnEac32ghXWzTpYBvSi+iV6Cv8Lq6dTgCGHSqdaHDU2GBp2zGF7kBW
biSZ77J3iJr09UaxiTN2ycKnsb3duvPDFYi6abC2EPnrpsCKBF9ND5WQqHIqI04s8xFu3T2DeQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24D638A1FCD3C60"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-content-crc64: rQSumh+51d0=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a973cb93-f9e8-40e4-beef-77d2719d8ee6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-38da59fd-0883-ea10-fedd-2a64126d3441?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
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
x-ms-request-id: 345023f0-141b-430d-a545-47524afcb47e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-d9d630b3-bc2a-ea1f-3de5-4dc6e373ebc5?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_18
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x202A2433E545140"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 313b62e6-fa5f-4879-8469-1ba649af0bd8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-d9d630b3-bc2a-ea1f-3de5-4dc6e373ebc5/test-blob-27a25a63-114c-9980-f239-8d769e4833bc

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x2201161C014A720"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3fa9e14f-95ba-4874-8441-b3dc38ef2a78
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-d9d630b3-bc2a-ea1f-3de5-4dc6e373ebc5/test-blob-27a25a63-114c-9980-f239-8d769e4833bc?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
Content-Type: application/octet-stream
If-None-Match: "garbage"
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
ZywMWS6FI1J2pmuN3F1ruQdMC4KaXCyisDzn8C6oS/WxkF+2ZpKX3TdPsaal87yVztRuUTywIQoA
aqnxnjMjzVp220v9tVN1tS5LS6qF/LyAUiFaOfq5AW9Utfvopj8ELONLLxhwlxmA+ZwNZdZfem7s
cEsRyJNgvdrcqf9XjA/vRx/HOc2kD7sI2UBeq5uZ9DqN/DXz8mNQ63E9lO0ZKWyMHR23mEGhR2CQ
Ce9TAhE+Q7XEyZDZ/FW7d05bZ3vN7rDT0Y194lv57LTUYuh0/elf/lE4VF/csiHI+yHyReDlwxo+
fzCEwGFay93cBZlsR3pl+2gqlZlQ9x5stOY5B6bT75/ONX242z7v3YmCAK2IXLOnjUl4ui2A7ocR
Fwt6IMQ3CBX5nRL8rSAqOrcQzvdx5FgzknpcWjRyTUb1psMydb3FSveXjr6gquApTn92cCCQoDOz
Ro1K2q3gh1DMBgZd+MT5SoP/2VaZk+iaMwy0+9wmZQWPfi8we3BJtwZu1KPZzFa7fCackMfdGrOl
sKehK4xzpaEBzXmVyc8StiJPKr5EwGe2+X+2idQ9smR7i8vJqIt6+i4C2P/cJbNWidqlje/0Ye8/
6zIMvRvNwxoVGT0DSQ2X1S+PQuho2dTMXwD5mCR0hyrcib1ZbT0TNBXkxwt1U0DMDre/ZB4G1xFd
QF0b0yr2oJITJ79QPmjyfA3ThBHIVgy/LYpttSIL1bKr+y3g92Dq7iZ5YiuAe9BPzegRM1P/lepR
W6agiOtwCFINpUI7EYWt6JXrTvTgP7G6Hec6+qFeq2VCj5y5SmU7CVnZctWNFLtjZEu9FEb2cBv1
5msDNg6wrvrd+ILo850wsEWaBs3bLAks1pVWoZYfTB6AxGT5N9NLKMPbsBw5enCtjGQAW2pOGbli
1194Wg1kvatjaC45NnlyTt0JAHzt8lwlqBQyHvC0Maqql1900862d/Jw1RFBc1brjg2MRRk9deUC
U7H4MZ+6rzeEjp8Z/nsPUomJfBxK4zW+R5DjJ+yRbSJ6cYAcvUVTtSbaveW20Y+SffKQtPjIt298
OuoP14hK8iF9n4z78pVDNsf2cCVPB3UAUan5AbkpsboQoIJaQ92ej8rDOTICl4tdTH4x0kdKLDJ0
D4beUfFoU+3S6lIS6PLpWOBai85D/boem7U7995yxnNQ5jRXvz7ZW+VEMKw4S2OLSHpm76BkMRHM
wLU8LVwPXyTfwQK9kZiigTDp/s0N5VBRr69kDNfS7LQji/+InS6JNdCHWYlgzrbixG1wejNEvtpl
6n2sqlNNDNVOmQaZGeMBYMj8hYzH8eD4gUdpYXGA3s0kI7Ow3Ip8OkyzETSwSaqKbxpqRzhOng==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D6482CBAF66F20"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-content-crc64: kdmMoN4wcx4=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 20a56782-e3f6-4769-840d-e87e5daa788e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-d9d630b3-bc2a-ea1f-3de5-4dc6e373ebc5?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
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
x-ms-request-id: d7bb1b5f-287a-4677-94eb-eb1926bb9ee0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-28b39df8-e40b-63ab-cdbb-3974f6305083?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_22
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x276BB4E3B535200"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e15cc92f-e235-4fa2-9111-dcf755f1654d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-28b39df8-e40b-63ab-cdbb-3974f6305083/test-blob-3f4b7f3e-df13-48ab-389d-dff157169694

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x27BD691675CF880"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 15696f7a-be7c-4622-8860-506cb9b6bd7f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-28b39df8-e40b-63ab-cdbb-3974f6305083/test-blob-3f4b7f3e-df13-48ab-389d-dff157169694?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 13ba84d6-6128-5671-a14f-437977d5b359
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27BD691675CF880"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-lease-id: 13ba84d6-6128-5671-a14f-437977d5b359
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 115570f3-c9d4-4f61-a4e9-73d93893fa40
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-28b39df8-e40b-63ab-cdbb-3974f6305083/test-blob-3f4b7f3e-df13-48ab-389d-dff157169694?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
Content-Type: application/octet-stream
x-ms-lease-id: 13ba84d6-6128-5671-a14f-437977d5b359
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
H5YsyO0Oixnxa/BtBbkMtySknXJ2PVrcDvSew5sy0GPqhdLA6s6nx/mhIb1xA1HnQ4xU0jdB4uI7
T7n4cMd9v5qMg3/nS8xW/dV41Rudagujt4AO3f4rqKLwhZoUrlcyI2Ei5X/R//e//tViyA3GnuWu
VblHbuKcYNrc98YyQU99RrG6eoWL0beIT98pyd+VKee1Zlie67V/hoSk9QcxjbyF5IJbDCNfI4QB
vh8Cc5b7R87ffNv231v8OvQA5tuvV8Ejo+VdORzDVkLUnSyVfBLuqa45UhHgjgQnXtEvXjyoUWde
39CxnQ2xGyaYIkIuZ77hEjwtdgWwQhTgNdtLlPcGK0vFN5xCPAuhiDbqSGzC+PcTTUz/e9tirZ27
0GgxZocvkvf2aTAhn9UxjO3OxfmoHjzjN0arBrBwY4n/hmyjbyKuu7Z0y4/H8q52zu/uk+ejErEr
TS5BhItHhgamIhhpjRzLIApDM1KtHEWYNTjAgs+hW3O6eCH0bTcqLUSJIM+VDEHSInPdYN9ffjHo
qE5ThgQ2BMakrxX617PTGAYOJPt1Ayj37l9cxPuUW/nwC8To16dAUhsJ8F0r2Eu/CkfZUFo1c6Um
XJel2kDLEFMbCsvu6kFezdHfbBLLyxUTnLm0uwqfupgewXsPmnfbPeAJEM1/0R8FeoKIVQaTW5CC
kT6GF1RJe08z0CnGTjNZBC4xwbpIk8uarkCHF2SRi2bqjQg5VCaMv5R+TAD2PyxPLlHYYZnVOf5y
7GgTwmTqoUTD28AqILAHpQEmyUfKpG4UN+gTuSrMFFMKxme9eP0vk6q8M2NrJQ6g0LuYr3C2qEj6
/4p81uga9sdsH1lISi0D9jWcDnEKqBHZculuM2XjUx4fw3hzs73CoTyc/ga1WIaOlLg6GpnX71d4
o2T+rMJhics6KYa0kEN42m00bakLIxpj35+sqDmESNQh+hBYw/R5O3U7ei7/2QR1wj8sooGtbX9J
m8wjteCRtuGykpUzHxd4uzI00KnrYwWbNub6V6VSdI2QDycnVYWUqcRNTUZuQqIotOZOeZzWXTjG
iH76l147Xx4HohDvUGWtnyfknha/LPRE0aO/BPvwurHvYc0HmhFlEu0oZp+ROWOAodl18b8hB1uK
tcW7e1sjF+hf/++YpQQVf4wolsZUspg/PmIhe8jyzVlyfeRLqpaSBE+3Mjlz6PvUYHIz+XCUNQMt
ez34AZsfbDGWJSggydT2lZJ2nX9fy1ZnTRpWv9To3UfhHi9YmgKzl8UH3cLStJadPGPeHpeEzq/n
kLSByK1drkjhPqulnfqPwwW5V+6TlJiEuYJwCb+wXVB/cQlNMs4Xqi968XXr959oTlqRynbAUw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x256401281FD8BC0"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-content-crc64: gHudqFE7UgM=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f774b4b9-ebbd-44b7-9b60-4fbe15cfe4dd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-28b39df8-e40b-63ab-cdbb-3974f6305083?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_26
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
x-ms-request-id: 5629cff1-778d-46d4-8c80-af5cb1ec66ac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-0ffd1cfc-ec2b-88a4-30e1-5b262cf14191?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_27
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2590FCD10371740"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f522669d-7eda-4b7a-abce-8601604d8986
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-0ffd1cfc-ec2b-88a4-30e1-5b262cf14191/test-blob-bfada136-a219-9823-c1e2-07ba641e92d9

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_28
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x23C1E5949D991E0"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a65cc627-bde9-4689-9a01-0e4b7bf50a40
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-0ffd1cfc-ec2b-88a4-30e1-5b262cf14191/test-blob-bfada136-a219-9823-c1e2-07ba641e92d9?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
Content-Type: application/octet-stream
x-ms-if-sequence-number-lt: 5
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
vh0NMTW/7L2K8cCTkNFzdw3JWyjIATpZ+GRNSeTpJBJPgWcO4w9bd7XwNCfijwjwb4+tm8NqEb3j
sznQcaPZoc2uRA9qZZT9beNy2M0Sd2hcXdlUO4hP5W+qKy/WiwUSF5JaM0v5hgr7sC3f9znv0DzQ
dBTJhGVEXl+fvzpkJuLdYME7t0MdYtfPWItbcO02ulrzBhbxSZIsFtTsWsbQl4lKAZZ3tBn4shE8
+Sva6O5xaAXfcCDM6xcuDqFvMQgQ/8ACEW5XvgZB+lMEtU9mUi3mevHB8CdofhV/SaZ3iYEJLPpq
2Nd/Gqn+nnXNxzbIx7t0iLYXTw+ZmZJZ2HVgyXHR+4lU+3pVZmBHwlGxmrbetoHqAwDL8tzr0T5F
JkIzntUE/Mytc8tBHiJWz4296P7beiH0dsZwBgmsaSo7ED8eFCN7rZ7qMEO1qOTedCNOLek/aasg
PygPk/bCAQmhBg7iN7tpQjtg8EneP83ikpHmXTxB+6aU/dT7bBmoJy85FKLV+z1o5euu33hhQgBa
LAFk3KPMXwpnTjnmbdUiuMkZpCorDJdUfXhRkxsuMrvUoUAXQ0qMbLSXbawDgXcVjCevSJ7VLiBq
EF8qeszvORx+EsuVCnR+jTd2lJ/qUPwAOwf0f+od/nIfrDPrYfHnqDSQhG+rgIGzMbtmXpqBgL9i
Kj/F+royYRNZdV1BkitFj+xrWcuMVLuFQU4utqDYnixziTeyIa15XiNcUgsjcZ6QIc+tFibz1taE
QLlsA6pzgNYwzQnzkm0/8fuoMAGvYc+vnpXRKogGf7JhLuHzDVp56dI086SVnI5hbiQqS6XU1N7q
vWQVoVVOKk1WkmOMTOShL0cvem4rGQIGb7xj2zQMjFoCCE/1ZEd85shWPgkq1SJAiRxepVlwv6Ni
DjKZ6k8ZSQYJiUOUq8sAspSl1Nr525qZI1EYruYAkkmsk1UU4/t5PPUCIUzfq95RXvPEyurIaDKX
/8f9AZogCPb55xd1686ZLJjl9rpOundyx1DzPMhf5CojfeQzfDta4hlV5cTH23MkK55S43J4SURP
ijlKLcwumgPsUW7qZbBcihOg+NWzq+vdzhAqDAC4qjOf5PECD7VNJ0rA24kEOcXu9lhe11BvnN5O
bV67BI0DM6c6S4G+WnteU9GK89Bh2JRLPBaoWtPiMEcSs6JXkiO9vafiyu5EL5vdAIR/5KkO7ZXJ
b8d2WtnUWBo5q6bYB8CtzTUpfg6lBgx6yllOYkueBMYMjSJbRmLNDnHUCoT1BPnE0hdz5W6GI2m7
+49/hfXOmqbgy3meUobTW2+c0fuIhcZgipA0Kx9Xhmm5oEvSTYl8BXDdFDh/JYCRn4n+6lJtMw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F95D478EA431C0"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-content-crc64: +kOMXb57PBo=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e20bf5a5-de5f-45ff-acf0-86aa49b26276
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 29: DELETE /devstoreaccount1/test-container-0ffd1cfc-ec2b-88a4-30e1-5b262cf14191?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_30
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
x-ms-request-id: e96cdfee-78cf-4af7-ba03-f8b4816f80dc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 30: PUT /devstoreaccount1/test-container-fb1fc976-9a64-876e-8945-10e4b23b000d?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_31
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CFBF55FA514040"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e3640e88-e497-4ed2-b1fc-1a272f816af1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 31: PUT /devstoreaccount1/test-container-fb1fc976-9a64-876e-8945-10e4b23b000d/test-blob-8bcb1fe6-70ab-e18d-6410-a38c95589b17

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_32
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x1CE20CC57CB2390"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4b9adac7-a8f7-4db6-9ec5-2694633f4738
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 32: PUT /devstoreaccount1/test-container-fb1fc976-9a64-876e-8945-10e4b23b000d/test-blob-8bcb1fe6-70ab-e18d-6410-a38c95589b17?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_33
Content-Type: application/octet-stream
x-ms-if-sequence-number-le: 3
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
TGzVCS6NGGsBVYvybkHOVp57GMqG4YgFOz2WVPfi8TCq+ZhFZvffWAdgilXlm3IjQkztGj/RkWrk
z83w98N0HmRaSHWoiO+nnL/CJVcyH6DKcxGq9dfw2GguYJYp7mFD7Gvxi1L9erldRX2ADmsTsbAt
JYOyyiiMaW8NeidZfa1efjnrQZRNzfhXTbBZcMr8G6/l/MndkSJDZCHj8ACRA8jQIo8xJ3Ac31iL
Wn14M/ilEF94c4DkgO0Xp9xyat34xknoiU46y/M/yR1xUjalyzEoPd+gGI9H66GiGX+TqXR6kpQz
kKmqakRsOapjcy22ctyrSi39V625oJ2smLFzqyCp9r+icTqHftOaNN/l43hz66ei519HfDrnee8M
/dGT+I2KunxuEwGhI8tZYyPN1L0kOKwK0MTAYXqFu/dLeoABBzxRWyn8BdimAMST7RkXGaUy6MQl
iSfJyVgC6VgJVqhLV1vnfHiTKDLUZM8ALXNhbaJSGZK73H4UiJLR+RyAnKobR5a9MJ0snr+RUSVX
yZvkoXu1tz0VkHvd0vTmwi4WVMcl5OXdoz0FJXrTKYtZvL727FihyuVtBbca312pRdyRe/1dMuS2
Bv0+sJLDQmbwhBU18NbVdIniuN4tw8PfXN+eQa2O+4rZP+VbYxlTqsJRKltHc1UGuwdze3oGiUM6
XlSyJAG4YomLW7HwehFwjg4c25hol+iKl4WmGn8Q07ahIQTFoIXBmMjSvBijFUH1A+xs6a2q0sZs
KIx7EkcJeoj7TlkMqu6IWkPQldrQ5oJEsReSpOkI908+WHj4RoaAyEKPqMfo6Fj+449p2jzrm0EK
NmEvdtae8lcJzlJ2kBS9T8yYQD66XMi/lMFanxwSUrw27Q8kUVJs8bVv3hoGiFJ7rIpvU1sDT9qZ
cOIUQ1M693yVP6MEmP56LE6IS32tuAxu3/KRov9hM500i+BwV61iNOeecUmvdhOM9SYNegRc67fW
pWRgqVR9MwsF0A0dCtWgJhaWD0fCv2neBK3YVLmZ16ApmbFJAYuTID09qaYGb+tRbFTuxttvE+b7
gaSmpN9SbPht83AjVySKA+4KhBXD2JXCh+dkqhHEuYbLTX/n7Hxd6z2tmXt6LRQwY8LsZY7QOKkP
5B337sHmqDrqWAmkoxdyrJnYFT8ZSFnTNEZO2FT3+hXW1whfZv17xvBBkNQLi8Crebj19yJq9ZzD
JLl6mNDl8l3zzssOE0acXE5O2LeFyKiGo16bAgPybOJsm0FDAS4gW513F730nWZyWJvUGxzkPlwR
9PRxSvBaAWLponcEWFsfLX0aDrDrkgb4KKlnHlDGiF3lMg05rhCtHBZbC/rubQBAtO6fyTCrJQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2590945DBF9A700"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-content-crc64: nUC+QdmzrNA=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 72960ace-1979-4dae-9e29-b40dda741c5d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 33: DELETE /devstoreaccount1/test-container-fb1fc976-9a64-876e-8945-10e4b23b000d?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_34
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
x-ms-request-id: 516df634-a139-4e85-810a-4edbe0ca7c00
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 34: PUT /devstoreaccount1/test-container-2179ee61-f346-11e2-231a-1a1f264ee57e?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_35
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20E0EDFEAF329A0"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 16cb0f76-9487-49b7-b15d-0b75493999ef
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 35: PUT /devstoreaccount1/test-container-2179ee61-f346-11e2-231a-1a1f264ee57e/test-blob-9af16d6c-8690-090b-bba9-27696226be2d

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_36
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x1E74A73B4208240"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 650179ce-2941-4202-8a0e-1cf6b3d73af5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 36: PUT /devstoreaccount1/test-container-2179ee61-f346-11e2-231a-1a1f264ee57e/test-blob-9af16d6c-8690-090b-bba9-27696226be2d?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_37
Content-Type: application/octet-stream
x-ms-if-sequence-number-eq: 0
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
OgyrSzXvZikzSejg007Z8s9vM1w+EJXb43BmnMt4r/xb7eQaoppJfAbIZkaeKjZszzSa8vNi7il2
0GfEicldu5rsheZqv080JrZVdalOPLk6+s2X3bwI+P66o9IzhPM8a6ussqRPAhDlZsw9DXmAKJOu
io78xt3d443nrxx9AaHCGQr9oooU6vi9sXfwy+uFOno/hPlkP6TNzs4XZ1PzaGUqevNugoUJmqCW
PxRm7BihYnShPXyoXdllL9O7/IKkyUkSxlD3Frj1NepYzQCQZ+G2dgXeUirogh0aCFKxTZ4e8XXL
VCbIqku8rAeST4/Y1cjyBYZ9xncfKUQz3A5lQ+hMOtuKxBO67su5IqUiVjKNQjKKv0gXoSv+rCri
lc09VmgfRRS0TRC1Nxe6w6PR/NIRpZrc24SgNJmwjBjo2Fj+fMw9AhAe2PQh1IcxXd2HLK9X0e8y
YXrjfxF6BMH4zV++vEfXlPnC8symugb8bte8KGBpkAZpyxtRWYP/pNQzKQcocqCWsJe1ld4ii6Z0
5xA5vttgjjxYVfArhjp2wk74c5H+0/w2JnfIs/onRj913XJyxeX50prK0B2waipcPtOQKhgVdRMU
A5hkl9pCMA6wtqjIBPxo/6H2MwLehrtNa3QnlxwnX2heXcJNlDq/iKAP/7SBlDrWJyt3HkEQNn3c
FixmG5jxiVZAaqY5GmpmNqtiz4YHzNc5UG/xr0EmTSdFcH4OWW0HHXVdQCmUnAzBEeeVrmb21UpU
LMspANkVGh1+9KrsV90+WrEQqYutpbNiL55ZkZ7BTpszuS2h3hycRyYMFqhi1bkKV1S05Sy+poYX
xtA6vIh+vaYOuJ2wnHuVdGFloY4LAFrlTzlKDGhvdBOmihhLYYudjlkBUxwbWbrYH3HKWQX3DMV1
VWxPNLA9n0OKCRJiSRPWxxM1Caw+yfV/ce33pBsNrn1S1gseTlmoxLTYkVCoddZd9JHywgMZN4t3
z8LDRvoofVuVEHMIt3m5jUT4ZTil1/sWmbCJG+x5OZ5/p36W5H25sBP0EmViVTwXODS+IdJT0vjH
rKxKnmJvG9fUiBD6IqjHP7UksMSVtERzceK3uhjMLNSFzzjQbhGxhfeOjc0sHRaM9+EcLiE0Mfho
1i1/t2C+CFs7dFNw9tCjcyvMByZ2R1TMK8M2r/6zUZ0/Z5jkMc6Wz4Vx8ajCHAERebv2ZyrS8o/Y
s4udiFldhyO1MI43v0FdNjegBVWsCQ/CJDZDvelzbXUJDH5C+UYrFGmEDety2bl5mTHyMew5K6p8
22MjGco5QcIYLrPDGzzwdfDsKPwjT0t8ySS4gTyJz+DTxR3jCPqeS8spWasGtn30Abz7TQOuWQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25D22AC5CA48FE0"
last-modified: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-content-crc64: pCGnQyQtQCg=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e250ce38-e792-448c-abcc-47ca82dae911
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 37: DELETE /devstoreaccount1/test-container-2179ee61-f346-11e2-231a-1a1f264ee57e?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_38
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
x-ms-request-id: b204e5d1-a154-4a41-9c57-f5d5519e7296
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

