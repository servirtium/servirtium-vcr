## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b65389cf-a513-9f5d-a2d9-d82476ed9e23?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).SealAsync_AccessConditions
now: 2026-11-12T00:50:40.0317819+00:00

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
etag: "0x1E80CA92F5CC4D0"
last-modified: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b0b16039-e5ca-403b-8d26-05cc64496250
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b65389cf-a513-9f5d-a2d9-d82476ed9e23/test-blob-e57b51e6-81d9-6b5d-6eec-17884678fb17

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2321DAD578E0F00"
last-modified: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ddf3910c-6ff2-4624-b96b-249dcf0cd3ae
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-b65389cf-a513-9f5d-a2d9-d82476ed9e23/test-blob-e57b51e6-81d9-6b5d-6eec-17884678fb17?comp=seal

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
etag: "0x1C5DC0AAA4864E0"
last-modified: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e5cff76c-ed2d-4e13-a37d-ecf67e74c4f7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-blob-sealed: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-b65389cf-a513-9f5d-a2d9-d82476ed9e23?restype=container

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
x-ms-request-id: 52167c2f-8365-4ecd-be60-875e40fec282
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-bdf6f14f-e9e5-39c3-7742-41f2acecb1b7?restype=container

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
etag: "0x2022CC08DDA58E0"
last-modified: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b46b4d26-6589-4f07-914e-48100cb5060f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-bdf6f14f-e9e5-39c3-7742-41f2acecb1b7/test-blob-f8583371-67a8-4e11-2ce8-48278dd4592a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1ED0262E889F7F0"
last-modified: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7322638f-6b67-4f03-8bc8-a70fe4bc808b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-bdf6f14f-e9e5-39c3-7742-41f2acecb1b7/test-blob-f8583371-67a8-4e11-2ce8-48278dd4592a?comp=seal

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:50:40 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x214DDE323E75F40"
last-modified: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5ff05fd8-762c-4fad-882f-dcd0df0c45ef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-blob-sealed: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-bdf6f14f-e9e5-39c3-7742-41f2acecb1b7?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
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
x-ms-request-id: e5309968-f9a7-4340-930e-82d88f2fa2a8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-84d5c1dd-e0f6-fc3d-8e42-6d973f6abe81?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D21306B94464E0"
last-modified: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 76628c2e-d5ca-4f03-8632-56769af1859a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-84d5c1dd-e0f6-fc3d-8e42-6d973f6abe81/test-blob-1217603a-031f-e86f-e0a8-90fda19caba2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22C7129D43D0640"
last-modified: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 71b33b06-37b6-4e77-9c5a-72f3bc0cd6a8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-84d5c1dd-e0f6-fc3d-8e42-6d973f6abe81/test-blob-1217603a-031f-e86f-e0a8-90fda19caba2?comp=seal

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:50:40 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20CDDAE019DA160"
last-modified: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 10b95762-381a-4c03-bf61-78afc149f7bc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-blob-sealed: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-84d5c1dd-e0f6-fc3d-8e42-6d973f6abe81?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
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
x-ms-request-id: f73a199b-11b2-4750-9cf7-7c98b982861c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-eb1417e9-2d17-90c0-f65c-6a66f97a0ec2?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26B278528591B80"
last-modified: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 525713e6-e8bd-4b71-ad40-6ecfff618c3e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-eb1417e9-2d17-90c0-f65c-6a66f97a0ec2/test-blob-2decc629-46bd-da0a-51ed-a34e503f5bf2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EBDE4067898A50"
last-modified: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 740c7f71-dfbd-41d0-a158-8ac326b1e7ad
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-eb1417e9-2d17-90c0-f65c-6a66f97a0ec2/test-blob-2decc629-46bd-da0a-51ed-a34e503f5bf2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_15
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x1EBDE4067898A50"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f3f35fba-42a1-443f-a08e-c8e9cd476fbd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:40 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-eb1417e9-2d17-90c0-f65c-6a66f97a0ec2/test-blob-2decc629-46bd-da0a-51ed-a34e503f5bf2?comp=seal

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x1EBDE4067898A50"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C5E5D579DD54C0"
last-modified: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 728a9334-eb30-40cf-9696-ade2f7eb8939
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-blob-sealed: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-eb1417e9-2d17-90c0-f65c-6a66f97a0ec2?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
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
x-ms-request-id: 370000f2-83ad-4bf1-9e4f-31c2785e91d5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-27adcb96-d356-0d6a-9f86-1bc39909ee66?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_18
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E96ED027AD9180"
last-modified: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 518e011e-5b5e-4c3e-9995-96150797ff67
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-27adcb96-d356-0d6a-9f86-1bc39909ee66/test-blob-dad3ce99-7eaf-a2e4-0d3a-992989723fb6

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24D104D219D3BE0"
last-modified: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a4451719-faf6-411f-ad54-6f1a902f03e5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-27adcb96-d356-0d6a-9f86-1bc39909ee66/test-blob-dad3ce99-7eaf-a2e4-0d3a-992989723fb6?comp=seal

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "garbage"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2553AF11C194120"
last-modified: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f247da72-f1a8-41ee-9d8d-e34d75145671
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-blob-sealed: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-27adcb96-d356-0d6a-9f86-1bc39909ee66?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
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
x-ms-request-id: 3727c54b-a423-4a32-ae3e-0285ae3a7b41
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-2ecf7701-e6cc-566b-5cdf-8d362a464048?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_22
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FE83F660FE0520"
last-modified: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7390a3ae-1250-40d9-8636-2827afc679ab
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-2ecf7701-e6cc-566b-5cdf-8d362a464048/test-blob-82b43dfe-806b-1842-e60b-1a1b3940832d

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EF71D328A6DFE0"
last-modified: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a0924b04-437c-4cae-bc5a-c8e791dfaaa1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-2ecf7701-e6cc-566b-5cdf-8d362a464048/test-blob-82b43dfe-806b-1842-e60b-1a1b3940832d?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 21c26547-c039-b29a-627d-7dd0f0ae78c7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EF71D328A6DFE0"
last-modified: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-lease-id: 21c26547-c039-b29a-627d-7dd0f0ae78c7
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4791e71c-7cba-4225-89b7-f2ec906b7f64
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-2ecf7701-e6cc-566b-5cdf-8d362a464048/test-blob-82b43dfe-806b-1842-e60b-1a1b3940832d?comp=seal

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-lease-id: 21c26547-c039-b29a-627d-7dd0f0ae78c7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x242D19DCC7BFBA0"
last-modified: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1390cb06-75c2-410b-8068-21545cc2c8c7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-blob-sealed: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-2ecf7701-e6cc-566b-5cdf-8d362a464048?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_26
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
x-ms-request-id: c814ab13-f10e-4872-8b16-4bba390008ef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-4c2a50f9-bdbd-804b-34b7-47c1cc501c1b?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_27
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22D2651D19723C0"
last-modified: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 18d9c171-d1b6-470d-a90b-f180a9d0c2e9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-4c2a50f9-bdbd-804b-34b7-47c1cc501c1b/test-blob-c5ef605c-1e84-3e0f-a302-1fee03722738

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_28
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C6581398763140"
last-modified: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9f3e0b74-cf8c-4115-9b89-efe74f2fcbd1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-4c2a50f9-bdbd-804b-34b7-47c1cc501c1b/test-blob-c5ef605c-1e84-3e0f-a302-1fee03722738?comp=seal

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
x-ms-blob-condition-appendpos: 0
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x260C68FFD6F34E0"
last-modified: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 91eedb1c-825a-438a-a198-5dec524f1f34
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:40 GMT
x-ms-blob-sealed: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 29: DELETE /devstoreaccount1/test-container-4c2a50f9-bdbd-804b-34b7-47c1cc501c1b?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_30
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
x-ms-request-id: 55a0c9cd-29da-4a09-80d5-ff32d632ed07
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

