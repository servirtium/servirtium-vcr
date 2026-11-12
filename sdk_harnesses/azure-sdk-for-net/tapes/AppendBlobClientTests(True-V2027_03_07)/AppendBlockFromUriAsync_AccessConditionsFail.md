## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7e4173ed-b39a-2410-8640-f5933ecd94df?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).AppendBlockFromUriAsync_AccessConditionsFail
now: 2026-11-12T00:50:46.4503384+00:00

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
etag: "0x251CB46218926C0"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 41bd0ae6-4506-41a8-8361-b7973d3fd946
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7e4173ed-b39a-2410-8640-f5933ecd94df/test-blob-5c050803-45be-2647-b426-3181e87c11f9

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
etag: "0x22EC197FA0737A0"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3c739973-3722-4a20-8166-52b0ca84629f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-7e4173ed-b39a-2410-8640-f5933ecd94df/test-blob-5c050803-45be-2647-b426-3181e87c11f9?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
7TtnQUJUKQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22E9F52244D7920"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-content-crc64: mgu7BzR5F4Q=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f79d99f2-8a2a-4a82-9a91-502e3b4bf2cf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-7e4173ed-b39a-2410-8640-f5933ecd94df/test-blob-5430b610-57a5-5cc2-5fc0-1d3467efcd98

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
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
etag: "0x1E7A2943087FCE0"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 08ad8013-a1b6-4599-8ee4-528da9c46499
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-7e4173ed-b39a-2410-8640-f5933ecd94df/test-blob-5430b610-57a5-5cc2-5fc0-1d3467efcd98?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
If-Modified-Since: Fri, 13 Nov 2026 00:50:46 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-7e4173ed-b39a-2410-8640-f5933ecd94df/test-blob-5c050803-45be-2647-b426-3181e87c11f9?sv=2027-03-07&se=2026-11-12T01%3A50%3A46Z&sr=b&sp=r&sig=dHVppWpCGj6kIZzMpVE%2FKg5zh4%2BBrQFDay4IEj6Ux20%3D
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 175a6d51-104b-44bd-b38e-647ce6d737f5
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:46 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-7e4173ed-b39a-2410-8640-f5933ecd94df?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
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
x-ms-request-id: 11080352-5c43-45d9-895d-9cc815eb7131
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-753d4999-5795-de52-3e1a-416d0c4cac63?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x213063A92EB2A20"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 26f93571-1279-45c2-9a83-f83072f98b01
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-753d4999-5795-de52-3e1a-416d0c4cac63/test-blob-fca846ab-28fd-be12-c459-99e89e3e9b64

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
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
etag: "0x23B58DE56E337A0"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ff02cfdf-faed-427e-856f-7790e84745c1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-753d4999-5795-de52-3e1a-416d0c4cac63/test-blob-fca846ab-28fd-be12-c459-99e89e3e9b64?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
20FWihH/hA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23CEF3EF6D038C0"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-content-crc64: nMOqzWd8tkk=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ad707807-115d-4694-9cec-8238a6a0ca68
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-753d4999-5795-de52-3e1a-416d0c4cac63/test-blob-155263b9-158a-4f55-1314-ba5925994287

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
etag: "0x2402DF407D4B520"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d7f70f7f-8388-4df6-8ee3-38800c4ad8d7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-753d4999-5795-de52-3e1a-416d0c4cac63/test-blob-155263b9-158a-4f55-1314-ba5925994287?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Wed, 11 Nov 2026 00:50:46 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-753d4999-5795-de52-3e1a-416d0c4cac63/test-blob-fca846ab-28fd-be12-c459-99e89e3e9b64?sv=2027-03-07&se=2026-11-12T01%3A50%3A46Z&sr=b&sp=r&sig=HtmFSMZflvqw4AwfzRWUkbFtzHbBIPSqh6Dlsq2Twco%3D
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 332101a1-983b-45f7-81f0-34fd127ba512
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:46 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-753d4999-5795-de52-3e1a-416d0c4cac63?restype=container

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
x-ms-request-id: e6e00841-2420-4faf-9b24-3ec8b29457ef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-2e92c599-5bec-b555-2b5c-7d1373630d24?restype=container

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
etag: "0x2137878B1BF4E60"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 92164101-e37c-4185-af96-015ff8cd9fc5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-2e92c599-5bec-b555-2b5c-7d1373630d24/test-blob-e858f196-6ee9-98b9-2b16-114fd9ac6d77

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
etag: "0x1F4DB6CEBCE8C90"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 80b64089-d2e3-4d37-acc0-abc45eb99d71
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: PUT /devstoreaccount1/test-container-2e92c599-5bec-b555-2b5c-7d1373630d24/test-blob-e858f196-6ee9-98b9-2b16-114fd9ac6d77?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_15
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
P92dJr7q+g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CD9C99A4DBAEA0"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-content-crc64: nqI2lhRdYxQ=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 40a73837-b9a0-4f3a-9293-3cf4c37c2ec5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-2e92c599-5bec-b555-2b5c-7d1373630d24/test-blob-e99c0e5e-982d-dc41-b006-951948fb1cc8

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
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
etag: "0x1E75C66B8017270"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ed7b2f1a-db70-4b2c-b8a0-4f058a9f5ac7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-2e92c599-5bec-b555-2b5c-7d1373630d24/test-blob-e99c0e5e-982d-dc41-b006-951948fb1cc8?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
If-Match: "garbage"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-2e92c599-5bec-b555-2b5c-7d1373630d24/test-blob-e858f196-6ee9-98b9-2b16-114fd9ac6d77?sv=2027-03-07&se=2026-11-12T01%3A50%3A46Z&sr=b&sp=r&sig=fdpJtZNEH9%2Fg03MW27QHvoRGhhXNARV0zmJQk6Rw1P4%3D
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 1ee17ada-b9ef-4fe2-86b0-868b9c1e564e
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:46 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 17: DELETE /devstoreaccount1/test-container-2e92c599-5bec-b555-2b5c-7d1373630d24?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fcc21208-abc2-42cf-aaae-d34bbd4b75cc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-3dfbcbae-7294-476c-71c4-51fd61133477?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E1B80C3676C130"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a9018d13-501b-4de9-a730-ad84b294d3b7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-3dfbcbae-7294-476c-71c4-51fd61133477/test-blob-377cb0fd-d8e2-4fa0-2ffa-49a00db030e3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
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
etag: "0x1DD0D655DEDF7D0"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7f0c6ecb-e089-496a-b1ef-872edc53dd60
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: PUT /devstoreaccount1/test-container-3dfbcbae-7294-476c-71c4-51fd61133477/test-blob-377cb0fd-d8e2-4fa0-2ffa-49a00db030e3?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
0mU/GCIAzA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20E037270941140"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-content-crc64: rtFQGwPDtNM=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 42c1682f-4caa-48f0-9429-d7204dc79b11
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-3dfbcbae-7294-476c-71c4-51fd61133477/test-blob-7855a2eb-4669-7a44-9cd1-1e46e2bc03a6

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_22
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
etag: "0x20FC441E870B9A0"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6c538423-e426-4463-b315-221f32cc3cbb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: HEAD /devstoreaccount1/test-container-3dfbcbae-7294-476c-71c4-51fd61133477/test-blob-7855a2eb-4669-7a44-9cd1-1e46e2bc03a6

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
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x20FC441E870B9A0"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0169d3d6-b602-43ca-b2b3-9558d12eaae8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-3dfbcbae-7294-476c-71c4-51fd61133477/test-blob-7855a2eb-4669-7a44-9cd1-1e46e2bc03a6?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
If-None-Match: "0x20FC441E870B9A0"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-3dfbcbae-7294-476c-71c4-51fd61133477/test-blob-377cb0fd-d8e2-4fa0-2ffa-49a00db030e3?sv=2027-03-07&se=2026-11-12T01%3A50%3A46Z&sr=b&sp=r&sig=m%2F10UXOEtdO75Fj0nZiQ7Fy0CiHeeBb%2FL94pk10eU%2Fc%3D
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: aea37f72-9180-46d0-94f3-101b668cf785
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:46 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 24: DELETE /devstoreaccount1/test-container-3dfbcbae-7294-476c-71c4-51fd61133477?restype=container

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
x-ms-request-id: f1431f05-709c-4579-9d13-5b261656c475
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 25: PUT /devstoreaccount1/test-container-8cfeffae-3a17-6f89-d174-2202187326c6?restype=container

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
etag: "0x1DB994A948C0670"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f0380fa4-6b7c-4162-8cfc-2ed0759e4110
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-8cfeffae-3a17-6f89-d174-2202187326c6/test-blob-9b016bb7-b911-6d59-72f6-a3f20eb2a3cb

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
etag: "0x1F68D8C2D46CF60"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 994f638d-c2c4-4377-bf91-f188e9a71751
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-8cfeffae-3a17-6f89-d174-2202187326c6/test-blob-9b016bb7-b911-6d59-72f6-a3f20eb2a3cb?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_28
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
ooJTdcyIYg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x258D025CFF80E00"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-content-crc64: jAvwP6Lwm4A=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e5795431-9d50-4ad2-96a5-f5d7613ef41e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-8cfeffae-3a17-6f89-d174-2202187326c6/test-blob-a6e619b0-24f4-6241-29aa-57a460698ed9

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
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
etag: "0x224FD4FC6A89980"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 363f05b6-6a9e-48ff-aba6-0edbaad5af2a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 29: PUT /devstoreaccount1/test-container-8cfeffae-3a17-6f89-d174-2202187326c6/test-blob-a6e619b0-24f4-6241-29aa-57a460698ed9?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_30
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-8cfeffae-3a17-6f89-d174-2202187326c6/test-blob-9b016bb7-b911-6d59-72f6-a3f20eb2a3cb?sv=2027-03-07&se=2026-11-12T01%3A50%3A46Z&sr=b&sp=r&sig=0GN9r8JTE9Ko7MaYDBi%2BdEGRzlR509efc17k2NKks04%3D
x-ms-lease-id: da54c7c4-4de6-9a55-2d55-fc21a3570eda
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 4676735a-a896-4e47-b399-974f878916c7
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:46 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 30: DELETE /devstoreaccount1/test-container-8cfeffae-3a17-6f89-d174-2202187326c6?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9da7676f-fbcf-4e7a-b2a6-a17feec40ec4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 31: PUT /devstoreaccount1/test-container-21479c26-9f15-b578-7707-af0b75801714?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_32
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20737B1D3D79140"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7a679a80-fb18-48d9-9b38-87ba8e727d8b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 32: PUT /devstoreaccount1/test-container-21479c26-9f15-b578-7707-af0b75801714/test-blob-719f2993-6266-0db5-0968-c9cc726b81b5

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_33
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
etag: "0x269D8F3F60B0600"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e04fb08c-e393-492f-a930-dafd57145e64
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 33: PUT /devstoreaccount1/test-container-21479c26-9f15-b578-7707-af0b75801714/test-blob-719f2993-6266-0db5-0968-c9cc726b81b5?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_34
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
/7aiXObhbg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x211C99D0CF24A20"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-content-crc64: 7FNRoRatV5c=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 66131f1f-98ee-4888-957b-3a890b70eaf2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 34: PUT /devstoreaccount1/test-container-21479c26-9f15-b578-7707-af0b75801714/test-blob-2f30a011-74ed-ed35-a892-43a5a9c632f2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_35
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
etag: "0x2644349ABD46BA0"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 390372db-f7b0-4a3b-91ab-387480b06533
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 35: PUT /devstoreaccount1/test-container-21479c26-9f15-b578-7707-af0b75801714/test-blob-2f30a011-74ed-ed35-a892-43a5a9c632f2?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_36
x-ms-blob-condition-appendpos: 1
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-21479c26-9f15-b578-7707-af0b75801714/test-blob-719f2993-6266-0db5-0968-c9cc726b81b5?sv=2027-03-07&se=2026-11-12T01%3A50%3A46Z&sr=b&sp=r&sig=O61ivnZhDU3zNvNrVeaSMFQ29021CkfmiXYjZYffOy4%3D
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 87c7bd11-3002-4ca9-8343-e4bda011a7a4
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:46 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 36: DELETE /devstoreaccount1/test-container-21479c26-9f15-b578-7707-af0b75801714?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_37
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
x-ms-request-id: 209270ea-e3a3-4ac9-9081-a6a6d604b260
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 37: PUT /devstoreaccount1/test-container-f7b42e44-2d76-5311-c2fa-a6a3abb4a5a8?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_38
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FD0E39EA77BCA0"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fcc08511-c086-4f10-a3d6-abdac4a45d08
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 38: PUT /devstoreaccount1/test-container-f7b42e44-2d76-5311-c2fa-a6a3abb4a5a8/test-blob-c8b1f31e-1ed3-630f-4235-d68744b78a3e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_39
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
etag: "0x1F045FD80D36200"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8253dd22-79fd-4d49-a395-f50cafe9ae7a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 39: PUT /devstoreaccount1/test-container-f7b42e44-2d76-5311-c2fa-a6a3abb4a5a8/test-blob-c8b1f31e-1ed3-630f-4235-d68744b78a3e?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_40
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
fQCRu7aygA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26F6E9E41514DE0"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-content-crc64: 2QkuISe2EA4=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7f2ea8a7-efa5-4e43-8818-5d53df833f95
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 40: PUT /devstoreaccount1/test-container-f7b42e44-2d76-5311-c2fa-a6a3abb4a5a8/test-blob-6cdd8ee3-cdf2-4292-f3ed-9a27a835763c

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_41
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
etag: "0x25603AEDE6AF780"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 13cf8059-4f92-4629-9917-dd8c18714ab6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 41: PUT /devstoreaccount1/test-container-f7b42e44-2d76-5311-c2fa-a6a3abb4a5a8/test-blob-6cdd8ee3-cdf2-4292-f3ed-9a27a835763c?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_42
x-ms-blob-condition-maxsize: 1
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-f7b42e44-2d76-5311-c2fa-a6a3abb4a5a8/test-blob-c8b1f31e-1ed3-630f-4235-d68744b78a3e?sv=2027-03-07&se=2026-11-12T01%3A50%3A46Z&sr=b&sp=r&sig=mSgnWdmc7U7ChGIKLjQtn5PMBg6PVi%2FFEPIZlEzilU4%3D
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 8853c46d-5f60-4f12-8e9d-910b84c799b8
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:46 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 42: DELETE /devstoreaccount1/test-container-f7b42e44-2d76-5311-c2fa-a6a3abb4a5a8?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_43
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
x-ms-request-id: 1ad11321-9ffa-421c-a7cc-9e5599ece6d9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 43: PUT /devstoreaccount1/test-container-0395ad92-65c5-343e-b296-636dd42d61f1?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_44
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CC66835397C9A0"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: baecd5d2-3432-403a-a75b-08675e72b0e6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 44: PUT /devstoreaccount1/test-container-0395ad92-65c5-343e-b296-636dd42d61f1/test-blob-d46f6150-84e6-bae7-0dbf-9af596218679

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_45
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
etag: "0x1D79BA2B8117D80"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fa25b0b6-e319-4349-8e73-757ac2b7e9fd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 45: PUT /devstoreaccount1/test-container-0395ad92-65c5-343e-b296-636dd42d61f1/test-blob-d46f6150-84e6-bae7-0dbf-9af596218679?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_46
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
88GuLNhFjg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2179380FFD848A0"
last-modified: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-content-crc64: g+dyiR6KGFE=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 66cff24a-18c4-410d-8db0-de32dca8675a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 46: PUT /devstoreaccount1/test-container-0395ad92-65c5-343e-b296-636dd42d61f1/test-blob-b9a9507e-695b-6d24-c68c-a934e7874963

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_47
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
etag: "0x21BB9F5E85B7200"
last-modified: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d92f1404-a67f-4bf5-9626-edb7262e64b5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 47: PUT /devstoreaccount1/test-container-0395ad92-65c5-343e-b296-636dd42d61f1/test-blob-b9a9507e-695b-6d24-c68c-a934e7874963?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_48
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-0395ad92-65c5-343e-b296-636dd42d61f1/test-blob-d46f6150-84e6-bae7-0dbf-9af596218679?sv=2027-03-07&se=2026-11-12T01%3A50%3A46Z&sr=b&sp=r&sig=tflJbpD6MwCA15vLFB6deZUY2Jn7mTnvQT72n47J6A4%3D
x-ms-return-client-request-id: true
x-ms-source-if-modified-since: Fri, 13 Nov 2026 00:50:46 GMT
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 4dbbe6a4-0626-4e08-aa47-479e6a90f280
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:47 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 48: DELETE /devstoreaccount1/test-container-0395ad92-65c5-343e-b296-636dd42d61f1?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_49
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
x-ms-request-id: d295bc2c-04a9-449c-9dbf-da2fade05f9e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:47 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 49: PUT /devstoreaccount1/test-container-a1441f4c-9055-b058-cadc-56ae3937cacf?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_50
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22EFDFAA6F01C60"
last-modified: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 57e6aeaf-0ad3-4067-80e4-e3fc5e374aa0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:47 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 50: PUT /devstoreaccount1/test-container-a1441f4c-9055-b058-cadc-56ae3937cacf/test-blob-0e013de7-da59-d3b3-8575-36a877dde523

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_51
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
etag: "0x1CCFCA915AA6FA0"
last-modified: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 392b2325-49fd-4c0d-a3ce-9f59f24ee461
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 51: PUT /devstoreaccount1/test-container-a1441f4c-9055-b058-cadc-56ae3937cacf/test-blob-0e013de7-da59-d3b3-8575-36a877dde523?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_52
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
bEcv3C+LMg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x205EFA7B0EA52A0"
last-modified: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-content-crc64: igzqZUhFikI=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5a7dba3f-07ae-42a2-a899-5d965cb445af
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 52: PUT /devstoreaccount1/test-container-a1441f4c-9055-b058-cadc-56ae3937cacf/test-blob-eff8f8ee-127f-3375-8ec2-d9c89f576d34

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_53
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
etag: "0x26D4217E0EE7020"
last-modified: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 235dc601-c235-4ab6-9a27-848eb7ed00d9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 53: PUT /devstoreaccount1/test-container-a1441f4c-9055-b058-cadc-56ae3937cacf/test-blob-eff8f8ee-127f-3375-8ec2-d9c89f576d34?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_54
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-a1441f4c-9055-b058-cadc-56ae3937cacf/test-blob-0e013de7-da59-d3b3-8575-36a877dde523?sv=2027-03-07&se=2026-11-12T01%3A50%3A46Z&sr=b&sp=r&sig=G%2Bxwid%2BO6z5V9wMOXgtjeP0vpd3mreLAKWKyS%2Bitirk%3D
x-ms-return-client-request-id: true
x-ms-source-if-unmodified-since: Wed, 11 Nov 2026 00:50:46 GMT
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: f59cf696-e919-40e6-bc50-35ccf44069ec
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:47 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 54: DELETE /devstoreaccount1/test-container-a1441f4c-9055-b058-cadc-56ae3937cacf?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_55
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
x-ms-request-id: 55837d6d-5f45-4e88-a0bd-75381328a6fe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:47 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 55: PUT /devstoreaccount1/test-container-645dedc0-8154-d5fe-1709-d039038f52f2?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_56
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EBAEEC4831DFF0"
last-modified: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a0c073b6-7c36-4385-912a-35ee9c258a59
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:47 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 56: PUT /devstoreaccount1/test-container-645dedc0-8154-d5fe-1709-d039038f52f2/test-blob-7fcec7d4-0197-33ea-2e07-02e78a7f80cf

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_57
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
etag: "0x2679250C2CF9080"
last-modified: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6f924c87-b246-49ed-a411-13b3984cd372
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 57: PUT /devstoreaccount1/test-container-645dedc0-8154-d5fe-1709-d039038f52f2/test-blob-7fcec7d4-0197-33ea-2e07-02e78a7f80cf?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_58
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
hyRB4zacsg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x220DA1E7AB9B140"
last-modified: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-content-crc64: cpPyvYriHfs=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 75457774-c971-4abb-8341-e65ee3343318
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 58: PUT /devstoreaccount1/test-container-645dedc0-8154-d5fe-1709-d039038f52f2/test-blob-d723f96c-4276-303c-ff6f-e7417b158afd

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_59
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
etag: "0x236975E48B94F80"
last-modified: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 522eca52-7d9f-46e6-9f36-41e75b96cf52
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 59: PUT /devstoreaccount1/test-container-645dedc0-8154-d5fe-1709-d039038f52f2/test-blob-d723f96c-4276-303c-ff6f-e7417b158afd?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_60
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-645dedc0-8154-d5fe-1709-d039038f52f2/test-blob-7fcec7d4-0197-33ea-2e07-02e78a7f80cf?sv=2027-03-07&se=2026-11-12T01%3A50%3A46Z&sr=b&sp=r&sig=%2F6Jw4sEziDNCZYa2Oo5RdUbyuhu2f9NzLbX28KwtRdw%3D
x-ms-return-client-request-id: true
x-ms-source-if-match: "garbage"
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 09b92b33-68d8-4e0d-a307-ca7f5c060cf5
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:47 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 60: DELETE /devstoreaccount1/test-container-645dedc0-8154-d5fe-1709-d039038f52f2?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_61
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
x-ms-request-id: 7a3601e2-a12a-4dfc-89e5-cca3f3061661
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:47 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 61: PUT /devstoreaccount1/test-container-9c893a24-0286-d466-2cd5-a23100a7c872?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_62
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x231F9C5DA250BC0"
last-modified: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ce18a302-1b8e-48a3-8d85-958710c69a38
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:47 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 62: PUT /devstoreaccount1/test-container-9c893a24-0286-d466-2cd5-a23100a7c872/test-blob-7f9d8b91-1928-b8a9-197d-05c34ff6e449

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_63
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
etag: "0x2716D7231C4AFC0"
last-modified: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9833a1a8-ee21-423d-a8a7-02edc21d89a7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 63: PUT /devstoreaccount1/test-container-9c893a24-0286-d466-2cd5-a23100a7c872/test-blob-7f9d8b91-1928-b8a9-197d-05c34ff6e449?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_64
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
BlTV6hPFPA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2214918FF2A5060"
last-modified: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-content-crc64: 4SB/gcCftxU=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3823f07a-d42c-4a08-9e06-032ccd94d83a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 64: PUT /devstoreaccount1/test-container-9c893a24-0286-d466-2cd5-a23100a7c872/test-blob-aa4f9269-a0a1-2f0b-57a6-743a273fa0e9

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_65
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
etag: "0x2061874BCA47B20"
last-modified: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ffcf886b-54ce-4b99-b5a6-225766fa92d3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 65: HEAD /devstoreaccount1/test-container-9c893a24-0286-d466-2cd5-a23100a7c872/test-blob-7f9d8b91-1928-b8a9-197d-05c34ff6e449

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_66
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:47 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 7
content-type: application/octet-stream
etag: "0x2214918FF2A5060"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 07e8fb93-eba3-435b-acac-b2387cfc104b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:47 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 1
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 66: PUT /devstoreaccount1/test-container-9c893a24-0286-d466-2cd5-a23100a7c872/test-blob-aa4f9269-a0a1-2f0b-57a6-743a273fa0e9?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_67
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-9c893a24-0286-d466-2cd5-a23100a7c872/test-blob-7f9d8b91-1928-b8a9-197d-05c34ff6e449?sv=2027-03-07&se=2026-11-12T01%3A50%3A46Z&sr=b&sp=r&sig=T3m2gizYXy0%2FL6oYBjlrQwezZReq%2B%2Bsq6qeWEzrlZzE%3D
x-ms-return-client-request-id: true
x-ms-source-if-none-match: 0x2214918FF2A5060
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 8a6f2ccb-6c55-43eb-a3ef-82ac9615a7b1
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:47 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 67: DELETE /devstoreaccount1/test-container-9c893a24-0286-d466-2cd5-a23100a7c872?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_68
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
x-ms-request-id: e063a347-77ae-422a-800f-8451d52d5784
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:47 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

