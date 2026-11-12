## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a0280e24-757b-d966-ce21-7d92fc607c7b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).CreateAsync_AccessConditions
now: 2026-11-12T00:50:48.5932949+00:00

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
etag: "0x25610BD51796040"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7cd55a2b-6077-4f4a-ab4e-90a77f3491c6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a0280e24-757b-d966-ce21-7d92fc607c7b/test-blob-b1d09a41-ddbb-4a1e-e559-d3b24b5d4e40

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
etag: "0x1D596479B703450"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7ddb829b-1ec9-45e0-8adf-dce72c0aa84d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-a0280e24-757b-d966-ce21-7d92fc607c7b/test-blob-b1d09a41-ddbb-4a1e-e559-d3b24b5d4e40

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
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
etag: "0x1FC2194B369B260"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 73af273a-060a-4823-ac2b-e718fb2e707c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-a0280e24-757b-d966-ce21-7d92fc607c7b?restype=container

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
x-ms-request-id: 00ae8e40-871d-4085-b091-8bc1135b1ddd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-288b4fc6-5a8d-b799-168f-94207d03560a?restype=container

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
etag: "0x24B02C92AA78E00"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 10e2afaa-2661-4a4b-b7a2-7c03757a9ede
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-288b4fc6-5a8d-b799-168f-94207d03560a/test-blob-2cba33ab-fcea-47aa-f0dd-ba21a2b38e70

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
etag: "0x2322C5DBBCFDE40"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: af74795c-fe09-49c3-a864-41b48ef32f18
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-288b4fc6-5a8d-b799-168f-94207d03560a/test-blob-2cba33ab-fcea-47aa-f0dd-ba21a2b38e70

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:50:48 GMT
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
etag: "0x1DE2135E39D7E30"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 63f5f740-f0fe-44e4-ab64-b3851a3890b4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-288b4fc6-5a8d-b799-168f-94207d03560a?restype=container

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
x-ms-request-id: a241a1e2-e796-4c79-95ce-9f46df8f0505
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-accc3dd2-54d5-e7ee-0118-9b2b48fdcce2?restype=container

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
etag: "0x1F517CF9F32D820"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 07949292-32df-4e58-b0d8-c78d1bfb7146
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-accc3dd2-54d5-e7ee-0118-9b2b48fdcce2/test-blob-1707c802-22a3-c955-a543-37af9f771462

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
etag: "0x24EF6A6390520E0"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bd8f805a-c5ea-4c85-b80d-1f8dcbf7fc6d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-accc3dd2-54d5-e7ee-0118-9b2b48fdcce2/test-blob-1707c802-22a3-c955-a543-37af9f771462

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:50:48 GMT
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
etag: "0x23DD21971D46BE0"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fba96599-fc36-448f-8030-e7894b8bc0de
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-accc3dd2-54d5-e7ee-0118-9b2b48fdcce2?restype=container

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
x-ms-request-id: aa1c8ffc-1279-4960-9822-da4f5d9867b6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-404e2301-aa37-5635-45d2-2ad2617efff2?restype=container

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
etag: "0x25DA53B8B3D0A00"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d94e13a4-86f4-4106-b9e7-dc0ffe9d545d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-404e2301-aa37-5635-45d2-2ad2617efff2/test-blob-da1fd810-77ac-afcd-e702-07921c3e4789

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
etag: "0x24A590DCA52CA60"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3cd9b4bc-7376-4c6f-a775-ec00a16689e9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-404e2301-aa37-5635-45d2-2ad2617efff2/test-blob-da1fd810-77ac-afcd-e702-07921c3e4789

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
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x24A590DCA52CA60"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9cbd21e8-5e9d-4315-9f7d-28b8e2312f32
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-404e2301-aa37-5635-45d2-2ad2617efff2/test-blob-da1fd810-77ac-afcd-e702-07921c3e4789

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x24A590DCA52CA60"
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
etag: "0x24FB59905B40800"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e53e39c6-011f-4283-914f-bf065623d55a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-404e2301-aa37-5635-45d2-2ad2617efff2?restype=container

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
x-ms-request-id: aa236aff-569d-40c5-8322-3fbe3c8b8c0c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-242a3803-8caf-58ab-93b0-d1d0f8836826?restype=container

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
etag: "0x1E7663190B185B0"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3bcd2f0f-1dd5-4f43-afb6-96717a48ab08
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-242a3803-8caf-58ab-93b0-d1d0f8836826/test-blob-c79f4444-3a58-89b5-569e-5834a2a33a07

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
etag: "0x20EF35B53EEAD80"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c730861e-ccda-4484-af5c-5a1d8dfa734e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-242a3803-8caf-58ab-93b0-d1d0f8836826/test-blob-c79f4444-3a58-89b5-569e-5834a2a33a07

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "garbage"
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
etag: "0x24D5D01FEF2A8C0"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 088c90de-9a96-48f7-87b8-a1d145eea5de
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-242a3803-8caf-58ab-93b0-d1d0f8836826?restype=container

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
x-ms-request-id: f075422a-06ca-44b1-aa4b-2a9cd5091156
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-28cea18a-da53-8443-2dc7-47fca5fdb764?restype=container

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
etag: "0x253CEFF846B0560"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 94439a3e-da4f-470a-b301-69beb366d4c4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-28cea18a-da53-8443-2dc7-47fca5fdb764/test-blob-d84de099-809f-c931-82a0-cd103376b5f0

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
etag: "0x1DA7BAF50E501B0"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5926763c-631a-42b4-911e-eccdc76b868f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-28cea18a-da53-8443-2dc7-47fca5fdb764/test-blob-d84de099-809f-c931-82a0-cd103376b5f0?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 5745c976-3fb5-69d3-011a-9991f3b9e458
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DA7BAF50E501B0"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-lease-id: 5745c976-3fb5-69d3-011a-9991f3b9e458
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 48289b10-c9b1-49a6-9b5a-b6f042ba5cf0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-28cea18a-da53-8443-2dc7-47fca5fdb764/test-blob-d84de099-809f-c931-82a0-cd103376b5f0

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-blob-type: AppendBlob
x-ms-lease-id: 5745c976-3fb5-69d3-011a-9991f3b9e458
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DF4A3DCCBF0C80"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a671cd8b-74b4-481c-88d6-d4dd74d22489
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-28cea18a-da53-8443-2dc7-47fca5fdb764?restype=container

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
x-ms-request-id: ea3066af-9c9b-44a1-9f20-234a008a667d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

