## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c3c22148-ef83-0bbc-d815-9f6ea81ce625?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).CreateAsync_AccessConditionsFail
now: 2026-11-12T00:50:34.0646205+00:00

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
etag: "0x20F089278083500"
last-modified: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fd24a190-2625-4c36-82f5-e3754dd6f61a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c3c22148-ef83-0bbc-d815-9f6ea81ce625/test-blob-107454b0-5d7c-cf08-eba0-22a6893bef76

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
etag: "0x1EFDBE828F9A6E0"
last-modified: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 538d07ee-b741-4ea4-9333-bcf483fc9595
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-c3c22148-ef83-0bbc-d815-9f6ea81ce625/test-blob-107454b0-5d7c-cf08-eba0-22a6893bef76

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:50:34 GMT
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: 7c7a9c7e-cc38-427e-ac21-5c73f9569e3a
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:34 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-c3c22148-ef83-0bbc-d815-9f6ea81ce625?restype=container

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
x-ms-request-id: 390b6f7c-505d-4c76-8315-5221b249b7a9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-8cbca179-ba20-b69a-e301-77fb20e30801?restype=container

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
etag: "0x23A2125F49322A0"
last-modified: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ee025985-fe09-485c-af31-8a245bfd225b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-8cbca179-ba20-b69a-e301-77fb20e30801/test-blob-7f7a03f1-ff9a-ea9e-18f3-d7e2cd15819c

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
etag: "0x1F7B00CA59609E0"
last-modified: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 48d774cc-5a3f-41ac-aaf2-f7c3c8dc0da7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-8cbca179-ba20-b69a-e301-77fb20e30801/test-blob-7f7a03f1-ff9a-ea9e-18f3-d7e2cd15819c

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:50:34 GMT
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: 23b63d75-673b-41ad-a52e-4c27a1f2ca71
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:34 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-8cbca179-ba20-b69a-e301-77fb20e30801?restype=container

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
x-ms-request-id: 0b4400c3-6ade-427b-8267-f9dbecead128
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-06f52925-5a5f-f604-babd-2d7be60cae08?restype=container

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
etag: "0x25D505D8882CE20"
last-modified: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 53892d18-7e4c-4e72-b05b-197a4094eb26
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-06f52925-5a5f-f604-babd-2d7be60cae08/test-blob-86b52097-70c1-79dc-03d2-732de2b7e9cd

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
etag: "0x27BB2A86E769A40"
last-modified: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 99fae996-9275-46d6-a358-bdd428b88b4e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-06f52925-5a5f-f604-babd-2d7be60cae08/test-blob-86b52097-70c1-79dc-03d2-732de2b7e9cd

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Match: "garbage"
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: 0968e664-ad18-4411-a33a-650c6d2b0948
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:34 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-06f52925-5a5f-f604-babd-2d7be60cae08?restype=container

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
x-ms-request-id: 69b7ccbc-b220-4a91-af10-2e832f95d6e8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-f7d6da7f-02ed-96a1-fe83-c5dcd123030b?restype=container

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
etag: "0x208E68D3C23A780"
last-modified: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e1f1545b-b9b9-449b-b4cb-67044eb55300
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-f7d6da7f-02ed-96a1-fe83-c5dcd123030b/test-blob-ac4bcf44-fb60-b5da-4c7b-038de7d71302

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
etag: "0x1F7EACD82276360"
last-modified: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 273cb2dd-879d-4c6d-b5f1-ab48a73883e6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-f7d6da7f-02ed-96a1-fe83-c5dcd123030b/test-blob-ac4bcf44-fb60-b5da-4c7b-038de7d71302

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
last-modified: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x1F7EACD82276360"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fa83e1b3-c50d-43da-b091-dd9d1b34e87f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:34 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-f7d6da7f-02ed-96a1-fe83-c5dcd123030b/test-blob-ac4bcf44-fb60-b5da-4c7b-038de7d71302

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x1F7EACD82276360"
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: df8ed859-71f8-49ad-92fa-d619ee1a382c
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:34 GMT
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

## Interaction 16: DELETE /devstoreaccount1/test-container-f7d6da7f-02ed-96a1-fe83-c5dcd123030b?restype=container

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
x-ms-request-id: b432886d-53b4-40be-874d-c6390d21a501
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-0bfb5fd4-b636-941a-7f1e-883eaaffa8df?restype=container

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
etag: "0x1C24EFF053EBAF0"
last-modified: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 836742a4-8da6-42ae-9566-1c8a4fb3969b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-0bfb5fd4-b636-941a-7f1e-883eaaffa8df/test-blob-13e867ce-3c6b-846d-0020-aa72ff14af27

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
etag: "0x1E02EB9C86E30E0"
last-modified: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 86b1fb12-574e-44db-9bc0-ebfdcee9f496
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-0bfb5fd4-b636-941a-7f1e-883eaaffa8df/test-blob-13e867ce-3c6b-846d-0020-aa72ff14af27

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-blob-type: AppendBlob
x-ms-lease-id: 4f0d9fa6-c011-b152-1dd8-282ad40e101b
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseNotPresentWithBlobOperation
x-ms-request-id: 5232da88-86d6-47ea-bd95-59d1fb46ca3d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:34 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>LeaseNotPresentWithBlobOperation</Code>
  <Message>A lease ID was specified, but the lease for the blob has expired.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 20: DELETE /devstoreaccount1/test-container-0bfb5fd4-b636-941a-7f1e-883eaaffa8df?restype=container

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
x-ms-request-id: 9052e742-4ff1-4b96-9769-bc6308779e02
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

