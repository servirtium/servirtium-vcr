## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c346fff0-b2ae-0516-5bad-cf795ba0178f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).CommitBlockListAsync_AccessConditionsFail
now: 2026-11-12T00:49:57.5514689+00:00

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
etag: "0x27D6E91A49E30E0"
last-modified: Thu, 12 Nov 2026 00:49:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b75d007b-21cc-4f84-942f-d4941e404998
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c346fff0-b2ae-0516-5bad-cf795ba0178f/test-blob-2968c69f-d3b6-7a32-5f03-52eec790cd11

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
etag: "0x2466D58A8035020"
last-modified: Thu, 12 Nov 2026 00:49:57 GMT
content-md5: AbGnOAZ28M9r9xY48WGg4g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d3d027ae-3814-4198-b496-945d1dd513c2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-c346fff0-b2ae-0516-5bad-cf795ba0178f/test-blob-2968c69f-d3b6-7a32-5f03-52eec790cd11?comp=block&blockid=dGVzdC1ibG9jay00NGU5YTc5Ny01NWNlLTU4N2UtMjhjMS1mYTE0NDlhYTJiOTA%3D

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
x-ms-request-id: f632da54-1f0e-43a6-9f77-b97e6223dde4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:57 GMT
x-ms-content-crc64: VPm++1/mIco=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-c346fff0-b2ae-0516-5bad-cf795ba0178f/test-blob-2968c69f-d3b6-7a32-5f03-52eec790cd11?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
If-Modified-Since: Fri, 13 Nov 2026 00:49:57 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay00NGU5YTc5Ny01NWNlLTU4N2UtMjhjMS1mYTE0NDlhYTJiOTA=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: d62bb9a5-1c82-4661-b96f-18d2bf1d4cb5
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:57 GMT
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

## Interaction 4: DELETE /devstoreaccount1/test-container-c346fff0-b2ae-0516-5bad-cf795ba0178f?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6e909cfc-9782-4f52-b987-2adf3b9982c1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-f041c37e-84a0-e906-90a4-2522b69c909d?restype=container

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
etag: "0x1CAB4633F923830"
last-modified: Thu, 12 Nov 2026 00:49:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 21f4533f-1d5a-43d2-8e39-6f9796ebe6ff
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-f041c37e-84a0-e906-90a4-2522b69c909d/test-blob-6ed1440f-195f-e11b-65ac-6c38a38c6494

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
+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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x227FDFF63647120"
last-modified: Thu, 12 Nov 2026 00:49:57 GMT
content-md5: 6CstqqHqbVReqW14EtDS2w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 799abebb-882f-40c6-9400-61ad4d2d8ec1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-f041c37e-84a0-e906-90a4-2522b69c909d/test-blob-6ed1440f-195f-e11b-65ac-6c38a38c6494?comp=block&blockid=dGVzdC1ibG9jay00YTNjZmFhOC1jNWY4LWVlNjUtZWU2NC03MjIyMGEwYmJlOGY%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
+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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9e047db1-07d0-40fa-a78a-bad4bb770762
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:57 GMT
x-ms-content-crc64: naRiikKnfTQ=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-f041c37e-84a0-e906-90a4-2522b69c909d/test-blob-6ed1440f-195f-e11b-65ac-6c38a38c6494?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
Content-Type: application/xml
If-Unmodified-Since: Wed, 11 Nov 2026 00:49:57 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay00YTNjZmFhOC1jNWY4LWVlNjUtZWU2NC03MjIyMGEwYmJlOGY=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: f1fc0877-6c28-4335-ac03-527e88323f48
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:57 GMT
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

## Interaction 9: DELETE /devstoreaccount1/test-container-f041c37e-84a0-e906-90a4-2522b69c909d?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
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
x-ms-request-id: a7053ea5-0e82-439b-b30e-2f9c95a4b1b4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-cfbee001-c1fb-da99-b8aa-6d0609156683?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24B9F750A6D2200"
last-modified: Thu, 12 Nov 2026 00:49:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ca87a714-c38d-43b5-9ff9-7d7f734681d9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-cfbee001-c1fb-da99-b8aa-6d0609156683/test-blob-c26dcb25-27a1-5784-85c8-e8ab2fcbb6f9

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
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
etag: "0x1F6AAEBB5D4C400"
last-modified: Thu, 12 Nov 2026 00:49:57 GMT
content-md5: rjKczdHlS0Tcof20VW/ygA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e390b586-9b0c-446b-8227-5a73a4e6fc8f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-cfbee001-c1fb-da99-b8aa-6d0609156683/test-blob-c26dcb25-27a1-5784-85c8-e8ab2fcbb6f9?comp=block&blockid=dGVzdC1ibG9jay1kYTFjNDc5OC02NmI3LWQ2ZGItMjI3Ni03M2NmY2U1NGE0YWQ%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
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
x-ms-request-id: 05313835-b486-41ff-9222-00c9db02a4e2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:57 GMT
x-ms-content-crc64: PsUZgJwRyHY=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-cfbee001-c1fb-da99-b8aa-6d0609156683/test-blob-c26dcb25-27a1-5784-85c8-e8ab2fcbb6f9?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
Content-Type: application/xml
If-Match: "garbage"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay1kYTFjNDc5OC02NmI3LWQ2ZGItMjI3Ni03M2NmY2U1NGE0YWQ=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 91da9832-b819-49bb-80f6-4302aaa19170
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:58 GMT
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

## Interaction 14: DELETE /devstoreaccount1/test-container-cfbee001-c1fb-da99-b8aa-6d0609156683?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bdfffef2-7491-4c3f-95cd-c981ce24d0c0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-bab7c14b-191a-2118-0b28-664424a2ae02?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x265795EE66D5600"
last-modified: Thu, 12 Nov 2026 00:49:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5da5c675-6566-420e-a40e-53acddc980d7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-bab7c14b-191a-2118-0b28-664424a2ae02/test-blob-cb327160-cdff-dc0c-1116-a4ddae9b2c14

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
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
etag: "0x200D2C1CE772680"
last-modified: Thu, 12 Nov 2026 00:49:58 GMT
content-md5: vF4OxVS5jjUqCEtZjnFG8w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f9738dc2-f688-4b7a-aacf-0f8ed321f09b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-bab7c14b-191a-2118-0b28-664424a2ae02/test-blob-cb327160-cdff-dc0c-1116-a4ddae9b2c14?comp=block&blockid=dGVzdC1ibG9jay0wMGQ4ODYzOS0zZmM3LTQ1MTAtNTYwNi05YTJmZjZkMTI1ZWU%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_18
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
x-ms-request-id: 236c6346-e907-4c07-9d78-930e3bd5c5f1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:58 GMT
x-ms-content-crc64: 9q58QXeh5+8=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: HEAD /devstoreaccount1/test-container-bab7c14b-191a-2118-0b28-664424a2ae02/test-blob-cb327160-cdff-dc0c-1116-a4ddae9b2c14

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
last-modified: Thu, 12 Nov 2026 00:49:58 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:58 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x200D2C1CE772680"
content-md5: vF4OxVS5jjUqCEtZjnFG8w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4558c94c-2663-4865-984c-b8e08875edf2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:58 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:58 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-bab7c14b-191a-2118-0b28-664424a2ae02/test-blob-cb327160-cdff-dc0c-1116-a4ddae9b2c14?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
Content-Type: application/xml
If-None-Match: "0x200D2C1CE772680"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay0wMGQ4ODYzOS0zZmM3LTQ1MTAtNTYwNi05YTJmZjZkMTI1ZWU=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: e28c1500-6f78-4989-8f23-5673d89457d3
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:58 GMT
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

## Interaction 20: DELETE /devstoreaccount1/test-container-bab7c14b-191a-2118-0b28-664424a2ae02?restype=container

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
x-ms-request-id: b7674e71-ca02-4bbd-85c6-3108c0a4d606
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

