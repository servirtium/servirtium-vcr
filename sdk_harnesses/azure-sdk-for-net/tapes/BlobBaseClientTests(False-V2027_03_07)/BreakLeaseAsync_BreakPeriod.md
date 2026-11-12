## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-cb00c987-0f77-d091-b2a1-b3c8b32f0f00?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).BreakLeaseAsync_BreakPeriod
now: 2026-11-12T00:46:18.7209703+00:00

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
etag: "0x256E33FD5CDF960"
last-modified: Thu, 12 Nov 2026 00:46:18 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 455868db-caeb-4a27-9764-3a41ac452b44
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-cb00c987-0f77-d091-b2a1-b3c8b32f0f00/test-blob-7187677c-0fe4-0e63-2357-6fa58ebb5897

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
kr3yI3RqPL/d2d0gjU8MCB09eoMHIbh3ZvKnH5/rQvZIGzb1POyLEirHkwoyQoHTSmeHUEHVkHAF
e7yCwh0g8pbm13EZFssxsWdZP42tRCNw09U3Y/G1c4vF8MEvCU8Np6F0TGoPujOcVp7Ze1DjWDaZ
Ee5H6I+kMGPmVCUKAqgXS5fsOPi4YRmhmw1T2/g64ZiKlfdhxr4SzxsGKWYNkVP1wTC49x8+4LDV
pk2CUVVrq3KNf2yxtoXZ2mncsjezkwm5XRnHgup5S7VHix9xj33Gmn7zgBHmRAuq3x22YS54IhJD
yPQ7pCiIFDS3aiplZ0rrFhe5vxL40hkOHaLMw+mHzmkNLseJivZVa2zdL9ngRXfTykoWvmP/S/bb
LIeFu1FKL5vBWDmCYosgZFOmGqI/Ltcr+fiecBAGDeLQrV5vz7Abkv89Huw9UGe/9loPWTBTm/6v
WsFYq7+Lu0tWsbQtsJSjioeiAg/r7amR33q19rOyfRJgwHXuw+dAsWOh5p6ykUXFbM6psJnuw2wY
xstF1cSXpDSizfAftMegYlCrSgcK30408IrkCcx5cf0I1fwb+tyfCUJqD8RVpbcGCE1IQ3llDed9
EeU5sptnKVvzF97KhGd0C0HFoM+J3krT3gB/MC6Do8cVnen2ZlamAuZpYo7YPIPm1Dc3oG0X9DKa
ZtSa6Pgsb3MWtOd+faXrHp7oIHy8+qF8mVv2TANa/qm3W/+BDBnuPPMawYecZ1aRTIHPLtO23mwy
Hk+cNSJwvLY9xyGmaRKE+uSIoTga4DEFZf+Bi8/WAH2TTu7KUQbQqgXQX6A16+NvSzPvLjwzGD4e
l9Aj7jDnZ8ajEhskuanet/cySoCQz3kcEkCb59JBXzawrLk1rbvV6fjakdjIS5GKEHZEAc69jsdX
BtzwS4DzYrPkdA3wqQo8XWCItT6gVMavEdZc/V5o8h3x3abe5J135i8l49eDmmdrB6NtNNiJt7IW
QTqpl2RVfIHv/stkXnjDEM8PenHvK3Zu8PW6+r5FaCbzyKNjzk/Kz2ZVlJybB6krqSMJeTxBJhbD
OqZum4HDqZWlcJbVYEKARaoKmZba0+lMj1CaPO/psqGNn5OoWzTkkuoG9pYTVUnhiTSRN41/6Ge8
IgswKG2mu770R8Gv1+l2JQas1NxTOTkHubO6WHsTDrYr6zkps2l8XzrXHg6IMbFKGxGG0hSLaejS
KW+662ND4DkKg+uwTHKdL3ShexsrfocBcD1pjTuhoIFQV4r6wnPXlD3Ufa7Fms6f6aKf6e7Npqro
uHsm2VP+aOJpX/Xnom0ByufeVgDYO9VuyqSYAreTg7DfEgn3sbrp1hXMWzvYt0Y1nh8H71CqDw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20EFD20F1524D40"
last-modified: Thu, 12 Nov 2026 00:46:18 GMT
content-md5: Lz9nVlAGqYacBUKHCWRnHg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1e5ea711-184a-4168-bea7-29152672eba7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-cb00c987-0f77-d091-b2a1-b3c8b32f0f00/test-blob-7187677c-0fe4-0e63-2357-6fa58ebb5897?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 0fb7a67d-65af-2b66-d6db-450890640918
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20EFD20F1524D40"
last-modified: Thu, 12 Nov 2026 00:46:18 GMT
x-ms-lease-id: 0fb7a67d-65af-2b66-d6db-450890640918
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a6fdc7bf-7861-4bda-98d8-058632f863b7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-cb00c987-0f77-d091-b2a1-b3c8b32f0f00/test-blob-7187677c-0fe4-0e63-2357-6fa58ebb5897?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: break
x-ms-lease-break-period: 5
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20EFD20F1524D40"
last-modified: Thu, 12 Nov 2026 00:46:18 GMT
x-ms-lease-time: 5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d238bf2c-ba5c-4f5f-bb70-f4ac1713e584
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-cb00c987-0f77-d091-b2a1-b3c8b32f0f00?restype=container

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
x-ms-request-id: 749147dc-8463-40fc-b36a-bf8ff4c5c992
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

