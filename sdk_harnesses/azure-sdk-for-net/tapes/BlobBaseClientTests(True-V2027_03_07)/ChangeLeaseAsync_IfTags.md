## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-032747f8-44ab-3899-7c2b-bc74a1b25043?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).ChangeLeaseAsync_IfTags
now: 2026-11-12T00:47:39.7238797+00:00

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
etag: "0x26BDFECAAB46720"
last-modified: Thu, 12 Nov 2026 00:47:39 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3130b0f3-e0d2-408c-86f2-cc8b321a8e71
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:39 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-032747f8-44ab-3899-7c2b-bc74a1b25043/test-blob-6315f8b3-99e3-b426-ca03-10b660a53d62

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
dX+idSzFL1nksoCNZl7KaEmgBA2dZkxfIXI4pzTj19fuWf8iD9oX7cm7fzEYmE1sOKhsv6AwxA4y
Q1S5jIglANqpnwxeqFlviRdE4ecbRogkzG6Mdxc2vZXw78uFXWBAln5Wb/hADZBO/TaI6+InFv3L
lMAZmYnCcuF3bbmN6Sy2BEtoxdaP5L7ePXnhrdKyydjNucifJv31k/wXyaDXwRQK0eeXvlEmPLAC
O1sP4cQOxKTgvy9jF91OczHZeBoeB3xl1tvrGwuGpn0Xneuh5rE3CAT79gHkproKSEogTcOW4zTf
qQvpI6mYWRiyTHnxrI1/oXAWIhB7gS8h4dLAZlm5gbm3wjymTuRbY53oMlpAGJy9oKtTf8EjYyjb
x0HW2PK/+Mu/OulQ2VOLur9zk07V4Mk2AsauZQH4k14UyoaihYqqKDqOgd2ybcZXyMUBsNDZBud4
n9YsEJLKx6eLOw7M6DU0yWoUR1/rg5T/Vp089+OOO8SeKeW0fRinxLk2JzK4i+CPzOZmxL+IjRtB
LLn1jtDD/ABJLb5PgEtRbYKltFxiR8u9rCr8KHYFFpzJc1Fesjbpcioxbl4hP0ybFFc849i/3uXu
N+Glx9SJRBchhg3687pMu0IyMNlsm2zeYBMeyTLDCpRrb3pUQ6tVpypG/7k+oSGc7yeWja4Mgpx0
x2bBa3rkXnt5joNA93eW3IiuJZuzn77ygtkLLH3mX+3d4HxElDyvYqE9xROdXPivALAlXVwBwSen
zumh2DH+ky+WYhf7UUdM/8P5ddqrVCXhWyzMwAGR3B5VnMVTDolwPzLjB/ngtK5o2V6YB0tM/HrD
v3wEMdItBIX4pbWC+PA5iTaoyE0rAKd+Y+ej+NXTCKBLkE4Naw1ftQJz5w755uBtX30VpDQsl77V
hs7rigywJZ0UN2iiLB4pSBJKtxmYhX0GNphXvmNsHviPN+U+dCv2w8Fx5K94yzNf61sh4t+lPQFQ
5VRzWGc5pxhvEvQ56tTnVPRXJqDOjWtl+NIHSjwY6frj7o/Wg2taODyXCLg+JgGHOo3rThZhglfp
DWCVMV3bVij6VfxFENCJ/O5jN4WyJtHRgBCuLZvjgms37XUKxAffu7GQRNEEQSq9YVEo/UvSNueO
xLBNLCmNFtKQDSJbfjjmg3vTIeEAzD7l8ctJu4QfZbaNfABWko6IAy7+czQHYeMZQXrP/xQFjfdx
ZztdQ1pOcadrzQE3kPHtSh6zAlkK3o/oL3oKUGahiO8J5CtTK7/TsAKMm5Th4rGJ4rT2UoueZ4mr
dRTgQyFBykUSLavFmR5f31JWfUL7Bk3JgW2xqzVka32ip7aq82zhS9FOz7QFw0iVlnI4R+lGrw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E67301C142DBB0"
last-modified: Thu, 12 Nov 2026 00:47:39 GMT
content-md5: sSXTrGXbsHljSb0SFs2oNA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 345785b3-4e83-4df1-9b6c-9eeacc547d48
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:39 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-032747f8-44ab-3899-7c2b-bc74a1b25043/test-blob-6315f8b3-99e3-b426-ca03-10b660a53d62?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
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
x-ms-request-id: 4f65fff5-7708-40d7-b824-f097bd8b83a6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:39 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-032747f8-44ab-3899-7c2b-bc74a1b25043/test-blob-6315f8b3-99e3-b426-ca03-10b660a53d62?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: c217c76e-8fb3-0f1e-aec2-2e23f268b4eb
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E67301C142DBB0"
last-modified: Thu, 12 Nov 2026 00:47:39 GMT
x-ms-lease-id: c217c76e-8fb3-0f1e-aec2-2e23f268b4eb
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 81254390-96d0-4fb4-a479-cc51f6fe09ce
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:39 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-032747f8-44ab-3899-7c2b-bc74a1b25043/test-blob-6315f8b3-99e3-b426-ca03-10b660a53d62?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
x-ms-if-tags: "coolTag" = 'true'
x-ms-lease-action: change
x-ms-lease-id: c217c76e-8fb3-0f1e-aec2-2e23f268b4eb
x-ms-proposed-lease-id: 703275e5-37ad-c398-be24-1b14c22b2393
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E67301C142DBB0"
last-modified: Thu, 12 Nov 2026 00:47:39 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3417772a-f9ef-412a-a185-4bd80026fdf0
x-ms-lease-id: 703275e5-37ad-c398-be24-1b14c22b2393
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:39 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-032747f8-44ab-3899-7c2b-bc74a1b25043?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
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
x-ms-request-id: f58cf3c5-7acc-4066-89f7-4dd6ffbec9fa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:39 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

