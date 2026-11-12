## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-bf5c1693-7cb3-3fb4-2214-d9491ef1aab5?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).CreateSnapshotAsync_IfTags
now: 2026-11-12T00:46:25.7478701+00:00

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
etag: "0x27D2EE672CC60E0"
last-modified: Thu, 12 Nov 2026 00:46:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9d328d5e-ec10-4965-8199-eb348346b3b8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-bf5c1693-7cb3-3fb4-2214-d9491ef1aab5/test-blob-85ead025-95a7-ff97-797b-07623a1f6de6

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
dYcWwguiXnrk+iITSutn26/PmQnyqp79f1xFN3RRBQKn8tOX2uiqg3FwoKxzg7SOFCyzaoVj88vo
GUOuXCcFkvUfbFgX0AHGJRaXggnxivuntiNInpp8Q/4HrsCk+ydKaw63UxdcdkMr7EVvy3HC9o9I
B6UDvPNaoihaDyFAISnuTRb6OjbjS0DfHbJVDXeMRbgxXPSBR64aXbHuAmci6socgH5bx7xZZLtl
I59ABZWxzclpDsU0bQZn4NyF9UjYvTLoOIz5MX772Pg4GyMP2VcbPTSduNsF6BN48+ff1G9zjGVs
WMwJt5tLbjbM+1HiVwaFabcTOwVW41B4gT2XGwSJxY+9o4GLEYWZUkqlOOzClZvhWmq3X1FgFXV8
kTZes1MyQjXCJLSE+Vgxeum6sapjtuuhtsCa0mY9XY0MDoBPOp73cvW3AHDnXGESheRopWPKGNpK
vP2SmHDPhMcmeOrX4j9Lwz61rLZ6ullfh0yB1bcqQfalBH6gZNqE53upweR2OqKkHeIlFWwkzwGj
MxAjTq4Q/Db0Md7Aql5kMMQ60fl16E2q3LjUBCyJgDR9/DDKYJnNmcStgQjE5HKDweSn6v4ILkrD
eXH1O/cJarCqQ64tmc8rbDg0x2dE5fhGUENH4pY2dM7lB+cn113NoxZXGqDEVScVe33F02bjfpN5
r+qzwogac87fR5LoA5XbZyRQ7MtXgfocMmYYcKBoAohTrihyGeGOPabS5A2ULXjo6mxCk5HIIS3v
l48iAgItd0UJlVVtaE1Cwq8lhZ3thwTuL4Y0Jm/3ioz6g4FRazqjpG3Iipgie4Ef/9Dio5yQAhCK
NNJ8+VDWEgrIcuXL8FZ0geEvJPxsy7QEFCaeFOfwaoBxxjdoJ6oc8XeOWQmcUw96bSG6YN0THmge
d+UqOP4i2AhkWikfDFo2EjKE3nGraMAWJKfGNQmiXajOSq/F8rl5bIEAOPnmWmHGhE6rjz/3cw8k
ExNWW6L/wfyAUMKrcCB5CnLwqi/HMMlFALG6985o19agod6mIxDeAXb9ZQqfGxMtMoTNBsjfXeNK
EVrxRMotF3jrC89C0udhEqm5ycq/puWdjcVKm9ENwET6XBK17Lys0E2RtA9E61+ca/QfJpMYimp1
U7cE4nyn3UqKR3bVrCXsDPh9LfLVWaFmrTDc7pmw4tGnQJkFp+7R6dbEuaTox7/OMxqam114oPkV
njRLyu+x2mWlLmuM52UKq0QbEKD9fuZxDrt/FkZ0LqCf7wm5hR7nE94+QplTQky1j/AYXI9ZGCBN
2rw0MsMeMf/L7fdbUCUlNP3BvjtNHctuyoZWW9EQRtfpbKthsuAbHxCZiFVUWT7K8yiSl1nk/w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EF441C1C5A6E50"
last-modified: Thu, 12 Nov 2026 00:46:25 GMT
content-md5: S8WDC0epd5Expv/3OKRKhw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 29a0d23f-2b3a-4b6c-990b-e36fdf536046
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-bf5c1693-7cb3-3fb4-2214-d9491ef1aab5/test-blob-85ead025-95a7-ff97-797b-07623a1f6de6?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
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
x-ms-request-id: a78580ad-625c-49fd-b2c7-8139acaa8efb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:25 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-bf5c1693-7cb3-3fb4-2214-d9491ef1aab5/test-blob-85ead025-95a7-ff97-797b-07623a1f6de6?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
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
x-ms-snapshot: 2026-11-12T00:46:25.8590000Z
etag: "0x1EF441C1C5A6E50"
last-modified: Thu, 12 Nov 2026 00:46:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 658aec4b-63b6-4d5e-9cd4-bc7519760e75
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: HEAD /devstoreaccount1/test-container-bf5c1693-7cb3-3fb4-2214-d9491ef1aab5/test-blob-85ead025-95a7-ff97-797b-07623a1f6de6?snapshot=2026-11-12T00:46:25.8590000Z

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
last-modified: Thu, 12 Nov 2026 00:46:25 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:25 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1EF441C1C5A6E50"
content-md5: S8WDC0epd5Expv/3OKRKhw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: deca1fa1-a942-4d1a-915f-2293ffad5e6b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:25 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:25 GMT
x-ms-tag-count: 1
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-bf5c1693-7cb3-3fb4-2214-d9491ef1aab5?restype=container

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
x-ms-request-id: f088adda-a242-43c0-8fdb-b2c058368458
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

