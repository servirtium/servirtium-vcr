## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-69f2eb05-6bec-34c4-8063-386e2e20c90c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).UpdateSequenceNumberAsync_AccessConditions
now: 2026-11-12T00:51:30.3059780+00:00

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
etag: "0x26A7F6CB79B1700"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8a573935-2d81-4cec-be13-1671c6c878df
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-69f2eb05-6bec-34c4-8063-386e2e20c90c/test-blob-71ba576c-ff02-ce72-62d7-97299d419e73

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
etag: "0x1F2B8B225C9FDE0"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ed98bcdb-af73-4ce4-8517-fea33c449c0d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-69f2eb05-6bec-34c4-8063-386e2e20c90c/test-blob-71ba576c-ff02-ce72-62d7-97299d419e73?comp=properties

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
etag: "0x1FF23E7E21C51A0"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-blob-sequence-number: 5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4322f8bc-3a2e-4008-baa8-eb80a4bc3807
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-69f2eb05-6bec-34c4-8063-386e2e20c90c?restype=container

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
x-ms-request-id: f6c68531-3a5a-4c85-b613-b43c25d07ee0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-2cf03c8d-5fea-4226-f37c-1b2dce11dac3?restype=container

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
etag: "0x2371D32EAC7A600"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 744f5167-310f-45f5-9ddd-825454bbd203
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-2cf03c8d-5fea-4226-f37c-1b2dce11dac3/test-blob-ab861a45-d173-051f-7924-0615d49b973f

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
etag: "0x1CFB2478A7F22D0"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7dc96448-90f1-43b3-bb50-7c5a147dcefb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-2cf03c8d-5fea-4226-f37c-1b2dce11dac3/test-blob-ab861a45-d173-051f-7924-0615d49b973f?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:51:30 GMT
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
etag: "0x1F7F97EC257C3F0"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-blob-sequence-number: 5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b4afa2f2-806e-4b72-a8ef-0c9a91436a8a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-2cf03c8d-5fea-4226-f37c-1b2dce11dac3?restype=container

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
x-ms-request-id: 1c8356b2-bd46-4035-a365-96cc8b5fbc35
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-f1e0c5c4-9d30-0c22-3078-7e85e444ff51?restype=container

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
etag: "0x1D1FA8C8DE78160"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6a13f707-ee29-4e2d-b0c6-a459f978de5e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-f1e0c5c4-9d30-0c22-3078-7e85e444ff51/test-blob-83e4d3fc-f3ba-bcff-1dea-b2c658116e57

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
etag: "0x26DAA8C2B69C560"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d79c7141-985a-4ca3-a9f5-88d89adc4165
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-f1e0c5c4-9d30-0c22-3078-7e85e444ff51/test-blob-83e4d3fc-f3ba-bcff-1dea-b2c658116e57?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:51:30 GMT
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
etag: "0x1EDED6742D403B0"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-blob-sequence-number: 5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7fad4f91-4946-4361-99a1-14e59a8f52ac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-f1e0c5c4-9d30-0c22-3078-7e85e444ff51?restype=container

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
x-ms-request-id: 03e744c4-03d6-40e2-9186-fbbd239fe08d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-0968dbe4-e830-a793-f77a-7afb52992135?restype=container

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
etag: "0x25D53A261A27380"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3b69e9ef-2997-4592-b158-37f55f8a569d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-0968dbe4-e830-a793-f77a-7afb52992135/test-blob-0018b524-14b7-d185-c524-d445ea5cb31e

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
etag: "0x1C703719C115A60"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 23819942-d517-41c8-9ca0-677568a0d2a0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-0968dbe4-e830-a793-f77a-7afb52992135/test-blob-0018b524-14b7-d185-c524-d445ea5cb31e

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
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x1C703719C115A60"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 783c03be-7fb8-49e3-982e-e1976a111440
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-0968dbe4-e830-a793-f77a-7afb52992135/test-blob-0018b524-14b7-d185-c524-d445ea5cb31e?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x1C703719C115A60"
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
etag: "0x1F40C28E7BA4360"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-blob-sequence-number: 5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 33d7c974-b329-4caf-a025-9fb5f641779a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-0968dbe4-e830-a793-f77a-7afb52992135?restype=container

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
x-ms-request-id: 46f88f27-0e1c-40d1-856c-8cef9934f25c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-08a02609-f6dc-1420-403c-8b4078046983?restype=container

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
etag: "0x1DADBFA570FB3E0"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ff590676-96df-4625-bc6d-6ef9964ae6e2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-08a02609-f6dc-1420-403c-8b4078046983/test-blob-a3a17dc8-6df9-d0a0-5697-430b144dbd9b

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
etag: "0x22EB7CE10354AC0"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bfaa89e4-2714-468c-8a76-5f7e0c23fad3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-08a02609-f6dc-1420-403c-8b4078046983/test-blob-a3a17dc8-6df9-d0a0-5697-430b144dbd9b?comp=properties

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
etag: "0x20B9261393E6CA0"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-blob-sequence-number: 5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a1a9a71d-8002-4331-b871-2726881c92e0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-08a02609-f6dc-1420-403c-8b4078046983?restype=container

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
x-ms-request-id: d6651ed5-1aaa-4ada-9a85-bd18b9870ad3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-2cf15bc6-19f9-2e58-9404-c07a894558c0?restype=container

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
etag: "0x2155507A528BB60"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fd4d81a5-cd9e-49f1-b64c-f50a5cfe501c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-2cf15bc6-19f9-2e58-9404-c07a894558c0/test-blob-6c7c51bb-10ba-9c25-85cf-b144b215fff2

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
etag: "0x248D643ADBC3180"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 81d5752a-3cd0-4d81-aa71-d943cecf5f4c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-2cf15bc6-19f9-2e58-9404-c07a894558c0/test-blob-6c7c51bb-10ba-9c25-85cf-b144b215fff2?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 1c79ef7e-3c13-af8a-2472-0ef4ad254711
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x248D643ADBC3180"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-lease-id: 1c79ef7e-3c13-af8a-2472-0ef4ad254711
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d05286a9-a0c1-4e2d-a4a2-328b57d715f6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-2cf15bc6-19f9-2e58-9404-c07a894558c0/test-blob-6c7c51bb-10ba-9c25-85cf-b144b215fff2?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-blob-sequence-number: 5
x-ms-lease-id: 1c79ef7e-3c13-af8a-2472-0ef4ad254711
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
etag: "0x1D60A283EEFE7F0"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-blob-sequence-number: 5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 44fd055b-37fc-4cc2-b195-122dcc446e05
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-2cf15bc6-19f9-2e58-9404-c07a894558c0?restype=container

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
x-ms-request-id: 859b058a-08ae-4049-a949-66381ded9546
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

