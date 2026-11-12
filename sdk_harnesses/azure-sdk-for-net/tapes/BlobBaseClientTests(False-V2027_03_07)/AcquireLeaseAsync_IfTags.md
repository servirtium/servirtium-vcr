## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-02692f2c-ec34-ac8c-5a32-d75009748857?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).AcquireLeaseAsync_IfTags
now: 2026-11-12T00:46:16.9858193+00:00

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
etag: "0x21E77B74A114280"
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3a2a0afa-8517-4be0-87bb-3d6b0440a3b2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-02692f2c-ec34-ac8c-5a32-d75009748857/test-blob-e406b97a-1308-bf69-32b9-b2216dada2e6

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
kh+I3zrjX29r8ulBB13Kw4kgi3dGGKkYxqnPezpqPq2Q8L3q7Kkcl1mWeRYqJ7jV7u6YTCEqoHl1
bxiQE+M1ALM7sRaf4NffA/Qdr5+T7p7x+Y1L0vGMZU9EdHyQi4N2YXli7nahNg4XuEktDPDa4oB6
nxlW6S3Br0vGW2taTndxp00lMAAoUMN+MxmoX1leaZH7FuxpIHdLoT4q2tuivWnRu2WitLKAUU9W
17YUGVDyaPHZXjeLB4fW2o/B/XXo23av1qPzu7Tfe8WdE0jBN4jtOHLpyV4yRrTezNojvlTZbfs/
ZEKt/qw8+uNy7fQ+FKIH1MQD/hIXfZDvFe/ZvLxww6VMgdNFQDrGrc56v1i/n7c4G+qP1m7pJ+ay
vui8Yj4nASpO8pPPwZOKPVFEnb43L3Y3oaDR4ew3Y1ntk4FRCUqQU70tcK0kaVpWBJkcpIoneo5y
hcGeViA9F4454S0RODMHs0oACb/JEjdFetxTGr7PxRnz34OI8v2d8Fge64csRMxlFfFAJ3DPqXKJ
WNtD6v3QaRwUHlmwfsFMYhlmqiewGTUQ7QTNjp6oJDYR/pohWgVbToFrFyZztZYv88RWaP5L2T6l
M/z4Atp+a/oin4AnKwgTC1ylRAEPnThunZvZUrs4xiVbeycJYkum7awsUBYWCMi8Q12hpZU8lpbE
imQ/pBk+6thby6/gCqkR/lZV4kwiWJXSHA5dliCPH+WRRdfmZ0iS7WY9uzwY2zm0j6c+5rRJoTLP
bIgL4VO4y6vKT8TRK5cNw/Tm5JxYuUDVqQd5UTgxR6OlFvrAhwwShPCRTot042QPMCO/Y72VdrNH
NTdMP3lzmQghLBScTTvo01+sx2u0YcWiaSAVceTmD6BHeVHUxkV2HbWDUrdPcuPn149d6a9IktRy
qdVZXicjOxx0VdTpEw0aNqm1MQ4OU/Y9LZpViSbx/+Z9YhxwHL+NXxea2xwP/cOCQrIFkmHGY1be
GzCNzrL2g1btbLDwqhnqJ9H2dHfZLi/W0kZz62yFtv/GkQGOAJBlo1jGIZETkZiYGmqP0O7eBO0B
tvtrgpfqZ7WxKRgYWyZAkdEfEwydw0Gt29AB9eYQ54wTjUqU+SDA3LrbYWd/f79DTj4dv/HhY/K6
vqfG6HHOoUKMBc7cq5ewXjdRwmLZLlsRvqen8iibMSlX2jt5+vNIDMAl83rxZ6KnbWC5j6GQ4Y9L
tCrKJ64a8NOkhdFbNmRDCbWhszvhIFYEAIXH4qGIxvirLkXJfeURCwKmTOHRSzb8dYXr7y1UapTT
xiYpUg4yHL7ZrwgeeozPkKg4OtR1M7ROymwbnNfKV8Ox9re+6LjzdDAi+Jsu3vr5HF6FGy/AXg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C0051400D33610"
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
content-md5: A6wqmoKyJYMYSPuUNXCJoA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5ae81c80-cf42-4421-8d29-f90c95bbfd5f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-02692f2c-ec34-ac8c-5a32-d75009748857/test-blob-e406b97a-1308-bf69-32b9-b2216dada2e6?comp=tags

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
x-ms-request-id: 2b11b998-b592-4b0f-bafa-2bdb1eb5fc15
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:17 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-02692f2c-ec34-ac8c-5a32-d75009748857/test-blob-e406b97a-1308-bf69-32b9-b2216dada2e6?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-if-tags: "coolTag" = 'true'
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 88da7293-16a1-e77f-0e58-446d84d510a7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C0051400D33610"
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-lease-id: 88da7293-16a1-e77f-0e58-446d84d510a7
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: df88b435-3822-460a-9f72-36bb1b124f92
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-02692f2c-ec34-ac8c-5a32-d75009748857?restype=container

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
x-ms-request-id: 40bb1585-ba4f-47e5-afcf-88dfdb6f025a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

