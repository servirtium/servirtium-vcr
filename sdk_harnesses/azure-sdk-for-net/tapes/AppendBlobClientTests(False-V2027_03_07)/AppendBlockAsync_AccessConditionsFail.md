## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-eb784b95-892f-8d96-c11d-bae7938407b6?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).AppendBlockAsync_AccessConditionsFail
now: 2026-11-12T00:50:29.0527521+00:00

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
etag: "0x1F4DD0E66F50310"
last-modified: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a0c5d2b4-d599-4ba1-bfd1-20a5cd7dcfd8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:29 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-eb784b95-892f-8d96-c11d-bae7938407b6/test-blob-bca3d63a-52fc-cc11-be22-e9d31f73a60c

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
etag: "0x2184F2FD7D0D660"
last-modified: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 40582a23-f0fd-4d65-87c7-c75525db4951
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-eb784b95-892f-8d96-c11d-bae7938407b6/test-blob-bca3d63a-52fc-cc11-be22-e9d31f73a60c?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
If-Modified-Since: Fri, 13 Nov 2026 00:50:29 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
OAsAsJ7whw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: e1b94d58-aecb-440b-86c1-84c17ae94a15
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:29 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-eb784b95-892f-8d96-c11d-bae7938407b6?restype=container

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
x-ms-request-id: 8b3913cd-823e-4fa8-bbd1-8b95ad0343bf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:29 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-62c92b31-f058-b754-9d4f-863f63fc3a95?restype=container

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
etag: "0x25B9C9C5ECE8480"
last-modified: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4a105d99-e95f-45a6-8dc7-d2c0e37d9e85
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:29 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-62c92b31-f058-b754-9d4f-863f63fc3a95/test-blob-2cac3a42-a00d-6dc2-4d76-adae88835617

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
etag: "0x1F2B3CBA0C81060"
last-modified: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 79f95740-9472-43d8-bcef-dd988c574d9d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-62c92b31-f058-b754-9d4f-863f63fc3a95/test-blob-2cac3a42-a00d-6dc2-4d76-adae88835617?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
Content-Type: application/octet-stream
If-Unmodified-Since: Wed, 11 Nov 2026 00:50:29 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Sk5xkTLwuA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: d530d637-33bf-415b-acf1-fa18808cdf6d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:29 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-62c92b31-f058-b754-9d4f-863f63fc3a95?restype=container

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
x-ms-request-id: 2e7cf46b-e245-43ff-ac83-01fd82a52449
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:29 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-4c6b6adc-9984-4334-0ffd-76be76f2c37a?restype=container

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
etag: "0x2629E3870229340"
last-modified: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9444f602-7236-4394-8626-b763e49185eb
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:29 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-4c6b6adc-9984-4334-0ffd-76be76f2c37a/test-blob-155b6891-42e1-2fa5-19f8-6ef4148aa962

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
etag: "0x1D632F43CD353C0"
last-modified: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 80b58a0d-e700-487c-ab15-0b6b6d55ac1c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-4c6b6adc-9984-4334-0ffd-76be76f2c37a/test-blob-155b6891-42e1-2fa5-19f8-6ef4148aa962?comp=appendblock

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
UoHPwqFTPg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 5b79ab10-62f8-442d-a57b-508f9d80118d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:29 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-4c6b6adc-9984-4334-0ffd-76be76f2c37a?restype=container

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
x-ms-request-id: 16dd8f8e-c08e-4a16-a181-84c1def29ce0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:29 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-9d3319d4-11b1-dfc5-2587-d4e029d6dbd7?restype=container

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
etag: "0x244475A28AB97C0"
last-modified: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d7bd0332-79db-49dc-bb4e-302101bb45df
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:29 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-9d3319d4-11b1-dfc5-2587-d4e029d6dbd7/test-blob-323bc599-2a8b-2e3f-8454-136bf52200d8

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
etag: "0x20EDC81BB30E1E0"
last-modified: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6cb11342-edb4-4f0b-b3b0-5985880b861f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-9d3319d4-11b1-dfc5-2587-d4e029d6dbd7/test-blob-323bc599-2a8b-2e3f-8454-136bf52200d8

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
last-modified: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x20EDC81BB30E1E0"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9fdf2328-d9fa-43ae-8952-798d10334915
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:29 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-9d3319d4-11b1-dfc5-2587-d4e029d6dbd7/test-blob-323bc599-2a8b-2e3f-8454-136bf52200d8?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
Content-Type: application/octet-stream
If-None-Match: "0x20EDC81BB30E1E0"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
PSqH+66k8w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 243b7cee-a680-4264-a8a8-a24e30e4ff5d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:29 GMT
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

## Interaction 16: DELETE /devstoreaccount1/test-container-9d3319d4-11b1-dfc5-2587-d4e029d6dbd7?restype=container

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
x-ms-request-id: 2139b281-242f-44c0-9e8c-dcf17195161d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:29 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-4818541d-406c-80aa-8b77-aa36fd6621b2?restype=container

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
etag: "0x1E18F3EDDB618B0"
last-modified: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e650306e-6538-48d1-9a37-89ae0283c277
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:29 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-4818541d-406c-80aa-8b77-aa36fd6621b2/test-blob-1805d9a9-fd5d-ea59-0386-fba2fe4fdf29

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
etag: "0x252CD226DBEEDE0"
last-modified: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 43e18200-80fa-4db7-ae04-aba1e1554a0a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-4818541d-406c-80aa-8b77-aa36fd6621b2/test-blob-1805d9a9-fd5d-ea59-0386-fba2fe4fdf29?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
Content-Type: application/octet-stream
x-ms-lease-id: 2356c1bb-aa75-4b3b-2156-3c7939a0f791
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
9dEd3nPh0g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseNotPresentWithBlobOperation
x-ms-request-id: 31d569d6-3b6e-4b35-96dd-7e288aa44264
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:29 GMT
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

## Interaction 20: DELETE /devstoreaccount1/test-container-4818541d-406c-80aa-8b77-aa36fd6621b2?restype=container

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
x-ms-request-id: 3c5ac0b9-7781-4230-a1c0-12e760a37da4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:29 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-87d4daed-4af4-03ec-721c-78dd22a88b96?restype=container

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
etag: "0x23DFC87E2B5DC20"
last-modified: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cf32c0b9-5555-49dc-8a4c-ab5e7ed12e9d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:29 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-87d4daed-4af4-03ec-721c-78dd22a88b96/test-blob-452dfb20-44e6-8108-3c98-80402b48423e

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
etag: "0x2275FB143386340"
last-modified: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 241ee5ae-bded-46b3-86cc-6c05d9c75fb2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-87d4daed-4af4-03ec-721c-78dd22a88b96/test-blob-452dfb20-44e6-8108-3c98-80402b48423e?comp=appendblock

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
xwYYPoh1ZQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: AppendPositionConditionNotMet
x-ms-request-id: 1d75899b-0e61-46bd-9d5a-df78b646cd10
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:29 GMT
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

## Interaction 24: DELETE /devstoreaccount1/test-container-87d4daed-4af4-03ec-721c-78dd22a88b96?restype=container

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
x-ms-request-id: bc848c9b-a1d1-466c-ab49-6369750bddb6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:29 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 25: PUT /devstoreaccount1/test-container-8983179f-8685-bc72-8069-3bfde3459cec?restype=container

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
etag: "0x25FC16F7B3DAE60"
last-modified: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c93bcaf3-54b9-406e-b4e1-62f5164a7a7b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:29 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-8983179f-8685-bc72-8069-3bfde3459cec/test-blob-4b53d1a8-c95b-d7ab-2ada-39151c904d0d

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
etag: "0x1D2FAC6626B27C0"
last-modified: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e60427ec-6c83-4990-9091-a17774b5c2c8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:29 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-8983179f-8685-bc72-8069-3bfde3459cec/test-blob-4b53d1a8-c95b-d7ab-2ada-39151c904d0d?comp=appendblock

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
qpaNLmK7gw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: MaxBlobSizeConditionNotMet
x-ms-request-id: 062cf916-4e11-49a9-b94d-c2d933c5ba69
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:29 GMT
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

## Interaction 28: DELETE /devstoreaccount1/test-container-8983179f-8685-bc72-8069-3bfde3459cec?restype=container

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
x-ms-request-id: 27ba2c41-85c6-4d0d-a12c-5ad3f457584a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:29 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

