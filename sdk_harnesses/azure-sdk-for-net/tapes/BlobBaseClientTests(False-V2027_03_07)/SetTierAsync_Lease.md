## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-58590be1-f0bf-4f0f-b3c9-843966c30cc1?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SetTierAsync_Lease
now: 2026-11-12T00:47:12.2344568+00:00

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
etag: "0x1F78F64E69E3370"
last-modified: Thu, 12 Nov 2026 00:47:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 28b0321c-93eb-4397-9b18-b4481373c41e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-58590be1-f0bf-4f0f-b3c9-843966c30cc1/test-blob-662e0e6e-b53a-eaab-1515-d642f6dca30c

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
F9Ie6gmvPdVAMj4hg4h4JrBE8ulsG2MsX29DqRrNWNYleCGTpSK4vtBYJQh2imaNnLCRsum5oPtv
8oqabJO7c9ln+wtm5YCOizMZE/ZatdUItgxpPKXsbNclJLOXHlI8nLIvDo5bJrcvAie2oIwFFDy0
kbaGUjczeo8zQMHN9m3h3HZDK6ZHrY9VOTl+NstLHw9244ybtUp7+5T+J+X2Ygu61MQWwumVbeQm
MRj9tUPE6CCxVxPgRSYryDASSIWpXtcuxGIGNF0m4HWndYQyfkVQOj7ERQv32Y+e6vm4gyVefdJA
z/DhvbPCi3adONCh+Urqwg1H5BnMNuvSaEpkbVxQSfix8a5VbnyKArmUWqC//PCvzsEXF5i5dJkF
D1VpXh0ZTe/Y8AeblVOQvOJfN9tKE2xatJ+bOTFf+H0VT18nIaOcew2x5wzpEzlthlq1WTy9u/vp
D6p+fRO9ePeKhkX0aZs/w7zOmCxgcKBlLbLXqp9AWJRjPhL5Hv35824UX430eR2+dpWA7iLPiZ4J
GFBg5s5YSS2wkCqJRqW+1aW9SxETcbOVGDQJwGlxk7V07wWsmAyguxVfQ+jzNS/wwRl9Ej2M9qac
y82aTonEP/11FVafETyYHI/8sy7KoeMEGf5Q9IB35/leEMw/Bm2MmwPrfSDYUK/c5PWtkEN40Snq
lTWKc0p8/S1cQQFwWRYibxcq3yPDK8lOdA+Lyle25j6iVHA3Aii4b4Dyew+ua4vfiyArTfIFJ2ls
O/878TPVplrCzQSl6m3vcXCj0K+6oAiDqz42i5lMnCwHy8YpfX1NHNW0656GOqCzPNuCYla6spv2
t0X0nxvBdjDYnh6nxvTyVbTaBbRq/XGeg0+9yjrWTBkqMsU4WX268nVtrpuBDHXnjwyi4Kzmi7rT
VRvMBKv2AVEFfJMuufw2HxM//U7VHHfZ1jotM2xtQ6cLZANh7u7JdqxKfI/iuNYQa8CZp41r/Tmk
8i1xyc7kmDjsI1T51DEkdYaii6Dn9x5jHMer1JwZn2bJvfvAV63eZeRX9ZSBF5aPdDEHyXKYvfsP
DawGOMSb04TuLxc2ZB7ZwyW8jwGJ4gUxHF9qEtX0MQD/sUoB1ywguyIQk+d/WRATLQZM3C36hSum
1RxkMcCv+f4WNrPU2Ov4nNTeeU8dscNPV+TPp1TTBCseWgIQu4phYJnpaCJdP1UaU0BZHAzbiCNY
FNrc4FKpQzGHtX3o6OBJfBi1NEmh8hePtFMUeegeQ9LfuKewhYBGQCTw1YrYMWtfD5/zJlTatyHC
TSv/lclJaXKqCS85mfeXbvMksB2MtoPntGpIKxx9BQCF7TdVR6pbpmwYLSc7JnWoW7dgtgYENQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FF35D6E231F3D0"
last-modified: Thu, 12 Nov 2026 00:47:12 GMT
content-md5: Q37+ZFIibTOHp2Ez/DKK/g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4fcfac2d-107a-4169-9401-046de216c6bb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-58590be1-f0bf-4f0f-b3c9-843966c30cc1/test-blob-662e0e6e-b53a-eaab-1515-d642f6dca30c?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: e017a796-005f-553e-2d04-2fb3acbf4227
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FF35D6E231F3D0"
last-modified: Thu, 12 Nov 2026 00:47:12 GMT
x-ms-lease-id: e017a796-005f-553e-2d04-2fb3acbf4227
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 11ffe6b3-0d99-4a5e-9686-0ebdf3dc5898
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-58590be1-f0bf-4f0f-b3c9-843966c30cc1/test-blob-662e0e6e-b53a-eaab-1515-d642f6dca30c?comp=tier

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-access-tier: Cool
x-ms-lease-id: e017a796-005f-553e-2d04-2fb3acbf4227
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
x-ms-request-id: 90ab9777-f4f6-49b8-af04-700a9ae3ea92
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:12 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-58590be1-f0bf-4f0f-b3c9-843966c30cc1?restype=container

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
x-ms-request-id: 4e211587-771d-434b-b181-0b2df2815a6e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

