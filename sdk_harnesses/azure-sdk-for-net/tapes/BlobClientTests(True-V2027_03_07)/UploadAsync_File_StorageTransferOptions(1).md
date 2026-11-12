## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9eecff57-c4db-ae7d-63b0-3173adfebe72?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_File_StorageTransferOptions(1)
now: 2026-11-12T00:49:04.5557760+00:00

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
etag: "0x1D186AA27534A60"
last-modified: Thu, 12 Nov 2026 00:49:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bb15ad79-8e0f-4437-a3b6-f42addfcee0e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9eecff57-c4db-ae7d-63b0-3173adfebe72/test-blob-b427ed93-7a75-db66-cf26-69c5fcdc61f4

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
NvXk0k8hYMfgg44zTS+4D2bcaZoq7nHdmBDPtVq4soZOPT24Guwicoxg0/LsMo2fbVpeH3PGyUeD
Bjk/UqtsKNAH5BDx//V6ufcOyRp/8WaCL0cAWZITh3P2NBOy4x/h9Ksh5E19rm1l5GV7uP8sBBXT
vCJjbM4+812c+8vhyNXXLNVvXQwZBYHZm3UsmM9zyTD+3if9fYjc4/Dw4LKigxyQo4wqvacIurah
itBZEVuNKDGa4+mu2q9Nk3kcKCTONhdZnPRCSQyI9iRwW/O3gtGVYreAB6Ay4cjd3Cot7JGS0lO5
AHRmS98lEuzEPX68lhCnhsZsTi92JrorZW3hWwqS3Ymf/YJdLhfYW/WzbaRKIUUZhWXLJoQkQtq5
OuVxQ7biMV/1HJiOSlevk/I5wrgW4UQnyNWkx7cEe7uno/QxZhc/0TtEVASsizoNG5KR6n8ho1mg
SnvgPmmn8KHd5qdjfSzb+vF80YxAejyalqwkc5A7hv+bkBycXpLRnWNjz6WTqp5mtvCNpdLMYM8/
Rqe9g30QoWCnyOwPP5xeqjQp3KuXB+wNvryfreAtzjBNXBjrFBnmUi1E6+GxVndULvqdooQjpz67
sMTBcfR/evm8wuKDc5YaQ4l9UhsKW2hFS37mjyurKbXZL2NVJOE5xHHo9ZOU0Ltjg1/6pVQisVRc
eyV1mOrNEJgtqkQyxR6oRI2qIWbUsHrDggzMsYNgtn0P+am7wyyGGuX7ZyZ2ML1BUmHHd4/uh8qr
sRbdAV8VzfPGI8x07IBhJAeB2UlUTVJPil8imT/uIXHeEBIVqBiF5poysA3xzGXgZVOIbK6BVmTE
jnf/8jS02AJaltxuS3vu+/KuIZxEXb36QjPsZbTCXLmtURqhhvNmftcKljaIcRnXmXG70zXHfzG5
BbAAx3JNmDkjwfphTXX/SKLFOcaGcdAaFMtCBomE5dLo54BDZbZlvP79ZLAfdkz8vIqSAkVqMpPf
5bOmC5Gwn9sneGX0vOLrX3zHiQwg+51/Rkr+8eOMfrXsY4ADvrFsTcXU9/7nBwCopqPIo6iGvuoW
J8RHsa74mvqwB1hi6KDLWjxHTASflz5JVkpAw9oMZaSV7ZfsJZsX3FwENwCoRb4C/UhrP3Lmdo+G
/lpjuNYfo6GzzPsJ3jWhMG+nml8+oRGMPcaSoCYyr3YHZidBsyOF5ZNe9HjC+B8Tyg4CPtwwSFxJ
1noQjAN6gR2FAngNX3xMIrXM36yYykWmf9UXL3Ga1x3K992pdFiQ43NbPfanBWuSthsmZGmwsAw1
ag0tY1Gr6ypaQ2efoq5dO/w5PYxO/3lqhXlVc3O0GkfQdApKYoAhr1HMTMID8xNtyChtd3N/5g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CBE73512CA01E0"
last-modified: Thu, 12 Nov 2026 00:49:04 GMT
content-md5: 48AgTsjay2ro5sGarNMmzw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 11681212-4de0-444e-9289-37a772834164
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-9eecff57-c4db-ae7d-63b0-3173adfebe72/test-blob-b427ed93-7a75-db66-cf26-69c5fcdc61f4

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:49:04 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:04 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1CBE73512CA01E0"
content-md5: 48AgTsjay2ro5sGarNMmzw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b18afa40-c06a-40f1-94d7-cd67a1791ee7
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:04 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 48AgTsjay2ro5sGarNMmzw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
NvXk0k8hYMfgg44zTS+4D2bcaZoq7nHdmBDPtVq4soZOPT24Guwicoxg0/LsMo2fbVpeH3PGyUeD
Bjk/UqtsKNAH5BDx//V6ufcOyRp/8WaCL0cAWZITh3P2NBOy4x/h9Ksh5E19rm1l5GV7uP8sBBXT
vCJjbM4+812c+8vhyNXXLNVvXQwZBYHZm3UsmM9zyTD+3if9fYjc4/Dw4LKigxyQo4wqvacIurah
itBZEVuNKDGa4+mu2q9Nk3kcKCTONhdZnPRCSQyI9iRwW/O3gtGVYreAB6Ay4cjd3Cot7JGS0lO5
AHRmS98lEuzEPX68lhCnhsZsTi92JrorZW3hWwqS3Ymf/YJdLhfYW/WzbaRKIUUZhWXLJoQkQtq5
OuVxQ7biMV/1HJiOSlevk/I5wrgW4UQnyNWkx7cEe7uno/QxZhc/0TtEVASsizoNG5KR6n8ho1mg
SnvgPmmn8KHd5qdjfSzb+vF80YxAejyalqwkc5A7hv+bkBycXpLRnWNjz6WTqp5mtvCNpdLMYM8/
Rqe9g30QoWCnyOwPP5xeqjQp3KuXB+wNvryfreAtzjBNXBjrFBnmUi1E6+GxVndULvqdooQjpz67
sMTBcfR/evm8wuKDc5YaQ4l9UhsKW2hFS37mjyurKbXZL2NVJOE5xHHo9ZOU0Ltjg1/6pVQisVRc
eyV1mOrNEJgtqkQyxR6oRI2qIWbUsHrDggzMsYNgtn0P+am7wyyGGuX7ZyZ2ML1BUmHHd4/uh8qr
sRbdAV8VzfPGI8x07IBhJAeB2UlUTVJPil8imT/uIXHeEBIVqBiF5poysA3xzGXgZVOIbK6BVmTE
jnf/8jS02AJaltxuS3vu+/KuIZxEXb36QjPsZbTCXLmtURqhhvNmftcKljaIcRnXmXG70zXHfzG5
BbAAx3JNmDkjwfphTXX/SKLFOcaGcdAaFMtCBomE5dLo54BDZbZlvP79ZLAfdkz8vIqSAkVqMpPf
5bOmC5Gwn9sneGX0vOLrX3zHiQwg+51/Rkr+8eOMfrXsY4ADvrFsTcXU9/7nBwCopqPIo6iGvuoW
J8RHsa74mvqwB1hi6KDLWjxHTASflz5JVkpAw9oMZaSV7ZfsJZsX3FwENwCoRb4C/UhrP3Lmdo+G
/lpjuNYfo6GzzPsJ3jWhMG+nml8+oRGMPcaSoCYyr3YHZidBsyOF5ZNe9HjC+B8Tyg4CPtwwSFxJ
1noQjAN6gR2FAngNX3xMIrXM36yYykWmf9UXL3Ga1x3K992pdFiQ43NbPfanBWuSthsmZGmwsAw1
ag0tY1Gr6ypaQ2efoq5dO/w5PYxO/3lqhXlVc3O0GkfQdApKYoAhr1HMTMID8xNtyChtd3N/5g==
```

## Interaction 3: HEAD /devstoreaccount1/test-container-9eecff57-c4db-ae7d-63b0-3173adfebe72/test-blob-b427ed93-7a75-db66-cf26-69c5fcdc61f4

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
last-modified: Thu, 12 Nov 2026 00:49:04 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:04 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1CBE73512CA01E0"
content-md5: 48AgTsjay2ro5sGarNMmzw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 55f68cba-d63d-4eac-833c-14e9af01f701
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:04 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:04 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-9eecff57-c4db-ae7d-63b0-3173adfebe72?restype=container

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
x-ms-request-id: 73cd8e86-59ad-49e2-8c5f-71f4a8b4ef59
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

