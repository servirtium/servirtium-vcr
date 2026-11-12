## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e9685611-9c82-79fc-1bf1-02d43f229e03?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).SealAsync_AccessConditions
now: 2026-11-12T00:50:54.5768160+00:00

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
etag: "0x20CDF50160BDCC0"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1301db1d-ae45-4cd9-88f5-d86d79f87e00
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-e9685611-9c82-79fc-1bf1-02d43f229e03/test-blob-82964f97-ae9b-f0f3-7d95-a2928ef7b4a0

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
etag: "0x2252CA42E861A80"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ad0c6f17-811a-44b7-bbbc-7c1d5703e236
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-e9685611-9c82-79fc-1bf1-02d43f229e03/test-blob-82964f97-ae9b-f0f3-7d95-a2928ef7b4a0?comp=seal

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
etag: "0x25CBF1DA2947120"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ecb26e3f-c3e8-4b13-a038-da220e516d76
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-blob-sealed: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-e9685611-9c82-79fc-1bf1-02d43f229e03?restype=container

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
x-ms-request-id: 1e370447-baf9-4376-98ec-49252b724188
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-79daa6e8-c6ae-c8cc-7195-9344f15addff?restype=container

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
etag: "0x1F0B4F828A5D160"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 53d1ce95-4d9d-4be0-8bfd-edde3450f86f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-79daa6e8-c6ae-c8cc-7195-9344f15addff/test-blob-589be62e-ed85-62aa-6278-6becf969ea23

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
etag: "0x1C18641BF800170"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c231f0dc-7eaa-40cc-9453-200da8b0243f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-79daa6e8-c6ae-c8cc-7195-9344f15addff/test-blob-589be62e-ed85-62aa-6278-6becf969ea23?comp=seal

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:50:54 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x233A8A1A75BCC20"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 37c24436-30f7-4fbb-b692-5580d6914476
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-blob-sealed: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-79daa6e8-c6ae-c8cc-7195-9344f15addff?restype=container

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
x-ms-request-id: 0fd03ede-12ae-445b-8425-d44962dc9dbd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-98eb613d-2447-d154-82ce-10051baefe23?restype=container

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
etag: "0x21129ACA2451E80"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c690c45f-4acb-4118-8e90-366404b469b7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-98eb613d-2447-d154-82ce-10051baefe23/test-blob-a863a3b8-5b5c-fa1b-fc78-17365adfce07

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
etag: "0x224B3DEDB453220"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 203d2718-073e-4f95-90ae-91e35deb6b9a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-98eb613d-2447-d154-82ce-10051baefe23/test-blob-a863a3b8-5b5c-fa1b-fc78-17365adfce07?comp=seal

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:50:54 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25CB6F4A0A2E300"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 44853b96-87e7-43fc-9c37-cc0b3eb47fa8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-blob-sealed: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-98eb613d-2447-d154-82ce-10051baefe23?restype=container

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
x-ms-request-id: 3fd30d5b-9e5d-4649-ad9e-b6c051b627e1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-90076fab-446f-0ab7-91c9-d6b6dda446b3?restype=container

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
etag: "0x1F48D1696423FB0"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 18c0dce5-9462-4e71-bd79-951b343dadf6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-90076fab-446f-0ab7-91c9-d6b6dda446b3/test-blob-55344879-4106-e1c7-46f0-9bce0d1e76a2

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
etag: "0x1D789AF084A18D0"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 23acf1ef-c29c-4e2a-b7cf-6a9036c17f2c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-90076fab-446f-0ab7-91c9-d6b6dda446b3/test-blob-55344879-4106-e1c7-46f0-9bce0d1e76a2

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
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x1D789AF084A18D0"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 02f1b675-af99-42d0-9523-54dacc4e7873
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-90076fab-446f-0ab7-91c9-d6b6dda446b3/test-blob-55344879-4106-e1c7-46f0-9bce0d1e76a2?comp=seal

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x1D789AF084A18D0"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2648FFE868F1240"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 59b3fdc3-e776-4e66-b80f-e7f3a570dc21
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-blob-sealed: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-90076fab-446f-0ab7-91c9-d6b6dda446b3?restype=container

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
x-ms-request-id: e1688475-9475-4abe-962b-50d55e3b0395
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-ab5a08ff-6da6-73b4-ec59-179285641d57?restype=container

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
etag: "0x223498EE10AACA0"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1f26a9d7-f46c-46c1-9e46-66ac62d1bb1a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-ab5a08ff-6da6-73b4-ec59-179285641d57/test-blob-12bc6331-79ab-6901-a826-497ea8e8fc72

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
etag: "0x2463E059F375400"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3f5f7344-9f33-4876-a897-49373c6ef9c6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-ab5a08ff-6da6-73b4-ec59-179285641d57/test-blob-12bc6331-79ab-6901-a826-497ea8e8fc72?comp=seal

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
etag: "0x1D3596F503C1A50"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 890cd549-f3a8-41b0-a94e-ae58e4246668
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-blob-sealed: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-ab5a08ff-6da6-73b4-ec59-179285641d57?restype=container

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
x-ms-request-id: 8e104fed-d82f-40ca-8b03-93b7696993dc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-d4b63352-9b4a-0b0d-93c0-69ad2a345ce1?restype=container

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
etag: "0x1CBA790A82B7690"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8c8a0712-c8a8-4da9-900a-bde75e64346d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-d4b63352-9b4a-0b0d-93c0-69ad2a345ce1/test-blob-aa9d44d3-6461-86f7-06f1-02802436ca03

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
etag: "0x22BD2DB5C76C220"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2ea82e6b-db52-4959-9b1e-a36bbabc6982
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-d4b63352-9b4a-0b0d-93c0-69ad2a345ce1/test-blob-aa9d44d3-6461-86f7-06f1-02802436ca03?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 523fa45c-48ad-960c-55b0-7eea0f543e73
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22BD2DB5C76C220"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-lease-id: 523fa45c-48ad-960c-55b0-7eea0f543e73
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a4c60a45-5354-414f-ab94-37005be99d21
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-d4b63352-9b4a-0b0d-93c0-69ad2a345ce1/test-blob-aa9d44d3-6461-86f7-06f1-02802436ca03?comp=seal

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-lease-id: 523fa45c-48ad-960c-55b0-7eea0f543e73
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2165541D13EB420"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 27bcd001-668f-4941-8937-3d8c541a6aaf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-blob-sealed: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-d4b63352-9b4a-0b0d-93c0-69ad2a345ce1?restype=container

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
x-ms-request-id: 31a3c171-109d-465f-a8f8-92331cf82fbc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-64aa68c9-514b-ee11-3b30-cd59988ce75d?restype=container

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
etag: "0x1C68F91188AC730"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e2be680b-3086-4c45-b5c2-bc137882c425
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-64aa68c9-514b-ee11-3b30-cd59988ce75d/test-blob-865066f5-0af5-8a33-3706-54b0e60c76b2

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
etag: "0x2606E6F05DEA240"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5b2f46b4-d181-4454-a04a-47178bac98ec
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-64aa68c9-514b-ee11-3b30-cd59988ce75d/test-blob-865066f5-0af5-8a33-3706-54b0e60c76b2?comp=seal

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
etag: "0x26171ED7E74D0C0"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 129ab08e-5113-4196-b80f-2eea85c481ea
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-blob-sealed: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 29: DELETE /devstoreaccount1/test-container-64aa68c9-514b-ee11-3b30-cd59988ce75d?restype=container

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
x-ms-request-id: 297a2f13-1856-4691-b31d-293d803849ab
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

