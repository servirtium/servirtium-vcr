## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-22701937-41ce-7941-40c0-41ba90a64c12?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_OverwritesDeliberately_Stream
now: 2026-11-12T00:49:01.5832631+00:00

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
etag: "0x201D2FB9CDE1280"
last-modified: Thu, 12 Nov 2026 00:49:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 96b09d21-d214-4c21-9779-d08f3e1b0d46
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-22701937-41ce-7941-40c0-41ba90a64c12/test-blob-91772c20-a86d-ac71-38f8-9e7bf7589e31

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
DR2f10p3lRiaTKipi7hZ/f76401VjQeOp8Tp1qLFgechEK1yB3XIqZde9iEAyCCAnqF8/HRR3H8W
EC+Gjr921MrAh3sL5vWJMjq29pbmjd+jaDcASIRz0DQtXPZFQRrX6CFWQECldbis88k6muXpMIJQ
4iWIdYtGTbdG3Yr+RPAf3w11kE2e/vN/VFW6ODVORCx09F/1T3OWEPOIXpctra/ZGrvXc6A1suQx
CSE1ixSC+Jleik+RKZCa3oBaFaBbUaam4R55dtCLPkJ7w0VRYITfBmX+zyJgR/ErPZUg25xD1rd6
j6n2CIHJ0kwMFmVKSH77ew86XYKDRpotTjk7a2OmN+2O19Db6P3kNfzWUzGL4fQWJGCNCXk19kgO
yLpIjWboZd54vHGtH5IRViiFrPJpomxFJEYDGS50WeCHzCBCnKeV7u1SEiWCaAXNe7NQr0lWpSZN
A2kf5UywBGKRJVNyzrmA8L4FF49HwrtBNZ17I6qWMSf59Zk+dgmgog7C8UOxW6350L+LUI6XBkCt
3a+vNOC4+vMreNkgQnq1ZHSBhdB4kNnwglPrC+GYYe5YkZhZ8W0tCfdPheLT2I1E1ewZFoFwNE3V
v7KNze8Skhfqx7HhXHMHU3vZKQr3HKnFpjX0f0tt6FxKgzG6oDwIPPLL6RHcY3l5EcMFlwpD3qMJ
xye5HhPLfN9Ul9hBTLI/0O0XKzKY6UO7em2IaFBSB6SOsdkUTh7fAGwxh8ugOMUQxsYdLLNwcd7k
/aOlQhSOAZA0s5vZKoHPNyvGZmF3GkKod6GKNdrxHT/6MFB6Ob1YooY7bIQqN5tETvSIqgp8bONg
/cpyBMy1Q5Vb3vowVP5tbcPbPK69fkAGRefmaHM0fsNtGTzy5Z65hSnvzlmgE/n2GjxHoTA1o3+K
a77lztoiJmA3wzrBe4clIbaEzq/nZTHt8E427dySOHa9aHnf1LdOzKj5aVC+NJ+0IX96sNTPowaN
996M7DiDpIrEBBMNRk3/NQIH7vzhL7yugcxcF4ii7cVzUd3ZwuBvdcTF+i+Mptsye3rSx7QJrMch
3WpsJo0CIhdOmvRvJXMimHg3GzWMItrwKpwNzyUQaaUVt+V1Ak83w9cYPgzmw1UHsC880pCSlbqP
e/zw9FLxPTBOWm6NrJUoAFhddOTOCmdGBh/205cVgiIq5YZTRs6FJwDcmGnmeQOZE9E3NSDWwXGU
qu4y+mqYOddMY8cP1bqK103j8nH+X40cXb/F3UwBUyQVvpzfUiyWQ16RmRY8ij4XrV7S88//lkph
Fp2q01yKSw+i+RYdqoUhTa4SbMV24NOBrS/uLmBVFSdRfjyP63ACB04GmZAn+QLYsaUg7CqE6g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25F6466D5D5CBE0"
last-modified: Thu, 12 Nov 2026 00:49:01 GMT
content-md5: okZ8hlMfuPoI+jTuZqXUBw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a6965aff-28fa-4d35-abe1-26ed4644cd34
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-22701937-41ce-7941-40c0-41ba90a64c12/test-blob-91772c20-a86d-ac71-38f8-9e7bf7589e31

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
NckoJSybHK9N5O/MLEiRYT4QZXdwRkJatC0Vfbo0Kf3NkwbFw0vWazJXS6w3LdWQH0Ph3MUNee+G
zXH/hZ/0GLvy/5hBzJ7zOfpFGfqWIoZXhV12U0w3wBkXPvXa1+WSYjPxRS48TlOl7qLLyGD08Krq
pwBCfcVuuj9/Ko2pGWIUsrbHpd1YGjYJ0WSpbPi5I05K7y/kUOVtgorvvSTG/NVAthWpLErNko3J
OathxE5HxQc+XikyL2LRWSJSaFwSQtWPaLXiD/YEfVyiGhc5DL08qPgdiJ2rDoaz2NIneikwt/bW
0VuYZLUQOuHMkBRKl01kFsBk9Lo35FouLjcj3AIzcWMgYjphpENCDE273n1yaECFw2RpzMM8nu0B
aTV+7V7fmR+xKjUSA3F9IedsfAbdvMX2nhieyqSf5MRNYDsNwx/v3ERewD4LcsDy66vbzyLnJKxv
iE9FQM97EkVxxaI2b13IfZ/BfvyH6itYq974xBWhZjyOnTvQqZt14674mq0dvHxNE1GCJaWw6J0j
7JXxgk0wz15lp9Eh+NQDTJtNjk9+O+5hq7HEHkCX3rSerLwGhGBgyMtOtxSqKxt8f9kJYllNpbGm
j9acbLAdzskcg0sX/cc67caEL4Pat3+VR59njXtbUAcLX/WJw1waMelLjafQZIERznWTyXUuzNdX
BiQRtkFNwTNDDJ7SsSlpav6ajirXxeIeVb8Gx4eS3JIdMrw3CHqo/ct0jVjiPx1LKV53lD2tgEFB
82CBR/qssC8MtX5sMmGD8pFeYjiKOxahup0oG0hUcLJ79RUaJrbRyNwo1oqe3/f886GsTx0It7dK
4Ixcg5Xnt0XM8DxMaczbjZpcYmWMAtumKyemqCCUcz5d0EUpdERHQR9F0u67sIrV0cGCq1VSvd2x
tldtQA4kN3397piGsRlWFCBFRzDt6nud0dZfEsfpCxJoeL3s2gAQIZpxvcLxTx+oLJY0DHasxMvc
z243xCW1FOOGHTlbaTogNSaWey25q4G3t+UwtP6bu7PxEAqR2Fx0u6jeazHmTMNcFNdQFUieIyTt
gA0/hF/k6mKFaVkvjlzJIsCE2kBP0Goi1KAnS6VrU+zmpFdPNDZI+oHPYeJpLIZ6h/OIGUnjnbCi
HbC/vZ+8GhVsSekEeu6JPOC/gG+HuKcarcSy4zqjAgenrBeGiTzhEkbM/eOcdQwF/t1oJB1AG2QI
pBDbCjbbyUbiXc7XArKj3W0ourvEfTe3rORdOt3pZ5CyfuQsBggP8TScuhg+LvsqxUewF2CoQyfY
I11SfY5o+PY9JITOd9ZkGMmHJ8MfeH7oM3WWOU8wCjq8U+KqvXOlNMEiAQp2XE1wS/+XIRxkuQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2062A668E5C19C0"
last-modified: Thu, 12 Nov 2026 00:49:01 GMT
content-md5: 4VaeIhXsg9y+dyMOXNPsBA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3ea3f65a-c352-4074-a006-086fb202e77e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-22701937-41ce-7941-40c0-41ba90a64c12?restype=container

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
x-ms-request-id: 50f41c20-975a-4122-bc6a-28aa6528b3a7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

