## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a2d8e5d3-eee4-80cb-904b-271220b7ad4b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).GetPageRangesAsync_AccessConditionsFail
now: 2026-11-12T00:51:21.0542913+00:00

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
etag: "0x222BD34758F6C60"
last-modified: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4f99e7c1-3ca6-4245-b063-88e9df83435a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a2d8e5d3-eee4-80cb-904b-271220b7ad4b/test-blob-319cccc3-acf1-9153-93a6-90428860c14b

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
etag: "0x1CBC83522334D00"
last-modified: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c13f8647-d0e3-47e2-832f-ce45fc5b8c2c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-a2d8e5d3-eee4-80cb-904b-271220b7ad4b/test-blob-319cccc3-acf1-9153-93a6-90428860c14b?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:51:21 GMT
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
x-ms-request-id: e9d30eb5-5c30-49cf-97e7-5be29bbd9964
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:21 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-a2d8e5d3-eee4-80cb-904b-271220b7ad4b?restype=container

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
x-ms-request-id: 08b84daa-a910-4838-a293-abdb7a048ea2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:21 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-e61b04cd-879e-4cda-cf8b-b9139928f935?restype=container

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
etag: "0x22C7AF578F61400"
last-modified: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 849bb678-2358-4f63-840e-ff351827e03a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-e61b04cd-879e-4cda-cf8b-b9139928f935/test-blob-07e6dd32-74fa-2673-9147-0e3d5d88f82f

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
etag: "0x21264A8DFF660A0"
last-modified: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3934c2a9-b2ab-41ab-a54a-6927d07a7f4b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-e61b04cd-879e-4cda-cf8b-b9139928f935/test-blob-07e6dd32-74fa-2673-9147-0e3d5d88f82f?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:51:21 GMT
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
x-ms-request-id: ba9015de-5b0b-4863-955d-4ddb232bbde6
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:21 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-e61b04cd-879e-4cda-cf8b-b9139928f935?restype=container

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
x-ms-request-id: 9d99ecff-dc6e-43d8-b97f-9012381215d6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:21 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-1b45db8a-c69c-3bac-f150-6166f33ff86b?restype=container

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
etag: "0x1E64D7C3F7D6590"
last-modified: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c3d581ee-99e0-4a52-82ed-e66f760a788f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-1b45db8a-c69c-3bac-f150-6166f33ff86b/test-blob-ab105aad-b979-5950-90f5-5557789cee46

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
etag: "0x23B1796FE0C6980"
last-modified: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eb0631be-74fb-4215-ba2c-5360352cb6c5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-1b45db8a-c69c-3bac-f150-6166f33ff86b/test-blob-ab105aad-b979-5950-90f5-5557789cee46?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_11
If-Match: "garbage"
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
x-ms-request-id: c6fe9deb-c549-4e50-ab9f-70ca54ce5fd3
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:21 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-1b45db8a-c69c-3bac-f150-6166f33ff86b?restype=container

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
x-ms-request-id: d451af16-b759-46ad-a579-fdf92e6166fa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:21 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-bd898993-dde3-6c99-30ab-15aa120d3252?restype=container

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
etag: "0x1EE81EB0C932700"
last-modified: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a6c725fd-18e7-40b3-864b-305a5e92e88e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-bd898993-dde3-6c99-30ab-15aa120d3252/test-blob-0390a34e-4d78-d0b6-8aeb-8aa67154c255

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
etag: "0x2650A663EBD3360"
last-modified: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a2249d5e-f8f4-4613-a333-71d8ce7aa781
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-bd898993-dde3-6c99-30ab-15aa120d3252/test-blob-0390a34e-4d78-d0b6-8aeb-8aa67154c255

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
last-modified: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x2650A663EBD3360"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 718342e7-e74a-4a8b-b4f2-a944528b110a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:21 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: GET /devstoreaccount1/test-container-bd898993-dde3-6c99-30ab-15aa120d3252/test-blob-0390a34e-4d78-d0b6-8aeb-8aa67154c255?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x2650A663EBD3360"
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
x-ms-request-id: 306a8593-db67-49f5-8d0d-815e94021311
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:21 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-bd898993-dde3-6c99-30ab-15aa120d3252?restype=container

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
x-ms-request-id: 81ceb1a6-0d8b-439c-b7f1-b21b7a6ecade
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:21 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-6ad31a61-3ab5-d087-c0a3-7acea3a54683?restype=container

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
etag: "0x24CDDB629193F00"
last-modified: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e5e99439-2f0c-4369-8416-36ead7617f8d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-6ad31a61-3ab5-d087-c0a3-7acea3a54683/test-blob-d50802c2-eb0c-45ce-d2b9-32f752f3fbdb

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
etag: "0x24E156E4986E0C0"
last-modified: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 21de01f8-391f-40ca-b44b-ff3e8de93c20
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-6ad31a61-3ab5-d087-c0a3-7acea3a54683/test-blob-d50802c2-eb0c-45ce-d2b9-32f752f3fbdb?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: f749c0e8-c73a-149c-1bbf-43d5d2e72ce4
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24E156E4986E0C0"
last-modified: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-lease-id: f749c0e8-c73a-149c-1bbf-43d5d2e72ce4
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d67b680e-3ee4-4876-9041-83509f72e440
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: GET /devstoreaccount1/test-container-6ad31a61-3ab5-d087-c0a3-7acea3a54683/test-blob-d50802c2-eb0c-45ce-d2b9-32f752f3fbdb?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_21
x-ms-lease-id: 490b9b3b-c05f-193b-eddf-28a9d497a565
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
x-ms-request-id: 82d348b4-7ba0-452b-bdbb-a77990f2b7c2
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:21 GMT
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

## Interaction 21: DELETE /devstoreaccount1/test-container-6ad31a61-3ab5-d087-c0a3-7acea3a54683?restype=container

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
x-ms-request-id: 98a3c08b-4737-47cb-9c65-f76d45e6e75f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:21 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

