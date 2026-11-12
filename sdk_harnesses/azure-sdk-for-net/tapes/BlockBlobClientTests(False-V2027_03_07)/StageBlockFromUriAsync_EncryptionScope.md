## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8fd34e4a-7d98-95b6-5f82-531622726eb8?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).StageBlockFromUriAsync_EncryptionScope
now: 2026-11-12T00:49:44.4411170+00:00

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
etag: "0x231F33D5B4F6160"
last-modified: Thu, 12 Nov 2026 00:49:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bd8b1eab-89fa-47e4-a332-0f2fc075e292
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8fd34e4a-7d98-95b6-5f82-531622726eb8/test-blob-84f2150d-243d-471b-1110-3ea2904e3bdd

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
fJfMum0v3ZlDRVQSpZjekvgPwqBxEDHCpM5nms4NPQq0zmE2K3nGG3E6TFMppPDGpMAdErDNRmtl
CRWex0LLNQdKXdY3p2d/SaYvN8Temf/eoPYN8CpZ5of20SFjJ1MubhdL3kYZj/xYnskJng6mhm8W
wCZMvUXd8XZOQNZFGyJSAMmtk7u5xBH5tFFgT0h5T0qxTWYt4rHSbezQyk4mE4Knt55F+fO0XPwV
UgjzfKEu1fGLk868JR4Y2iXO6PrC06HOuZipNFVX/fBpF4+o3vFKovVcmn+065F/LB7N5XQCUn9n
JMIJhKGcNJbdUg6PcPw0hEYEZTghGs4HKgc2iRh8Z8QQQLkuQR1TwGbp1piC8LwimGEt/e1GRQr0
AlqaZap+YOpJfi9CBkIpsaTSOEM1hDlKFPC2T2rXyfquOj7DuVq7a3auOXGN35IeBExIdA3Hvn4g
T1G6xxGAcrU0lMwEZfdKF8zNh0rHvTRemEsejlXt53vAomoIAaRkLse8WEvGGp5U/l1A+jczWZId
Wy7GYeNgR61QQ8ONQRUoaFiDC2TpmH6syZD3rOxEjUnX66V1nszjWxCeddfbx7xHF5Ler04tNMOw
GZhSaJrAC7V6tVZws8qMoK9TSiKn0QHUsJRaZt76qrfhxIQzkPN23WkhYBJl1mTHUQ+e2emhCUeX
frgFZaXXfwufj+5FWA+83W24hXDvbtkwkhTPXNDNP7s9nBE7cHfESuEGxkd2gvn/4vx86ITXpxDe
1dOQByM70U8zCLz+gGz19DuP6KeRuRAb0HnTUVc3ZfQBXJqkM0K+y/X4Q3o9AGGPh/RJR79oTRzC
dTepZ3/3/KLH/CTSUMD40B2ymHaW3s8XRMpi7h41mQ9+4b4LFGN1AEfXdQQ9vTYzUHehtbSlLJdo
kSO0lQ2EkmMUU24C7by6PJcvvmjK2oeUL52mlONb2LUmooJAwGs5U+KhKGnIMGO653kcdm4unbeb
IGZw3f5/uXu53Eo5eXss9mqGKbEey/467KxpPmJG9wXLpKAFyHbkIW/uDlQYgW398H8EqHMFfVVn
NvFRFnoYc+RFbtXbJi30oQhCML2pIWo/bE7iQk+RxSdLnZKFkgv11Ztw0xOYIslSDwZrw02YvhSG
EqkrNTGUs6iukIibbw78TFohOU1Xp0qEkDJIJQHZst9+/oBhyZ9q2yBq6pFAtqD3bnbydoXGLmpf
p6X/TI2m1N2pHXCOm4O6tl0t7L24Q9mRULeK5zxat9AVASL6a46SwxWzl5kwadPzN78nmUGtp2PL
bfvWHOyhTmWgeJlhwEvOmimnBKw/YObjl698Mx6OaFq+L/2SvKcpEkg0kPE6kXd0WP4YBqK3iw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x240FED956E66200"
last-modified: Thu, 12 Nov 2026 00:49:44 GMT
content-md5: iLoJCp/colYlcAm9/9m38Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 04edf30e-5228-4d95-9bb7-31dce15dda35
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-8fd34e4a-7d98-95b6-5f82-531622726eb8/test-blob-63f27e81-cf0b-a9f5-0537-08da1f7561b8?comp=block&blockid=dGVzdC1ibG9jay03ZGVmYTMwNy0yM2NhLWVlZWItMmRlYy03ZWUxZmJlZmU3MjU%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-8fd34e4a-7d98-95b6-5f82-531622726eb8/test-blob-84f2150d-243d-471b-1110-3ea2904e3bdd?sv=2027-03-07&se=2026-11-12T01%3A49%3A44Z&sr=b&sp=r&sig=WzLxLzwAqHyS1TmNZvHHCQe9bav%2F0ve4edE59f%2BcUBQ%3D
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
content-md5: iLoJCp/colYlcAm9/9m38Q==
x-ms-content-crc64: t75pT+MtwYg=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b8ddfb90-00cc-42ac-9717-7a5665005326
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-8fd34e4a-7d98-95b6-5f82-531622726eb8?restype=container

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
x-ms-request-id: fdf8302d-fa43-44b5-abfd-9317ad56f6e7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:44 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

