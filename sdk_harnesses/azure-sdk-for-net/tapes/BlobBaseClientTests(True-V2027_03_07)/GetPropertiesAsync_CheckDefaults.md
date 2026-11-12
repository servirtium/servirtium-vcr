## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e7264786-a6c7-8b31-875f-5d27f7635fef?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetPropertiesAsync_CheckDefaults
now: 2026-11-12T00:48:09.4655025+00:00

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
etag: "0x1FE19DE764F3B20"
last-modified: Thu, 12 Nov 2026 00:48:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 15d0f654-a145-4e26-98e0-f1d3260da33f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:09 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-e7264786-a6c7-8b31-875f-5d27f7635fef/test-blob-bec1047c-3d91-2be2-c640-4320aac1fccf

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
Iuo7DYuvIipGomDGiUhk3Q4ADJD07pBIZPohh2MR4MVijgQNJ1JjzOKXd+/dHKF93GUSqbVs2jRZ
8qmQjprHNMGaY/tDVrW8nD+uXXaga0dZo6v9/zcQ9rPQszWo0z1Iz0MuQrimOoWwVQ11vn29uYdh
N+vuyjSKim1Hc6OAE8kCZY0zcSiPsmgmTKkqmjg2EvmtR5tRWQUOpLhLXsbhL0JDc1jwikde0oSC
x32LYO80EWCp0swusAuHJc1wQ1SiRR1n5ifgRoiyT3QWzpKIg0TJF01mOF12FMNMaGV67o4w4IJg
I3nIVMrX94NXGOF5/qGIpywGOwy/8NJjk90jOGHl5e0PKF/LAMKCj0DaHvzh0mnD8UdiKaV1oDKm
ZMDts74icTLzatZCvaZphKzM5dLVgsB0YEcag7tImYgsJJwClduCuK3J7miTgDOg+KX4qbpg0eIA
eVN3CO52q9FOFZkKZ+/RSS0lC5RY4N8TeYoWT+/NzFO5AhuHCq++U0KXRGuZlZG1J1+MO8VOp5h0
Y45jYFvhgElGUWTTSj99ZrhRwJx0eeP5YCiPQZCNalqDEqYhW/PntcQhU0Qs4t0gDtQM/ef8AOqq
av8zUj+4uOYKTzeZXArFaQvXUiaezH5LbzK7gW1zhxK8dvH0tGOFaJpeIZKlhrLJR5PbJK3DC52A
5+MM/Td4l8gl3OUZ0bWoUeqMQKrspeh/8jnZl2Jk+WpTc8x/eGti5YrJf6nNsHbeM9LDN8vylEH6
jQr+n/9lweN6xV3oKNl+KVogIiY+skHD+mOPoMGfYd+LhetgZEWKZL7FUuoY9gv5RQ1w0nEbvNrI
OqSc1iEi22R+XaPtHsUUlb5neGBXqwRYlVu0Lo5tb8gRlymh7o2do3aFmZlnDCZIWz2ztEN5cY+g
Q0DFba3WEe7a24abc6YwytTp0RFr8Ig0a9JRubuFlyWaAKtN1zbJr4irjTCgreiWgulvkKB9NVK3
kQHahVcyVURgAHP74/KeICGJwGNYlL7qujbRFQeFHctYlUY07ioweDjsP6x0mp/20G9+83XvX/xD
8MogYT882+Onok2sajL3WEcqa1QSdSCW2kSYBylWaTZJ8f1gEBf5r2TIzfhSSmY8h5stxPSnMHqq
iYb6pNO6UTkWY3g0lkgwMbvwSagnRJDeW3+NKKRCocCDtoaQ/guQDnu+O+btB/BS/JM4t+fSgkX1
HEhTLCmU1MG4seDCnzKwYDstaAip8FOPOysRCerYsTRAm+LCPOFRKmclNVYQj11giFespRk9Syv0
xPH9gsvX4ACsgQRQ7SNZ2z6hhLv9fqvOsYGTLAsaA0+2zXfwVKicTVRWZA1ZD5ozU8nbm8dw9w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x213E77028829340"
last-modified: Thu, 12 Nov 2026 00:48:09 GMT
content-md5: AiqnAJF+nf/cdZXxpH249g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e6324cdc-a287-4b0a-b845-3c06ef7d895d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:09 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-e7264786-a6c7-8b31-875f-5d27f7635fef/test-blob-bec1047c-3d91-2be2-c640-4320aac1fccf

### Request headers recorded for playback:

```
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
last-modified: Thu, 12 Nov 2026 00:48:09 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:09 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x213E77028829340"
content-md5: AiqnAJF+nf/cdZXxpH249g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 95dfa63c-fa9a-4739-885c-b341eccae314
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:09 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:09 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-e7264786-a6c7-8b31-875f-5d27f7635fef?restype=container

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
x-ms-request-id: 5559b424-a464-47d3-8348-a89a295fdfc2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:09 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

