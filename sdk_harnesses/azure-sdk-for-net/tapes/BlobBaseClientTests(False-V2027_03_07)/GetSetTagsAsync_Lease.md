## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-07783492-b358-1b2b-5ec5-ff45e1cb6f29?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetSetTagsAsync_Lease
now: 2026-11-12T00:47:00.5829414+00:00

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
etag: "0x2255BF3BC7C60C0"
last-modified: Thu, 12 Nov 2026 00:47:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 16e9cf4d-c1e6-4d74-8f79-17611eebd5ea
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-07783492-b358-1b2b-5ec5-ff45e1cb6f29/test-blob-907e41f6-f211-a1ff-851e-3cb280614b5b

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
rlq1YBWpKWCiGOvLdQ+y4wQMCeONHyufNNaCOnd5mv16pJeGFg4TTBgd7vkGNCx2bFiuc1dnzY8v
FSw/J+/pKX3uUNF4K831+bzLcDEymQCpC80eyyalEtYHVwHi0yUpM8R8GONb/kGLuHqbnF1e/Xwr
lhshy15WSD77cNPMEiWXoj1stYAcTg2MkxKsCnV4qFqEtz0KB2dmJdCkYI1tv6VVBPog8kf8DkcN
lDhLqj3Igsd5R1vnjJrVBZCveO6AHtNsVgZ7WLYTiKj1/HMvG3uS3N3F9HdKbndfSu22TJZZjXVk
3lQ3TCkRZb6z8Y8npekVHJwQuipcIuiPHA3JXDwRnG/9yz0nW4+ztI64l3znOKUDoS/6SdJLCLtr
pzAcRwmCoVUgKdms7cEMXAabo4trp+NoxroMFlOcssOBu7Nel2yFNvUnxw7LVrNu7ezMr2QwAABM
tIFOdooCg3cWKzINrsWZFm2VRODVnG8Gnilm0AJeULuzEePrNr9qJUSWtSuBYT8mMpn3mrsfdxcR
SNdhm7J1t9p3WZzirt+tKx+cPudDhT3pQJ1pZ7b/k5rL2e7oCYmRIf1RCQeiQ4S5SW+cgzgwzcKa
d1oVC1AkeMUCF9TxxCGVCx3p8ns1R/wYsB1HYhBhmwsrTpEvexatLZFCoCywx4VNB3gbRttGZDBe
/Fsy3BW1oHvIxXaQZo8HPMXq86bPaOiY+VqXRlUw5Oph0H66e1B7jP+x5wEOvaHpEwkVXHCJjpRz
muO6HVkmmOGMLpUQTMF1bmamHoHmijy5rjNLG4h510LqR+FtwG+mik4ggY4M2MZIn+0J4m8SjA+m
AW8m2n1ZE1dSJQXgCK73AJMyxQiurNVsA3uab/TS17rRxr7/gLDRx242ubLBZ5Y/EuLc4MYH91SZ
udcBvqNigE1KD0Lv94DjYP6ZePMjqpvkWl0R9vf0yc9qZsbY0AjL0zlkd1hUTxpi+H/Ibn9hdg87
HGRGUYpWVkVyhZC5CpD1zqS5vjJCkAtCr/14K1tPCPC2nbSkhYKvDiES4cqJqO7v0qDbp7jc+IxZ
A6GM3irqI3ygA23cUUghCq8RMK5AuAYPiFi6dGE32qQnS4HgIjD3J75N6KWAEoFXuZwJy8jdGEub
fVXRL64baSjItAbHQeh+Ggjv8s9gjnXXY7vELg7cSTI2RKXbJfcPMn98t157j3e0irHA7iV7Ou7f
+szzVzoa7GrTkfxDo/QQ4MBP49YXW9NDD6RdHFsNugm2/CorHNpFYsv0qP57cee8rw5lK1cXx574
r0eWvNAOxdbyjKfK5MPlCoALIrPVyJ68oWxNp46ynjSLM2yTr6b65eIniORA8cpKfyHWC6XrIg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C7499A98DC4630"
last-modified: Thu, 12 Nov 2026 00:47:00 GMT
content-md5: Rjgl+eoqlenWlcxMKn7Khw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 391faa4a-97ad-4a34-a878-425f7bd9e822
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-07783492-b358-1b2b-5ec5-ff45e1cb6f29/test-blob-907e41f6-f211-a1ff-851e-3cb280614b5b?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 1bd9a8e7-c164-471d-3fed-723eb157525a
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C7499A98DC4630"
last-modified: Thu, 12 Nov 2026 00:47:00 GMT
x-ms-lease-id: 1bd9a8e7-c164-471d-3fed-723eb157525a
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d649c9c3-918a-44fe-bda1-3ce15b209777
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-07783492-b358-1b2b-5ec5-ff45e1cb6f29/test-blob-907e41f6-f211-a1ff-851e-3cb280614b5b?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-lease-id: 1bd9a8e7-c164-471d-3fed-723eb157525a
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
x-ms-request-id: e034abe7-98e6-4dce-8ff0-7bea040b0d00
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:00 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-07783492-b358-1b2b-5ec5-ff45e1cb6f29/test-blob-907e41f6-f211-a1ff-851e-3cb280614b5b?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_5
x-ms-lease-id: 1bd9a8e7-c164-471d-3fed-723eb157525a
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
x-ms-request-id: 37aef063-524d-4fbd-bba9-b33a71e9c5b0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:00 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-07783492-b358-1b2b-5ec5-ff45e1cb6f29?restype=container

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
x-ms-request-id: 84bdbc36-cfd7-4ceb-8816-4135334fd4f2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

