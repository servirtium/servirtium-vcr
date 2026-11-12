## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-84e06d3a-9c9b-7eb1-e5ae-0005ed9b384c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).GetPageRangesPageableAsync_AccessConditionsFail
now: 2026-11-12T00:51:26.2319383+00:00

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
etag: "0x1E65C2C8E0EA940"
last-modified: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e56747e1-3fcd-428c-bdf3-2ae338aa91fb
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:26 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-84e06d3a-9c9b-7eb1-e5ae-0005ed9b384c/test-blob-f15756f5-0cfc-442b-0b68-e260a6701af4

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
etag: "0x26F976C313F9700"
last-modified: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 81a77a3e-09f8-4bc0-bc96-602805856a28
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-84e06d3a-9c9b-7eb1-e5ae-0005ed9b384c/test-blob-f15756f5-0cfc-442b-0b68-e260a6701af4?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:51:26 GMT
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
x-ms-request-id: 57366ffc-320b-40d2-9bc5-df3c6f659f6e
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:26 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-84e06d3a-9c9b-7eb1-e5ae-0005ed9b384c?restype=container

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
x-ms-request-id: 58c302ca-0d14-4cff-bcab-603105ed4f89
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-bf26f336-5766-255f-8a75-2c2fb5e526bc?restype=container

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
etag: "0x22959A0F0021760"
last-modified: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 21b9a37c-8135-4daf-8443-c5f88b1c6cd3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:26 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-bf26f336-5766-255f-8a75-2c2fb5e526bc/test-blob-3f0a91b6-07e0-2eb1-429b-7933ba51d775

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
etag: "0x244B1707A34B780"
last-modified: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2f4d7747-2346-4b54-84cf-d95f963ed6f1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-bf26f336-5766-255f-8a75-2c2fb5e526bc/test-blob-3f0a91b6-07e0-2eb1-429b-7933ba51d775?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:51:26 GMT
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
x-ms-request-id: be8a0f5b-3c7d-4b04-b8a0-5c92dd903aec
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:26 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-bf26f336-5766-255f-8a75-2c2fb5e526bc?restype=container

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
x-ms-request-id: dd2f41d2-38f8-4e69-82ac-005e2302d9ac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-f9ce0c94-7874-9de6-f732-6687e0fb8f25?restype=container

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
etag: "0x25F6E34DAD37A60"
last-modified: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6502dce3-5423-4057-b554-e18f8e56f135
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:26 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-f9ce0c94-7874-9de6-f732-6687e0fb8f25/test-blob-15aa2541-da66-2f13-42f7-7dcbde2b6b38

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
etag: "0x1DE7AF9A3EB1CF0"
last-modified: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1dff033b-5abe-4e09-a927-24c298097f7b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-f9ce0c94-7874-9de6-f732-6687e0fb8f25/test-blob-15aa2541-da66-2f13-42f7-7dcbde2b6b38?comp=pagelist

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
x-ms-request-id: 183ff53e-1e7c-4ec5-a873-302e5be56814
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:26 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-f9ce0c94-7874-9de6-f732-6687e0fb8f25?restype=container

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
x-ms-request-id: 35521979-1a5b-4248-bf87-1ae82560662c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-a89bb69d-2d17-3d47-aa6c-48aea0294e46?restype=container

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
etag: "0x27078A4D453B740"
last-modified: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 16ae8de9-eb7d-4235-8a6e-2a1942727e50
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:26 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-a89bb69d-2d17-3d47-aa6c-48aea0294e46/test-blob-94f2530b-c1a7-b90e-f99f-b77cfa1bbfcc

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
etag: "0x22B5D5A47656C20"
last-modified: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 36636944-364e-4c5a-ac11-65d0b8716136
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-a89bb69d-2d17-3d47-aa6c-48aea0294e46/test-blob-94f2530b-c1a7-b90e-f99f-b77cfa1bbfcc

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
last-modified: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x22B5D5A47656C20"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4cf5224b-d03f-4e7f-9d55-54c3687437ae
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: GET /devstoreaccount1/test-container-a89bb69d-2d17-3d47-aa6c-48aea0294e46/test-blob-94f2530b-c1a7-b90e-f99f-b77cfa1bbfcc?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x22B5D5A47656C20"
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
x-ms-request-id: c4efb00e-19e0-4734-b71b-53ecc2b2a74e
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:26 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-a89bb69d-2d17-3d47-aa6c-48aea0294e46?restype=container

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
x-ms-request-id: cdeb37f2-ea87-4e80-9572-18128393805b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-29ea2dc6-e660-140e-dd6c-6af992648e19?restype=container

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
etag: "0x221D2311E10AC20"
last-modified: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b17278f4-2d61-4fc7-b88f-50d311c84c87
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:26 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-29ea2dc6-e660-140e-dd6c-6af992648e19/test-blob-8abf37a9-d638-db91-a8e1-af7875ca438f

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
etag: "0x23453FF7C460D40"
last-modified: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9205a490-8e89-49de-b463-8fd5db7e769e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-29ea2dc6-e660-140e-dd6c-6af992648e19/test-blob-8abf37a9-d638-db91-a8e1-af7875ca438f?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 72e77bad-253e-24e5-45de-b63b57152794
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23453FF7C460D40"
last-modified: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-lease-id: 72e77bad-253e-24e5-45de-b63b57152794
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2b42d543-9710-4067-9b71-6a3f009772fe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: GET /devstoreaccount1/test-container-29ea2dc6-e660-140e-dd6c-6af992648e19/test-blob-8abf37a9-d638-db91-a8e1-af7875ca438f?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_21
x-ms-lease-id: 11f33cc2-b6de-14ea-57ee-ddff9638f8ae
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
x-ms-request-id: 78c8eb64-9cc0-47d3-9992-e3e484d9e79c
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:26 GMT
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

## Interaction 21: DELETE /devstoreaccount1/test-container-29ea2dc6-e660-140e-dd6c-6af992648e19?restype=container

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
x-ms-request-id: a61760dc-9ac6-473f-b1b0-7748bc75fb43
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

