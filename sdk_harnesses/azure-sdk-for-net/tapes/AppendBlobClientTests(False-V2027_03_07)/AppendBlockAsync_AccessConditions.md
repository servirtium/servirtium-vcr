## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-70cc2ae6-b7c9-1181-4662-137c5e8999e7?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).AppendBlockAsync_AccessConditions
now: 2026-11-12T00:50:28.3453418+00:00

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
etag: "0x1FB3832AE9BAA20"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: adeee09d-8477-483a-b4ea-3b25ed275995
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-70cc2ae6-b7c9-1181-4662-137c5e8999e7/test-blob-b08c485d-39a6-7069-4630-61873127734f

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
etag: "0x227BB1622E7FA80"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6ca421b6-dfeb-4dcd-8a5b-606869856a70
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-70cc2ae6-b7c9-1181-4662-137c5e8999e7/test-blob-b08c485d-39a6-7069-4630-61873127734f?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
zReaGwWjpQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x260E24E5BC2EB60"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-content-crc64: bUGV9ygf7Fc=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5ff10d4a-2e65-4b43-818c-9dd48dda547d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-70cc2ae6-b7c9-1181-4662-137c5e8999e7?restype=container

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
x-ms-request-id: 1b1584ac-9cd2-4eec-820d-c72038ae19cc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-3677493e-7470-4e30-ff66-3360cd01334e?restype=container

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
etag: "0x1CAFF76A4226A50"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 966c503d-96aa-4bd3-8009-c0c999f4fd88
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-3677493e-7470-4e30-ff66-3360cd01334e/test-blob-295cc0ad-5698-dff9-1eee-c4af47ee7ee1

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
etag: "0x1F9F50DF2958780"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dfa1c840-9518-4083-bfc6-100549064ad6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-3677493e-7470-4e30-ff66-3360cd01334e/test-blob-295cc0ad-5698-dff9-1eee-c4af47ee7ee1?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
Content-Type: application/octet-stream
If-Modified-Since: Wed, 11 Nov 2026 00:50:28 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
uqNOZy8C+Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26C89ABDD3141C0"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-content-crc64: ctnJ2uZypBU=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 21e0406b-511b-4542-8f75-ecc6bd6ae869
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-3677493e-7470-4e30-ff66-3360cd01334e?restype=container

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
x-ms-request-id: aad82391-fde7-4e4d-937d-c5cdc4d382c3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-61e216fb-fe21-a5c6-4d9a-c8ec5aa9790c?restype=container

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
etag: "0x1D5D93121E2E2E0"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 56223a0f-e2a9-470f-9623-9f4bfed432e9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-61e216fb-fe21-a5c6-4d9a-c8ec5aa9790c/test-blob-17974fe7-b081-0781-10e7-51a629b3cb1e

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
etag: "0x27A08B20F30E080"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f6efd09f-fddb-4510-8796-7b3f4e642871
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-61e216fb-fe21-a5c6-4d9a-c8ec5aa9790c/test-blob-17974fe7-b081-0781-10e7-51a629b3cb1e?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
Content-Type: application/octet-stream
If-Unmodified-Since: Fri, 13 Nov 2026 00:50:28 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
q8ZgE7b02A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2239986A3FE8FC0"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-content-crc64: tlBknc34GbU=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b7d05a3f-c747-4afc-84e2-899fdb5ef658
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-61e216fb-fe21-a5c6-4d9a-c8ec5aa9790c?restype=container

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
x-ms-request-id: 99a86b95-c496-4363-83a5-77692c102783
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-764957e1-7e15-2402-3840-97661898ea78?restype=container

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
etag: "0x2084358F5D1CB20"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 86db29f3-8adb-485e-a4b5-68b786e8b29c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-764957e1-7e15-2402-3840-97661898ea78/test-blob-51db954b-ad39-7b20-9ace-aa4193486655

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
etag: "0x22B6C0952F80EA0"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cc73e35f-b1d8-4cd7-b4de-17ccadf4bb67
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-764957e1-7e15-2402-3840-97661898ea78/test-blob-51db954b-ad39-7b20-9ace-aa4193486655

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
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x22B6C0952F80EA0"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 13df383c-954b-498d-8505-0990ccf2c085
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-764957e1-7e15-2402-3840-97661898ea78/test-blob-51db954b-ad39-7b20-9ace-aa4193486655?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
Content-Type: application/octet-stream
If-Match: "0x22B6C0952F80EA0"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
83a2vzc5bA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21DB0A077D016A0"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-content-crc64: ePmm/+3VBbc=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bbc7bd73-ffbd-4bf1-b68b-6eb5fea0a0f1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-764957e1-7e15-2402-3840-97661898ea78?restype=container

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
x-ms-request-id: dc4793ca-a521-48a4-a41e-32103ca94d4f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-19c30e88-9266-b34c-86c0-4e157edba39e?restype=container

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
etag: "0x21022EA0F051300"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e2866e0a-7911-48c5-b04e-34d6f2b02c1e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-19c30e88-9266-b34c-86c0-4e157edba39e/test-blob-dccd3733-d446-91c1-efda-4173a1e22a40

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
etag: "0x250B0EE0D3AED60"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 19a7788d-ac0d-4f8f-a813-adba3e27c63c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-19c30e88-9266-b34c-86c0-4e157edba39e/test-blob-dccd3733-d446-91c1-efda-4173a1e22a40?comp=appendblock

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
ESlSQnaUuQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x232777033F2ABA0"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-content-crc64: ltBQOjhdDgM=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5a658221-a64a-4f88-a8b1-f688db375594
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-19c30e88-9266-b34c-86c0-4e157edba39e?restype=container

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
x-ms-request-id: 5ac5fd07-979a-45c4-86ba-d86af1548ce4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-231b4ee8-4580-e733-7a4f-d782886a5d25?restype=container

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
etag: "0x25B4B0246D82200"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 58f9bebc-31e5-49a5-9e66-4c95208aebf3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-231b4ee8-4580-e733-7a4f-d782886a5d25/test-blob-29324db4-518b-11d8-a496-0d0455886028

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
etag: "0x224D967C6D80820"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 88a0d4af-140b-4447-b77f-4559624cb266
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-231b4ee8-4580-e733-7a4f-d782886a5d25/test-blob-29324db4-518b-11d8-a496-0d0455886028?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: c6f2bc4b-c923-a260-d6b3-039ef5436a2e
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x224D967C6D80820"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-lease-id: c6f2bc4b-c923-a260-d6b3-039ef5436a2e
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 759e365a-52e6-4029-8bd6-86256dfe9019
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-231b4ee8-4580-e733-7a4f-d782886a5d25/test-blob-29324db4-518b-11d8-a496-0d0455886028?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
Content-Type: application/octet-stream
x-ms-lease-id: c6f2bc4b-c923-a260-d6b3-039ef5436a2e
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
n33kjSuwQA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EFFFCFB3D00660"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-content-crc64: smYP4VutlkA=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0d39cb22-a9c1-4c8e-bf81-c5aab068fc8f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-231b4ee8-4580-e733-7a4f-d782886a5d25?restype=container

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
x-ms-request-id: 2ab1f33d-f2e6-4c70-a28f-f586c1c440dd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-7f097597-37ea-922e-f1ef-afe20a85cff9?restype=container

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
etag: "0x2123897379B4BA0"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3bc9ccfd-f674-4940-995f-0fbecbde439b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-7f097597-37ea-922e-f1ef-afe20a85cff9/test-blob-6de60c03-8a99-48b5-44f3-365051ea6ae4

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
etag: "0x1D76C4E2844E280"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fe4bf424-9427-4089-81b9-a76a8485032e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-7f097597-37ea-922e-f1ef-afe20a85cff9/test-blob-6de60c03-8a99-48b5-44f3-365051ea6ae4?comp=appendblock

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
NU9NGCIxVQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D45180BB2F7480"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-content-crc64: xIcBDHGR/O4=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6634525f-3999-4651-8517-b7b96693b3fb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 29: DELETE /devstoreaccount1/test-container-7f097597-37ea-922e-f1ef-afe20a85cff9?restype=container

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
x-ms-request-id: d316a1c1-7e04-4c72-b50b-66db41faca6a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 30: PUT /devstoreaccount1/test-container-d55f8d14-1a34-987d-51e4-099ae85dfd94?restype=container

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
etag: "0x2019EC398D34420"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d3d591e1-5d69-42f3-bd23-7addde08bb18
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 31: PUT /devstoreaccount1/test-container-d55f8d14-1a34-987d-51e4-099ae85dfd94/test-blob-3bc0c00d-01f7-41de-0784-caadba38b7d7

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
etag: "0x203E223332777E0"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 598fb28d-fb82-4b82-9c18-f13d89456de4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 32: PUT /devstoreaccount1/test-container-d55f8d14-1a34-987d-51e4-099ae85dfd94/test-blob-3bc0c00d-01f7-41de-0784-caadba38b7d7?comp=appendblock

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
0bbS3zq1gA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22F6E969974BE40"
last-modified: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-content-crc64: xX0FMtltN3w=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c189f946-42ea-4694-b422-fac8e36e829e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 33: DELETE /devstoreaccount1/test-container-d55f8d14-1a34-987d-51e4-099ae85dfd94?restype=container

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
x-ms-request-id: 6a8e9adc-206b-4d49-a46b-e723d4ab0ffa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

