## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-bc4b61a1-22df-8fec-24ed-f0ec4270170d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetSetTagsAsync_ContainerTagSas
now: 2026-11-12T00:46:59.1613521+00:00

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
etag: "0x1FBEBB4FD095AA0"
last-modified: Thu, 12 Nov 2026 00:46:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c9f5e2a6-a404-4df9-8558-691839c547da
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:59 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-bc4b61a1-22df-8fec-24ed-f0ec4270170d/test-blob-1e1b1482-65ba-38ed-9ad8-848f0519d1e9

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
JuezLrFvdtWR7Gj0RJ6uTueoAoBK+ek8dBIhBp1cigocBsVavOlcE51FjM39+PT7KjanXBdRnyz+
d7meTW84NWJd2D3ZU5H+S+7iBW0bPnsdJtxntC3zy2eYXEQvvcYtDVZrnyC3IdakqREobpq/4jg+
gSaT0IA1agzWQPdNzo4otPcWsJ9aZgQFwgscylzN2XkM8TyfmjzWNTUT4eHfV9qCALmiqDKZ4xoh
jQ11GZ+wCGd9QN1SiBq7QHppRoUjJmswmcmiKjBHcg0ifg0uYByVY9h5Yhb9MHif52e3L52U/Wai
RH/WDd02Nc7PMAkMjOBe1OOtqsNVM2lQA0PIkENwjYCmjBucv1b6QixILQBukluHWFu651OjTREW
hQqabaWKX6KJZgDEwhWMsmeXDAVp4XDoQTfotqYsAz8KhTlMYNWHvc5d5Sxbw5ZFLTTsC0AMraOZ
sixtoaj8XGLAujzbQFKRD082C/xDjX6hoolxP/f+/tiVsq6oGRsmYYjJmghZauziWvvx1aGnVSSu
y/8fih1rwrxjRY6k6fYzEKpzefN1SDicj+X7DSg37lyJ+k0cB9ZrXtdM9SRePXEFvsT3M9sxOYPG
gvs3b7STLFcxG+6oFgnTCBsbKFIUPlFz9U9kQLqAV8HKVoXbM+4iucnMLSKCXae7IyvAFhExskOp
xHplLuycsMMt3cCE+NQs+G6JRxEv8JenqB2PwEGvmaRBMW90vYrdL3xfVIDmNypWkx2ip2oyetPi
vYbPDfCBfUQcQsZltzvjrBeV0JwXwHHyOCwjDfE5D7ebkv8EDSKL3dY7yvRj8dviv/tSnao3yvwV
3NXEXXBT4jMPySU73p71CfLF2/Z8jkZQQU3153ENZMcC7zBMx39m6OfBVCe2puBdXJO3cu4GmE6O
dBwiXfvBAmVdOe9tqUJzXvMOujoemZptmIveVfLY/FbivVJiQ4rs/1HCWW3x77JQQxP7994Tb9qB
tcVw46xyhDyYiuvvEBtoIrvoXEAtfKjYjRHe3QR4z0144Y3FexykT9QwWGXHYTP3k9QiKhOaVDkc
mFWalKc4ILuddy+NoqafRAxs/CNDECze50kvVaQ63oxUqePGCbss+DepKeoDavAug+YGLVgV2Ycp
vKxdCMoXY5ijOfnC2DpRPwPsmedC23xZAdG9M7A0Ps9cnE0Ozu9sksVRYDD3a6qste5UKUCf5+Aw
BAf5WTDobvsqZjzsQnAUfwYh8HpMYZYnEX7B3xSPvLRs3snoczmVafE0zQRuwHJ9QKo5fvdm46Nx
0UiyJo/nmqqHf2OmLAvNi4eJF5SRuVALRJ9qVT69Bvsmd6Lx40NiTTJa5kAP1hSebPJw3cwO3w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20C977C4D0BB520"
last-modified: Thu, 12 Nov 2026 00:46:59 GMT
content-md5: ZhXYjxlO3V5qNkP4Qm82uw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bb22d83f-ecf4-4d09-a2f1-2ea06c755690
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-bc4b61a1-22df-8fec-24ed-f0ec4270170d/test-blob-1e1b1482-65ba-38ed-9ad8-848f0519d1e9?sv=2027-03-07&st=2026-11-11T23%3A46%3A59Z&se=2026-11-12T01%3A46%3A59Z&sr=c&sp=t&sig=mobv9%2Fm7mxGXBUHPgllwPmnFLLKak8ozCEMX2LC2cHQ%3D&comp=tags

### Request headers recorded for playback:

```
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3b3b72e7-37df-406a-a0c2-d5db8cf6ad5d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:59 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-bc4b61a1-22df-8fec-24ed-f0ec4270170d/test-blob-1e1b1482-65ba-38ed-9ad8-848f0519d1e9?sv=2027-03-07&st=2026-11-11T23%3A46%3A59Z&se=2026-11-12T01%3A46%3A59Z&sr=c&sp=t&sig=mobv9%2Fm7mxGXBUHPgllwPmnFLLKak8ozCEMX2LC2cHQ%3D&comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: f615d4a4-e6ee-4207-afc5-5db8f27cac75
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:59 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-bc4b61a1-22df-8fec-24ed-f0ec4270170d?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
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
x-ms-request-id: a513805c-50a9-4c26-94fc-37af00020d50
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:59 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

