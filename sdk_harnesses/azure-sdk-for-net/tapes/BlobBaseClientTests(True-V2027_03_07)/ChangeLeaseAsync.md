## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4caf7800-e0f4-91aa-04d9-4e0661820435?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).ChangeLeaseAsync
now: 2026-11-12T00:47:38.2934429+00:00

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
etag: "0x1C467ECDFDBA160"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cd03fda0-0783-4b26-a834-38ba61200109
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4caf7800-e0f4-91aa-04d9-4e0661820435/test-blob-5eea20c6-7839-c674-e25e-de53fd71c27a

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
NTghlhpbuzM1USI7eVoJqLFc+SENJXyIBOhplQFXk5IW1NAoYW4bamW2KOdVOE2HVDWhoXigbBC8
mJEx8SUx3b2PJaSK4UZCQI+8V/yUMsub4UHLtfIadWi/bMjd6Xg/hUsqxROo/XPvX2Dp5BUTKGXF
lg/kZSjLda88ynV+ZVYWfNGxam248+TN3FWRMZFTq0RiF1NoWx8iXlBjazP+cfkJ0mhDYr34DaIr
FonSOUQe6R4xG04DriCyjwsdVIewz2tbiF4oD0mGagmxPESWTyQLRYIUzFWrBiRHkdOy2rgbekYd
drHl9drVqrBEUnHbGz/mEQ4FmwIVsIE64H511I9RlcH+edlzJVCnPyGkZ7SybHWUy8mpFd9DB8Yw
qxRbX9Yh87yv3aJlc+u+XVzgcEnMh3QI4QjGp3/iunETQ3o7TOBLg3P4A47SLljd67iCYpZ8YySf
Un3OWkw8zSMxUjBxghF8le3V1ITlNrOw6bvHYFfalt9VnPlifCgmuzZrodsna2mmBs2ppo6guhzK
HXGQdGzLVrxQHOYXGRjErxhNepXXiH1SIFqKMe9RtOHdmF+3lUfJoEoe10+Cj+y05Pd1Uj+G8pXz
PlMSQSXN/2cEOoG5DRnRhNpLubEuz5Ft1kz322KiVqXJw1fztl4kUdfoflRq+tfeo85lOznjxG/C
pGrZ1SMEYuTc8EnB3s57JmfZRlA9A9x0GDeUPBps5f7nMRH0S3u04xxvjgqOHcX/6hXRCn4ehKGO
ZL3rcCXJbwpK2ay8htvsJGM0zXXR5vtylFEEm9uAyaxwZea+yHL2pR4AQ0MYQ2M65eUa6rcrvH7B
edzTxNQuyRD/TCH0LlzxPSdW0aO4WVHuyrb1Zt71RKhn/E+WI+BK0XkyGPdCRbaJKa2P1evbCSCL
5foeOGMxCgd4jDIMWhpGC/8phUBZrIT/bD0xZm69jPIvCz3mLJgWAA7vybiEfc6TScnrsYTfMTh1
HswmAKSYuwA/3U/cX99mE4QxauPLeu9unR2l0dptT9kFcQ7M7wBqVw24RaB+t+nqhJ4ArcdVqaTd
t2KG8+ol0o111+7QmiODxxPVEzVP7+Y0uk08bKISr8dp7zed42Mjk3ITCd/6Gep6fOa0f5Zujsh8
Ujmd6GXqYicnZ6vr5uOvsn/CPOYGOaBiwfC7Xi8x+2FvIJAqhaoNKKa407I+jpYCBMwWrFHhdRmY
Oid1LwT39WtJfMVShSzUtBM/TmbtJDJauFpjGk8Pjat3kUuDmPmiwN1G9BLQsH+fQvc9oieyqxb1
G3aplNscOu4a2/PhURwanY2Jpi8fiQjaw9hX0euExeY1jn2C+CwCKrojtdSLvvDbIgWZKQTm1Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x258351684D95400"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
content-md5: 7AD+FmO5WY4UvmcdBSv7sw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d26f7824-8d17-4a93-83e8-967e5b36e59f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-4caf7800-e0f4-91aa-04d9-4e0661820435/test-blob-5eea20c6-7839-c674-e25e-de53fd71c27a?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: d0cf6d91-c503-0369-9616-0dabc39e98a4
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x258351684D95400"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-lease-id: d0cf6d91-c503-0369-9616-0dabc39e98a4
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 660a3ec9-7fc6-4e1c-867f-6d0c6e84ea3c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-4caf7800-e0f4-91aa-04d9-4e0661820435/test-blob-5eea20c6-7839-c674-e25e-de53fd71c27a?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: change
x-ms-lease-id: d0cf6d91-c503-0369-9616-0dabc39e98a4
x-ms-proposed-lease-id: 747c8661-d4fb-4f33-05e7-7caee6ea9be1
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x258351684D95400"
last-modified: Thu, 12 Nov 2026 00:47:38 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fbe75c5d-ac9f-44fe-8e50-103204f3fcb1
x-ms-lease-id: 747c8661-d4fb-4f33-05e7-7caee6ea9be1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-4caf7800-e0f4-91aa-04d9-4e0661820435?restype=container

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
x-ms-request-id: 410d3469-270e-449b-a470-1332261f2c23
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:38 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

