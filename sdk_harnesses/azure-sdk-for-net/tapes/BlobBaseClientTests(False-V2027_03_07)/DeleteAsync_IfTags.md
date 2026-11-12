## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5d9c81f9-16d0-5d2a-4b9e-f9840f9f5cb6?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DeleteAsync_IfTags
now: 2026-11-12T00:46:31.4690974+00:00

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
etag: "0x2169B6A26A5D000"
last-modified: Thu, 12 Nov 2026 00:46:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 364ec7ad-4250-4266-bb7b-cae5ef9b6147
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5d9c81f9-16d0-5d2a-4b9e-f9840f9f5cb6/test-blob-59219fdb-f3ee-3b0e-5297-6ca456f99174

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
O3iV1nmvf9XKomGF1wpBeEAKP4JomZEGc2ELOaqGBlEMhUmWCYY8KyBLjkyRiGNHVfNjTLoPC6Hn
jmIYpEYrQ5sQeFLBq266zRNhHQpEder9w+O2I7qX/Hmnr3sjJIfaH0qxgQ8RhqqFqH6mre6Xohl4
GuBidSDheHzYGfvzl6mMh/2/k/Ta6zw4MHo78U+KDw1hqgqnd6oq0AiTOWyukRHVGibx2A4lni6j
KUSlpYctTQrukeye5A9SlMPrRrLPip9pZtcomTf+PAzbA01mhCqBZutiwAAlNjUWnkNKOVd81J+l
PD6vBLTS8FTgw+HB6xCYauDHbMmfQzCiEvv0swO0Xy+uwUfs0WE3kNCrRXJTVLIzss53tGfVBfkO
DfK43jxRK2SyEyrIrJh+kNz58/69Tr1IwAE0ParH2LtO3sRvfrGTWRoOoECIagU1+CSK3BL6UL41
cB07HO256jtuec3UDhErZpnkrq58v1b7/kSFPfypU40FOg2TVz0sVbYFGfA4YekTXnV4FqIQuLDH
QB6pM60/xSZAz9QElw5cuFn4dqZmw51act6GMT3r9YFczBcfgiEIxlTK95EVDsdnG15IGEEKYXyA
TsDOuJToVdpTp8v2PTU477BSm8sLRWMXHxXeo9w/UmubnjRgOg6/4aK3wmf7cN0pECmRuMWxdAlc
t5h+CbH9E1RgW54B17SikropVIP8G643tZOzrpqm6SkqA4N1Qdfwua4SmxU+KDh07yYLhyCGYJvp
R1QeSmW6unF11tQxLFDiOJrU6YCZ+I1aP79zmmEJpKPoi/qD0W9JV+GjyVFkQsLVKE+GsXYaT07G
wwulRx8PbDExSaFWX2Yqi5Ke9i479vz8nnISgvMszTurvA1koxDCk10gMvkhfsjoXCbke1kfi80P
qKis/ek+BXtlq6NYxeeB3GPRG8MC2yCpKSbNR1HijDBAVfpoFZZz4S1+u9Mlj5Y+Y5/2TnAJDM2H
AtPDcb0pgh5yF3DsGMbMXTmWhB9NhJmPjuOy7D7AN0gt4BPCsHBwVDi0s3cmUkrYKfA2c4itOn45
M+LZd5bgseAnvzezCazJJS/mmNEiaTyZ2cJNisS/f6aUiX2Nltyi0wGX/5MSJR9EbU1ZxqGtF8qm
QJ3TkycbZz+RHoAvO49SRMTPimqoh7SiCRx3ZrkF53Ky5lY/zkDafJdTgQafFDG9BoLc3Yxg/bno
MYoKowCGizcNfFU5E3aE9Q7SVQWtA/TruWA2KAnlUuidVp22z9iXzfXPkZjchPILWOh+jqizOy2V
HuqfT2MtKCpsm7zZzSU2OocQ3XFcDzVtK9AhZ8Q/6htvIbDt936Somltb+g1MorCR1Mhol28OQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27CD381B08F96C0"
last-modified: Thu, 12 Nov 2026 00:46:31 GMT
content-md5: NcgeayTdZXpalEDQxhF/MA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6107925a-841c-4a2b-b941-c6acafd005fc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-5d9c81f9-16d0-5d2a-4b9e-f9840f9f5cb6/test-blob-59219fdb-f3ee-3b0e-5297-6ca456f99174?comp=tags

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
x-ms-request-id: 71dbffe3-7b5f-43f2-ac54-0228c23d9ffc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:31 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-5d9c81f9-16d0-5d2a-4b9e-f9840f9f5cb6/test-blob-59219fdb-f3ee-3b0e-5297-6ca456f99174

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0190e2d6-385c-4f7a-8cb2-90103d9d6101
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:31 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: HEAD /devstoreaccount1/test-container-5d9c81f9-16d0-5d2a-4b9e-f9840f9f5cb6/test-blob-59219fdb-f3ee-3b0e-5297-6ca456f99174

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
x-ms-error-code: BlobNotFound
x-ms-request-id: 75a273d1-19f1-4d0f-81e8-71c76a4d2497
Date: Thu, 12 Nov 2026 00:46:31 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-5d9c81f9-16d0-5d2a-4b9e-f9840f9f5cb6?restype=container

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
x-ms-request-id: bf5b1d9d-7556-4766-8a9d-9169546b08d9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

