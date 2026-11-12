## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-26e5a7f2-f259-babf-a035-bccca5860b98?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).CreateAsync_AccessConditionsFail
now: 2026-11-12T00:51:14.9919543+00:00

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
etag: "0x24EC8F458002E80"
last-modified: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2d1f95ce-9053-4aa3-ba3d-a4c6f9071585
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-26e5a7f2-f259-babf-a035-bccca5860b98/test-blob-5f291f7a-8215-0bf2-9902-8fa3392ffaf8

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
etag: "0x26EA5E148AD28A0"
last-modified: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ce66c84e-c25e-4633-9292-0d196f64f3ac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-26e5a7f2-f259-babf-a035-bccca5860b98/test-blob-5f291f7a-8215-0bf2-9902-8fa3392ffaf8

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:51:14 GMT
x-ms-blob-content-length: 1024
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: c5da457d-8a4f-4d8a-b73f-b3d1d3f582d3
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:15 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-26e5a7f2-f259-babf-a035-bccca5860b98?restype=container

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
x-ms-request-id: 60d420a2-9a35-4ebe-aede-caf39bdbf3b9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-7dea9093-98f9-5bfe-b10a-392d43c01a13?restype=container

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
etag: "0x25416CF5DBE3240"
last-modified: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 51a8f431-79c5-4169-90ef-7a915b9b3d6a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-7dea9093-98f9-5bfe-b10a-392d43c01a13/test-blob-e1a529b0-8c21-6fe6-b5d9-8d57631b8071

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
etag: "0x1D0CC9EFA380340"
last-modified: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8af52fb2-4b77-46f1-912c-3ac2e78e7cd6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-7dea9093-98f9-5bfe-b10a-392d43c01a13/test-blob-e1a529b0-8c21-6fe6-b5d9-8d57631b8071

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:51:14 GMT
x-ms-blob-content-length: 1024
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: 26d69f2b-9206-4368-b4f6-90889f53cd61
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:15 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 7: DELETE /devstoreaccount1/test-container-7dea9093-98f9-5bfe-b10a-392d43c01a13?restype=container

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
x-ms-request-id: 244d508a-a9da-4b5f-a97d-fec17ae15d3c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-1439c33b-8e9b-e19f-20ce-ae0b48c5c8d8?restype=container

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
etag: "0x25F3373BEA62B80"
last-modified: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2cca0195-d8d8-43aa-97a9-a0e975231b7e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-1439c33b-8e9b-e19f-20ce-ae0b48c5c8d8/test-blob-0ff37be7-198a-07d7-a97a-c8200ba6f896

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
etag: "0x2308F7671A7CC40"
last-modified: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 72cf7032-1e08-427f-b57e-400ac3796356
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-1439c33b-8e9b-e19f-20ce-ae0b48c5c8d8/test-blob-0ff37be7-198a-07d7-a97a-c8200ba6f896

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Match: "garbage"
x-ms-blob-content-length: 1024
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: 9231c122-2bc8-4785-9130-d2352acc79c9
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:15 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-1439c33b-8e9b-e19f-20ce-ae0b48c5c8d8?restype=container

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
x-ms-request-id: ed1c5c78-9f67-4326-a49b-71a55699416d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-7ff2c889-0587-2277-8ac4-c052dddb27ef?restype=container

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
etag: "0x277BB88B855EB20"
last-modified: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d65271f9-922b-4bb5-b08d-4056359f9e19
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-7ff2c889-0587-2277-8ac4-c052dddb27ef/test-blob-e76fb411-7028-21e6-ec31-6a21c57fd579

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
etag: "0x1CBBCC86BD09080"
last-modified: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c853fbe8-0eb7-4b52-a5d5-bfb0b258bf36
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-7ff2c889-0587-2277-8ac4-c052dddb27ef/test-blob-e76fb411-7028-21e6-ec31-6a21c57fd579

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
last-modified: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1CBBCC86BD09080"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 106f4cb4-84d3-4c40-b6ed-8b78b25ff389
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:15 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-7ff2c889-0587-2277-8ac4-c052dddb27ef/test-blob-e76fb411-7028-21e6-ec31-6a21c57fd579

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x1CBBCC86BD09080"
x-ms-blob-content-length: 1024
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: ca63dff8-5bda-455f-91f0-63c899a6d565
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:15 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 16: DELETE /devstoreaccount1/test-container-7ff2c889-0587-2277-8ac4-c052dddb27ef?restype=container

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
x-ms-request-id: 85e712c1-03d7-4dc9-8b4b-268a139619c1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-808218d5-48d3-e151-04d0-84c5588429ce?restype=container

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
etag: "0x24F2FC5DA60E1A0"
last-modified: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: effc9759-bd69-411a-8001-a91fea3a6eef
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-808218d5-48d3-e151-04d0-84c5588429ce/test-blob-560ed853-1137-186d-e1d0-93559b555c0b

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
etag: "0x2537D6601A8A7C0"
last-modified: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cbca1462-b3d1-4274-add5-a8a800c06899
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-808218d5-48d3-e151-04d0-84c5588429ce/test-blob-560ed853-1137-186d-e1d0-93559b555c0b?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: c57d47ee-a659-c91c-628d-e257eb21c967
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2537D6601A8A7C0"
last-modified: Thu, 12 Nov 2026 00:51:15 GMT
x-ms-lease-id: c57d47ee-a659-c91c-628d-e257eb21c967
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a6486581-ad1d-4968-8acb-97a791b01881
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: PUT /devstoreaccount1/test-container-808218d5-48d3-e151-04d0-84c5588429ce/test-blob-560ed853-1137-186d-e1d0-93559b555c0b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-lease-id: dac4704d-ff62-bf8d-99bc-c21f004aebfc
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseIdMismatchWithBlobOperation
x-ms-request-id: 867aef17-ef79-4f8d-8134-22490dda32c0
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:15 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>LeaseIdMismatchWithBlobOperation</Code>
  <Message>The lease ID specified did not match the lease ID for the blob.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 21: DELETE /devstoreaccount1/test-container-808218d5-48d3-e151-04d0-84c5588429ce?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6f59eb92-9cfe-4190-82d9-94b8072a2f7e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

