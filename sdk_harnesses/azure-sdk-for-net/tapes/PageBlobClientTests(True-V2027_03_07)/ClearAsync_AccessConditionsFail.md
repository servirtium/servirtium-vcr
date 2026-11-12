## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8397ec28-30af-bb6a-5cfa-cb3648070d1c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).ClearAsync_AccessConditionsFail
now: 2026-11-12T00:51:43.0663449+00:00

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
etag: "0x2557F7E27E07B40"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 84c3922f-436b-4d52-b3cd-69b4ed7670a0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8397ec28-30af-bb6a-5cfa-cb3648070d1c/test-blob-6d134344-0c53-f69c-b986-28c0873a43a8

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
etag: "0x27D0E49CC991D20"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9ca43132-454b-4147-9675-70f9cce2aef4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-8397ec28-30af-bb6a-5cfa-cb3648070d1c/test-blob-6d134344-0c53-f69c-b986-28c0873a43a8?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:51:43 GMT
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
x-ms-request-id: 5f9c3ca3-f734-4294-9982-9179e94eb083
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:43 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-8397ec28-30af-bb6a-5cfa-cb3648070d1c?restype=container

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
x-ms-request-id: 188b698f-64fa-485f-839b-2d2669221842
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-690a007e-4cf2-4d47-7e2b-9169fc4139c9?restype=container

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
etag: "0x2084016C5E7C600"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2c3afc6f-513c-4037-8602-d416914f314d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-690a007e-4cf2-4d47-7e2b-9169fc4139c9/test-blob-a4f5a177-9961-1bad-50a0-c92908a93421

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
etag: "0x24F1F7470FA9D40"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0d4b6646-8c10-4404-b8f7-fcca56b02ad0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-690a007e-4cf2-4d47-7e2b-9169fc4139c9/test-blob-a4f5a177-9961-1bad-50a0-c92908a93421?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:51:43 GMT
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
x-ms-request-id: b8ad1158-c76f-4f3e-bc61-71e29cbe879b
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:43 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-690a007e-4cf2-4d47-7e2b-9169fc4139c9?restype=container

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
x-ms-request-id: 9bc13b42-ecad-42ca-b816-468ee565a924
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-47b822b7-a4fd-f82a-fcc5-ef287b32fa78?restype=container

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
etag: "0x21D5D660DD8B400"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b09dc70d-2f25-4ed1-a77e-fdaead919d8d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-47b822b7-a4fd-f82a-fcc5-ef287b32fa78/test-blob-e5485e4d-9e45-e447-52ee-1851821d45d4

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
etag: "0x27B84F7961E38C0"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 36628f49-ea45-4653-9a45-9e6a40efa6b6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-47b822b7-a4fd-f82a-fcc5-ef287b32fa78/test-blob-e5485e4d-9e45-e447-52ee-1851821d45d4?comp=page

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
x-ms-request-id: 8cdf90e4-d9a2-4033-b6a4-2bb4f60bdce8
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:43 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-47b822b7-a4fd-f82a-fcc5-ef287b32fa78?restype=container

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
x-ms-request-id: 6cfee699-d45a-4058-a8ba-ee504a788411
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-d9b16ff6-f188-d3cc-77fc-a89caa85a01d?restype=container

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
etag: "0x21302F81197FBC0"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 01138eb4-f9ab-4a5f-bd79-2961672fc670
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-d9b16ff6-f188-d3cc-77fc-a89caa85a01d/test-blob-a9dc51a6-4e60-19dc-dbd3-f50e8bd976de

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
etag: "0x2038EE8B60664C0"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 55413cee-0214-4209-addc-8abb1adbf6f0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-d9b16ff6-f188-d3cc-77fc-a89caa85a01d/test-blob-a9dc51a6-4e60-19dc-dbd3-f50e8bd976de

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
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2038EE8B60664C0"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 876560a5-3270-4243-93fe-5e8cb0422051
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-d9b16ff6-f188-d3cc-77fc-a89caa85a01d/test-blob-a9dc51a6-4e60-19dc-dbd3-f50e8bd976de?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x2038EE8B60664C0"
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
x-ms-request-id: c814c690-108e-4608-b841-1204f43b79ac
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:43 GMT
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

## Interaction 16: DELETE /devstoreaccount1/test-container-d9b16ff6-f188-d3cc-77fc-a89caa85a01d?restype=container

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
x-ms-request-id: 09aff867-3003-4e05-8b44-7977958d2331
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-0b311a80-2080-5cef-9275-6e48f5aa3acd?restype=container

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
etag: "0x262208F5AE8F560"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1df60a30-8c94-45f0-bf4f-b98b4507d977
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-0b311a80-2080-5cef-9275-6e48f5aa3acd/test-blob-30aafb4e-9b41-a873-9398-fdb5fbbd489e

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
etag: "0x1E591CD715EE960"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9bcb2ffd-c211-4d55-b8a6-c5604b700975
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-0b311a80-2080-5cef-9275-6e48f5aa3acd/test-blob-30aafb4e-9b41-a873-9398-fdb5fbbd489e?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 8f1bca85-9453-869c-6280-17ebdf932430
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E591CD715EE960"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-lease-id: 8f1bca85-9453-869c-6280-17ebdf932430
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e59ca7a5-0e3f-4405-89de-c864274d91fa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: PUT /devstoreaccount1/test-container-0b311a80-2080-5cef-9275-6e48f5aa3acd/test-blob-30aafb4e-9b41-a873-9398-fdb5fbbd489e?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
x-ms-lease-id: eee6e87e-c764-8177-d185-bd3ae8750601
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
x-ms-request-id: 4d6b7fee-ce61-4378-a7f6-7015d2661cf5
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:43 GMT
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

## Interaction 21: DELETE /devstoreaccount1/test-container-0b311a80-2080-5cef-9275-6e48f5aa3acd?restype=container

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
x-ms-request-id: 99df6f5d-e7f9-479e-ac5c-4aa8b0de4f01
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-8fc02798-462e-e59d-a789-78e8233960d4?restype=container

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
etag: "0x1D9C1A2DD656F30"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 68ae0648-8471-4a9e-9330-42a1509098bf
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-8fc02798-462e-e59d-a789-78e8233960d4/test-blob-2bc2d02c-ab8f-b97a-5e24-cdc18487c8ff

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
etag: "0x25FA5B27D093E20"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7ad7c3ee-4afd-4f83-b50c-5c6813b5df10
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-8fc02798-462e-e59d-a789-78e8233960d4/test-blob-2bc2d02c-ab8f-b97a-5e24-cdc18487c8ff?comp=page

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
x-ms-request-id: 3f08103f-c6ed-4142-b805-0515eddcfeb2
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:43 GMT
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

## Interaction 25: DELETE /devstoreaccount1/test-container-8fc02798-462e-e59d-a789-78e8233960d4?restype=container

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
x-ms-request-id: bc333686-2895-4ffc-a258-f0b010c0bce2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-d31ccc74-b8fd-3f6f-2c36-e7ca1cb46328?restype=container

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
etag: "0x25404DC28F98C60"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 29dfa034-9864-480f-a44c-d06a3aaf2de4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-d31ccc74-b8fd-3f6f-2c36-e7ca1cb46328/test-blob-0fbf421f-f8d0-eda1-ad07-310a78dc601f

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
etag: "0x2636D7EE7ED3A20"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a4b92d81-4224-4670-9a82-679ecd612ba6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-d31ccc74-b8fd-3f6f-2c36-e7ca1cb46328/test-blob-0fbf421f-f8d0-eda1-ad07-310a78dc601f?comp=page

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
x-ms-request-id: e3077c3e-0430-4e56-ae15-21325413737f
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:43 GMT
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

## Interaction 29: DELETE /devstoreaccount1/test-container-d31ccc74-b8fd-3f6f-2c36-e7ca1cb46328?restype=container

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
x-ms-request-id: 174413c0-d409-427f-8137-fc515b491437
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 30: PUT /devstoreaccount1/test-container-567478c0-8c1d-73d7-6183-fe59c3af9ca9?restype=container

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
etag: "0x258802EC425FD40"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 92bf6576-0606-40a1-ae0e-38cf00881038
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 31: PUT /devstoreaccount1/test-container-567478c0-8c1d-73d7-6183-fe59c3af9ca9/test-blob-42a1a5c1-b9c8-7b2e-2b2f-26f58665c650

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
etag: "0x2652FF02DF9FDE0"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8eaab9c4-f170-48e5-9ed8-af92481db13e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 32: PUT /devstoreaccount1/test-container-567478c0-8c1d-73d7-6183-fe59c3af9ca9/test-blob-42a1a5c1-b9c8-7b2e-2b2f-26f58665c650?comp=page

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
x-ms-request-id: a164adac-2c0f-4151-8148-9d53f56a2f37
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:43 GMT
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

## Interaction 33: DELETE /devstoreaccount1/test-container-567478c0-8c1d-73d7-6183-fe59c3af9ca9?restype=container

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
x-ms-request-id: 35b4b0ae-f125-42e2-b5fa-66385e40e1aa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

