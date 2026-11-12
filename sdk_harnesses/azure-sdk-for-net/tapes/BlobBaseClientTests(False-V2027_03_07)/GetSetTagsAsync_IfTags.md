## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e5456992-880f-2ab7-42f9-a67352a8005e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetSetTagsAsync_IfTags
now: 2026-11-12T00:46:59.4242397+00:00

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
etag: "0x270B35F9A607F20"
last-modified: Thu, 12 Nov 2026 00:46:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a4bf9c20-4542-424a-a0af-8ce3e6c7f8ee
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:59 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-e5456992-880f-2ab7-42f9-a67352a8005e/test-blob-0283e0b2-593d-4c2e-79e8-b45e75bd6b9e

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
Z8Kl0lT/TQ1jqN6u1HoWeJnHWBs+EFc4O/lrJtNYtYSNBwyPAy0Js5J1n5V6f3f/0jvFrWRQYFZq
bJdakyY5CvJaIM1uhnVsvaSIyXHBvruCa1SXkwcfPae1JJaWryBsO5WiIF+pkUvGWe+/x5blqa3b
2CfSoXfqOuMmuGHe1g6EHI7cH55c2NoI0TkYX3UQ0Hvou9b4mpkdt+Z7g9nq54PhO6sICIkPfv9N
ydA90tptFefl9hs4jIL0vme44VUAHuq2NyTKCMfy2TzWqtDJ4OULDW3xBPFoqK4pE0oiV5yqTavl
hpu1ow0g8xzeYeKxK96CrNToDhr5To52ofR9z4KgLFwl41lJVmpf0RDUikfLd+hsoKrIwT6Q7DgN
PgEZoySaPTSFi0eEOFVpiT0JJMRGqyoLEC/X12oelPchPBhoRS7sOUwSReug52dUXjgAhsdzxpPX
DZL0w2XKZ/dQY/w9AUMPHep4M2U+ayjIgnkxHQ0vrXWEkTib93bmSN70T4RqF1318Wnc+5MtmaJp
K0DsmEnpIbaHuG8LcyV0keuHSRykXmscPCykUrHhV/iWMss2+a+UCy3O4l7t6n5DaGmnpU+GxM3V
z1wdRc4EpWF3dUBZPpg88j7u1nsNL1GuYOpHOrGoD23+YCpSd8VfyTz8dXU96irRarMQl+5SyKAK
b+TkvGuvz2XTW91t6Xt4jww+ELnccHa/ds/+l3h+q5iJRwjhegzRTKYPao5MY4E3mAjiFLjmLv5t
JEabsTftVLBF5KFzlxT/bMMTzAbocxJOx/9vnJfgoxkJc1XGNptuIhXeB3/fwwDz46f00mH3hbE0
Teo3fbgZZEGIaiO+OTYnpKnwCmuTbwP+e7nv69C4Ee6kkemxN6RdxaM9VlndNalxzS23BntGod3m
OAL+KXlx0Fg1GqdMdm0Fk0THVRipIUYPfR2iAAtyXvALyv6iXpspzIYBqBsCJFfAsnM2fkzFPBe8
76tbzs9Mwry2QatvYjSpnoiRqHkrDFnG4k2XPN+kRY3m5m/vzv63tOVeTOOrUE8+jODDNJSdkeJS
lOyBtYXcEvseiHzEudCK2vOTzMB2G5H+WK//4BH4SVSNnTkRNf9fgjnnjcfTetMPOVmgCcUh23la
g1zW3DHpJT8nNxyWeKX0NEmGjo3JKt7c76a4WD+Pa8G/t7GjiaYH/miIq0K2ecG0rNV7mk3rkFh9
+eyLMcz/mMta1sHzUaqif5AlQX+bJXblBKtpE9F01CZZJY+6fMybiBJ3XKL/wFsq2Ru8xU/Y4dR1
pSwhloT65gKamisb6ALDirhsJMnT5UNQPzq1uA7XgEO7RNagefKOfHagZCYvD/AZ+DuWbL0KoQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x266E54CAAB075A0"
last-modified: Thu, 12 Nov 2026 00:46:59 GMT
content-md5: yvXgGfbKgg5F2Jk+cOGUDA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9f0dee0f-03a3-43d7-9dca-18f590eda0f1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-e5456992-880f-2ab7-42f9-a67352a8005e/test-blob-0283e0b2-593d-4c2e-79e8-b45e75bd6b9e?comp=tags

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
x-ms-request-id: 6e20447c-a13c-4a99-a8d5-8dcb0726345e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:59 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-e5456992-880f-2ab7-42f9-a67352a8005e/test-blob-0283e0b2-593d-4c2e-79e8-b45e75bd6b9e?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>coolTag</Key><Value>true</Value></Tag><Tag><Key>anotherTag</Key><Value>anotherValue</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fc69cbbe-0e2a-4844-9b02-00b63e308667
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:59 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-e5456992-880f-2ab7-42f9-a67352a8005e/test-blob-0283e0b2-593d-4c2e-79e8-b45e75bd6b9e?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_5
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
x-ms-request-id: 1b888b5e-84f2-42f5-9f62-43f1f29a4dfc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:59 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>coolTag</Key><Value>true</Value></Tag><Tag><Key>anotherTag</Key><Value>anotherValue</Value></Tag></TagSet></Tags>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-e5456992-880f-2ab7-42f9-a67352a8005e?restype=container

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
x-ms-request-id: c85f40fa-e3f8-40ec-8561-f386440b9aa8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:59 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

