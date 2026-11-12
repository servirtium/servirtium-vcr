## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4dc3f604-5708-8b57-96f8-a40ae809513b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).ClearAsync_AccessConditionsFail
now: 2026-11-12T00:51:12.8604450+00:00

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
etag: "0x264D970035AA680"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 11ee40bd-5de9-49f8-9664-9dbb353d74b3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4dc3f604-5708-8b57-96f8-a40ae809513b/test-blob-8adb4c58-de85-99bc-0064-9888b8a13613

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
etag: "0x222222923868420"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 471d349c-9ea2-4bb9-b3bb-17756fc149ff
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-4dc3f604-5708-8b57-96f8-a40ae809513b/test-blob-8adb4c58-de85-99bc-0064-9888b8a13613?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:51:12 GMT
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: 891dccad-3c1b-4edb-966a-7760d20e9839
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:13 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-4dc3f604-5708-8b57-96f8-a40ae809513b?restype=container

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
x-ms-request-id: a5586156-b6f7-46a6-ac8a-a43a9704890f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-ceb0dd32-a839-7cc1-fe03-3abc2c6942d9?restype=container

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
etag: "0x1FD21D0065D61F0"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: daa4653c-a8cb-4c5c-b27a-872358878be5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-ceb0dd32-a839-7cc1-fe03-3abc2c6942d9/test-blob-9aa10a24-36b2-257f-392a-4ca4bfcfd3f4

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
etag: "0x24087B7AF464940"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e4b06842-0bf5-4df9-bba7-2cb46c6e4706
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-ceb0dd32-a839-7cc1-fe03-3abc2c6942d9/test-blob-9aa10a24-36b2-257f-392a-4ca4bfcfd3f4?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:51:12 GMT
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: c7ae3d04-d215-48d7-b2bb-b2f452a9db99
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:13 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-ceb0dd32-a839-7cc1-fe03-3abc2c6942d9?restype=container

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
x-ms-request-id: af03d230-ad21-4d07-83b6-59d67582fa09
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-0ad891c1-8359-b001-8b5f-8b82a3006c97?restype=container

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
etag: "0x1D010EFBFE120D0"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1d104f41-b4d2-4ffe-a192-98e1bcb320ed
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-0ad891c1-8359-b001-8b5f-8b82a3006c97/test-blob-ae63be21-9bff-fc60-5d8a-940f5b1dbc2e

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
etag: "0x1DF336501476890"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f06e4135-9e4f-4dec-bb7a-ed61d95f8dba
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-0ad891c1-8359-b001-8b5f-8b82a3006c97/test-blob-ae63be21-9bff-fc60-5d8a-940f5b1dbc2e?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Match: "garbage"
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: 8e56b6e3-609c-408f-8be0-4bfe2be598c0
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:13 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-0ad891c1-8359-b001-8b5f-8b82a3006c97?restype=container

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
x-ms-request-id: b157f841-262d-4e72-9a2a-fbe5e37f0427
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-9bfb4530-3790-a180-08f1-0f53aafd8239?restype=container

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
etag: "0x207F5035380F200"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8d795331-f5cf-483e-82c1-5b88a335ce01
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-9bfb4530-3790-a180-08f1-0f53aafd8239/test-blob-0082b5bd-246b-25f5-30dc-adcfeef2556e

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
etag: "0x27D118CB504D680"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c0840033-2a24-4f0a-86f0-899162229a1a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-9bfb4530-3790-a180-08f1-0f53aafd8239/test-blob-0082b5bd-246b-25f5-30dc-adcfeef2556e

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
etag: "0x27D118CB504D680"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e3e1b020-9497-4a57-b8f9-4b63f80bad0e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-9bfb4530-3790-a180-08f1-0f53aafd8239/test-blob-0082b5bd-246b-25f5-30dc-adcfeef2556e?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x27D118CB504D680"
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: 5cb2181c-b279-4d43-8514-28936577aad3
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:13 GMT
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

## Interaction 16: DELETE /devstoreaccount1/test-container-9bfb4530-3790-a180-08f1-0f53aafd8239?restype=container

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
x-ms-request-id: 8f843f65-6ad3-46d5-9f4d-7859ebd646ae
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-5e515ca2-d004-ea06-3ec1-a50e8c0c5160?restype=container

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
etag: "0x1FFECA52C9D5620"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5d7d6114-5db8-4b87-b286-41663cdc3d77
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-5e515ca2-d004-ea06-3ec1-a50e8c0c5160/test-blob-a6515b08-bb9a-0bc3-50d5-6bb48ab0b316

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
etag: "0x244821BF3B35800"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d0759663-c75b-4c0e-ba83-d38bc80c2e1f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-5e515ca2-d004-ea06-3ec1-a50e8c0c5160/test-blob-a6515b08-bb9a-0bc3-50d5-6bb48ab0b316?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 4db1a19c-23ac-ec35-ae98-c2aa7fe69923
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x244821BF3B35800"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-lease-id: 4db1a19c-23ac-ec35-ae98-c2aa7fe69923
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 421fb497-85fb-4a4d-be2e-2c5d8b36be28
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: PUT /devstoreaccount1/test-container-5e515ca2-d004-ea06-3ec1-a50e8c0c5160/test-blob-a6515b08-bb9a-0bc3-50d5-6bb48ab0b316?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
x-ms-lease-id: d08f56d3-d1b5-2a73-e276-45fae78dc005
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
x-ms-error-code: LeaseIdMismatchWithBlobOperation
x-ms-request-id: daced273-e9f0-4ac1-87c4-a875ec5eb173
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:13 GMT
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

## Interaction 21: DELETE /devstoreaccount1/test-container-5e515ca2-d004-ea06-3ec1-a50e8c0c5160?restype=container

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
x-ms-request-id: 86683559-b8fa-4af0-b535-26853a2ff5c4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-92c74d8a-afa0-e6d3-9945-0e2e65515f8d?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x221D3D2A8D806A0"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d39b302e-d6cf-468d-b85e-3e31a9c52515
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-92c74d8a-afa0-e6d3-9945-0e2e65515f8d/test-blob-eb728f0d-045b-e4b3-2664-f701f9198c69

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
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
etag: "0x1E4B3D7E16F7E00"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1e721b3d-1ec9-4b13-96dc-d15facdf80a6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-92c74d8a-afa0-e6d3-9945-0e2e65515f8d/test-blob-eb728f0d-045b-e4b3-2664-f701f9198c69?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-if-sequence-number-lt: -1
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
x-ms-error-code: SequenceNumberConditionNotMet
x-ms-request-id: 76c25cc9-c18a-4c6b-9f18-b323326d58dd
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:13 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>SequenceNumberConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 25: DELETE /devstoreaccount1/test-container-92c74d8a-afa0-e6d3-9945-0e2e65515f8d?restype=container

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
x-ms-request-id: 280c815e-2924-4321-ae06-800d610ece30
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-3d2a473c-20e9-ec75-cdca-b3661506875c?restype=container

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
etag: "0x201D9854A851C40"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 67be57e2-04b3-4cbf-b8b4-1f2219ea3194
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-3d2a473c-20e9-ec75-cdca-b3661506875c/test-blob-ef9c3438-ae74-86c7-99e2-6c3bb7d2ed80

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
etag: "0x249D4DC611FBD60"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6af7bb5d-f37c-4759-b64b-7bdd40713092
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-3d2a473c-20e9-ec75-cdca-b3661506875c/test-blob-ef9c3438-ae74-86c7-99e2-6c3bb7d2ed80?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
x-ms-if-sequence-number-le: -1
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
x-ms-error-code: SequenceNumberConditionNotMet
x-ms-request-id: 0bf27bf0-4e85-4c76-8c4e-aa81536ec926
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:13 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>SequenceNumberConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 29: DELETE /devstoreaccount1/test-container-3d2a473c-20e9-ec75-cdca-b3661506875c?restype=container

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
x-ms-request-id: 7fd2a360-0e39-42a8-ae21-9c15cb8e0e59
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 30: PUT /devstoreaccount1/test-container-1df2a4b9-2227-eda4-1985-1d91504dce20?restype=container

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
etag: "0x2193BD5F5128A40"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fda24631-fbb4-4931-9669-763e1774b897
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 31: PUT /devstoreaccount1/test-container-1df2a4b9-2227-eda4-1985-1d91504dce20/test-blob-c5c99bdd-9d7c-8ef4-80a4-a307b43a35fb

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
etag: "0x206F9ADDD64C9C0"
last-modified: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4ea238f9-0e55-4a0e-aebb-5155c3bebaaf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 32: PUT /devstoreaccount1/test-container-1df2a4b9-2227-eda4-1985-1d91504dce20/test-blob-c5c99bdd-9d7c-8ef4-80a4-a307b43a35fb?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_33
x-ms-if-sequence-number-eq: 100
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
x-ms-error-code: SequenceNumberConditionNotMet
x-ms-request-id: d2be3830-74ec-4859-b67c-1322c636bec1
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:13 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>SequenceNumberConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 33: DELETE /devstoreaccount1/test-container-1df2a4b9-2227-eda4-1985-1d91504dce20?restype=container

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
x-ms-request-id: ac1f0182-8af6-48e0-a175-b13f0edad5b7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

