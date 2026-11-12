## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-787c02a6-f435-22bc-8331-4882b35a0fd0?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SetTierAsync_IfTags
now: 2026-11-12T00:47:12.0280157+00:00

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
etag: "0x24C3A7CA38660A0"
last-modified: Thu, 12 Nov 2026 00:47:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7b709603-7431-4d5a-b63e-cadb1e20e81c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-787c02a6-f435-22bc-8331-4882b35a0fd0/test-blob-a4875541-2f51-23e0-8d3b-10ead73351ba

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
bT2+g0fm9m+7LcZx8XkVLq1WEGog20l2Iljq+eTRS1DgjhR2nIuJWl8X6CRpbjETJuE9gSLnmZLz
R2Hu+/2K6uJ2kWNlnpIizLYKCPMlDbMn19MDk8kt+PSCglQpml5hjf5B893OrodOG7Rr3JGfzjqt
xiQqh1YYSJhv4hw9+DFXqHr04xnVWSlLtHgVwRxi47Mae9Q6NwanKatFX8trESOCFDMWqusg1237
3tLeAoZ8DP9pI3xdHXF0TLlukPpe4KNVk63oTDnH+aNmPlg0ySckyVLLAu6mJPfCol0yskdznf4u
iG/Yk8DGoSnY994YQIOSScenkt21rm62JqnblUdc86FaBUG3TDWSBWHEziwYqmLan2iAywogedoA
Im0W6gvhfAQ8vjpC2v2RFIx88OBBnXtHAfXf2yeWOYxmtynIfBtV41Io2+wnmMVr77d+pIj6voTx
zugVAqDcpoSu2yPTyJhxJw2NGcGPIGkwc+xwGJQDbPil1q4yP+CyTDVneLyilyYeDH17bKXCYq1+
5Y6zbI3wq24qLvLpP+cs28yMKKesjtzFUQwXhwBT4nQAs1pS/uCnd81Od2k0NcyVT5DYNjoG0ley
7RqB2CNu10t96YyM2t3s5LDaXhZykRxAgThveqw6+uEDnxDFJp+p358dtktACXSz7FGJK3NAP1z+
QVbr/12fQ+6riTrMJ74RMH52VNvQ/3jDu45asc5tw1+0x+RIveBCfnNdlYA65sWSd/v1yeuBLkHd
KEPORJEgPcbbGGDZyXKdM9Zoc2r4idTIyDrSd/l0M5ijapWdcznhPFe6Xs1luK6JV5UUGLrW5Z9u
BXxXTcXMZuXHNl7dAL+chjYTPioHYw+LSSBjYBrdzIX1Lm28ie+R7fjnnYJQrFfVd5KEw6d1Z6Jt
zAOlaAbL6WrY59FR3/1GgVAxH8aNO53IjuiIWQjegMfLT7zs7IXyHLQXd8SGg5eUPUJWREfc35Bl
3NodQ49h+mcJhpBAWpTLPwMRdcTZQgpQ8xvFhzt/728shg+q1NgktX1dfP0HU+KuigVEymrMjJnP
zVBznHIripYgFNSEIGor7L9He8YNSKA5F/02OyUFYPl12waIsRkKMvJn5z8OKWmaGd6qhBDTwoSv
OoR19E5wGrPaD0VjojumPEnUpWFgKu6TnCFGWtvpohmB2HaUlT2j9syLMxokNnajBEjH/hwjTxCW
4VgsKr/Y8Wws4srEEaYMMa+U1fbUbmWro1aTIqP8XYlm/rTldswNs0Kt+FSs3vOhus1tj3oZwnLy
gYZpRM/IL4RBXhLyJrrjhiG0JnYR/sVi8WfWj84PTDxB8/RGo25z5cjPa3/gr5QSighYZJv84A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2141D4A7F3C1B60"
last-modified: Thu, 12 Nov 2026 00:47:12 GMT
content-md5: fbNI+B4bfjm41768gB2t9w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c525d494-858f-42be-af3a-602fcf6b822b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-787c02a6-f435-22bc-8331-4882b35a0fd0/test-blob-a4875541-2f51-23e0-8d3b-10ead73351ba?comp=tags

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
x-ms-request-id: 1b73cf10-7ec7-4d80-8680-8b29f9662faf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:12 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-787c02a6-f435-22bc-8331-4882b35a0fd0/test-blob-a4875541-2f51-23e0-8d3b-10ead73351ba?comp=tier

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-access-tier: Cool
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 14b24790-89f9-4a7b-b395-2db9ca4df93d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:12 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-787c02a6-f435-22bc-8331-4882b35a0fd0?restype=container

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
x-ms-request-id: 433db547-ba9a-47a3-8838-5aa8edb7865c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

