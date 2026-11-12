## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f2e12026-e6d3-88e6-6e10-3026d5914a65?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetPropertiesAsync_Tags
now: 2026-11-12T00:48:11.8171733+00:00

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
etag: "0x259AAD3D5CDEC60"
last-modified: Thu, 12 Nov 2026 00:48:11 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3ac99a87-c439-4f87-9f4b-1914e764e78d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:11 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f2e12026-e6d3-88e6-6e10-3026d5914a65/test-blob-c3f61b47-8b49-bdaf-ef1c-914582359350

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
z8ulQdyzhyjuwQE+QIv4kPo1Kk+ELtObcCQDt1ShBTl84FYJ7AiJlJTN1IiJcXxkIwFLTQpEzKH4
CtC4r8/TTLvIwWA07qPxrJa6tllKEv+on5RTVrcuOBS1EeI30OTE+YjMwK8bLzRdWaF0iRVHrffR
DxA7gPYEmolMft3Budux9rzRflFQjG9f9fwVua/+bWPqZsHUiXmRxyYlz7BXnJ/Gw5NZdi+mgIOg
3Ir57uDaThB511Ma3GxDP7YrKry+B1lcT/YbpfczROU9NK3ul9lGS4Gg3cVMrOcmFTd5elbH4dQx
nZ/pvqgZRpJt3Ke/VKfd5d47HiqUD6IP9Y+/usmPdlLYvPo5XI3Yhpcy388/Z8GPnJV3jMKqnY39
2skZWYvJ3mZV5peso4hRYpiSYTDS0I7NLx40F+qPLh9tPIHDvywMaQFp6YAp4/gMJikqFztdKgo7
SylslMZ8xbh4PmcHjaNrhvguaeYNpEwmJ/HAZRbkEBJ3iHMCn9Q67CTHsaSRBZiGvpFCLsAjLafd
Rm3VvGChlC5UjwUvaecj9H3BRvKnlCJZOaaFoeJSU1rMJVhnZTDEJR12PHaSV1WpHjlCYue0NbFK
fIO6HPJLAjuqY0OPvI5N/SDVMVisxuFQ24KoD/FzF++mHOmtCggqKjk66PQRGmKq9WTG3wRZnrWh
aUFwovNKNktU6J+loPMXqgYecd7tP8Ag/RmNrTjrTX0zC6DHuodG8LGpvTLCBFVwrjT9Oi3XsyqA
UKXZvYkSaJshcpRSUPB+2IEsRIGOXfjEHP8E7RNQW1h2RmribTIol1WWoJLBHl5Df2Krq2+o8vKs
FaGJDXqI0Rc83AmGm2pOBK0s97xmAv6gwG6xpbDozVR3NliRnonaDs96hUFUveP3XKfCfPo2RRKi
6U0M1ytnUw60D2USvWUjUent6328TAOKuUgJJVBaQfBG7rU8zjejEzEzoK5+5J9BnysRSVqU5pxJ
gR3iXS69Ws11zM6v54OxSdhMiaxUC9Wpx4YlSPiWsQgY8kwawLUCdUXgCRjQkbeoX/+BSF3w9XZI
OZaolxHV3xvGl/Q2l4giSRNmcwK82DbOfej4FGirKP3W0YcfWt00Cir9CvrCcch3X/9JioFzi2Bg
2Roo3cqyGm73YMUAA+42MmjYv807CwwggbRoYZ57YkYnv4DDCy1fSu+LyxEDdlwQE1cYm8ySJM4O
CFsWSbnQe/1/2UNuciY7eXTdsED6HApYV05GY8d5lJqytQPRSAA2uk8ThJwYoqAx3SFXtHSNE+tR
vvJrihg2BUWpu70jaTBzp/Xx55huP7WtFYalId8mJaEXgIoOyzA33X9Wb+fiDXPx5A1+mytT4g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D64D0EB47C5D60"
last-modified: Thu, 12 Nov 2026 00:48:11 GMT
content-md5: vM1koRHXCrW15POTkWmAmw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c9c5ece5-06ed-4f00-9523-bff2c726663c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:11 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-f2e12026-e6d3-88e6-6e10-3026d5914a65/test-blob-c3f61b47-8b49-bdaf-ef1c-914582359350?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
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
x-ms-request-id: ee981fa5-ee9a-4f47-9244-afb26e338b5d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:11 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-f2e12026-e6d3-88e6-6e10-3026d5914a65/test-blob-c3f61b47-8b49-bdaf-ef1c-914582359350

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
last-modified: Thu, 12 Nov 2026 00:48:11 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:11 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1D64D0EB47C5D60"
content-md5: vM1koRHXCrW15POTkWmAmw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f0126e7d-fff5-44d3-b55e-b1e85aebee8f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:11 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:11 GMT
x-ms-tag-count: 2
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-f2e12026-e6d3-88e6-6e10-3026d5914a65?restype=container

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
x-ms-request-id: c0c1d6f8-b7bc-452b-8acc-762fa4cc7739
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:11 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

