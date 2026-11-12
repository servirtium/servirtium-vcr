## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b3ad2619-11de-4926-9d25-81c21fb22c09?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).AcquireLeaseAsync
now: 2026-11-12T00:46:15.6806652+00:00

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
etag: "0x1CB6CCB1D2B7600"
last-modified: Thu, 12 Nov 2026 00:46:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8059af1e-63a9-485f-9f47-5b353929734a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b3ad2619-11de-4926-9d25-81c21fb22c09/test-blob-9d9057db-5012-a679-7fee-3ded4bf55e37

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
j+40owFYlLRtDgI1Z0IBxFnp74FdApbJrAc079Q4/qfGSTMxfogHgsPcLwNNQz487XmUYQXc2YxX
a/b6JKTgNBBabx4P0EXQ4W29gdKTe2jI9wJapJyh6nCm2RKRDV4f+/rz89QgLR0zw4CYHle6w/CO
MSyihZBzuYStafYyP9QOnoXXoIiUqMrlJ+AcCMsY6xUiA9syfXZqfzlPcsQmAISrin/S4iNo+Yli
vV2vV7C4lX3gEDv53CEPbSBORDYFviZccX5LRgnxuglRz8AZuiiJltxHRfBJsa5ew3QCGrVTXP42
U+UybU9z7lUxpwxh9bL4xK1Zvng2E7/P7YOU76BU/nLB4mdCVymM01eaFwqi/M3CClUI+Z6G/0Am
Yn/M3v+13amZoBNLtW2DzeohnPu0LfG10uRKTAXUOuInG/SqwPRX5DlhCFy5dlXohCyzZWNEcTSO
Fgwba5GkxGUwJJl42Az2ybfCUySU/FuOYsfYIdV/4qq/HKnoO3mnvET3iFK8cKsfvZurgR0Q+Rqw
jQjKy6OPsUHvuLxjDY4+GpbgnXMI0vEcuWQ602CMryKOOK5w3fGhZ9cRzLfuu68MbWeHL1ynp7oX
rhE+VN7gYwiZ1dXgzT2lPzWb9wY6Lf20LWX5BX/G55D0WS/fYhP4MWmuVebaLKAp4fAnC7C03YAT
iiZ55l6J0+1E7HMOxdwio8aci9gX2QHE0COPntvfP3yuy9fsf0oKJYH4lUAsGxwTBWjqF1Ko/LEl
tBY7+jQSZaz3X/kFNiN7kmVWHkPAmLUGe5lz9SgqBc8mxss0zytM5jCUNbsjDs9EboXsUt5tZRth
NH6bnm+EzVoq3m9XR8I5CTcSLGP5423KLoaiPbPwuWGv0putsUfAEGhh+C9f7CfCs0imWji4Z1AR
0HDp4Y+nOSUOqHQmjFjwUhz6mOo9a0Fe4IpqSV4o92tKm+DX1y7Yub8JUUSymyfwtggcvc9l02Uu
igEFPfDH5bAJ3PB3GHrtIt4rNBn8rERieZJWDDmb5Mh7qEwt03zPQWuTqL82eZ6NLpvwOp5LMd68
osNdcdh3bvco/HAuv09hXPKuaQOELP/0yd6eqqopL3ZucDC5cdCSHDrIDn0tXm5Mj92sncjaOHbD
aKf62cNM/8z5wE8eqOohG0zIvB6CxmpvURvMfJKtkzi69Qkol0J3ew6wNJ4fLebzioF8EXxYQaE9
i4engII6SywWY7Ph+IQJUUAP0ZLLTyQ12fIQMYG8YrNn6wy7z/uMduhxCcoyEpH9csA7SW8Pcjtj
cqaQKRqqWgH/eQ13ToFFgluqWUZZAsdgE7/BgRlDWHnRWF1U/EzOxq7IM5iEhSM+9cYUZRj0CQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x217F2242FD38D20"
last-modified: Thu, 12 Nov 2026 00:46:15 GMT
content-md5: 1cRgoz623V/QJBXu0AVqPg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8b108e68-ac75-40d4-ad57-3011dd9f5591
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-b3ad2619-11de-4926-9d25-81c21fb22c09/test-blob-9d9057db-5012-a679-7fee-3ded4bf55e37?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 1630de70-e95a-e8d8-bb20-94a5f624f086
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x217F2242FD38D20"
last-modified: Thu, 12 Nov 2026 00:46:15 GMT
x-ms-lease-id: 1630de70-e95a-e8d8-bb20-94a5f624f086
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 555ff6ba-d2ec-4a4f-8f3d-1df072ac6218
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-b3ad2619-11de-4926-9d25-81c21fb22c09?restype=container

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
x-ms-request-id: 3d8b667e-e839-43ea-baa9-1182ba6a2684
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

