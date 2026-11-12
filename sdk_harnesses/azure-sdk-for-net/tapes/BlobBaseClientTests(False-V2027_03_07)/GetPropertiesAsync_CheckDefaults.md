## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1bc707c4-59ca-687e-f3b7-c37e033ee304?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetPropertiesAsync_CheckDefaults
now: 2026-11-12T00:46:54.6253154+00:00

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
etag: "0x27C3391AA9A3C60"
last-modified: Thu, 12 Nov 2026 00:46:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1ff5f83f-8963-408c-bf0e-d92059195dbd
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1bc707c4-59ca-687e-f3b7-c37e033ee304/test-blob-700605d0-741f-ee86-21c7-96e06a27927b

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
k7WPM9hlImsCfAu/fT66IZe5dlxSEpNQgdj6AsOd/cwlR+tNrrAsauKbbaJpxnDiDHRIsLE2KYAi
P7IAah+nZX8/mjZTbXLnjQt5t6Tw57pnGPZOVU0a7h1qKm79LADC8wgjKSw6jp8CYCOmvHLcMVj3
mFIpWRAxJasY6UIE6mELt8Oczb2OLYlWTPQpdDKrjfkVBZOtmJr38QSAIqVc/XbBmwWuP2SbaWvJ
0gwbCLB5bFtJ7+TNXR4opNu5Dgrk+k99aNgt/U2Uepwo48WO2+lTB7VJEw6S8z3nhZuI4Vtg5di9
nqDXTG4NtHRHpXpYmsjyZQZVmuZA63SbRneyC5hByP7t0D1Je7tGPF6ZSk7DjurSlntUCkvyfLIs
PAb3W6ncBtx8a8qKqepLDl6Ip6El2LeN33Uc7L2z+lOKHT+1T+G1vUNyRiMgR+yRCPzsadURBmNO
aXszvxofyXB2AIyqlr590+lds5GUbJeIi+PAxpF+eBbbZuVlgf0pUn2yqkdg5nI+b5brtFPRuv3j
qjQ2XgLf+Id2zjDYF1HsM2AT4cJPJ6Rxglb6ksTCCqvogdbJ8/R607HA6hdCZVdE/4Hzvdk7lIOP
xNus5GbCs8SE8JZ6Ij9rmQ0Qjz2NLxz+tZJDzkzSrO1TOi4Yzu9L/TZSvnXBytxBiCTMKwRFAZW+
rS7Tf+V4skOoJ+cRUsodxJEGOnCnPOu1AkYnBYHoDTmYWiDAeH5R2gwxGaL0LzVarmZzP8YkF3FC
HX2eUKzBvxmuePipXEwStGBkdSNIwNIQzVcbdc5yc0KvfloBs4lfb1mJRrc9sFIZYIpmwKFN+lyq
jYNVpkpLPAS1+t7xEQHWBQXJv3ob0xwEARRDDLOhYYT+ViUFCskPPQmyh7ZzKE+Jj7qchDrhj7ln
UKU2CDBQFJha87vb0fo8uoFxaEtmkdnEuXz4BN1JHMZrnrok2TXZYXMdGTWUrr7AX8q4cCZuAL7L
cU6zWA+7ENb0bzJAGOBMmAfYSHikMAu+OKUSkayg/Z37WGfmJQlkYghfoD6LgEfpbNcflbhGJ0BD
9R9qqH8pVHGURL95ZnP9dOVvRZDMMrddKSTUgGfltTAnoi/p+bmINUvM9zuIcAZkIiHS1uKvdsJn
DX9aVNMKr4+OUcNDE3os5w9EADt81Lgeb15GEt5Odyxtguw6LuF4wkes+R5DIQ6npu/TanaG6zjG
O+R1w5ywQNqX1ZGN8bguzD3zz9uZ205Pnmzvewy155a0c/L8Av6r/LhErEx9GbQ2pJ45khxcLGCW
JiUvwMXN4e762X7GMck+SNIiVS8C0oS3uNZue1R6V0aSZdzZfDvyd8pdgkA2cHLU+kpJOdcwlA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DD9CFFDE8C7C50"
last-modified: Thu, 12 Nov 2026 00:46:54 GMT
content-md5: t4JdkhRUs6oiNmfsHziMHA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 68a0c648-1ca9-4d24-9c43-c4125c3d197d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-1bc707c4-59ca-687e-f3b7-c37e033ee304/test-blob-700605d0-741f-ee86-21c7-96e06a27927b

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
last-modified: Thu, 12 Nov 2026 00:46:54 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:54 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1DD9CFFDE8C7C50"
content-md5: t4JdkhRUs6oiNmfsHziMHA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 94a19e9c-e7e1-41cd-9a41-49fdeead5a39
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:54 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:54 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-1bc707c4-59ca-687e-f3b7-c37e033ee304?restype=container

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
x-ms-request-id: 9cfc8a75-bebf-46fa-9195-e34c815ec385
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

