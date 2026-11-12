## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-6ea8f0ba-1e4b-90bb-2e96-6616462b258c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).StartCopyFromUriAsync_AccessTierFail
now: 2026-11-12T00:47:13.8694034+00:00

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
etag: "0x1E0197ED97E8120"
last-modified: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f6218857-eaf1-4d92-8511-03c414a03da0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-6ea8f0ba-1e4b-90bb-2e96-6616462b258c/test-blob-ed8d081c-817f-4707-4558-6082712ffd00

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
mgUX4zuQ7sbabh24SCHnLaPEYlxyTlY56WAp8r04H/+YZnxBFEFQjBrHEhFjTv8jcTPerM2hjUuu
3vrbZ/sIok8eH+Glphlic9VBqzxF1ZpgBYGKWnIx99gxkjZGdSQev3DCRS8dfsoaezj3X+EOaAhg
emF6fUfc7CgJcxPjHP6xI+zLg49rQ4e2cN46Opf2Iikt5frCpEEo5VkGFAq3N185Rjz1Q+V49Tfa
ww1pobGRElHptTYE7n+rop02ZC59/zl+APRaAd9EtPDC6OAzv0SndQK5zYEpNVe9SqBHQpEJXMPU
6qG9NhBxpABFQgaed+JZju8sxDK3Vcudnbc+/XJfuYwcX9Wi6j7xRyiA4/NRH9O+7bSi3JiRHJTV
IJlZM6eO5ol5gRcNt6SwOn0JN3HYS37kgBC9vdzzikNAzcmklxOB8f1p1527sTYQ8aEbiOUj/dQb
dbOX0SmshvbTzOnaDKNpiEV0bnTgKM7Zrcs62AJeHc/1iSJg6SDTvVGm6ORMNuX+sf+gro5fO03k
vSNdcq30da4a5YOACZ4koLEjOUDpjXfmOyYCvm5BlU3Ueyz8dkqjsnI2MlBifqhhew3dPAEN+i+s
djaH8bc/2VA1rI1xJypmgIbNs1smhL19oUJhY1hMx4D8T/8THMG79lkALdIb71Pjd7x6P0fUhvJ5
CVB03nX36OQMdNcrUmTFEr0CJVfrYrHufeyc0Yc5KMkNmhNxRhfjCUTtDnp7tyRXtS2J0mGajqae
hWCJWhdc0kwOHrhQU8ulHhsT/VQ2c8bHRBxar1Zncgtt0sG2Wa8tkTsubZlsB2Fi5LNGh5BRaBKa
wRX6AiL2p6us44EJ7sRs5mwZCAUsWj26+MuiIet7G2quHJeZMo4YOMXtwCPgWPXu2aEkOF8MbWfX
QAlXU4XAMMgWWtIs0rPdAM9APpoa2qDWs0dKV+MKoq4wwfGEweQ/LY9byf0iwgftRjeQzC7MvWVp
gKA+ddnkC7gk+xDBWD/rABALvhCitPFAXBGsetZ/ZAOMG0BEAbi1dr1E/cb2K+33pMwdwf5Uxsyv
/RjIOJHipZcNNT3+p/5YVUdTXrYqSjEjtNUKYaMEN1R0lASf7D4sYlgv6fWv+f3NxWu3AWgVhLLn
pIO72EPzCP7pihL5uWgIJ/xe+2E7dLvYPJw4TTXrXhBRuEi7cIkVO+H2xW/r1AsCrtpst4hRqzDI
45unu7rJ/SsBpwEgTbZySb+ARK5M7GiQNZ9bf6eHAAwX843tboAmLchD6SwK4WAj+m7J0GaBe/Yz
FoUabX6Eeqf0CFophNs/WRbmCAI7hVM+OIQ4vi+llneWulf6DMBJv2+FFdkG+XaTiXdQm3Pz9w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2298268E0F3EAE0"
last-modified: Thu, 12 Nov 2026 00:47:13 GMT
content-md5: 5tXYKFdMIGZQAUnZ3QyVBg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dcf9e1a3-3d26-46b6-8430-c740a230d767
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-6ea8f0ba-1e4b-90bb-2e96-6616462b258c/test-blob-35db3190-4bf9-77bb-4f72-e292c983454d

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-access-tier: P20
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-6ea8f0ba-1e4b-90bb-2e96-6616462b258c/test-blob-ed8d081c-817f-4707-4558-6082712ffd00
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: InvalidHeaderValue
x-ms-request-id: 746962f9-3d7a-42fd-804b-5780b6b39c7a
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:13 GMT
```
### Response body recorded for playback (400: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>InvalidHeaderValue</Code>
  <Message>The value for one of the HTTP headers is not in the correct format.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
  <HeaderName>x-ms-access-tier</HeaderName>
  <HeaderValue>P20</HeaderValue>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-6ea8f0ba-1e4b-90bb-2e96-6616462b258c?restype=container

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
x-ms-request-id: 35dd8cc5-66f8-4094-b0a7-12504bc40e7e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

