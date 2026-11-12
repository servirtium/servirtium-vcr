## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a07300e5-a645-30b2-264c-ec25128e7ce8?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).AppendBlockAsync_AccessConditionsFail
now: 2026-11-12T00:50:43.5064525+00:00

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
etag: "0x24CC53A53937AA0"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 84bc988b-a061-467f-958f-3333ef45eb6a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a07300e5-a645-30b2-264c-ec25128e7ce8/test-blob-cfbf780f-2015-083b-621b-571958881953

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
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
etag: "0x2472C4C6EC88F00"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c29bfcaa-5f4b-4910-8cda-413f00a3f7fc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-a07300e5-a645-30b2-264c-ec25128e7ce8/test-blob-cfbf780f-2015-083b-621b-571958881953?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
If-Modified-Since: Fri, 13 Nov 2026 00:50:43 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
tGcvWfYnkw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: d17341cf-0b4e-4f6c-bc33-8e0a91bf34eb
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:43 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-a07300e5-a645-30b2-264c-ec25128e7ce8?restype=container

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
x-ms-request-id: 35c20fe3-7b33-4ea6-89b7-ec187b1b3eae
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-7a3dfaac-9910-714f-6ca3-415df3cfb858?restype=container

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
etag: "0x21314EABB7269C0"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 99144409-102c-496a-bdf9-5c24da8e717b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-7a3dfaac-9910-714f-6ca3-415df3cfb858/test-blob-3e6ac5c4-4e2a-d799-9e32-9870aa5f23f2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
If-None-Match: *
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
etag: "0x213B197B2182F40"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a50b53b2-2d65-460f-a934-821d6650a128
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-7a3dfaac-9910-714f-6ca3-415df3cfb858/test-blob-3e6ac5c4-4e2a-d799-9e32-9870aa5f23f2?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
Content-Type: application/octet-stream
If-Unmodified-Since: Wed, 11 Nov 2026 00:50:43 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
5+US1dimKw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 9306af10-6fc8-49e1-8c12-d2765cfbb660
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:43 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-7a3dfaac-9910-714f-6ca3-415df3cfb858?restype=container

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
x-ms-request-id: 5fe233da-2e04-4f4d-86d0-18c6d84abacb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-eba9126e-1675-262b-83fb-0e6a938be869?restype=container

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
etag: "0x1DD0D655077F840"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 11a415c2-05a1-4a15-b37a-65eec614ca40
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-eba9126e-1675-262b-83fb-0e6a938be869/test-blob-dc65615e-00dd-c7de-0d7f-4f750dbce380

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
If-None-Match: *
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
etag: "0x21EA3CD37E0EB00"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bc147091-38a7-4d4e-b15a-e7f9909ab740
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-eba9126e-1675-262b-83fb-0e6a938be869/test-blob-dc65615e-00dd-c7de-0d7f-4f750dbce380?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
Content-Type: application/octet-stream
If-Match: "garbage"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Hpr8K4BjIw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 27111296-9bc7-4c23-9b46-6941f600a352
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:43 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-eba9126e-1675-262b-83fb-0e6a938be869?restype=container

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
x-ms-request-id: 2232d709-24fd-4515-b404-123886b0bb77
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-140c72c0-9c75-8ff4-66ff-7cb47472c94d?restype=container

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
etag: "0x26069895F70E940"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 41670eb7-9561-4037-9108-c0b98b5ebb81
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-140c72c0-9c75-8ff4-66ff-7cb47472c94d/test-blob-dde2346d-c7f5-18b5-c718-8d4bf98fbde8

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-None-Match: *
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
etag: "0x1FF4E55DB773820"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e873e100-f44c-4704-b688-5ba26796a6b7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-140c72c0-9c75-8ff4-66ff-7cb47472c94d/test-blob-dde2346d-c7f5-18b5-c718-8d4bf98fbde8

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
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x1FF4E55DB773820"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a48c7f5f-cd2e-47ef-838c-91c8ce713776
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-140c72c0-9c75-8ff4-66ff-7cb47472c94d/test-blob-dde2346d-c7f5-18b5-c718-8d4bf98fbde8?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
Content-Type: application/octet-stream
If-None-Match: "0x1FF4E55DB773820"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
+z2kadHsaQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 9298c1cc-6e59-445f-a7bb-9e3c171f6a41
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:43 GMT
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

## Interaction 16: DELETE /devstoreaccount1/test-container-140c72c0-9c75-8ff4-66ff-7cb47472c94d?restype=container

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
x-ms-request-id: ef4ca053-2f28-48c6-9894-f14a15ba9d31
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-e8f0182a-9176-6e08-0d54-4c8ef79e852d?restype=container

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
etag: "0x23987BCCC1F0C00"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 974a42aa-f05d-4456-a823-d82d7edb4c26
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-e8f0182a-9176-6e08-0d54-4c8ef79e852d/test-blob-4df3bdf9-0f5c-96a8-d741-94b936ce607c

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
If-None-Match: *
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
etag: "0x270CF2359B2C540"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3327f12b-8244-4a6c-881c-af9a81a618bf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-e8f0182a-9176-6e08-0d54-4c8ef79e852d/test-blob-4df3bdf9-0f5c-96a8-d741-94b936ce607c?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
Content-Type: application/octet-stream
x-ms-lease-id: a16dad52-855c-8474-fb20-2a6c6c8e886e
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
gcq3xQXfPg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseNotPresentWithBlobOperation
x-ms-request-id: 95a0aec2-d286-4ef6-8ee5-15bb11f72ff2
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:43 GMT
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

## Interaction 20: DELETE /devstoreaccount1/test-container-e8f0182a-9176-6e08-0d54-4c8ef79e852d?restype=container

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
x-ms-request-id: 39b52898-1f15-4642-a4f8-d046c440e57c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-7fa9bf87-acf7-c501-4976-0fababdd9e0c?restype=container

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
etag: "0x2048D80A8EDCA80"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f697ae67-65d9-425f-871d-6e923cbb191d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-7fa9bf87-acf7-c501-4976-0fababdd9e0c/test-blob-1159701b-fc34-374e-3ff4-d00c2ce7c028

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
If-None-Match: *
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
etag: "0x1F62518D0943C80"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f0784592-572a-4c45-bd4a-4dc05365db0c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-7fa9bf87-acf7-c501-4976-0fababdd9e0c/test-blob-1159701b-fc34-374e-3ff4-d00c2ce7c028?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
Content-Type: application/octet-stream
x-ms-blob-condition-appendpos: 1
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Gn5sjbOPsQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: AppendPositionConditionNotMet
x-ms-request-id: 72cb784b-57f0-46af-b8c5-ad85a6b7652a
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:43 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>AppendPositionConditionNotMet</Code>
  <Message>The append position condition specified was not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 24: DELETE /devstoreaccount1/test-container-7fa9bf87-acf7-c501-4976-0fababdd9e0c?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
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
x-ms-request-id: 958003f4-31e1-4318-9bff-24e352214e88
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 25: PUT /devstoreaccount1/test-container-4a7cd6ea-2743-b423-9fe3-be9c54acce09?restype=container

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
etag: "0x252BB2EED035D80"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 61d655d3-8b69-4e4f-bcd6-9584738b3ff0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-4a7cd6ea-2743-b423-9fe3-be9c54acce09/test-blob-4071708a-db03-98f4-62b5-e7902c701058

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_27
If-None-Match: *
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
etag: "0x25DBF58441AE180"
last-modified: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: acd92325-2858-4a1f-9a03-c0a1ae0bacf6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-4a7cd6ea-2743-b423-9fe3-be9c54acce09/test-blob-4071708a-db03-98f4-62b5-e7902c701058?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_28
Content-Type: application/octet-stream
x-ms-blob-condition-maxsize: 1
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
i75vOrixCw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: MaxBlobSizeConditionNotMet
x-ms-request-id: 6452fb1a-9981-4e28-9b42-8bc4ca8eda77
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:43 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>MaxBlobSizeConditionNotMet</Code>
  <Message>The max blob size condition specified was not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 28: DELETE /devstoreaccount1/test-container-4a7cd6ea-2743-b423-9fe3-be9c54acce09?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
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
x-ms-request-id: 7e2129ab-3f1d-46be-873a-bee2532be8d5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

