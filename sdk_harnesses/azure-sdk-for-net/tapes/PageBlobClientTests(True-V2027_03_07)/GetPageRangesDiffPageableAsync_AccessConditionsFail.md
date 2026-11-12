## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5133a9e3-dda2-ae29-009b-d33f2cdba1ac?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).GetPageRangesDiffPageableAsync_AccessConditionsFail
now: 2026-11-12T00:51:54.4368275+00:00

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
etag: "0x21293FDC562A5A0"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 95ec1b2e-7bdb-45c0-bd21-d36311fdc6bc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5133a9e3-dda2-ae29-009b-d33f2cdba1ac/test-blob-e455c86d-3d04-0010-e64f-fa278879382d

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
etag: "0x20E8E2CE31BA4C0"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6ba8a73a-4b9a-429c-aac1-e4f3a3ea9042
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-5133a9e3-dda2-ae29-009b-d33f2cdba1ac/test-blob-e455c86d-3d04-0010-e64f-fa278879382d?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:51:54 GMT
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
x-ms-request-id: 040ba7ff-41fd-4b69-905c-772fe8b2333c
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:54 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-5133a9e3-dda2-ae29-009b-d33f2cdba1ac?restype=container

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
x-ms-request-id: 2f064d5c-1007-4aa8-8da8-8a49cea0295e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-1e39f36e-78b8-f3c6-d59f-47cae09b30b3?restype=container

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
etag: "0x26C1C5518E89D20"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8ca5be93-00dc-49d0-80ad-255860986eb3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-1e39f36e-78b8-f3c6-d59f-47cae09b30b3/test-blob-3017919a-bf86-a58c-9833-6a52e3012687

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
etag: "0x273B27524482B40"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 82a17fef-6dec-473b-9932-ae4e12cf52f2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-1e39f36e-78b8-f3c6-d59f-47cae09b30b3/test-blob-3017919a-bf86-a58c-9833-6a52e3012687?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:51:54 GMT
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
x-ms-request-id: 74d0b942-7a26-4d87-8a5d-61d2abf4838c
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:54 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-1e39f36e-78b8-f3c6-d59f-47cae09b30b3?restype=container

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
x-ms-request-id: ee349992-a893-455b-b30b-88388016ff32
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-38d0a663-83a1-f5f3-0262-0f64f6451f4b?restype=container

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
etag: "0x1BE8733EC6CD0D0"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2bc510c1-9f79-4654-a164-3077f316c23a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-38d0a663-83a1-f5f3-0262-0f64f6451f4b/test-blob-f78d461f-0861-aea6-6694-85850d7310d3

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
etag: "0x1D2DA23CCDBD440"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a1495c89-a07d-4ce2-9b20-e210ec336132
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-38d0a663-83a1-f5f3-0262-0f64f6451f4b/test-blob-f78d461f-0861-aea6-6694-85850d7310d3?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_11
If-Match: "garbage"
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
x-ms-request-id: 7e3972df-b1d4-498a-ab1c-b7c00abb5367
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:54 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-38d0a663-83a1-f5f3-0262-0f64f6451f4b?restype=container

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
x-ms-request-id: b18a260c-b26c-40ed-96ea-0232d3eae7d2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-3a67bf79-f8ca-1712-9d22-2d24b028af53?restype=container

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
etag: "0x1C227D519F46650"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fb81ec9f-5754-4d07-95fa-8b6a8171a7f1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-3a67bf79-f8ca-1712-9d22-2d24b028af53/test-blob-9c331f14-2e74-5b26-ff21-d10dfd6ee78f

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
etag: "0x268DA5C6BB1F120"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 64b2c39b-1a3b-4f8b-97f6-5bfc478daf8a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-3a67bf79-f8ca-1712-9d22-2d24b028af53/test-blob-9c331f14-2e74-5b26-ff21-d10dfd6ee78f

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
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x268DA5C6BB1F120"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4f3c024f-1799-4cd4-9eb4-3d6c96f5c6dd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: GET /devstoreaccount1/test-container-3a67bf79-f8ca-1712-9d22-2d24b028af53/test-blob-9c331f14-2e74-5b26-ff21-d10dfd6ee78f?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x268DA5C6BB1F120"
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
x-ms-request-id: c414155c-e74a-43b7-9f2b-27b5062bbb60
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:54 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-3a67bf79-f8ca-1712-9d22-2d24b028af53?restype=container

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
x-ms-request-id: c5bf89e1-6bb7-419e-bb06-8b52f29cbe9d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-36eb3b51-e5dd-2780-3476-593eda82fe3e?restype=container

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
etag: "0x227AAC5DB0E6500"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9c396775-a248-456b-aab4-9fa1953a8f7a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-36eb3b51-e5dd-2780-3476-593eda82fe3e/test-blob-ee7032e4-7340-4a5f-990c-3aa82604192e

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
etag: "0x1C8315F5424CCA0"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 29be00db-ff5b-493c-8414-24ffb5ac0f1c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-36eb3b51-e5dd-2780-3476-593eda82fe3e/test-blob-ee7032e4-7340-4a5f-990c-3aa82604192e?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 74d29e3b-793c-2f75-9e0b-68fdd4e7807d
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C8315F5424CCA0"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-lease-id: 74d29e3b-793c-2f75-9e0b-68fdd4e7807d
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 294553e0-8401-4586-9f86-8d73998c317d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: GET /devstoreaccount1/test-container-36eb3b51-e5dd-2780-3476-593eda82fe3e/test-blob-ee7032e4-7340-4a5f-990c-3aa82604192e?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_21
x-ms-lease-id: 484efed0-b466-5cda-8f3b-3d85f9dca391
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
x-ms-request-id: 684b4e17-03ac-4c50-9bbb-368952357283
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:54 GMT
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

## Interaction 21: DELETE /devstoreaccount1/test-container-36eb3b51-e5dd-2780-3476-593eda82fe3e?restype=container

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
x-ms-request-id: 6faf096a-24ef-4421-8d31-a3e8d548414d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

