## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-57b81e8d-d78d-fc64-8c6a-7c0c757172c5?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).ClearPagesAsync_AccessConditions
now: 2026-11-12T00:51:43.7359681+00:00

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
etag: "0x1D4D5B3F344BA30"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 510252ff-2513-40da-9d88-d3e9a289b2fd
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-57b81e8d-d78d-fc64-8c6a-7c0c757172c5/test-blob-9df16291-1a8c-8c17-077c-75497843d64e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22D1AE6805C3D60"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 87c09b34-a731-4d64-9399-c2c3b3278249
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-57b81e8d-d78d-fc64-8c6a-7c0c757172c5/test-blob-9df16291-1a8c-8c17-077c-75497843d64e?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-page-write: clear
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25461E2DEB2C320"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ce30a39d-849b-4679-b201-f68f9a8b2df0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-57b81e8d-d78d-fc64-8c6a-7c0c757172c5?restype=container

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
x-ms-request-id: 6f2eb469-5896-4b39-acfe-6a41aa42e9e7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-9d3c0f21-cd0f-ebba-c8cf-69281bdfe043?restype=container

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
etag: "0x1C6F17E03418120"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: db8854ab-719f-4893-a292-2738de7d3252
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-9d3c0f21-cd0f-ebba-c8cf-69281bdfe043/test-blob-82e4ef95-45b9-720b-072c-4f11621a8449

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FAB2605695A780"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 04132f10-9553-444a-93c5-912bf022cdd1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-9d3c0f21-cd0f-ebba-c8cf-69281bdfe043/test-blob-82e4ef95-45b9-720b-072c-4f11621a8449?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:51:43 GMT
x-ms-page-write: clear
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FED3EFD992E600"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5208ccc2-dc13-4168-b112-526a3c6d39b7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-9d3c0f21-cd0f-ebba-c8cf-69281bdfe043?restype=container

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
x-ms-request-id: fcaac3a0-2228-4d3b-8d47-1478f5b6e743
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-66eb2e93-d435-c3b6-a805-d4bdb1ee7028?restype=container

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
etag: "0x1F115435A0E0440"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a5bac5fe-cf97-48c0-8095-f26df20fe74a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-66eb2e93-d435-c3b6-a805-d4bdb1ee7028/test-blob-89b4329b-545f-db95-03ca-95e37da989ae

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F511496C8A10C0"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cff76622-99ec-421a-a462-0066651d3b65
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-66eb2e93-d435-c3b6-a805-d4bdb1ee7028/test-blob-89b4329b-545f-db95-03ca-95e37da989ae?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:51:43 GMT
x-ms-page-write: clear
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x272E673AEABCD60"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 18f9b3bc-de5a-4f76-9ce2-a2fb0b73a923
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-66eb2e93-d435-c3b6-a805-d4bdb1ee7028?restype=container

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
x-ms-request-id: ef8a1cb1-c916-46cb-ab23-bfd860ae508b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-ec94204a-79f3-c00e-3820-dab3704ec118?restype=container

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
etag: "0x23B9F0D02210A40"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0090b539-d810-488c-a4ed-9325400729e4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-ec94204a-79f3-c00e-3820-dab3704ec118/test-blob-307526bb-fb66-3fe9-980f-626b3fd245fe

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C8506161D74310"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 880141e4-80ac-4810-8cac-755e2a2670bf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-ec94204a-79f3-c00e-3820-dab3704ec118/test-blob-307526bb-fb66-3fe9-980f-626b3fd245fe

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
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1C8506161D74310"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8996eb45-f014-4eba-83d8-6a76d34e7de3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-ec94204a-79f3-c00e-3820-dab3704ec118/test-blob-307526bb-fb66-3fe9-980f-626b3fd245fe?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x1C8506161D74310"
x-ms-page-write: clear
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26C2B051238DFC0"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8b998511-6611-495a-9642-f43af47e585d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-ec94204a-79f3-c00e-3820-dab3704ec118?restype=container

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
x-ms-request-id: 1a110eac-adab-4f3a-95d5-f6b16200e66b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-9072267b-845a-2235-23f3-503f7ae26bb5?restype=container

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
etag: "0x1CD8DEA6475E0F0"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 41d0e76a-750e-4796-bc7e-bfb7e4123d17
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-9072267b-845a-2235-23f3-503f7ae26bb5/test-blob-57277c08-5934-4f48-3655-53e316a38165

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21556A9B530EF20"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fc7a643b-06e1-479f-a464-8504bf702a18
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-9072267b-845a-2235-23f3-503f7ae26bb5/test-blob-57277c08-5934-4f48-3655-53e316a38165?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "garbage"
x-ms-page-write: clear
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2067C03B6064F80"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3cc32328-6d2e-4a60-b9b5-03ba958645bd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-9072267b-845a-2235-23f3-503f7ae26bb5?restype=container

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
x-ms-request-id: 1ec977c1-6938-498c-8528-8369964da4b2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-4a37dbda-30dc-37be-f153-0c72aaaac4b6?restype=container

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
etag: "0x26D6FCB9CF7BDC0"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fc747bd5-8ef9-4900-aa46-fc90b4efd6f9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-4a37dbda-30dc-37be-f153-0c72aaaac4b6/test-blob-c262ada4-eeab-22ca-de22-590530510b80

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x236EA9B57D9F840"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f24710f5-57fc-485d-b042-9af762fc67f6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-4a37dbda-30dc-37be-f153-0c72aaaac4b6/test-blob-c262ada4-eeab-22ca-de22-590530510b80?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 9e64ea72-20aa-d8d9-bef0-65e14dd5a48c
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x236EA9B57D9F840"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-lease-id: 9e64ea72-20aa-d8d9-bef0-65e14dd5a48c
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5502da95-8f57-4a9a-965b-ca8b4a0d6fdf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-4a37dbda-30dc-37be-f153-0c72aaaac4b6/test-blob-c262ada4-eeab-22ca-de22-590530510b80?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-lease-id: 9e64ea72-20aa-d8d9-bef0-65e14dd5a48c
x-ms-page-write: clear
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21C94A874FD87A0"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f0581e8a-3e05-4d2f-a244-6b4322fa8580
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-4a37dbda-30dc-37be-f153-0c72aaaac4b6?restype=container

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
x-ms-request-id: 05e27fdb-273c-4b59-bd8b-07626bbe3d2a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-693f9d90-be41-ebba-1115-6cb9d6b807a0?restype=container

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
etag: "0x1C9B5CBF56AED50"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3b0e1f1f-f845-4666-ae60-26e208fd2324
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-693f9d90-be41-ebba-1115-6cb9d6b807a0/test-blob-c0008c48-2545-840c-d489-04bb88e9d408

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_28
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x239A51E7A474200"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a8950a62-82ef-4290-8cc0-0d5ade446399
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-693f9d90-be41-ebba-1115-6cb9d6b807a0/test-blob-c0008c48-2545-840c-d489-04bb88e9d408?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
x-ms-if-sequence-number-lt: 5
x-ms-page-write: clear
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F19B1717FE8F40"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2b9419af-c73b-4372-9ba4-6cd3b180d7d6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 29: DELETE /devstoreaccount1/test-container-693f9d90-be41-ebba-1115-6cb9d6b807a0?restype=container

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
x-ms-request-id: b9651f5c-9df5-46f6-b71b-7ef4ea58ef74
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 30: PUT /devstoreaccount1/test-container-9374cd7d-a111-b33e-2f79-8d95b31f0105?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_31
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CC373008729CB0"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 17532b80-0e57-46c8-953b-cbf05e14c18c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 31: PUT /devstoreaccount1/test-container-9374cd7d-a111-b33e-2f79-8d95b31f0105/test-blob-c199c5e9-e4d5-6a46-90bb-95b7baff6227

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_32
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x228F61363843EC0"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2d78bb24-af25-47b0-97ba-8d29434a94a6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 32: PUT /devstoreaccount1/test-container-9374cd7d-a111-b33e-2f79-8d95b31f0105/test-blob-c199c5e9-e4d5-6a46-90bb-95b7baff6227?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_33
x-ms-if-sequence-number-le: 3
x-ms-page-write: clear
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2552C4248FB6900"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 72d3083f-3016-412e-9237-c90a822f45ee
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 33: DELETE /devstoreaccount1/test-container-9374cd7d-a111-b33e-2f79-8d95b31f0105?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_34
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
x-ms-request-id: 1739e4e3-3107-49f0-be12-dab8ddf7cce5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 34: PUT /devstoreaccount1/test-container-093c6440-7444-a68e-4d4c-90cc9876d0b4?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_35
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26BE679668E1760"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9daace7c-e8a4-4e55-abb5-15acd769368a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 35: PUT /devstoreaccount1/test-container-093c6440-7444-a68e-4d4c-90cc9876d0b4/test-blob-c3d2fe88-1350-9933-870a-02560c87f830

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_36
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20ACE89466A7280"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 58c8fb23-4d9e-4366-9c5b-9fea24f98fb7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 36: PUT /devstoreaccount1/test-container-093c6440-7444-a68e-4d4c-90cc9876d0b4/test-blob-c3d2fe88-1350-9933-870a-02560c87f830?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_37
x-ms-if-sequence-number-eq: 0
x-ms-page-write: clear
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F6C9EFE3853180"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c8b67654-a9f0-4ce5-8037-7ea956877d9e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 37: DELETE /devstoreaccount1/test-container-093c6440-7444-a68e-4d4c-90cc9876d0b4?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_38
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
x-ms-request-id: e8c86ae2-fcda-44a9-9a63-5838cf5ffcf8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

