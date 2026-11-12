## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0bcbf0f1-ad74-a473-add5-104adeb800ea?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).UpdateSequenceNumberAsync_AccessConditionsFail
now: 2026-11-12T00:51:30.5573483+00:00

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
etag: "0x1D49E36776AF770"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8c1042c7-b28a-4c68-84b8-f4ffef485925
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0bcbf0f1-ad74-a473-add5-104adeb800ea/test-blob-7d92d6ed-fc4b-0121-3aa2-7ea9e94f6ecc

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
etag: "0x1C63AB400795030"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e1f0152f-6a9b-4e5d-92b1-b9364ff4c295
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-0bcbf0f1-ad74-a473-add5-104adeb800ea/test-blob-7d92d6ed-fc4b-0121-3aa2-7ea9e94f6ecc?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:51:30 GMT
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: e3be2f48-8ca5-443e-96f0-5074aab7ac43
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:30 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-0bcbf0f1-ad74-a473-add5-104adeb800ea?restype=container

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
x-ms-request-id: 02149aee-15fa-491c-8879-fe99f63d7282
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-5b3c9f76-0ade-1dc6-9980-5819e49f4ee0?restype=container

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
etag: "0x228491423A81C60"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4beeadf2-6064-4a96-8d76-6068a5f18f6c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-5b3c9f76-0ade-1dc6-9980-5819e49f4ee0/test-blob-f4412234-7b9e-f5cf-cfc9-d0d12ec9ba5d

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
etag: "0x2033525616ABC60"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3166c820-eafc-4d14-9035-d79d7cfed2db
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-5b3c9f76-0ade-1dc6-9980-5819e49f4ee0/test-blob-f4412234-7b9e-f5cf-cfc9-d0d12ec9ba5d?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:51:30 GMT
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: 1142d0c2-da27-4e59-9a30-a841a63b0025
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:30 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-5b3c9f76-0ade-1dc6-9980-5819e49f4ee0?restype=container

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
x-ms-request-id: 309ab4f7-6d72-4b60-bafb-a5be9cbbb20b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-3ed44366-a57b-e20b-1075-e4cba3081c9b?restype=container

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
etag: "0x1F2790BE2C8EDE0"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b1f2959c-f680-44ac-b72c-83c4644a9a46
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-3ed44366-a57b-e20b-1075-e4cba3081c9b/test-blob-c6759e54-790e-fa2e-d047-8c1439f4eecf

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
etag: "0x2135491E94387E0"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: db7a1817-3f81-474f-81b8-31c9f6f34016
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-3ed44366-a57b-e20b-1075-e4cba3081c9b/test-blob-c6759e54-790e-fa2e-d047-8c1439f4eecf?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Match: "garbage"
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: 3568ed52-8d2a-4fe2-af89-e3a4c3d0b369
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:30 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-3ed44366-a57b-e20b-1075-e4cba3081c9b?restype=container

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
x-ms-request-id: 8ff749d9-4c75-49a0-99e1-c5f15adbeacf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-a0b2fbc5-0fcb-8e64-165e-e428970451c7?restype=container

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
etag: "0x26B32F2E984DBE0"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 84c6d36e-f4d0-46e3-af97-e9e65adf57b6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-a0b2fbc5-0fcb-8e64-165e-e428970451c7/test-blob-907d35ac-f454-ec4f-15d9-6e3419f7a91c

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
etag: "0x1D30E5D0C3B4AE0"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1f114c59-fe27-4430-b463-04495e35d79b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-a0b2fbc5-0fcb-8e64-165e-e428970451c7/test-blob-907d35ac-f454-ec4f-15d9-6e3419f7a91c

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
etag: "0x1D30E5D0C3B4AE0"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8c464c3a-04aa-49cd-ae6e-c0825ee8acaa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-a0b2fbc5-0fcb-8e64-165e-e428970451c7/test-blob-907d35ac-f454-ec4f-15d9-6e3419f7a91c?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x1D30E5D0C3B4AE0"
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: 105f8e1a-68ef-4c6d-8e4c-d8a0861348f0
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:30 GMT
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

## Interaction 16: DELETE /devstoreaccount1/test-container-a0b2fbc5-0fcb-8e64-165e-e428970451c7?restype=container

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
x-ms-request-id: ad067474-554d-4788-ab21-93ee26d19e96
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-a8051487-7b55-44d0-39e6-afaf950563cc?restype=container

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
etag: "0x21D31552918B780"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ac72cfef-47e7-489f-b2ff-ae6d3ed643a6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-a8051487-7b55-44d0-39e6-afaf950563cc/test-blob-0468c5f5-5e76-d17b-abc5-8bf1a030751f

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
etag: "0x1CF4EB9A422E100"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8a808320-e66d-493f-ad2c-602683bc7ddd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-a8051487-7b55-44d0-39e6-afaf950563cc/test-blob-0468c5f5-5e76-d17b-abc5-8bf1a030751f?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 82a1c7b4-a9fe-3071-6539-566d449f570f
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CF4EB9A422E100"
last-modified: Thu, 12 Nov 2026 00:51:30 GMT
x-ms-lease-id: 82a1c7b4-a9fe-3071-6539-566d449f570f
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ec7cbf89-e041-4d39-ac1a-f42993c26be0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: PUT /devstoreaccount1/test-container-a8051487-7b55-44d0-39e6-afaf950563cc/test-blob-0468c5f5-5e76-d17b-abc5-8bf1a030751f?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
x-ms-blob-sequence-number: 5
x-ms-lease-id: 05240cca-f4ee-2ce9-9834-0d2ecb31f81a
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
x-ms-error-code: LeaseIdMismatchWithBlobOperation
x-ms-request-id: e718e046-aa17-4a47-b060-99441440e835
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:30 GMT
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

## Interaction 21: DELETE /devstoreaccount1/test-container-a8051487-7b55-44d0-39e6-afaf950563cc?restype=container

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
x-ms-request-id: 1fdbd869-d5f0-4d90-be5d-6102b9091e84
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

