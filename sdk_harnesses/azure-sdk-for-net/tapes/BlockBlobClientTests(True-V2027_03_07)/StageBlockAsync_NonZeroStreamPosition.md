## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-565aebfd-9395-f3ec-de10-b3db3fec67c3?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).StageBlockAsync_NonZeroStreamPosition
now: 2026-11-12T00:50:06.5020336+00:00

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
etag: "0x1F1CA6992E73390"
last-modified: Thu, 12 Nov 2026 00:50:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1d30d336-220e-44f0-97e9-2003e58589a8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-565aebfd-9395-f3ec-de10-b3db3fec67c3/test-blob-c6d41eb0-c47a-5a35-e73e-591f77ae0c79?comp=block&blockid=dGVzdC1ibG9jay02NmE2MWJjMS0wYTBjLWJjMzEtZDdjNC1lOTAxMDgwNTM1ODE%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
qICq8pFDDg3peIlAiqNAqlDswUDUxZ3t8xjtyPLGZUeWGgVuZ79WLvY6pG9SCbaiW8kfeJq4YuLj
vP95VUYbIxJBqW+e0kOQlpJJmSEtm+lhS2wopu2t3rgii6rA3diwH4BdEV9HA4mGj+IHb8nBtSEV
Fwra830lk8u3fEaZ0Lm5mXmgz4mJGkjiohcKpm/uYdWIqsXO1SwDOH6Uj4ZC7L4pTdVPIOWXjP3C
91FlGu1byBpxECXz68NNnJcL9YrBoLVY4ViZn0Dv8R7IDN7bnh2ROMds0dyZNWIRAoROjJdyAVeb
DTmUwinagh8HK9/lcf56erzDVc/Yvqv2iJy8oWSHVQuGP5Dj/HaekU69kgmCLJCF0xLar6uIw0+N
njmMHeC6gNbUXjJul31GJMOAGyyic1sLN85SrKVf/nxBVV48EXRuAhEyrs1eFzuUlIroB6ci6yve
geYSaNMwdWC2LUEfCRNPEhgab8SOrR+SvRcbdvbUHmoyXpCNW5o9Ajltp+r6dYp3mfWOB3xmT9PG
gKq8Ff5p4Q7X7KuDwbZ+3G2KIQY1mEiMo90ARRbtyw68x9rvgew7BMXbIojf89c+ECsO3C7Nkehi
L3EgaJz36SGcxvrcjlqATxxAWXW/rbAFwjXr3+/g7zXyjFJ6Gpsp5DhnQy3dYoHQjowRjDdyo4I=
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 32a962a5-44b7-401b-b23e-c4676fcc713e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:06 GMT
x-ms-content-crc64: zrW8fa5gpjI=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-565aebfd-9395-f3ec-de10-b3db3fec67c3/test-blob-c6d41eb0-c47a-5a35-e73e-591f77ae0c79?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay02NmE2MWJjMS0wYTBjLWJjMzEtZDdjNC1lOTAxMDgwNTM1ODE=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2215B0C0152CFC0"
last-modified: Thu, 12 Nov 2026 00:50:06 GMT
content-md5: mmPH3hNyUEgWsvOAhvNkLw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 32ae13aa-2acd-46a4-ac13-6d21381addf3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:06 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-565aebfd-9395-f3ec-de10-b3db3fec67c3/test-blob-c6d41eb0-c47a-5a35-e73e-591f77ae0c79

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:50:06 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:06 GMT
content-length: 512
content-type: application/octet-stream
etag: "0x2215B0C0152CFC0"
content-md5: i1ohM4LX34rimMW2s3iqRA==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 37008ebf-2ce0-4f8d-9abd-8d63df26e212
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:50:06 GMT
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
qICq8pFDDg3peIlAiqNAqlDswUDUxZ3t8xjtyPLGZUeWGgVuZ79WLvY6pG9SCbaiW8kfeJq4YuLj
vP95VUYbIxJBqW+e0kOQlpJJmSEtm+lhS2wopu2t3rgii6rA3diwH4BdEV9HA4mGj+IHb8nBtSEV
Fwra830lk8u3fEaZ0Lm5mXmgz4mJGkjiohcKpm/uYdWIqsXO1SwDOH6Uj4ZC7L4pTdVPIOWXjP3C
91FlGu1byBpxECXz68NNnJcL9YrBoLVY4ViZn0Dv8R7IDN7bnh2ROMds0dyZNWIRAoROjJdyAVeb
DTmUwinagh8HK9/lcf56erzDVc/Yvqv2iJy8oWSHVQuGP5Dj/HaekU69kgmCLJCF0xLar6uIw0+N
njmMHeC6gNbUXjJul31GJMOAGyyic1sLN85SrKVf/nxBVV48EXRuAhEyrs1eFzuUlIroB6ci6yve
geYSaNMwdWC2LUEfCRNPEhgab8SOrR+SvRcbdvbUHmoyXpCNW5o9Ajltp+r6dYp3mfWOB3xmT9PG
gKq8Ff5p4Q7X7KuDwbZ+3G2KIQY1mEiMo90ARRbtyw68x9rvgew7BMXbIojf89c+ECsO3C7Nkehi
L3EgaJz36SGcxvrcjlqATxxAWXW/rbAFwjXr3+/g7zXyjFJ6Gpsp5DhnQy3dYoHQjowRjDdyo4I=
```

## Interaction 4: DELETE /devstoreaccount1/test-container-565aebfd-9395-f3ec-de10-b3db3fec67c3?restype=container

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
x-ms-request-id: 5b44ae2f-ac49-4547-a349-ae0e88666117
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

