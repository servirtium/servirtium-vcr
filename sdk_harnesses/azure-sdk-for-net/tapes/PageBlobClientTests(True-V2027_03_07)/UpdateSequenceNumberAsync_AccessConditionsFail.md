## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-bd879ee6-4a03-da6a-d6e2-b8206d1b5c3a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).UpdateSequenceNumberAsync_AccessConditionsFail
now: 2026-11-12T00:52:00.2237912+00:00

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
etag: "0x23F01AA107A4920"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4b69c2b4-6580-4663-a2a6-b58ab45b210a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-bd879ee6-4a03-da6a-d6e2-b8206d1b5c3a/test-blob-ee726030-4e8a-7b59-89dc-4314ae272dac

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
etag: "0x249524D3F05A5A0"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0db646c6-b120-4cea-b5b5-cf5f5c735374
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-bd879ee6-4a03-da6a-d6e2-b8206d1b5c3a/test-blob-ee726030-4e8a-7b59-89dc-4314ae272dac?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:52:00 GMT
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
x-ms-request-id: 360a9dff-f20d-4c0c-9f8b-b4f4853075e2
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:00 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-bd879ee6-4a03-da6a-d6e2-b8206d1b5c3a?restype=container

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
x-ms-request-id: 63fb8e1a-2fe9-4c78-8516-dd10444cffe6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-45ca97bf-e8f7-42b3-9eea-b9041fa13cd0?restype=container

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
etag: "0x1F62BA16C41B060"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 842b5190-9365-4bc7-a4af-8c17366efaaf
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-45ca97bf-e8f7-42b3-9eea-b9041fa13cd0/test-blob-a703e218-fb4c-987d-450b-332607552baf

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
etag: "0x20B665125E2BFA0"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 831026e2-f45a-4c3a-8d72-6c33bbb864d7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-45ca97bf-e8f7-42b3-9eea-b9041fa13cd0/test-blob-a703e218-fb4c-987d-450b-332607552baf?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:52:00 GMT
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
x-ms-request-id: 5a39e091-ac9d-43e5-8f83-e13d2d35d81d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:00 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-45ca97bf-e8f7-42b3-9eea-b9041fa13cd0?restype=container

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
x-ms-request-id: 72c2c5ed-28d0-4d88-ad0c-12b03092122d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-d5610cb4-1651-4743-ac2f-50a095545ce8?restype=container

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
etag: "0x24ECDDAB9D28CA0"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c0fbc1ff-2727-4ebc-847a-61d8737c57e7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-d5610cb4-1651-4743-ac2f-50a095545ce8/test-blob-ccfb72a0-8523-c45f-1a32-00ebb48d3b48

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
etag: "0x239E808B0BAB440"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3f11427c-93ed-45cd-9a75-8ac0d26d8598
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-d5610cb4-1651-4743-ac2f-50a095545ce8/test-blob-ccfb72a0-8523-c45f-1a32-00ebb48d3b48?comp=properties

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
x-ms-request-id: f3e67577-21fd-44c5-8462-b8f99a149f37
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:00 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-d5610cb4-1651-4743-ac2f-50a095545ce8?restype=container

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
x-ms-request-id: 23ededd3-385c-4091-b02e-749e3a1d13b4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-135009be-663f-017f-9ebb-fa1caadc02f0?restype=container

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
etag: "0x21FFF6E80EEF900"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 21149697-affa-4a7d-afe6-3ef3179b02e4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-135009be-663f-017f-9ebb-fa1caadc02f0/test-blob-94864baf-5f5a-2f8c-ac9c-bb1f1658931f

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
etag: "0x1D5689663844240"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 78b657f7-a095-46ba-baf5-e2e1f4672d4c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-135009be-663f-017f-9ebb-fa1caadc02f0/test-blob-94864baf-5f5a-2f8c-ac9c-bb1f1658931f

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
etag: "0x1D5689663844240"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 72b98c7f-d72b-4b2f-839e-0bbea782c651
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-135009be-663f-017f-9ebb-fa1caadc02f0/test-blob-94864baf-5f5a-2f8c-ac9c-bb1f1658931f?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x1D5689663844240"
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
x-ms-request-id: 6f5ff7ea-5ebe-46f5-b91b-488006d737dc
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:00 GMT
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

## Interaction 16: DELETE /devstoreaccount1/test-container-135009be-663f-017f-9ebb-fa1caadc02f0?restype=container

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
x-ms-request-id: 2d5492bf-31cd-4915-931e-521b5fe6e05d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-8be107f4-4804-39a8-f3f9-2d678a43193d?restype=container

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
etag: "0x272E18EA7E9B640"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: af25b419-6004-4dcf-b0c9-933c844822f8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-8be107f4-4804-39a8-f3f9-2d678a43193d/test-blob-693b0f2f-a606-5fee-7d20-66a3ab60eb46

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
etag: "0x215312097108B80"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 578cc042-d3e6-4892-80e4-a7a6404edda7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-8be107f4-4804-39a8-f3f9-2d678a43193d/test-blob-693b0f2f-a606-5fee-7d20-66a3ab60eb46?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: a227db28-77fb-66ec-a24c-a0603224a469
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x215312097108B80"
last-modified: Thu, 12 Nov 2026 00:52:00 GMT
x-ms-lease-id: a227db28-77fb-66ec-a24c-a0603224a469
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2fbfd711-8d47-4ecc-a78a-34bf71bfc79f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: PUT /devstoreaccount1/test-container-8be107f4-4804-39a8-f3f9-2d678a43193d/test-blob-693b0f2f-a606-5fee-7d20-66a3ab60eb46?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
x-ms-blob-sequence-number: 5
x-ms-lease-id: 90c4088c-d8e7-a9c1-ec75-1d3407bee908
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
x-ms-request-id: dad16b35-1e91-4b4e-880c-09834ce19de9
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:00 GMT
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

## Interaction 21: DELETE /devstoreaccount1/test-container-8be107f4-4804-39a8-f3f9-2d678a43193d?restype=container

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
x-ms-request-id: 6b6e5780-e9fa-4962-8ab6-d9db4c594220
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

