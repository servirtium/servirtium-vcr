## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-edc542a1-4fbe-774a-47e2-c5116f7fa3d8?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).ResizeAsync_AccessConditions
now: 2026-11-12T00:51:28.0976705+00:00

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
etag: "0x278AD13AC9BFC20"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0597ee35-69db-4312-a85c-8f68969b5283
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-edc542a1-4fbe-774a-47e2-c5116f7fa3d8/test-blob-c6645ae6-d764-2d4e-e6d2-9cc550660947

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
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
etag: "0x1D998D58FB9BA20"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 957c6d84-35c3-4af6-8e20-2be60a63b85c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-edc542a1-4fbe-774a-47e2-c5116f7fa3d8/test-blob-c6645ae6-d764-2d4e-e6d2-9cc550660947?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-blob-content-length: 8192
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x256C929C65DEDA0"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b17f6d32-0140-43cb-adce-bf97556fb370
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-edc542a1-4fbe-774a-47e2-c5116f7fa3d8?restype=container

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
x-ms-request-id: 8d0f7d00-4260-4452-be66-ca7071e5e97a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-070281e5-dcf9-0ce7-57ce-23577c4b24ee?restype=container

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
etag: "0x249E0494F07AD00"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8eb1d424-17cd-461b-8c63-343486026094
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-070281e5-dcf9-0ce7-57ce-23577c4b24ee/test-blob-360cf5fd-40bf-cac2-f397-06ebb28426e1

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
If-None-Match: *
x-ms-blob-content-length: 4096
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
etag: "0x1D1AC3608B091B0"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8d13ee96-f6ee-4366-8fed-3fae255f760d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-070281e5-dcf9-0ce7-57ce-23577c4b24ee/test-blob-360cf5fd-40bf-cac2-f397-06ebb28426e1?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:51:28 GMT
x-ms-blob-content-length: 8192
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CB1650DDA1E930"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b5252a1e-91a5-460b-8135-72d851541e33
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-070281e5-dcf9-0ce7-57ce-23577c4b24ee?restype=container

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
x-ms-request-id: 951499c0-5194-4689-8982-b58810565661
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-ee2b7dd9-9b7c-0adf-7258-6e96b3f7b19b?restype=container

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
etag: "0x244475B67EF5680"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ea34bb72-63a9-489b-b2c8-eb02346f47a9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-ee2b7dd9-9b7c-0adf-7258-6e96b3f7b19b/test-blob-5ac8adae-d359-a588-be37-1461d5fb59d3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
If-None-Match: *
x-ms-blob-content-length: 4096
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
etag: "0x20CFCB128FD2FC0"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 053f4ccc-de86-4d0b-8b82-93bb785c64be
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-ee2b7dd9-9b7c-0adf-7258-6e96b3f7b19b/test-blob-5ac8adae-d359-a588-be37-1461d5fb59d3?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:51:28 GMT
x-ms-blob-content-length: 8192
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26EA9252F8DC1C0"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9d77c9e1-b6d0-4d60-8d27-99f0072ff77a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-ee2b7dd9-9b7c-0adf-7258-6e96b3f7b19b?restype=container

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
x-ms-request-id: 73edee9e-c815-4fb5-bff6-82049144fb8b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-fe7e42a7-361f-6171-1602-c366d12c17fc?restype=container

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
etag: "0x1F84B18CDCFBEF0"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 31363681-7435-4f6f-9c00-41778a1b193b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-fe7e42a7-361f-6171-1602-c366d12c17fc/test-blob-053d6be6-cbbc-0687-f586-2f45877d3477

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-None-Match: *
x-ms-blob-content-length: 4096
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
etag: "0x247F02596BC5DC0"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 93766513-6924-45ac-8fa0-95c34b9616d5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-fe7e42a7-361f-6171-1602-c366d12c17fc/test-blob-053d6be6-cbbc-0687-f586-2f45877d3477

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
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x247F02596BC5DC0"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d0ace8df-6e93-4e15-8296-9e6b4edd86bc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-fe7e42a7-361f-6171-1602-c366d12c17fc/test-blob-053d6be6-cbbc-0687-f586-2f45877d3477?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x247F02596BC5DC0"
x-ms-blob-content-length: 8192
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2796F4A1432CB40"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a0c131c4-f595-4a3e-a7f8-3626cc5b390e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-fe7e42a7-361f-6171-1602-c366d12c17fc?restype=container

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
x-ms-request-id: 4e17b05f-2393-46d7-8322-396f539ac39e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-70ee9bff-b278-777b-3b67-44571021d392?restype=container

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
etag: "0x2570A71D81D0FA0"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f0bbfd2c-7f73-4708-b41f-200ded0b9b12
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-70ee9bff-b278-777b-3b67-44571021d392/test-blob-697a1820-53be-db16-bb78-0999062cd998

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
If-None-Match: *
x-ms-blob-content-length: 4096
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
etag: "0x1C71221C9B30820"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 25c189d7-1380-43b8-bf89-63fdaf5f72c2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-70ee9bff-b278-777b-3b67-44571021d392/test-blob-697a1820-53be-db16-bb78-0999062cd998?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "garbage"
x-ms-blob-content-length: 8192
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F0B83C5EF2B900"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 60b15b57-81b6-4ef9-836d-836fe44ca074
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-70ee9bff-b278-777b-3b67-44571021d392?restype=container

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
x-ms-request-id: 97bfcb7b-ed0a-4325-950a-944bdfa4a8f5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-35674bcd-a63e-3483-efc5-c954872ff5d3?restype=container

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
etag: "0x244C020BBCD0FE0"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7b51f37d-82c4-4e15-a9c3-e71359eceb0f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-35674bcd-a63e-3483-efc5-c954872ff5d3/test-blob-6f259db2-ca03-abb8-8412-b500a9e2710f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
If-None-Match: *
x-ms-blob-content-length: 4096
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
etag: "0x2756B1B004E0B40"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f42bbac1-b0bc-4c11-8aaf-51f602670ed4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-35674bcd-a63e-3483-efc5-c954872ff5d3/test-blob-6f259db2-ca03-abb8-8412-b500a9e2710f?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: c48aab8d-9eb9-7953-9446-79f88ac2548b
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2756B1B004E0B40"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-lease-id: c48aab8d-9eb9-7953-9446-79f88ac2548b
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 98f93008-a551-45b3-bcb2-53a7ca5f9e35
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-35674bcd-a63e-3483-efc5-c954872ff5d3/test-blob-6f259db2-ca03-abb8-8412-b500a9e2710f?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-blob-content-length: 8192
x-ms-lease-id: c48aab8d-9eb9-7953-9446-79f88ac2548b
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E392F93DD869F0"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5aaaf35b-6305-4572-9dc4-8553760d00dd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-35674bcd-a63e-3483-efc5-c954872ff5d3?restype=container

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
x-ms-request-id: eab2a058-95b2-4156-b28e-6d0e0a36de34
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

