## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-dbbf6e7c-ba60-8542-a660-0a48b4bc0044?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).AppendBlockAsync_AccessConditions
now: 2026-11-12T00:50:42.8019398+00:00

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
etag: "0x1C37B4AAD2A0960"
last-modified: Thu, 12 Nov 2026 00:50:42 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bd121db0-b0b6-4567-8a5d-9578ef26790e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:42 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-dbbf6e7c-ba60-8542-a660-0a48b4bc0044/test-blob-721d68b9-e3dc-ab5c-c63a-d4313cc81b77

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
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
etag: "0x2479E8A8981B0C0"
last-modified: Thu, 12 Nov 2026 00:50:42 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7518adeb-77d6-4c75-a736-77739a1bd8cf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:42 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-dbbf6e7c-ba60-8542-a660-0a48b4bc0044/test-blob-721d68b9-e3dc-ab5c-c63a-d4313cc81b77?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
8So2bR0yBg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22FE0D500BA6900"
last-modified: Thu, 12 Nov 2026 00:50:42 GMT
x-ms-content-crc64: 4+plxAKrOAM=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 128f170c-1dd2-4c58-a9fa-e6512816ce59
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:42 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-dbbf6e7c-ba60-8542-a660-0a48b4bc0044?restype=container

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
x-ms-request-id: 6804357f-244b-45b7-abc2-ddfdc7486c0e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:42 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-e39e1597-3300-9c42-ba08-6ccb80d39c98?restype=container

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
etag: "0x2454AD8EAE26640"
last-modified: Thu, 12 Nov 2026 00:50:42 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 91289b3b-302b-408c-873c-f38662853268
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:42 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-e39e1597-3300-9c42-ba08-6ccb80d39c98/test-blob-14131299-e625-4810-dd44-925789859327

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
If-None-Match: *
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
etag: "0x1F35078D783F9D0"
last-modified: Thu, 12 Nov 2026 00:50:42 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0dec3fe0-7d5a-40c0-9e4f-487cd5dc52ce
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:42 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-e39e1597-3300-9c42-ba08-6ccb80d39c98/test-blob-14131299-e625-4810-dd44-925789859327?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
Content-Type: application/octet-stream
If-Modified-Since: Wed, 11 Nov 2026 00:50:42 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
hmKFXD7/Ww==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F3BDD18E813F40"
last-modified: Thu, 12 Nov 2026 00:50:42 GMT
x-ms-content-crc64: W3YwSdTT97w=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a9362f0e-bc27-4937-ac10-c6ede7b9bf36
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:42 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-e39e1597-3300-9c42-ba08-6ccb80d39c98?restype=container

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
x-ms-request-id: 91245de2-3b0f-4961-935d-7a0d625a7d5a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:42 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-1a9e8478-cf29-9afd-a454-929d5a091ee1?restype=container

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
etag: "0x26B51F41112DCC0"
last-modified: Thu, 12 Nov 2026 00:50:42 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b16cc4be-8f62-4b56-9966-01bc92ab31ab
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:42 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-1a9e8478-cf29-9afd-a454-929d5a091ee1/test-blob-065505b1-a1bb-12ea-3474-45451e4d405a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
If-None-Match: *
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
etag: "0x274E889D354C6A0"
last-modified: Thu, 12 Nov 2026 00:50:42 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9a21f936-d8db-466a-8326-0c191267bb75
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:42 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-1a9e8478-cf29-9afd-a454-929d5a091ee1/test-blob-065505b1-a1bb-12ea-3474-45451e4d405a?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
Content-Type: application/octet-stream
If-Unmodified-Since: Fri, 13 Nov 2026 00:50:42 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
mbabj4bL5g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24A93CE87C764A0"
last-modified: Thu, 12 Nov 2026 00:50:42 GMT
x-ms-content-crc64: GTXBF8IjDF8=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a5840e1b-e9b2-43ef-9f06-ee8e830dc074
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:42 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-1a9e8478-cf29-9afd-a454-929d5a091ee1?restype=container

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
x-ms-request-id: 78474a23-ffa8-46ef-b76e-90845e2a0691
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-edaae079-f702-38e7-1e68-81d456e8f9a0?restype=container

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
etag: "0x206A671676DEBC0"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9fca2832-2d8b-4baa-acfc-c38787bd4308
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-edaae079-f702-38e7-1e68-81d456e8f9a0/test-blob-e68b99d6-8ab4-7cb8-5713-3704a36d8e5a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-None-Match: *
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
etag: "0x24F60BB363CF700"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e825e94f-041f-40d4-9eeb-6640ab7cd0a0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-edaae079-f702-38e7-1e68-81d456e8f9a0/test-blob-e68b99d6-8ab4-7cb8-5713-3704a36d8e5a

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
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x24F60BB363CF700"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 77e246d0-8f46-4dff-8a6e-e3960432c296
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-edaae079-f702-38e7-1e68-81d456e8f9a0/test-blob-e68b99d6-8ab4-7cb8-5713-3704a36d8e5a?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
Content-Type: application/octet-stream
If-Match: "0x24F60BB363CF700"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
5R7cJhGz5w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CFC77E299F5240"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-content-crc64: 3alRVqHp8d8=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9e6e9a9c-f17e-46ab-aa6a-d82a1d1bb72b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-edaae079-f702-38e7-1e68-81d456e8f9a0?restype=container

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
x-ms-request-id: e30c8575-52b9-470a-b7d9-35c91b8ada3f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-273b4c1b-9ddd-ea78-719f-16c4f5fae531?restype=container

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
etag: "0x236561621827A60"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ee22cfdf-8d01-4d41-afef-4c2e84794bd7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-273b4c1b-9ddd-ea78-719f-16c4f5fae531/test-blob-962d27ef-bfef-94e3-b0d9-26ef370cd38e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
If-None-Match: *
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
etag: "0x241A552595C9D00"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 779ef6de-3b7f-46ae-8132-39922c128b2e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-273b4c1b-9ddd-ea78-719f-16c4f5fae531/test-blob-962d27ef-bfef-94e3-b0d9-26ef370cd38e?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
Content-Type: application/octet-stream
If-None-Match: "garbage"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
I7JwmXhi2w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x235B483C3793200"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-content-crc64: vo43W4+npis=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 68ef5671-4ac9-468c-9886-f90d1c19862c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-273b4c1b-9ddd-ea78-719f-16c4f5fae531?restype=container

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
x-ms-request-id: 1cb890e4-a369-47f7-b7f1-011219c1125d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-c529dedf-8d64-98a9-5fff-edecfee41df8?restype=container

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
etag: "0x213E77324C10AA0"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 00234b83-7dff-426a-b603-b72c8656993b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-c529dedf-8d64-98a9-5fff-edecfee41df8/test-blob-76a7685b-7603-b289-65cc-88a1438a4cb8

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
If-None-Match: *
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
etag: "0x23F0006A4E92240"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9fe78814-6959-4128-80af-3f28bcd6c806
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-c529dedf-8d64-98a9-5fff-edecfee41df8/test-blob-76a7685b-7603-b289-65cc-88a1438a4cb8?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: c7410707-4aef-d41f-aa06-b91430d1ebd7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23F0006A4E92240"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-lease-id: c7410707-4aef-d41f-aa06-b91430d1ebd7
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 07af0ae2-0467-45f9-85b4-5986b7256cc6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-c529dedf-8d64-98a9-5fff-edecfee41df8/test-blob-76a7685b-7603-b289-65cc-88a1438a4cb8?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
Content-Type: application/octet-stream
x-ms-lease-id: c7410707-4aef-d41f-aa06-b91430d1ebd7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
jExOt8X5fw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27621E3C2043DE0"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-content-crc64: gRuZtZmLoUg=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 216ea057-e35a-45ae-bf39-19618ba6d4a6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-c529dedf-8d64-98a9-5fff-edecfee41df8?restype=container

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
x-ms-request-id: 34ae4b49-dfae-4baa-a894-69d02cbe1647
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-60775568-0497-5407-d5b3-3460b2966533?restype=container

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
etag: "0x2624617756F0AE0"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 99efdd17-aab3-4767-8f1e-7749469dab3c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-60775568-0497-5407-d5b3-3460b2966533/test-blob-6f9fe861-afc2-679a-45f7-dd9b8a751be6

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_28
If-None-Match: *
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
etag: "0x2536B717EAF9280"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 672734c7-a29c-47a7-b076-2a2a45088fb9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-60775568-0497-5407-d5b3-3460b2966533/test-blob-6f9fe861-afc2-679a-45f7-dd9b8a751be6?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
Content-Type: application/octet-stream
x-ms-blob-condition-appendpos: 0
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
oHTlYk6Z6A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x226C7E9FBBEA580"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-content-crc64: FIZ1JBrMPHk=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 73865488-fba8-4d57-828d-77a84cddedd4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 29: DELETE /devstoreaccount1/test-container-60775568-0497-5407-d5b3-3460b2966533?restype=container

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
x-ms-request-id: a9d452ca-d7ab-422e-8ccc-343e44285e93
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 30: PUT /devstoreaccount1/test-container-f1ecff02-153b-22bf-14a0-86b247327c15?restype=container

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
etag: "0x23232E4D4AA6E60"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 420b3e1c-9798-4f55-9590-33f4205c972e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 31: PUT /devstoreaccount1/test-container-f1ecff02-153b-22bf-14a0-86b247327c15/test-blob-1a0fbab9-269f-ca6c-5f98-4dc03db003e5

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_32
If-None-Match: *
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
etag: "0x1E5FA3FB0B40730"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5c08d5f8-a445-4e01-af77-36d2f6b595ba
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 32: PUT /devstoreaccount1/test-container-f1ecff02-153b-22bf-14a0-86b247327c15/test-blob-1a0fbab9-269f-ca6c-5f98-4dc03db003e5?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_33
Content-Type: application/octet-stream
x-ms-blob-condition-maxsize: 100
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
yACccNa9Xg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2289DF0DFF71D60"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-content-crc64: jBLgAsTQvys=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2e777ed9-3bb7-4ef3-8535-42257f6c067d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 33: DELETE /devstoreaccount1/test-container-f1ecff02-153b-22bf-14a0-86b247327c15?restype=container

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
x-ms-request-id: eda75211-fd86-44be-812a-d128c17f5822
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

