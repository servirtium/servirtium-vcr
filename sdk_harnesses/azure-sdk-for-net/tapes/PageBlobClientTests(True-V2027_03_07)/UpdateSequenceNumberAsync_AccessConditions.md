## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7277cbe9-1e7b-52b4-6326-e6efb2e956e9?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).UpdateSequenceNumberAsync_AccessConditions
now: 2026-11-12T00:51:59.9565487+00:00

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
etag: "0x20FF6DB2C537E80"
last-modified: Thu, 12 Nov 2026 00:51:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 10d0ceee-e8a5-49d5-a7b6-7bc218b0555c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:59 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7277cbe9-1e7b-52b4-6326-e6efb2e956e9/test-blob-fd22dff3-c221-4780-ef67-d3fa3d09ace4

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
etag: "0x1D5EE6A1FB0E170"
last-modified: Thu, 12 Nov 2026 00:51:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 76fac078-c232-4304-82fa-c09e11f4fd8a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-7277cbe9-1e7b-52b4-6326-e6efb2e956e9/test-blob-fd22dff3-c221-4780-ef67-d3fa3d09ace4?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-blob-sequence-number: 5
x-ms-return-client-request-id: true
x-ms-sequence-number-action: update
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DB446E29AA7170"
last-modified: Thu, 12 Nov 2026 00:51:59 GMT
x-ms-blob-sequence-number: 5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d33a33d0-4328-4129-9d8f-91065fff0c72
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:59 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-7277cbe9-1e7b-52b4-6326-e6efb2e956e9?restype=container

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
x-ms-request-id: fe54b07a-492f-4b9e-add4-1d355e088ada
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:59 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-777d9af6-b296-d114-a8b2-95077bc589b0?restype=container

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
etag: "0x221EDF06AFF0440"
last-modified: Thu, 12 Nov 2026 00:51:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 69bb2e6d-9bc1-4be7-bdbc-ba69f5167466
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:59 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-777d9af6-b296-d114-a8b2-95077bc589b0/test-blob-67483cc6-be56-27be-4b2f-83134aba1459

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
etag: "0x1D19077F2492F40"
last-modified: Thu, 12 Nov 2026 00:51:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fa1b5054-e844-4747-919c-2c2d108f38e0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-777d9af6-b296-d114-a8b2-95077bc589b0/test-blob-67483cc6-be56-27be-4b2f-83134aba1459?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:51:59 GMT
x-ms-blob-sequence-number: 5
x-ms-return-client-request-id: true
x-ms-sequence-number-action: update
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EB9B57F820A260"
last-modified: Thu, 12 Nov 2026 00:51:59 GMT
x-ms-blob-sequence-number: 5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9c20c4ab-4f5d-4163-a45c-34865385c5dc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:59 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-777d9af6-b296-d114-a8b2-95077bc589b0?restype=container

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
x-ms-request-id: 88fe3ad5-d9c0-462c-afb3-de510c6a2cc0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:59 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-18f90179-de6c-4153-ca50-556e2c78cc29?restype=container

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
etag: "0x1C5DA6A30420BC0"
last-modified: Thu, 12 Nov 2026 00:51:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1b154c50-15bd-45f4-8f52-45653e10a744
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:59 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-18f90179-de6c-4153-ca50-556e2c78cc29/test-blob-003323de-45c0-388d-db55-2c662e0086ee

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
etag: "0x222208845894FC0"
last-modified: Thu, 12 Nov 2026 00:51:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fca324ba-2263-4d0c-8eb5-8dd510a49144
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-18f90179-de6c-4153-ca50-556e2c78cc29/test-blob-003323de-45c0-388d-db55-2c662e0086ee?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:51:59 GMT
x-ms-blob-sequence-number: 5
x-ms-return-client-request-id: true
x-ms-sequence-number-action: update
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x274B5F3BDDC05A0"
last-modified: Thu, 12 Nov 2026 00:51:59 GMT
x-ms-blob-sequence-number: 5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a3666e80-5677-42ab-8b82-7d047f6a6924
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:59 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-18f90179-de6c-4153-ca50-556e2c78cc29?restype=container

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
x-ms-request-id: 05435e39-84c4-4ce6-8f7f-b58b67f80bde
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:59 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-798e3b9d-70cc-e743-e807-9d066950fbd2?restype=container

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
etag: "0x1EC6DE0642B80C0"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 433e7b61-c067-4a10-ad41-29f903cd3521
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:59 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-798e3b9d-70cc-e743-e807-9d066950fbd2/test-blob-27355a63-1486-3499-74c1-3c16b2ed12c9

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
etag: "0x26978AB4F9708C0"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 906c0735-6f64-4150-9b15-e410d84d18de
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-798e3b9d-70cc-e743-e807-9d066950fbd2/test-blob-27355a63-1486-3499-74c1-3c16b2ed12c9

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
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x26978AB4F9708C0"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 97dd12fc-6e79-48d8-b658-080c68f81671
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-798e3b9d-70cc-e743-e807-9d066950fbd2/test-blob-27355a63-1486-3499-74c1-3c16b2ed12c9?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x26978AB4F9708C0"
x-ms-blob-sequence-number: 5
x-ms-return-client-request-id: true
x-ms-sequence-number-action: update
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CC6D0BC2DD9DB0"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-blob-sequence-number: 5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b58408a9-8a6f-4e30-904f-40f21db8e786
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-798e3b9d-70cc-e743-e807-9d066950fbd2?restype=container

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
x-ms-request-id: 0d1b550b-0830-4a12-bf26-0c1342d65b59
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-f1d066c9-52ea-6e5d-df4b-17b8a787ce8b?restype=container

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
etag: "0x21B69FF0FC98720"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8c2dace9-b3c3-4d94-b014-dd8520924188
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-f1d066c9-52ea-6e5d-df4b-17b8a787ce8b/test-blob-d403595a-5ecb-8968-a259-050b332c35fb

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
etag: "0x1F548C6FABC80A0"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0847acfe-890c-4321-b570-7925e01fd762
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-f1d066c9-52ea-6e5d-df4b-17b8a787ce8b/test-blob-d403595a-5ecb-8968-a259-050b332c35fb?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "garbage"
x-ms-blob-sequence-number: 5
x-ms-return-client-request-id: true
x-ms-sequence-number-action: update
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CCC38B40A263B0"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-blob-sequence-number: 5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5858c80b-7352-435b-b52e-ea9dc5fb178a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-f1d066c9-52ea-6e5d-df4b-17b8a787ce8b?restype=container

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
x-ms-request-id: 4db61699-cc05-478b-a635-f741c2e7c902
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-033cd3f5-0a7f-10e8-fcc6-483afce08ced?restype=container

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
etag: "0x2187CE412A10A00"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6b701d85-8064-4b4b-b304-7bf1ec44aaec
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-033cd3f5-0a7f-10e8-fcc6-483afce08ced/test-blob-58bcb1f2-3de9-6bfd-fd46-4f904c513ab2

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
etag: "0x265FA4FF8209A80"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 95f5285e-a47a-41e6-911c-16fec2a5d7f5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-033cd3f5-0a7f-10e8-fcc6-483afce08ced/test-blob-58bcb1f2-3de9-6bfd-fd46-4f904c513ab2?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: d4c31c16-ca4b-500c-71f2-d705162e8dc1
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x265FA4FF8209A80"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-lease-id: d4c31c16-ca4b-500c-71f2-d705162e8dc1
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c87d5f85-e348-42ab-9c31-1e53b2fa19be
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-033cd3f5-0a7f-10e8-fcc6-483afce08ced/test-blob-58bcb1f2-3de9-6bfd-fd46-4f904c513ab2?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-blob-sequence-number: 5
x-ms-lease-id: d4c31c16-ca4b-500c-71f2-d705162e8dc1
x-ms-return-client-request-id: true
x-ms-sequence-number-action: update
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x224587B4541B940"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-blob-sequence-number: 5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0c9ea791-d4b5-4bd0-8fa5-68a867e4cc18
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-033cd3f5-0a7f-10e8-fcc6-483afce08ced?restype=container

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
x-ms-request-id: fd638734-65e0-47a5-bca9-54245d4a168f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

