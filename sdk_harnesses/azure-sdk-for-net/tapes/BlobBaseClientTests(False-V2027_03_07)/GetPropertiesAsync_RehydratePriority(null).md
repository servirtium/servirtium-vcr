## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-988f6aef-da8d-fe5d-49d7-b433df825cf4?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetPropertiesAsync_RehydratePriority(null)
now: 2026-11-12T00:46:12.4559241+00:00

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
etag: "0x1E0424AD0497AE0"
last-modified: Thu, 12 Nov 2026 00:46:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cb1bb973-c94f-44db-93c6-3a5ae44f8b81
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-988f6aef-da8d-fe5d-49d7-b433df825cf4/test-blob-6480e187-9e8b-5c7a-8dbb-9014a220a5ec

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
cg/+yrI6X2Phevh8ccpZ9F78nEvaSdxR7zML0UpJXCkyyMDPhJFCTYEcghGl/evCYZu2pYNaESkz
rdp+L44ZmB7OSqgKinDMuk/JvsbKq/FISHCvk7am17aWnNe3wx7zAurz17NCuNcr6es0kFJjaAHp
NuYdagVnKHPyc+2ZFfcx1rvc19M+BZCZhKnLckZkMjTVzow41Zjki69AUETpkdT0ArqWh5AtqjFV
hOZcnLYsjkG5w0Zq+QEj90wk/rVLr/LU1m+MzaujpyNb4lCyiO74FMEDL86NiQm4c5BECax7CtXz
h8VHn8CWFhwiDhawcG5dLOrzSH8kRkxl1FkaX5534Nh7vgEosXQBbRmyanvyBwIh5t3Ch8FVz0B4
4ctne7Z9qy4+NbJtNXp18ttlcdvRcsxW+XnBtVgWJe7Ar8+pmfJjNL9MtNJQtLFiTJXm711kp2/+
EII9u/bWJw/DrIWqy1joAj0chb76BUTHXmjDLzWQXAhgq4lwJXjJdozCjQgsuIE8/e0gSCGxBAo9
dV2NEvjaMlB8SSDPeNzEUw4xN3g8m6bnhjJIcBTmr6Z+MrAbPGOU6Fq4r25gbIQRXPQSf8yRANq2
pYvFkcI7lZp5UEYsqRernU8ehOw3hhmtNxMf0y/Z7DHWZJbXzlaXfBnU5hw+5LLdZ+J9c3ztfx9x
GFquHMFqn2QUVUSA0874hgfSY5/9blJhQWxNXHm16OV2Zrb86GBXaUe3Ko9uXJQThOx0Ghx/c6kI
TdpVHULrXm1fCm0Y/J6ne/lYRkTD8+TXOdiMQc3J9/IM85uFAUwEzMshDlIn+4dOzJ8iJi1lRVr2
feNpXh2flhJ6CwkDInmsVHl4oeSRsD5RPXQuptHEp65AjoNpmm6ugXhArO9+S6klddG07KN2ZM2k
GCCpce9BtmRawpP1Q7oLyh9sUQNP0/LKCDD/ELsLyiq2xIJNBBCI//aLI4kVMDIXqSKEChPJVUQu
3mi/QaWpT/hpP344vcUO5FENxK9otNj+6GeZh78W7G89HianyL1Q4tSQrPCz3+tcdSbBvJCUxSmQ
wVk+EMg4U1IO+p+fZxuTvOHb2AjnSgh8PBGZVDDeqVj8FwdkEtIMV1iepeVLvQ4KLv+vue0gqHdQ
wtO2nv4hL1BHok8TL6kPzoCwSaQjMH8DjyYwL/Br3G+PE1D+VrhafHWUBBu+9v9Vn+pscF7SLZFU
sg/Y8ABg28XggxtZEHjIVc0vjyxkRZgn248F/msQvea+qqSpgYt1NChV3XLj+45ypBqRo55l8Gx3
sRVwWtxa0MY1m2bUHtNCuloDDmclQ98Ak1pQfxpIWLo3MdB1BNlL+g2srmAonYVHTuhDYuEEUg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CFA04E56EAA2D0"
last-modified: Thu, 12 Nov 2026 00:46:12 GMT
content-md5: fRQxy43z46C8taIH4gD2FA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 03472406-b557-48d9-80d3-f6bf7ca66cb8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-988f6aef-da8d-fe5d-49d7-b433df825cf4/test-blob-6480e187-9e8b-5c7a-8dbb-9014a220a5ec

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
last-modified: Thu, 12 Nov 2026 00:46:12 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:12 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1CFA04E56EAA2D0"
content-md5: fRQxy43z46C8taIH4gD2FA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 87c878dd-541c-4bdd-a85c-90c8fd0c3f07
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:12 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:12 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-988f6aef-da8d-fe5d-49d7-b433df825cf4?restype=container

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
x-ms-request-id: daf6add1-b252-4020-a698-88b44c17759a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

