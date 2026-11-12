## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7c7f4c86-ba6c-b63c-6342-18f3b854eb11?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).RenewLeaseAsync
now: 2026-11-12T00:48:18.3857525+00:00

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
etag: "0x1F484EAB8D38400"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fc1a25dc-6cef-458f-9d56-a70ad8a143d7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7c7f4c86-ba6c-b63c-6342-18f3b854eb11/test-blob-ad50994d-ad46-3a5e-b518-7b49750707a1

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
a5Vyzs15/dM1p8QF0rkoWC1Y+Iry8I3Z7kXHVD7zQVs6doci4h1E05t9d57pWWf77yIbHA58rnoH
mN+HsqmUQmZoylsxBXYQFCTudXnu75Xdy2Qc1yRNvscNGko+vSHy6DQ4gY8MyeqsCwjpjTgBGahK
qedFeGpBGwyTJOor0lYD/I1Etm4G0QF6b8wbYzCOCwGh8xM5rHDK9maCeKX/gDix5pGrvWM5RNjm
ywidJbfbBBnpit5Dyk8cer8Ig1lceu+Uan2f406eZ686U+FoLNCupnOLFvVabRxBjkOjMcF/iVAY
Cbs6PCHKSyMvCXZutE3uWtzl0GT5OfxhXlQL+jbuu8mRTyIUdGpRwMrSK2Sl0tr1tNbkmbnrHs+/
2N7Nv1DtQE2s3WQq2uZykw+ZJw6Xu4t5FUVfCSEQpTFSVZuLhAF65OoX+PV2ytrwcgapUfbBKBxS
U6kLjTYrnDcz2IVK5g4OH0IkgMOWA0tqb5cbZ1M6kSx+ODFXblez61y9Q/JVpov3mjK0nKhZvFBe
oB6fEDXj+EZYy63dt7DrcJRn2MBYFcgLJMwhhvSEJXvg+M44FNom2Uqr/dreGeKByCwT8uSPBotV
lOxownJR06Ux/L/isly5QP52rBfuLQrpn73IcDOXUfJC44DuvRfXWik0rBwjnxbPWbLmGVlzZ2fh
fyK0iGNymqvNn87cy4LmnlLuuYDuxQCn+RaAsTeYz3wZDD70ItHGwRFwVgBH844w/3sGhK3m87ki
DY9M8ul0NM9Sw75D8nuBKPdufW8AXwaIULG8kkrOMhmE0RVBes8o/CIw9DDQ7A3/hVy1d3ZKIq2J
w6E3t6KFg5ClvyBmP60oRoBMz2rVuGSkvAztGLuiOa9nuLYu8USAqnGfKizsmUaujTD2/VJDsws9
kvuVl2rUAoVw/ob3+VQ7zCX5No03tyLGP4uKrDxcJASr8F5J6hMGyiinfJq/t5PbujAtSX19BdrY
z1jfSlZJFNqBSwn28uIS82tljzuIB4j3rvELL9qHLeuDcBu6JoDSXmfAPWuK5chOG1YRGHWfUMfQ
6JtkPeT/+R4dcoHGV8zrkzHTyMkcbMgovRSEdhR15CBT6j7kbSCCwENMbHNHh8OJJYVEy4f+s3vS
PIDQe4MJqI1hc2yOByUQUQiG0ABV4TVQ+lGOMBmYVTfDETGgskTAQsTl5hRX+x5gM3p/d+N7fVpL
gIAxend0yB00y/X0cJ/DxY08cPsh+P8zLv2fGN1UR5TWVTHEjsdMcR32IjAoa8LbvLJWPw1fKYeA
/kx61LBA4INhHRtt/jfF7/7dKtbPCsM6xFsr/giGdyupQ4970ZxttkGsxk2mbb16kU8Ogf+xsQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1ED89D5E5697FD0"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
content-md5: 6ac+2PoEKrCOllEoKV0/5A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a1f73066-5566-43be-9539-cd81e365bb94
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-7c7f4c86-ba6c-b63c-6342-18f3b854eb11/test-blob-ad50994d-ad46-3a5e-b518-7b49750707a1?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 104088f4-1454-7ae2-daa6-f0c3bba8491e
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1ED89D5E5697FD0"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-lease-id: 104088f4-1454-7ae2-daa6-f0c3bba8491e
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1a774a4a-839b-4023-8b06-9189da39ad79
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-7c7f4c86-ba6c-b63c-6342-18f3b854eb11/test-blob-ad50994d-ad46-3a5e-b518-7b49750707a1?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: renew
x-ms-lease-id: 104088f4-1454-7ae2-daa6-f0c3bba8491e
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1ED89D5E5697FD0"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-lease-id: 104088f4-1454-7ae2-daa6-f0c3bba8491e
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1d26ef40-faf9-4fe4-b670-2f60b76a8be7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-7c7f4c86-ba6c-b63c-6342-18f3b854eb11?restype=container

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
x-ms-request-id: 52a390d7-8029-43b3-9384-6952eb670f18
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

