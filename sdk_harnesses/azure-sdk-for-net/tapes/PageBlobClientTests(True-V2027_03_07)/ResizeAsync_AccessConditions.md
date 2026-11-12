## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a553342b-2e84-6f7c-bb73-2e92bc84d071?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).ResizeAsync_AccessConditions
now: 2026-11-12T00:51:57.7882283+00:00

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
etag: "0x1C4131378FDC900"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d7cb19d2-0f12-48e7-9ecb-0bc3481bc6cc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a553342b-2e84-6f7c-bb73-2e92bc84d071/test-blob-8b3c1d92-17d8-75ea-40cf-6230837cdb6e

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
etag: "0x1C4C3560EF02790"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 49325412-0526-4a85-8987-2a52ba1c25dd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-a553342b-2e84-6f7c-bb73-2e92bc84d071/test-blob-8b3c1d92-17d8-75ea-40cf-6230837cdb6e?comp=properties

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
etag: "0x1D1884EE6A2D4D0"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 464de0ed-412a-44ab-853b-a55795184fb1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-a553342b-2e84-6f7c-bb73-2e92bc84d071?restype=container

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
x-ms-request-id: be883376-1e53-4d2e-b61a-a43f09ba8e1b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-34318690-4b57-ae0c-57dc-62f0627046b4?restype=container

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
etag: "0x25990BBF948C7A0"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7b535dc4-dc1d-49dd-8bb8-527a9b2f534e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-34318690-4b57-ae0c-57dc-62f0627046b4/test-blob-c56a28be-af85-130c-49dd-64b4cb4bec3f

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
etag: "0x229E940208081C0"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b4322875-1e7d-44c5-b826-9ca9aa4862f3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-34318690-4b57-ae0c-57dc-62f0627046b4/test-blob-c56a28be-af85-130c-49dd-64b4cb4bec3f?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:51:57 GMT
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
etag: "0x220CEB345D901A0"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7fb7f2ac-e8ca-4e43-a1e4-1d7a568147d3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-34318690-4b57-ae0c-57dc-62f0627046b4?restype=container

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
x-ms-request-id: 8e0a46f1-325c-402f-a28a-4977ba517aa1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-3601c097-9c52-4619-118e-33fcb5f913d0?restype=container

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
etag: "0x21BC8A784CEAE80"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d4de4d3c-84dd-44c3-8bf1-1dd22e840008
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-3601c097-9c52-4619-118e-33fcb5f913d0/test-blob-5a71ae88-1612-e0e9-791e-ea79e758e20b

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
etag: "0x23FAD0731E6DA00"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: be722b3a-fb2d-4f8c-9d1f-4af54c4fe6d0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-3601c097-9c52-4619-118e-33fcb5f913d0/test-blob-5a71ae88-1612-e0e9-791e-ea79e758e20b?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:51:57 GMT
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
etag: "0x214D2780ACECF20"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7b72aaa1-c07d-4107-aeef-2c573dcdbcbb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-3601c097-9c52-4619-118e-33fcb5f913d0?restype=container

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
x-ms-request-id: 222c20ef-d784-438d-be82-2aad91dc8855
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-a25922f0-0f6e-2261-0f23-b4f67c105e50?restype=container

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
etag: "0x233BDDA60C13EE0"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2097ca35-5980-496a-9416-52f92f83a8af
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-a25922f0-0f6e-2261-0f23-b4f67c105e50/test-blob-1d2c93ca-91da-802d-d721-bd34b29f5eb8

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
etag: "0x2471BFBFFD70E60"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ae86f7e0-b65f-4680-9a5d-12eac6706639
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-a25922f0-0f6e-2261-0f23-b4f67c105e50/test-blob-1d2c93ca-91da-802d-d721-bd34b29f5eb8

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
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x2471BFBFFD70E60"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6cfb81e6-3e4e-4b52-b24c-a8e64c94a165
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-a25922f0-0f6e-2261-0f23-b4f67c105e50/test-blob-1d2c93ca-91da-802d-d721-bd34b29f5eb8?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x2471BFBFFD70E60"
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
etag: "0x1C1AF0FD4602230"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c602bee7-3bed-41c2-bd2a-83557cc79470
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-a25922f0-0f6e-2261-0f23-b4f67c105e50?restype=container

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
x-ms-request-id: 5fbd597e-82f1-4cf2-9972-daae8621bd95
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-920b27ab-709f-7862-4c4f-4aee62f26468?restype=container

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
etag: "0x2011F78BB738540"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 90035ddd-f392-4fed-8920-2a80d571ec30
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-920b27ab-709f-7862-4c4f-4aee62f26468/test-blob-54af9ac0-c52c-5e31-f5d9-cb4c522d706f

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
etag: "0x25C2F807B57E5A0"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a4459fa8-6808-433b-ad17-d9215e5ce0b8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-920b27ab-709f-7862-4c4f-4aee62f26468/test-blob-54af9ac0-c52c-5e31-f5d9-cb4c522d706f?comp=properties

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
etag: "0x1C0931654B51200"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b2d04f6f-c6b0-45d8-85a1-6b282aafc61e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-920b27ab-709f-7862-4c4f-4aee62f26468?restype=container

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
x-ms-request-id: 60df6abf-7996-4632-bd92-75960bd150f9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-544afbc5-cb04-59b0-30b3-d18b463e1ee4?restype=container

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
etag: "0x22959A193D2EB00"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 77a3c50b-31ba-4d76-bd77-f9a0d268943b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-544afbc5-cb04-59b0-30b3-d18b463e1ee4/test-blob-187454bd-0af0-e68c-f6ad-9cc6a515261e

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
etag: "0x2599DCA63BFECA0"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 59f5aae3-dd26-47c0-ab9a-9b445fce44eb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-544afbc5-cb04-59b0-30b3-d18b463e1ee4/test-blob-187454bd-0af0-e68c-f6ad-9cc6a515261e?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 6629dbde-0fa7-f464-e955-2378f3a617b7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2599DCA63BFECA0"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-lease-id: 6629dbde-0fa7-f464-e955-2378f3a617b7
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 23f626c2-a8fd-4339-95bd-d77c55cf60e4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-544afbc5-cb04-59b0-30b3-d18b463e1ee4/test-blob-187454bd-0af0-e68c-f6ad-9cc6a515261e?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-blob-content-length: 8192
x-ms-lease-id: 6629dbde-0fa7-f464-e955-2378f3a617b7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C6D0DA36BED610"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 837bce3f-6461-4a86-8c8a-86c626389ce4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-544afbc5-cb04-59b0-30b3-d18b463e1ee4?restype=container

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
x-ms-request-id: c1e3e7f2-4c70-4c03-98a2-728edd0507a3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

