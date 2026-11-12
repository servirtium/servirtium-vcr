## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-212c21c4-2f54-ef74-3c6b-55e706916d16?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).GetPageRangesPageableAsync_AccessConditionsFail
now: 2026-11-12T00:51:56.0850045+00:00

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
etag: "0x26247BAE26CC280"
last-modified: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 871efe02-2beb-42c0-a740-660540954327
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-212c21c4-2f54-ef74-3c6b-55e706916d16/test-blob-700cd0be-2f8e-bdf9-b112-5a6284376fce

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
etag: "0x1E432EA4D7E7850"
last-modified: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 74b109e7-8a62-4c64-9950-5a5832b31746
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-212c21c4-2f54-ef74-3c6b-55e706916d16/test-blob-700cd0be-2f8e-bdf9-b112-5a6284376fce?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:51:56 GMT
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
x-ms-request-id: 1a39548a-ac2b-4eb0-9a63-9d4ea024b4a3
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:56 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-212c21c4-2f54-ef74-3c6b-55e706916d16?restype=container

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
x-ms-request-id: 6f2c260c-8495-475b-94d9-872887097ecf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:56 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-a5cb1fcb-8107-e96c-42f9-c0d65ab05880?restype=container

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
etag: "0x23B4F14FB261400"
last-modified: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5d847689-6cf5-4f90-90c9-c9a8015e90f6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-a5cb1fcb-8107-e96c-42f9-c0d65ab05880/test-blob-e5ca8ad2-fe44-95d4-286f-7041d5116b04

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
etag: "0x2087C79AEE5AC40"
last-modified: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e034b78a-60d8-41bd-b447-161e64b8f27c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-a5cb1fcb-8107-e96c-42f9-c0d65ab05880/test-blob-e5ca8ad2-fe44-95d4-286f-7041d5116b04?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:51:56 GMT
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
x-ms-request-id: 4cd592ed-2dc6-4ff9-b4cb-d62123976bb0
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:56 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-a5cb1fcb-8107-e96c-42f9-c0d65ab05880?restype=container

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
x-ms-request-id: 5b6f321c-9be7-49ce-b56e-309b615cdd1f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:56 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-e61b86fc-c7c5-3c0e-6423-2d946e226200?restype=container

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
etag: "0x1C8778CD41FF090"
last-modified: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eccb6c3d-64e9-44e2-8fe2-94ec67761a39
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-e61b86fc-c7c5-3c0e-6423-2d946e226200/test-blob-f990d9ba-896c-cd8a-4b36-7d97112a1331

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
etag: "0x27C9DADC87591C0"
last-modified: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d3397fa3-3dcc-48a2-bf01-0c4ed5ae733a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-e61b86fc-c7c5-3c0e-6423-2d946e226200/test-blob-f990d9ba-896c-cd8a-4b36-7d97112a1331?comp=pagelist

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
x-ms-request-id: c22c982d-d486-4b8a-910b-f485e3621906
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:56 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-e61b86fc-c7c5-3c0e-6423-2d946e226200?restype=container

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
x-ms-request-id: 0ad1d63d-6b56-452c-9a39-8e52f09bf21d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:56 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-d3dabc8e-7195-0abb-7c8d-8120d1402606?restype=container

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
etag: "0x23C28249C232880"
last-modified: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 66839fc2-78d3-42d9-b580-8ab4bbe43f62
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-d3dabc8e-7195-0abb-7c8d-8120d1402606/test-blob-fb876f0c-7180-7297-fb4d-9b8f4a762a39

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
etag: "0x252A113AAB22180"
last-modified: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 00209b10-dce8-4891-9020-17706ebe2c1d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-d3dabc8e-7195-0abb-7c8d-8120d1402606/test-blob-fb876f0c-7180-7297-fb4d-9b8f4a762a39

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
last-modified: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x252A113AAB22180"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 529d653c-b40b-43ed-a91a-263ce5d7990c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:56 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: GET /devstoreaccount1/test-container-d3dabc8e-7195-0abb-7c8d-8120d1402606/test-blob-fb876f0c-7180-7297-fb4d-9b8f4a762a39?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x252A113AAB22180"
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
x-ms-request-id: 2e9113c1-890a-451b-a6fe-87a00c569e9f
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:56 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-d3dabc8e-7195-0abb-7c8d-8120d1402606?restype=container

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
x-ms-request-id: ac145338-efde-4fca-99e7-94a1f0989302
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:56 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-b206fb0f-8e47-486b-1d86-7ddf086afc0a?restype=container

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
etag: "0x25548012E871B80"
last-modified: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 331d0786-1e3b-43b0-b576-5cdd964edc6d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-b206fb0f-8e47-486b-1d86-7ddf086afc0a/test-blob-a28b760f-18a3-1cb1-2468-d847d62cbf05

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
etag: "0x274B5F3A71DECE0"
last-modified: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fc528054-7d5f-4f42-b3d8-7c4e3c4aea91
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-b206fb0f-8e47-486b-1d86-7ddf086afc0a/test-blob-a28b760f-18a3-1cb1-2468-d847d62cbf05?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: d5104762-7439-7dbe-043e-ddfaf4b86a91
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x274B5F3A71DECE0"
last-modified: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-lease-id: d5104762-7439-7dbe-043e-ddfaf4b86a91
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 90c1592d-61db-46cc-8552-3d59d81f5650
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: GET /devstoreaccount1/test-container-b206fb0f-8e47-486b-1d86-7ddf086afc0a/test-blob-a28b760f-18a3-1cb1-2468-d847d62cbf05?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_21
x-ms-lease-id: fde9b718-af42-5e97-1140-a088b6516e62
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
x-ms-request-id: 08b72ac6-2b6b-4b9e-8f85-d91f41410d91
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:56 GMT
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

## Interaction 21: DELETE /devstoreaccount1/test-container-b206fb0f-8e47-486b-1d86-7ddf086afc0a?restype=container

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
x-ms-request-id: a5f6d3b4-f92f-427d-8199-589a734a8e91
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:56 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

