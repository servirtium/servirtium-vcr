## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5587e40e-ac4d-6b75-5e56-c629a5d77595?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).ResizeAsync_AccessConditionsFail
now: 2026-11-12T00:51:28.3774895+00:00

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
etag: "0x1FDA11CD7556080"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 79e4d80d-d029-40cc-b719-4e6c56a7fd1d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5587e40e-ac4d-6b75-5e56-c629a5d77595/test-blob-411e32ea-9ca1-7e14-0516-365320ae7b7d

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
etag: "0x2522D3324A24060"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a419a42d-970f-486d-b5c2-9c729cbc2bd2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-5587e40e-ac4d-6b75-5e56-c629a5d77595/test-blob-411e32ea-9ca1-7e14-0516-365320ae7b7d?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:51:28 GMT
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
x-ms-request-id: 75ef65af-1f20-4990-83b3-c1c768f443ad
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:28 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-5587e40e-ac4d-6b75-5e56-c629a5d77595?restype=container

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
x-ms-request-id: 78d87d2e-acec-4403-9e0d-80c0757b7336
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-ca3aec69-2864-7718-9125-d426702766ac?restype=container

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
etag: "0x1D15272F1CD5FF0"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 07b8c18c-f33f-467f-add5-3ed486f1c48c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-ca3aec69-2864-7718-9125-d426702766ac/test-blob-bfcbcd8a-db8f-71ae-d008-4f3675214aaf

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
etag: "0x25EA233B03F4B60"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6c3c093f-63b3-4840-a657-72866618dfb3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-ca3aec69-2864-7718-9125-d426702766ac/test-blob-bfcbcd8a-db8f-71ae-d008-4f3675214aaf?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:51:28 GMT
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
x-ms-request-id: fe33c232-4c78-4ebb-85ff-ba5b2ba48522
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:28 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-ca3aec69-2864-7718-9125-d426702766ac?restype=container

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
x-ms-request-id: 744b0f6d-5fdf-441f-8e78-e4b747d491e4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-b8bf48db-ab9c-c231-1aa6-b07cc8ed0dde?restype=container

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
etag: "0x2757EB0A091EAC0"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 93d7a698-699e-4cbe-b541-3b8858bcb8eb
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-b8bf48db-ab9c-c231-1aa6-b07cc8ed0dde/test-blob-52c88ab0-bbe3-8eed-3ec8-fa5cd8e1026f

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
etag: "0x1FE80B3AD2A5670"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fd18601b-1184-490d-84f8-54aa07a6ac1a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-b8bf48db-ab9c-c231-1aa6-b07cc8ed0dde/test-blob-52c88ab0-bbe3-8eed-3ec8-fa5cd8e1026f?comp=properties

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
x-ms-request-id: 5b7bbaaa-f263-49d0-a60d-84cb0ad8a344
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:28 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-b8bf48db-ab9c-c231-1aa6-b07cc8ed0dde?restype=container

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
x-ms-request-id: f7d52be3-e085-42a8-80ec-cd87f4d6430b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-284b24da-ae67-df0f-9c08-a5e92a32a9e2?restype=container

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
etag: "0x1FEF7D73396CE50"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d30b0b07-f754-49b0-bbd1-141245ddb42f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-284b24da-ae67-df0f-9c08-a5e92a32a9e2/test-blob-eb8670fa-f858-1fcc-5b30-79d4b1d4e939

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
etag: "0x1F234802CACF1D0"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4091725f-954d-43aa-9854-6e4f6bae0e1c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-284b24da-ae67-df0f-9c08-a5e92a32a9e2/test-blob-eb8670fa-f858-1fcc-5b30-79d4b1d4e939

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
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x1F234802CACF1D0"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 583eeae7-0f8c-47c6-ac42-4fbb9fb5d367
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-284b24da-ae67-df0f-9c08-a5e92a32a9e2/test-blob-eb8670fa-f858-1fcc-5b30-79d4b1d4e939?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x1F234802CACF1D0"
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
x-ms-request-id: aedfd1b1-b9ba-4253-85c7-927cc1ed7e66
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:28 GMT
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

## Interaction 16: DELETE /devstoreaccount1/test-container-284b24da-ae67-df0f-9c08-a5e92a32a9e2?restype=container

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
x-ms-request-id: d6ec8de1-751d-4994-89a9-2e5da3b9b898
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-a3a240a4-e5a1-0276-7be9-b5da1603630b?restype=container

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
etag: "0x21C0ED469A83580"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d228e9d0-712f-4dbc-a88a-a21663c1ab83
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-a3a240a4-e5a1-0276-7be9-b5da1603630b/test-blob-6862171e-165b-e217-582c-cc36343a2ec8

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
etag: "0x20EB6F96E107C40"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6c67510e-d6d0-4a57-a479-c62b76d19af0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-a3a240a4-e5a1-0276-7be9-b5da1603630b/test-blob-6862171e-165b-e217-582c-cc36343a2ec8?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: ea446c1f-0690-1440-f984-706f42f10957
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20EB6F96E107C40"
last-modified: Thu, 12 Nov 2026 00:51:28 GMT
x-ms-lease-id: ea446c1f-0690-1440-f984-706f42f10957
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 26cb3d19-ffb9-453c-8c18-8d6367d44089
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: PUT /devstoreaccount1/test-container-a3a240a4-e5a1-0276-7be9-b5da1603630b/test-blob-6862171e-165b-e217-582c-cc36343a2ec8?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
x-ms-blob-content-length: 8192
x-ms-lease-id: 33900724-367d-0b50-8300-63b5f2ae1d4f
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
x-ms-request-id: 9683ba4f-a3f4-44cb-baa6-c38fa4d0a582
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:28 GMT
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

## Interaction 21: DELETE /devstoreaccount1/test-container-a3a240a4-e5a1-0276-7be9-b5da1603630b?restype=container

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
x-ms-request-id: 0282ee0a-5ee2-4867-aaae-62a36da26bf4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

