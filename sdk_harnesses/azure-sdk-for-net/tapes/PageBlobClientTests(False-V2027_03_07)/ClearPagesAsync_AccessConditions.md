## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d252cef0-cace-c91a-7388-04ce26033ca3?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).ClearPagesAsync_AccessConditions
now: 2026-11-12T00:51:13.8365395+00:00

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
etag: "0x1D62FB166887000"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9bd139f4-ed52-45c4-a258-eed13eb82362
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d252cef0-cace-c91a-7388-04ce26033ca3/test-blob-41bade78-ec5c-871f-96dd-3c50f420886d

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
etag: "0x237F64233D6EE60"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e5784b06-fd77-4ce8-89af-763650980488
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-d252cef0-cace-c91a-7388-04ce26033ca3/test-blob-41bade78-ec5c-871f-96dd-3c50f420886d?comp=page

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
etag: "0x25FCCDD14146CE0"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fedd4f11-0b01-431d-85c3-f68ecdfa5e36
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-d252cef0-cace-c91a-7388-04ce26033ca3?restype=container

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
x-ms-request-id: ad8d655f-cdfc-42bf-a0a5-a8e756c98f1d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-6d5cc468-26ea-025b-5251-d43ec6503673?restype=container

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
etag: "0x24103C0A0EF8D80"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cabe2da4-a7aa-43d5-80ff-2abae4809c4f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-6d5cc468-26ea-025b-5251-d43ec6503673/test-blob-0634c9bb-a8e2-03fb-aeca-3bf08dc9d553

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
etag: "0x26EDA1AE98DC480"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9aca9749-63fa-486a-97cd-fb7a96a84153
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-6d5cc468-26ea-025b-5251-d43ec6503673/test-blob-0634c9bb-a8e2-03fb-aeca-3bf08dc9d553?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:51:13 GMT
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
etag: "0x23820B10C2A3120"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f4e47baf-fd97-4c21-a3cb-2a29e950cc9b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-6d5cc468-26ea-025b-5251-d43ec6503673?restype=container

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
x-ms-request-id: 5eaa7eb3-e90a-4ba7-a336-a5bcdeed5cbb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-61659700-cea6-52b8-83b7-ee0a17e0c146?restype=container

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
etag: "0x24623E933E8FCA0"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: da3fe32a-b586-4df0-bd2c-4089eb8205b8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-61659700-cea6-52b8-83b7-ee0a17e0c146/test-blob-2a95c8a7-82eb-bf8b-c959-be20ea6a7489

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
etag: "0x2614920E0998620"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 44ddcaa3-f28f-4269-93bc-0a06e4722d31
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-61659700-cea6-52b8-83b7-ee0a17e0c146/test-blob-2a95c8a7-82eb-bf8b-c959-be20ea6a7489?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:51:13 GMT
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
etag: "0x1F67B98DB336190"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c1022b7a-5b67-45e6-8ea1-db8dc02cd32e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-61659700-cea6-52b8-83b7-ee0a17e0c146?restype=container

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
x-ms-request-id: 34fa7982-dd37-43a5-9896-508c76568fdb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-2f3e817c-d4ea-eccc-11e1-822abaf0eccd?restype=container

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
etag: "0x25D99CF7D785B80"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 30992e33-04e3-4878-86d2-cd8bc2b2c9ed
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-2f3e817c-d4ea-eccc-11e1-822abaf0eccd/test-blob-c548f409-aa34-7d67-0ba5-984d10986718

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
etag: "0x1BE69D2D4AF0EE0"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 50357d61-e3f3-4ced-9308-ef0211ff5e61
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-2f3e817c-d4ea-eccc-11e1-822abaf0eccd/test-blob-c548f409-aa34-7d67-0ba5-984d10986718

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
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1BE69D2D4AF0EE0"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 184e171b-4892-4de5-a085-33f3dff77d01
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-2f3e817c-d4ea-eccc-11e1-822abaf0eccd/test-blob-c548f409-aa34-7d67-0ba5-984d10986718?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x1BE69D2D4AF0EE0"
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
etag: "0x2245536BE586EC0"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f1f2a902-4e5f-46c6-90db-4e62b6cbcd1a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-2f3e817c-d4ea-eccc-11e1-822abaf0eccd?restype=container

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
x-ms-request-id: 42c4e1f0-87da-484c-b427-724383a04197
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-958d6542-92a2-d35c-fca9-190a006005d8?restype=container

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
etag: "0x1E26ED67BD2A430"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 976ccc58-470f-4a2d-8e8c-e649c4054218
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-958d6542-92a2-d35c-fca9-190a006005d8/test-blob-f516f16c-af22-d255-19c1-23443c7edc79

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
etag: "0x263550339FAC980"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: af34fb6b-6af7-4eb1-b90b-21173fe00b16
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-958d6542-92a2-d35c-fca9-190a006005d8/test-blob-f516f16c-af22-d255-19c1-23443c7edc79?comp=page

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
etag: "0x204A93FDB38BBA0"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7cccaf92-45d8-445e-858e-f6d16eb58353
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-958d6542-92a2-d35c-fca9-190a006005d8?restype=container

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
x-ms-request-id: f3339d99-a736-4e79-a109-e2fe33118c5b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-55e8697a-5663-772b-9875-c88a905d7dab?restype=container

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
etag: "0x1C728FAC673D520"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e34eeba1-13bf-4ce8-9894-4cdc895c2aff
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-55e8697a-5663-772b-9875-c88a905d7dab/test-blob-1fe1bfa0-7181-93f6-10ba-7be06e17967d

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
etag: "0x23AE9E4652EC5A0"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cd759a27-2204-4674-b9a5-95361393f9ce
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-55e8697a-5663-772b-9875-c88a905d7dab/test-blob-1fe1bfa0-7181-93f6-10ba-7be06e17967d?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 968fa0cd-b078-1575-c59f-5dace6ca41bc
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23AE9E4652EC5A0"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-lease-id: 968fa0cd-b078-1575-c59f-5dace6ca41bc
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a0366d58-cbe7-4c48-875d-291d6904a7d3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-55e8697a-5663-772b-9875-c88a905d7dab/test-blob-1fe1bfa0-7181-93f6-10ba-7be06e17967d?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-lease-id: 968fa0cd-b078-1575-c59f-5dace6ca41bc
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
etag: "0x1C88156EF92D3A0"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d4d36d0b-b00e-4e9c-bc72-fa4b251c8c95
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-55e8697a-5663-772b-9875-c88a905d7dab?restype=container

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
x-ms-request-id: 86eb653b-47a5-439b-ac02-51b9c6045b79
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-7da37743-bd9d-08f7-7254-44a8db4a0880?restype=container

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
etag: "0x1F64F8836094A80"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4529802e-dbf4-446d-91cd-cfad56a0c645
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-7da37743-bd9d-08f7-7254-44a8db4a0880/test-blob-f0bd4ade-e6cd-ef33-49cc-59e2144aac45

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
etag: "0x26A379D127B8120"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ddaee787-b02e-43db-80bb-637bf4d13f13
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-7da37743-bd9d-08f7-7254-44a8db4a0880/test-blob-f0bd4ade-e6cd-ef33-49cc-59e2144aac45?comp=page

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
etag: "0x26E8D663BE78D40"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bbfcf6a4-9641-4da4-a74f-d7908e50b118
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 29: DELETE /devstoreaccount1/test-container-7da37743-bd9d-08f7-7254-44a8db4a0880?restype=container

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
x-ms-request-id: ad744fe1-235b-4776-a5ff-2b88a0f9e3cd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 30: PUT /devstoreaccount1/test-container-f79dbf79-1974-10e0-a987-24236bcd3a7a?restype=container

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
etag: "0x22A73F862726D60"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a8713a6b-4ef2-4eb3-beea-ee9a97db8bb9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 31: PUT /devstoreaccount1/test-container-f79dbf79-1974-10e0-a987-24236bcd3a7a/test-blob-9ccedc96-510d-5cee-44b3-33d16315f328

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
etag: "0x27481B907A3C760"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5034136f-796d-401c-a717-0dee65a8e6f2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 32: PUT /devstoreaccount1/test-container-f79dbf79-1974-10e0-a987-24236bcd3a7a/test-blob-9ccedc96-510d-5cee-44b3-33d16315f328?comp=page

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
etag: "0x21A562DAA6CFEE0"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dd1214a2-80e0-4e75-b4c5-f8d774b6d5b0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 33: DELETE /devstoreaccount1/test-container-f79dbf79-1974-10e0-a987-24236bcd3a7a?restype=container

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
x-ms-request-id: b1294ec4-d841-4626-b48a-00de264220f9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 34: PUT /devstoreaccount1/test-container-1b2fffa8-11ad-c50c-69ad-4646c210847c?restype=container

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
etag: "0x25497BDAD756F40"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a8de67ab-b300-484c-a4d8-eaa31ff99f72
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 35: PUT /devstoreaccount1/test-container-1b2fffa8-11ad-c50c-69ad-4646c210847c/test-blob-384bde91-0f7b-2738-d040-b2c0e50fac93

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
etag: "0x27178DF6AB87840"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fc604454-725f-47e6-bae1-6d57b85e6aa1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 36: PUT /devstoreaccount1/test-container-1b2fffa8-11ad-c50c-69ad-4646c210847c/test-blob-384bde91-0f7b-2738-d040-b2c0e50fac93?comp=page

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
etag: "0x1C3B46A3FFC5870"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 13748171-1572-48c0-8006-d87908991a84
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 37: DELETE /devstoreaccount1/test-container-1b2fffa8-11ad-c50c-69ad-4646c210847c?restype=container

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
x-ms-request-id: ae8b43c1-e9f8-4271-88e6-b213765d6bb6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

