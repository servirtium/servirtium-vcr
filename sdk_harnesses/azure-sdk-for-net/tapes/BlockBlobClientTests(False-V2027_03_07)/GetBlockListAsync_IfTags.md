## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2609660a-fef2-d919-914c-a0c15b69819b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).GetBlockListAsync_IfTags
now: 2026-11-12T00:49:41.3519264+00:00

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
etag: "0x25AEDFA89634360"
last-modified: Thu, 12 Nov 2026 00:49:41 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 980edbc8-7e98-41e4-9184-147d8d0c5eba
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:41 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-2609660a-fef2-d919-914c-a0c15b69819b/test-blob-9ba8fd93-a7d0-6ca5-d0a8-e7ee59d2feb0

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C759EF4983FBF0"
last-modified: Thu, 12 Nov 2026 00:49:41 GMT
content-md5: AyvuN+UHNnEu4C1c8O9fqg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0f640b72-800d-4889-894c-60f55ab12569
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:41 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-2609660a-fef2-d919-914c-a0c15b69819b/test-blob-9ba8fd93-a7d0-6ca5-d0a8-e7ee59d2feb0?comp=block&blockid=dGVzdC1ibG9jay00ZGI4N2M1Yy1lYmYzLTc3ZGUtNTNjMy00ZDhhZjY5ODMyNDA%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a2598dcd-fd1d-43ad-b70d-4a5420197b2e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:41 GMT
x-ms-content-crc64: YmDW9Bm6UzY=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-2609660a-fef2-d919-914c-a0c15b69819b/test-blob-9ba8fd93-a7d0-6ca5-d0a8-e7ee59d2feb0?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay00ZGI4N2M1Yy1lYmYzLTc3ZGUtNTNjMy00ZDhhZjY5ODMyNDA=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27AE362656EE000"
last-modified: Thu, 12 Nov 2026 00:49:41 GMT
content-md5: 80N2LgC7waZARrUFy8pt1Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bc4bcc76-e9c3-4c58-b6b9-554d28b6922d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:41 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-2609660a-fef2-d919-914c-a0c15b69819b/test-blob-9ba8fd93-a7d0-6ca5-d0a8-e7ee59d2feb0?comp=block&blockid=dGVzdC1ibG9iLTUwYjZiMWI0LTgyZDItM2UwMC1hMTJiLTYxYzgzZDEyN2VjZg%3D%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c43da68c-5db3-44a6-ba08-73224328439b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:41 GMT
x-ms-content-crc64: YmDW9Bm6UzY=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-2609660a-fef2-d919-914c-a0c15b69819b/test-blob-9ba8fd93-a7d0-6ca5-d0a8-e7ee59d2feb0?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>coolTag</Key><Value>true</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8f513798-2e56-4ce0-9824-fedd420ce702
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:41 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-2609660a-fef2-d919-914c-a0c15b69819b/test-blob-9ba8fd93-a7d0-6ca5-d0a8-e7ee59d2feb0?comp=blocklist&blocklisttype=all

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_7
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:49:41 GMT
etag: "0x27AE362656EE000"
content-type: application/xml
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e674f656-a097-4c32-a311-6e708a51134f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:41 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><BlockList><CommittedBlocks><Block><Name>dGVzdC1ibG9jay00ZGI4N2M1Yy1lYmYzLTc3ZGUtNTNjMy00ZDhhZjY5ODMyNDA=</Name><Size>4096</Size></Block></CommittedBlocks><UncommittedBlocks><Block><Name>dGVzdC1ibG9iLTUwYjZiMWI0LTgyZDItM2UwMC1hMTJiLTYxYzgzZDEyN2VjZg==</Name><Size>4096</Size></Block></UncommittedBlocks></BlockList>
```

## Interaction 7: DELETE /devstoreaccount1/test-container-2609660a-fef2-d919-914c-a0c15b69819b?restype=container

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
x-ms-request-id: 402fef27-27ce-455c-9bfd-69c267d3b5e6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:41 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

