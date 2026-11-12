## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d4b736fb-1a6b-a851-0d5b-2b288fd5a6b8?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).CreateAsync_AccessConditionsFail
now: 2026-11-12T00:50:48.8040986+00:00

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
etag: "0x26422A5AE2EF800"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 393a8b5d-7426-46f2-bc6d-c559e58224f1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d4b736fb-1a6b-a851-0d5b-2b288fd5a6b8/test-blob-5df838b5-de28-fd2d-8d41-8cc5d64a586b

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
etag: "0x25E2B0F49737D40"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 11ff4e80-fc23-4454-9073-2618811b7a92
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-d4b736fb-1a6b-a851-0d5b-2b288fd5a6b8/test-blob-5df838b5-de28-fd2d-8d41-8cc5d64a586b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:50:48 GMT
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
x-ms-request-id: 2de60e59-2b75-4faa-ac02-0618a095950b
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:48 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-d4b736fb-1a6b-a851-0d5b-2b288fd5a6b8?restype=container

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
x-ms-request-id: b3c0853a-769a-4d24-9697-26adad31c994
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-a8d0bb69-3abe-c725-2380-5d2b95fa737e?restype=container

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
etag: "0x260CEB9313636A0"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c9e8ecd7-8671-4fc7-91da-df38e8dd27bf
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-a8d0bb69-3abe-c725-2380-5d2b95fa737e/test-blob-72e7eda4-d535-1c69-08b9-47298e8cd1c2

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
etag: "0x2307D8216A326C0"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 742c8ba6-4a74-47a1-a5c6-bf634407d26d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-a8d0bb69-3abe-c725-2380-5d2b95fa737e/test-blob-72e7eda4-d535-1c69-08b9-47298e8cd1c2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:50:48 GMT
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
x-ms-request-id: 8b065135-1b02-444e-8142-ac3589ff0895
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:48 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-a8d0bb69-3abe-c725-2380-5d2b95fa737e?restype=container

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
x-ms-request-id: 63147a24-42d5-4911-bd9f-986face96832
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-d4bfc003-fd04-7afa-1331-3aa881026792?restype=container

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
etag: "0x26CCC9631FC78A0"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f4b26073-c34e-4007-84c0-700027cfcad2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-d4bfc003-fd04-7afa-1331-3aa881026792/test-blob-e8200dce-e662-9435-51b4-a004f3fb3997

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
etag: "0x1CDB02F4D4BAC10"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3c27794b-8f8e-43c6-a0ec-ca3371f98297
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-d4bfc003-fd04-7afa-1331-3aa881026792/test-blob-e8200dce-e662-9435-51b4-a004f3fb3997

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
x-ms-request-id: 799989e2-da04-4216-a2d3-5c3589c2ba1a
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:48 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-d4bfc003-fd04-7afa-1331-3aa881026792?restype=container

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
x-ms-request-id: 4859766b-11a7-41dd-bdb8-ca6085b8e705
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-d5279aae-9e3b-a77a-f36d-5e039ac09a06?restype=container

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
etag: "0x1DCC8D9BBDA82C0"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2045bb69-b103-43b4-94b4-2773f8b55c1a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-d5279aae-9e3b-a77a-f36d-5e039ac09a06/test-blob-805ab552-e96b-1c60-8a2b-824f5cf68717

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
etag: "0x1EEF76C308DC160"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e5ca1edd-8536-4df2-8564-12381047ec3a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-d5279aae-9e3b-a77a-f36d-5e039ac09a06/test-blob-805ab552-e96b-1c60-8a2b-824f5cf68717

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
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x1EEF76C308DC160"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 28756835-082b-4079-b4a9-a8dee61c2d12
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-d5279aae-9e3b-a77a-f36d-5e039ac09a06/test-blob-805ab552-e96b-1c60-8a2b-824f5cf68717

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x1EEF76C308DC160"
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
x-ms-request-id: d0b2738b-1e06-4f28-9ac9-e7263373b558
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:48 GMT
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

## Interaction 16: DELETE /devstoreaccount1/test-container-d5279aae-9e3b-a77a-f36d-5e039ac09a06?restype=container

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
x-ms-request-id: bf8c8a29-b98b-4b9f-8d3e-27f8cf9c9019
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-e7f9a2f8-92da-3056-9379-f5f58731f990?restype=container

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
etag: "0x23586D16F28E440"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3160c1a3-16e9-44e8-ad23-8d6a66b6d392
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-e7f9a2f8-92da-3056-9379-f5f58731f990/test-blob-3eb29a1a-b9a1-c52c-390a-4b101b2a4afd

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
etag: "0x207A368C76A08E0"
last-modified: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bd6d67cb-18be-410c-b62e-0ef605459e4b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-e7f9a2f8-92da-3056-9379-f5f58731f990/test-blob-3eb29a1a-b9a1-c52c-390a-4b101b2a4afd

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-blob-type: AppendBlob
x-ms-lease-id: 6a2975e2-c186-0223-544a-a69daa2d3292
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
x-ms-request-id: 5cf4cada-68d8-4fa9-873c-175cb9aed8cb
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:48 GMT
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

## Interaction 20: DELETE /devstoreaccount1/test-container-e7f9a2f8-92da-3056-9379-f5f58731f990?restype=container

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
x-ms-request-id: ee0b753b-6b05-45ca-b88b-700844d93f36
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:48 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

