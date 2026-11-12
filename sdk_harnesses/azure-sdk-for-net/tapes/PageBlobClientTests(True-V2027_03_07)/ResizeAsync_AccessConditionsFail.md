## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d1a8f2ae-8982-64b3-993b-4b1cf7ffac78?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).ResizeAsync_AccessConditionsFail
now: 2026-11-12T00:51:58.0344922+00:00

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
etag: "0x1F6D8A05D481BA0"
last-modified: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3b410331-137f-4880-8b46-1d08f1f450a7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d1a8f2ae-8982-64b3-993b-4b1cf7ffac78/test-blob-5d9b3b7a-9f37-455a-d7e8-a46ddbeb7c1f

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
etag: "0x1DF799343835B30"
last-modified: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 43b625a8-1179-4dc9-a16e-cd3a3033cac6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-d1a8f2ae-8982-64b3-993b-4b1cf7ffac78/test-blob-5d9b3b7a-9f37-455a-d7e8-a46ddbeb7c1f?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:51:58 GMT
x-ms-blob-content-length: 8192
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
x-ms-request-id: 75f18671-f8be-4b47-af55-a152ea520b04
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:58 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-d1a8f2ae-8982-64b3-993b-4b1cf7ffac78?restype=container

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
x-ms-request-id: 4a475cbb-f227-4a2b-9021-deb6171893bc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-cbb1522e-eabc-a134-4f9e-2619c62f774e?restype=container

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
etag: "0x20328177BD40880"
last-modified: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 360dd263-af39-42c5-af7f-66b4970bfd7e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-cbb1522e-eabc-a134-4f9e-2619c62f774e/test-blob-e59bb84a-9504-0e33-9763-fa9ae44689ad

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
etag: "0x1F2D7B4E2B58F70"
last-modified: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fa9ae7af-df14-4543-a80d-37a07bc0dddf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-cbb1522e-eabc-a134-4f9e-2619c62f774e/test-blob-e59bb84a-9504-0e33-9763-fa9ae44689ad?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:51:58 GMT
x-ms-blob-content-length: 8192
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
x-ms-request-id: 0e74b3e4-0027-409f-8132-4ef81a715eaa
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:58 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-cbb1522e-eabc-a134-4f9e-2619c62f774e?restype=container

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
x-ms-request-id: 887c5219-56f3-4e1b-bfde-876e941666e3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-a4ee2bbe-e14e-8fbb-06f9-0e9879417fa7?restype=container

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
etag: "0x25D863AD8C38600"
last-modified: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 746e394f-a9ee-4882-aac7-2e93c34d151b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-a4ee2bbe-e14e-8fbb-06f9-0e9879417fa7/test-blob-23225570-9750-981b-1ea2-3359f09abd08

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
etag: "0x1FC696544027D20"
last-modified: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a405d561-41fb-48c1-99ba-8f106a2e08e7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-a4ee2bbe-e14e-8fbb-06f9-0e9879417fa7/test-blob-23225570-9750-981b-1ea2-3359f09abd08?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Match: "garbage"
x-ms-blob-content-length: 8192
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
x-ms-request-id: fced5b87-84cb-43f7-9707-174c9d7f8398
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:58 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-a4ee2bbe-e14e-8fbb-06f9-0e9879417fa7?restype=container

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
x-ms-request-id: bfa8db3b-e658-4ec7-86f7-62acdc6a20c1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-9a5b7815-d240-6900-fc0b-de0a869a9456?restype=container

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
etag: "0x1DB4C97238F90A0"
last-modified: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f9d92fd9-6b81-43fe-a2a6-9487290c215d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-9a5b7815-d240-6900-fc0b-de0a869a9456/test-blob-8e2952e4-6524-275d-1055-86abad619f6c

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
etag: "0x2715EC39905F6C0"
last-modified: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fcba429e-475c-4bbd-b844-5f5e1a892373
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-9a5b7815-d240-6900-fc0b-de0a869a9456/test-blob-8e2952e4-6524-275d-1055-86abad619f6c

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
last-modified: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x2715EC39905F6C0"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4ec661c6-98a7-4254-8bcd-26fe348c6b0d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:58 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-9a5b7815-d240-6900-fc0b-de0a869a9456/test-blob-8e2952e4-6524-275d-1055-86abad619f6c?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x2715EC39905F6C0"
x-ms-blob-content-length: 8192
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
x-ms-request-id: 582306ff-3d43-4d23-97ad-82080d5f1909
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:58 GMT
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

## Interaction 16: DELETE /devstoreaccount1/test-container-9a5b7815-d240-6900-fc0b-de0a869a9456?restype=container

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
x-ms-request-id: 4177ce7a-70cf-4e32-b3c9-761c088e9c10
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-0183063c-e4e6-9e66-55b8-2744b8101183?restype=container

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
etag: "0x20594442347DD80"
last-modified: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 36a8e4bc-fb7d-49b4-ab8e-2d6210d6c3a3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-0183063c-e4e6-9e66-55b8-2744b8101183/test-blob-9d75dc0d-2e70-afe4-1b34-8aeb4c54bb9a

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
etag: "0x24EB701747E1BE0"
last-modified: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: addfd8b2-e675-442b-a264-802eeb431249
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-0183063c-e4e6-9e66-55b8-2744b8101183/test-blob-9d75dc0d-2e70-afe4-1b34-8aeb4c54bb9a?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 80cd726c-9316-ff6f-eb8b-396b3e186eff
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24EB701747E1BE0"
last-modified: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-lease-id: 80cd726c-9316-ff6f-eb8b-396b3e186eff
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c96ad2b0-3cd1-464e-8c70-21c6539d62eb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: PUT /devstoreaccount1/test-container-0183063c-e4e6-9e66-55b8-2744b8101183/test-blob-9d75dc0d-2e70-afe4-1b34-8aeb4c54bb9a?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
x-ms-blob-content-length: 8192
x-ms-lease-id: bf03022b-1154-6e4b-4ef7-3015219ff36a
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
x-ms-request-id: ffab9291-fafc-4b16-a21e-95e4285c87ef
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:58 GMT
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

## Interaction 21: DELETE /devstoreaccount1/test-container-0183063c-e4e6-9e66-55b8-2744b8101183?restype=container

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
x-ms-request-id: d85e9501-3dca-430c-8b8b-3362ef480a97
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

